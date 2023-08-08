
local tinsert = table.insert
local tremove = table.remove

local print = function(msg) if DEFAULT_CHAT_FRAME then DEFAULT_CHAT_FRAME:AddMessage(tostring(msg)) end end

--Roles portion
local mainFrame_Roles = nil; local foregroundFrame_Roles = nil; local fontFrame_Roles = nil; local fontString_Roles = nil;
local highlightedTargetFrame_Roles = nil; local RobinRoles_selfPlayerName = "";

local function SetupDefaultSavedVariables_Roles()
	Robin_SavedVars["mainFrameHiddenStatus"] = true
	Robin_SavedVars["mainFrameLockedStatus"] = false
end

local function GetSavedVariable_Roles(var)
	if Robin_SavedVars == nil then
		Robin_SavedVars = {}
		SetupDefaultSavedVariables_Roles()
	end

	return Robin_SavedVars[var]
end

local function SetSavedVariable_Roles(var, value)
	if Robin_SavedVars == nil then
		Robin_SavedVars = {}
		SetupDefaultSavedVariables_Roles()
	end
	Robin_SavedVars[var] = value
end

RobinRoles_classSpecs =
{
	["DRUID"] =   { [1] = "Balance",       [2] = "Feral",        [3] = "Restoration", },
	["MAGE"] =    { [1] = "Arcane",        [2] = "Fire",         [3] = "Frost",       },
	["PRIEST"] =  { [1] = "Discipline",    [2] = "Holy",         [3] = "Shadow",      },
	["ROGUE"] =   { [1] = "Assassination", [2] = "Combat",       [3] = "Subtlety",    },
	["WARRIOR"] = { [1] = "Arms",          [2] = "Fury",         [3] = "Protection",  },
	["HUNTER"] =  { [1] = "Beastmastery",  [2] = "Marksmanship", [3] = "Survival",    },
	["PALADIN"] = { [1] = "Holy",          [2] = "Protection",   [3] = "Retribution", },
	["SHAMAN"] =  { [1] = "Elemental",     [2] = "Enhancement",  [3] = "Restoration", },
	["WARLOCK"] = { [1] = "Affliction",    [2] = "Demonology",   [3] = "Destruction", },
}

function RobinRoles_GetDefenseRatingFromText(text)
	local stringToFind = "Equip: Increases defense rating by "
	local index = string.find(text, "Increases defense rating by ")
	if index ~= nil then
		text = string.gsub(text, stringToFind, "")
		text = string.gsub(text, "%.", "")
		if text and text ~= "" then return tonumber(text) end
	end
	return 0
end

function RobinRoles_GetDefenseRatingFromTooltip(...)
	local totalDefense = 0
	for i = 1, select("#", ...) do
		local region = select(i, ...)
		if region and region:GetObjectType() == "FontString" then
			local text = region:GetText()
			if text then
				totalDefense = totalDefense + RobinRoles_GetDefenseRatingFromText(text)
			end
		end
	end
	return totalDefense
end

-- Called when we setting the tooltip on an item
RobinRoles_OnTooltipSetItem_Callback_Arg = 0
RobinRoles_OnTooltipSetItem_Callback_Original = nil
function RobinRoles_OnTooltipSetItem_Callback()
    -- Call the original function first
	if RobinRoles_OnTooltipSetItem_Callback_Original then
		RobinRoles_OnTooltipSetItem_Callback_Original()
	end

	-- Fetch the defense of the item
	RobinRoles_OnTooltipSetItem_Callback_Arg = 0
	if RobinItemInfoTooltip then
		RobinRoles_OnTooltipSetItem_Callback_Arg = RobinRoles_GetDefenseRatingFromTooltip(RobinItemInfoTooltip:GetRegions())
	end
end

function RobinRoles_ScanItemDefenseRating(unitTarget, inventoryItemID)
	RobinItemInfoTooltip:SetInventoryItem(unitTarget, inventoryItemID, false)
	return RobinRoles_OnTooltipSetItem_Callback_Arg
end
function RobinRoles_ScanDefenseRating(unitTarget)
	local totalDefense = 0
	for i = 1, 18 do
		if i ~= 4 then
			local defense = RobinRoles_ScanItemDefenseRating(unitTarget, i)
			totalDefense = totalDefense + defense
		end
	end
	return totalDefense
end
function RobinRoles_IsTank(playerSpec) if playerSpec == "Protection" then return true end return false end
function RobinRoles_IsHealer(playerSpec) if playerSpec == "Discipline" or playerSpec == "Holy" or playerSpec == "Restoration" then return true end return false end

RobinRoles_playerSpecs = {}
RobinRoles_playerClassAndLevels = {}
RobinRoles_playerTalents = {}
RobinRoles_playerDefense = {}
function RobinRoles_GetPlayerSpec(playerName)
	if playerName ~= nil then
		if RobinRoles_playerSpecs[playerName] then
			return RobinRoles_playerSpecs[playerName]
		end
	end
	return "Unknown"
end

function RobinRoles_GetRole(playerName, unitTarget)
	local playerSpec = RobinRoles_GetPlayerSpec(playerName)

	local role = ""
	if string.find(unitTarget, "pet") ~= nil then
		role = "DPS"
	elseif playerSpec == "Unknown" then
		role = "Unknown"
	elseif RobinRoles_IsTank(playerSpec) then
		role = "Tank"
	elseif RobinRoles_IsHealer(playerSpec) then
		role = "Healer"
	else
		role = "DPS"
		-- Check if the spec is Feral, which can also be tank
		if playerSpec == "Feral" then
			-- Check if the defense rating of the player is high enough to be a tank
			if RobinRoles_playerDefense[playerName] >= 65 then -- 350 + 65 = 415, cap as feral
				role = "Tank"
			end
		end
	end

	return role
end

RobinRoles_calculatePlayerSpecLastFetch = ""
function RobinRoles_CalculatePlayerSpec(unitTarget, playerName)
	-- Check if the playername is valid
	if playerName ~= nil then
		-- Check if the unit is a player
		if UnitIsPlayer(unitTarget) then
			if CheckInteractDistance(unitTarget, 1) ~= nil then -- 1 is for inspect
				local x = 0
				local y = 0
				local z = 0
				local unitTargetLevel = UnitLevel(unitTarget)
				if unitTargetLevel >= 10 then
					local getForInspectedPlayer = true
					if playerName == RobinRoles_selfPlayerName then
						getForInspectedPlayer = false
					end
					_, _, x = GetTalentTabInfo(1, getForInspectedPlayer)
					_, _, y = GetTalentTabInfo(2, getForInspectedPlayer)
					_, _, z = GetTalentTabInfo(3, getForInspectedPlayer)
				end
				local unitTargetClass, englishClass = UnitClass(unitTarget)
				
				if x + y + z > 0 and unitTargetClass then
					if ((x > y) and (x > z)) then
						w = 1
					elseif (y > z) then
						w = 2
					else
						w = 3
					end
					local unitTargetClassSpec = RobinRoles_classSpecs[englishClass][w];
					RobinRoles_playerSpecs[playerName] = unitTargetClassSpec
					RobinRoles_playerClassAndLevels[playerName] = "Level " .. unitTargetLevel .. " " .. unitTargetClass
					RobinRoles_playerTalents[playerName] = x .. "/" .. y .. "/" .. z

					RobinRoles_playerDefense[playerName] = 0
					if unitTargetClassSpec == "Feral" then
						RobinRoles_playerDefense[playerName] = RobinRoles_ScanDefenseRating(unitTarget)
					end

					local role = RobinRoles_GetRole(playerName, unitTarget)
					if RobinRoles_selfPlayerName ~= playerName then
						RobinRoles_calculatePlayerSpecLastFetch = ": " .. unitTargetClass .. ", " .. unitTargetClassSpec .. " (" .. x .. ", " .. y .. ", " .. z .. "), Role: " .. role
					end
				else
					if RobinRoles_selfPlayerName ~= playerName then
						RobinRoles_calculatePlayerSpecLastFetch = ": " .. unitTargetClass .. " (" .. x .. ", " .. y .. ", " .. z .. ")"
					end
				end
			end
		end
	end
end

RobinRoles_inspectCooldown = 0.5
RobinRoles_lastTryInspectUnitCallTime = 0
RobinRoles_lastNotifyInspectUnit = ""
RobinRoles_lastNotifyInspectUnitName = ""
RobinRoles_inspectTainted = false
function RobinRoles_TryInspectUnit(unit, playerName)
	-- Check if the unit is not the current player (we only have to inspect other players)
	if RobinRoles_selfPlayerName ~= playerName then
		-- Check if we are not on cooldown
		local currentTime = GetTime()
		if currentTime - RobinRoles_lastTryInspectUnitCallTime > RobinRoles_inspectCooldown then
			-- Check if the unit is a player
			if UnitIsPlayer(unit) then
				-- Check if the unit is in range
				if CheckInteractDistance(unit, 1) ~= nil then -- 1 is for inspect
					-- Check if we can inspect the unit
					if CanInspect(unit) then
						RobinRoles_calculatePlayerSpecLastFetch = ""
						RobinRoles_lastTryInspectUnitCallTime = currentTime
						RobinRoles_lastNotifyInspectUnit = unit
						RobinRoles_lastNotifyInspectUnitName = playerName
						mainFrame_Roles:RegisterEvent("INSPECT_TALENT_READY")
						NotifyInspect(unit)
						RobinRoles_inspectTainted = false
					end
				end
			end
		end
	end
end

function RobinRoles_NotifyInspectSecure()
	RobinRoles_inspectTainted = true
end
hooksecurefunc("NotifyInspect", RobinRoles_NotifyInspectSecure)
function RobinRoles_TryInspectUnitLater(unit, name)
	RobinRoles_TryInspectUnit(unit, name)
end

local function SetMainFrameLockedStatus_Roles(lockedStatus)
	SetSavedVariable_Roles("mainFrameLockedStatus", lockedStatus)
	if lockedStatus == true then
		mainFrame_Roles.isSetToMovable = false
		mainFrame_Roles:EnableMouse(false)
	else
		mainFrame_Roles.isSetToMovable = true
		mainFrame_Roles:EnableMouse(true)
	end
end

function RobinRoles_HandleEvent(self, event, unit, spellName, spellRank, ...)
	if event == "PLAYER_ALIVE" or event == "PLAYER_ENTERING_WORLD" then
		RobinRoles_CalculatePlayerSpec("player", RobinRoles_selfPlayerName)
	elseif event == "INSPECT_TALENT_READY" then
		if RobinRoles_inspectTainted == false then
			local targetPlayerName = UnitName(RobinRoles_lastNotifyInspectUnit)
			if targetPlayerName then
				RobinRoles_CalculatePlayerSpec(RobinRoles_lastNotifyInspectUnit, targetPlayerName)
			end
		end
		mainFrame_Roles:UnregisterEvent("INSPECT_TALENT_READY")
	elseif event == "PLAYER_TARGET_CHANGED" then

	elseif event == "ADDON_LOADED" and unit == "Robin" then
		local lockedStatus = GetSavedVariable_Roles("mainFrameLockedStatus")
		if lockedStatus ~= nil then
			SetMainFrameLockedStatus_Roles(lockedStatus)
		end
		local hiddenStatus = GetSavedVariable_Roles("mainFrameHiddenStatus")
		if hiddenStatus == nil or hiddenStatus == true then
			mainFrame_Roles:Hide()
			mainFrame_Roles.isSetToHidden = true
		else
			mainFrame_Roles:Show()
			mainFrame_Roles.isSetToHidden = false
		end
	end
end

function RobinRoles_OnLoad(this)
	---- Create the main frame
	mainFrame_Roles = CreateFrame("Frame", "DragFrame_RobinRoles", UIParent)
	mainFrame_Roles:SetMovable(true)
	mainFrame_Roles:EnableMouse(true)
	mainFrame_Roles:SetUserPlaced(true)
	mainFrame_Roles:SetClampedToScreen(true)
	mainFrame_Roles:RegisterForDrag("LeftButton")
	mainFrame_Roles:SetScript("OnDragStart", mainFrame_Roles.StartMoving)
	mainFrame_Roles:SetScript("OnDragStop", mainFrame_Roles.StopMovingOrSizing)
	mainFrame_Roles:SetPoint("CENTER")
	mainFrame_Roles:SetWidth(300)
	mainFrame_Roles:SetHeight(20)
	local texture1 = mainFrame_Roles:CreateTexture("ARTWORK")
	texture1:SetAllPoints()
	texture1:SetTexture(0.2, 0.2, 0.2, 1.0)
	mainFrame_Roles.texture = texture1
	mainFrame_Roles:SetFrameLevel(1)
	mainFrame_Roles.isSetToMovable = true
	mainFrame_Roles.isSetToHidden = true

	-- Register all events we need
    mainFrame_Roles:RegisterEvent("PLAYER_ALIVE")
    mainFrame_Roles:RegisterEvent("PLAYER_ENTERING_WORLD")
    mainFrame_Roles:UnregisterEvent("INSPECT_TALENT_READY")
    mainFrame_Roles:RegisterEvent("PLAYER_TARGET_CHANGED")
	mainFrame_Roles:RegisterEvent("ADDON_LOADED") -- Fired when saved variables are loaded
	mainFrame_Roles:SetScript("OnEvent", RobinRoles_HandleEvent)

	-- Register the tooltip events
	RobinRoles_OnTooltipSetItem_Callback_Original = RobinItemInfoTooltip:GetScript("OnTooltipSetItem")
	RobinItemInfoTooltip:SetScript("OnTooltipSetItem", RobinRoles_OnTooltipSetItem_Callback)

	-- Create the foreground frame
	foregroundFrame_Roles = CreateFrame("Frame", nil, mainFrame_Roles)
	foregroundFrame_Roles:SetPoint("TOPLEFT")
	foregroundFrame_Roles:SetWidth(mainFrame_Roles:GetWidth())
	foregroundFrame_Roles:SetHeight(mainFrame_Roles:GetHeight())
	texture1 = foregroundFrame_Roles:CreateTexture("ARTWORK")
	texture1:SetAllPoints()
	texture1:SetTexture(0.8, 0.8, 0.8, 1.0)
	foregroundFrame_Roles.texture = texture1
	foregroundFrame_Roles:SetFrameLevel(2)

	-- Create the font frame
	fontFrame_Roles = CreateFrame("Frame", nil, mainFrame_Roles)
	fontFrame_Roles:SetPoint("TOPLEFT")
	fontFrame_Roles:SetWidth(mainFrame_Roles:GetWidth())
	fontFrame_Roles:SetHeight(mainFrame_Roles:GetHeight())
	texture1 = fontFrame_Roles:CreateTexture("ARTWORK")
	texture1:SetAllPoints()
	texture1:SetTexture(0, 0, 0, 0)
	fontFrame_Roles.texture = texture1
	fontFrame_Roles:SetFrameLevel(3)
	fontFrame_Roles:SetBackdrop({nil, edgeFile = "Interface\\BUTTONS\\WHITE8X8", tile = false, tileSize = 0, edgeSize = 1, insets = { left = 0, right = 0, top = 0, bottom = 0}})
	fontFrame_Roles:SetBackdropBorderColor(0,0,0)

	-- Create the font string
	fontString_Roles = fontFrame_Roles:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	fontString_Roles:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
	fontString_Roles:SetVertexColor(1, 1, 1, 1)
	fontString_Roles:SetPoint("CENTER", 0, 0)

	-- Fetch the self player name
	RobinRoles_selfPlayerName = UnitName("player")
end

function RobinRoles_UpdateUnitTarget(unitTarget)
	local playerName = UnitName(unitTarget)
	if playerName ~= nil then
		local playerRole = RobinRoles_GetRole(playerName, unitTarget)
		if playerRole == "Unknown" then
			RobinRoles_TryInspectUnit(unitTarget, playerName)
		end
	end
end

function RobinRoles_UpdateRoles()
	if UnitExists("raid1") then
		for i=1, 40, 1 do
			local unitTarget = "raid" .. i
			RobinRoles_UpdateUnitTarget(unitTarget)
		end

		for i=1, 40, 1 do
			local unitTarget = "raidpet" .. i
			RobinRoles_UpdateUnitTarget(unitTarget)
		end
	elseif UnitExists("party1") then
		RobinRoles_UpdateUnitTarget("player", dt, nil)
		for i=1, 4, 1 do
			local unitTarget = "party" .. i
			RobinRoles_UpdateUnitTarget(unitTarget)
		end
		RobinRoles_UpdateUnitTarget("pet")
		for i=1, 4, 1 do
			local unitTarget = "partypet" .. i
			RobinRoles_UpdateUnitTarget(unitTarget)
		end
	else
		RobinRoles_UpdateUnitTarget("player")
		RobinRoles_UpdateUnitTarget("pet")
	end
end

local debugPosition = false
function RobinRoles_UpdateUI()
	local percentage = 0
	local currentTime = GetTime()
	if currentTime - RobinRoles_lastTryInspectUnitCallTime <= RobinRoles_inspectCooldown then
		percentage = (currentTime - RobinRoles_lastTryInspectUnitCallTime) / RobinRoles_inspectCooldown
	end
	if percentage <= 0.0 then
		if debugPosition == false then
			mainFrame_Roles:Hide()
		end
		percentage = 0.000001
	else
		if mainFrame_Roles.isSetToHidden == false then
			mainFrame_Roles:Show()
		end
	end
	foregroundFrame_Roles:SetWidth(mainFrame_Roles:GetWidth() * percentage)
	local playerClass, playerClassFileName = UnitClass(RobinRoles_lastNotifyInspectUnit)
	local playerClassColor = RAID_CLASS_COLORS[playerClassFileName]
	if playerClassColor then
		foregroundFrame_Roles.texture:SetTexture(playerClassColor.r, playerClassColor.g, playerClassColor.b)
	end
	fontString_Roles:SetText(RobinRoles_lastNotifyInspectUnitName .. RobinRoles_calculatePlayerSpecLastFetch)
end

RobinRoles_UpdateRolesCooldownTimer = 0
function RobinRoles_OnUpdate(this, arg1)
	RobinRoles_UpdateRolesCooldownTimer = RobinRoles_UpdateRolesCooldownTimer - arg1
	if RobinRoles_UpdateRolesCooldownTimer < 0 then
		RobinRoles_UpdateRoles()
		RobinRoles_UpdateRolesCooldownTimer = 0.1
	end
	RobinRoles_UpdateUI()
end

-- Toggles the UI on and off when typing "/rr"
SLASH_TOGGLE_ROBIN_ROLES_UI1 = '/rr'
function SlashCmdList.TOGGLE_ROBIN_ROLES_UI(msg, editBox)
	if msg == "" then
		DEFAULT_CHAT_FRAME:AddMessage("Available commands: /rr lock, /rr hide, /rr show, /rr debug")
	else
		if msg == "lock" then
			if mainFrame_Roles.isSetToMovable == false then
				SetMainFrameLockedStatus_Roles(false)
			else
				SetMainFrameLockedStatus_Roles(true)
			end
		elseif msg == "show" or msg == "hide" then
			if mainFrame_Roles:IsVisible() then
				SetSavedVariable_Roles("mainFrameHiddenStatus", true)
				mainFrame_Roles:Hide()
				mainFrame_Roles.isSetToHidden = true
			else
				SetSavedVariable_Roles("mainFrameHiddenStatus", false)
				mainFrame_Roles:Show()
				mainFrame_Roles.isSetToHidden = false
			end
		elseif msg == "debug" then
			if debugPosition == false then
				debugPosition = true
				mainFrame_Roles:Show()
			else
				debugPosition = false
			end
		end
	end
end

--end roles portion

--cooldowns portion


local trackCooldownClasses = {}
local trackCooldownSpecs = {}
local trackCooldownSpells = {}
local trackCooldownSpellIDs = {}
local trackCooldownSpellCooldown = {}

local trackCooldownAllUniqueSpellNames = {}
local trackCooldownAllUniqueSpellEnabledStatuses = {}

local function AddTrackCooldownSpell(class, spec, spellName, spellID, maximumCooldown)
	tinsert(trackCooldownClasses, class)
	tinsert(trackCooldownSpecs, spec)
	tinsert(trackCooldownSpells, spellName)
	tinsert(trackCooldownSpellIDs, spellID)
	tinsert(trackCooldownSpellCooldown, maximumCooldown)
	if tContains(trackCooldownAllUniqueSpellNames, spellName) == nil then
		tinsert(trackCooldownAllUniqueSpellNames, spellName)
		tinsert(trackCooldownAllUniqueSpellEnabledStatuses, true)
	end
end

--					  Class		Spec			Spell Name					Spell ID icon		Cooldown (sec)
AddTrackCooldownSpell("DRUID",	"Any",			GetSpellInfo(20748),		20748,				20 * 60)
AddTrackCooldownSpell("DRUID",	"Any",			GetSpellInfo(29166),		29166,				6 * 60)
AddTrackCooldownSpell("DRUID",	"Any",			GetSpellInfo(26983),		26983,				10 * 60)
AddTrackCooldownSpell("DRUID",	"Feral",		GetSpellInfo(26999),		26999,				3 * 60)
AddTrackCooldownSpell("DRUID",	"Feral",		GetSpellInfo(5209),     	5209,				10 * 60)

AddTrackCooldownSpell("WARRIOR","Protection",	GetSpellInfo(871),			871,				30 * 60)
AddTrackCooldownSpell("WARRIOR","Protection",	GetSpellInfo(12975),		12975,				8 * 60)
AddTrackCooldownSpell("WARRIOR","Protection",	GetSpellInfo(1161),			1161,				10 * 60)

AddTrackCooldownSpell("PRIEST",	"Discipline",	GetSpellInfo(33206),		33206,				2 * 60)
AddTrackCooldownSpell("PRIEST",	"Discipline",	GetSpellInfo(37274),		37274,				3 * 60)

AddTrackCooldownSpell("SHAMAN",	"Restoration",	GetSpellInfo(16190),		16190,				5 * 60)
AddTrackCooldownSpell("SHAMAN",	"Restoration",	GetSpellInfo(20608),		20608,				40 * 60)
AddTrackCooldownSpell("SHAMAN",	"Elemental",	GetSpellInfo(20608),		20608,				60 * 60)
AddTrackCooldownSpell("SHAMAN",	"Enhancement",	GetSpellInfo(20608),		20608,				60 * 60)
AddTrackCooldownSpell("SHAMAN",	"Any",	        GetSpellInfo(27689),		27689,				10 * 60)

AddTrackCooldownSpell("WARLOCK","Any",			GetSpellInfo(27239),		27239,				30 * 60)

AddTrackCooldownSpell("PALADIN","Any",			GetSpellInfo(10278),		10278,				5 * 60)

AddTrackCooldownSpell("HUNTER","Any",			GetSpellInfo(34477),	    34477,				2 * 60)
AddTrackCooldownSpell("HUNTER","Any",			GetSpellInfo(5384),	    	5384,				1 * 30)



local function IsCooldownSpellEnabled(spellName)
	for i=1, #trackCooldownAllUniqueSpellNames do
		if trackCooldownAllUniqueSpellNames[i] == spellName then
			return trackCooldownAllUniqueSpellEnabledStatuses[i]
		end
	end
	return true
end

local debugSpellIcons = false
local showUI = false
local lockUI = false
local cooldownSplit = 2
local scaleUI = 1
local spellIconFontSize_Scale = 1
local spellIconSize_Scale = 1
local offsetBetweenCooldowns_Scale = 1
local cooldownXOffset_Scale = 1
local cooldownFontSize_Scale = 1
local cooldownWidth_Scale = 1
local cooldownHeight_Scale = 1
local yOffsetBetweenSpellIcons_Scale = 1
local edgeOffset_Scale = 1

local screenResolution = ({GetScreenResolutions()})[GetCurrentResolution()]
local screenResolution_Width = string.match(screenResolution, "(%d+)x%d")
local screenResolution_Height = string.match(screenResolution, "%d+x(%d+)")


local resizeFromPixelPerfect = 1.25

local cooldownForegroundBorderOffset = 4


local spellIconFontSize = 0
local spellIconSize = 0

local offsetBetweenCooldowns = 0

local cooldownXOffset = 0
local cooldownFontSize = 0
local cooldownWidth = 0
local cooldownHeight = 0

local yOffsetBetweenSpellIcons = 0
local edgeOffset = 0

local function SetupNewScale()
	spellIconFontSize = math.ceil(25 * resizeFromPixelPerfect * scaleUI * spellIconFontSize_Scale)
	spellIconSize = 40 * resizeFromPixelPerfect * scaleUI * spellIconSize_Scale
	offsetBetweenCooldowns = 2.5 * resizeFromPixelPerfect * scaleUI * offsetBetweenCooldowns_Scale
	cooldownXOffset = 5 * resizeFromPixelPerfect * scaleUI * cooldownXOffset_Scale
	cooldownFontSize = math.ceil(10 * resizeFromPixelPerfect * scaleUI * cooldownFontSize_Scale)
	cooldownWidth = 130 * resizeFromPixelPerfect * scaleUI * cooldownWidth_Scale
	cooldownHeight = 18 * resizeFromPixelPerfect * scaleUI * cooldownHeight_Scale
	yOffsetBetweenSpellIcons = 5 * resizeFromPixelPerfect * scaleUI * yOffsetBetweenSpellIcons_Scale
	edgeOffset = 3 * resizeFromPixelPerfect * scaleUI * edgeOffset_Scale
end
SetupNewScale()

local frameColor = {r=0.0, g=0.0, b=0.0, a=0.4}
local frameColorLocked = {r=0.0, g=0.0, b=0.0, a=0.0}
local cooldownColor = {r=0.8, g=0.8, b=0.8, a=1.0}
local cooldownBackgroundColor = {r=0.2, g=0.2, b=0.2, a=1.0}

local mainFrame = nil
local cooldown_Frames = {}
local spellIcon_Frames = {}


-- This is to avoid the LUA error: "function at line x has more than 60 upvalues"
local vars = {}

vars["SetFrameLevel optionsWindowFrame"] = 10

local optionsWindowFrame = nil
vars["optionsWindowFrameColor"] = {r=0.0, g=0.0, b=0.0, a=0.5}

local optionsWindowCloseButton = nil

local optionsUIObjects = {}

vars["optionsWindowCheckButton_DebugSpellIcons"] = nil
vars["optionsWindowCheckButton_ShowUI"] = nil
vars["optionsWindowCheckButton_LockUI"] = nil
vars["optionsWindowSlider_CooldownSplit"] = nil
vars["optionsWindowSlider_ScaleUI"] = nil
vars["optionsWindowSlider_SpellIconFontSize_Scale"] = nil
vars["optionsWindowSlider_SpellIconSize_Scale"] = nil
vars["optionsWindowSlider_OffsetBetweenCooldowns_Scale"] = nil
vars["optionsWindowSlider_CooldownXOffset_Scale"] = nil
vars["optionsWindowSlider_CooldownFontSize_Scale"] = nil
vars["optionsWindowSlider_CooldownWidth_Scale"] = nil
vars["optionsWindowSlider_CooldownHeight_Scale"] = nil
vars["optionsWindowSlider_YOffsetBetweenSpellIcons_Scale"] = nil
vars["optionsWindowSlider_EdgeOffset_Scale"] = nil

for i=1, #trackCooldownAllUniqueSpellNames do
	local spellName = trackCooldownAllUniqueSpellNames[i]
	vars["optionsWindowCheckButton_Spell_" .. spellName] = nil
end

vars["optionsWindowTitleTextHeight"] = 15
vars["optionsWindowTitleTextOffsetX"] = 5
vars["optionsWindowTitleTextOffsetY"] = 5
vars["optionsWindowTitleTextAdditionalOffsetY"] = 10

vars["optionsWindowButtonWidth"] = 80
vars["optionsWindowButtonHeight"] = 22

vars["optionsWindowWidth"] = 355
vars["optionsWindowItemOffsetX"] = 4
vars["optionsWindowItemOffsetY"] = 5
vars["optionsWindowItemElementYOffset"] = 25
vars["optionsWindowItemTextColor"] = {r=1, g=1, b=1, a=1}

vars["optionsWindowSliderWidth"] = 150
vars["optionsWindowSliderHeight"] = 17

vars["optionsWindowEditBoxDescriptionTextHeight"] = 13
vars["optionsWindowEditBoxDescriptionXOffset"] = 3
vars["optionsWindowEditBoxDescriptionYOffset"] = 2
vars["optionsWindowEditBoxXOffset"] = 123
vars["optionsWindowEditBoxWidth"] = 194
vars["optionsWindowEditBoxHeight"] = 17

local function UpdateUISize()
	SetupNewScale()

	-- Loop through all spell icon frames
	for i=1, #spellIcon_Frames, 1 do
		-- Update the size of the current frame
		local frame = spellIcon_Frames[i]

		frame:SetWidth(spellIconSize)
		frame:SetHeight(spellIconSize)

		frame.fontString:SetFont("Fonts\\FRIZQT__.TTF", spellIconFontSize, "OUTLINE")

	end

	---- Loop through all cooldown frames
	for i=1, #cooldown_Frames do
		-- Update the size of the current frame
		local frame = cooldown_Frames[i]

		frame:SetWidth(cooldownWidth - cooldownForegroundBorderOffset)
		frame:SetHeight(cooldownHeight - cooldownForegroundBorderOffset)

		frame.frameBackground:SetWidth(cooldownWidth)
		frame.frameBackground:SetHeight(cooldownHeight)


		frame.fontString:SetFont("Fonts\\FRIZQT__.TTF", cooldownFontSize, "OUTLINE")
		frame.fontString2:SetFont("Fonts\\FRIZQT__.TTF", cooldownFontSize, "OUTLINE")

	end
end

local function GetChecked_Bool(targetUIElement)
	if targetUIElement:GetChecked() == nil then
		return false
	end

	return true
end

local function SetMainFrameLockedStatus(lockedStatus)
	if lockedStatus == true then
		mainFrame.isSetToMovable = false
		mainFrame:EnableMouse(false)
		mainFrame.texture:SetTexture(frameColorLocked.r, frameColorLocked.g, frameColorLocked.b, frameColorLocked.a)
	else
		mainFrame.isSetToMovable = true
		mainFrame:EnableMouse(true)
		mainFrame.texture:SetTexture(frameColor.r, frameColor.g, frameColor.b, frameColor.a)
	end
end

local sliderPercentageValue_Min = 1
local sliderPercentageValue_Max = 100
local sliderPercentageValue_Middle = 50
local function ConvertSliderValueToPercentageValue(value)
	-- 1 to 100, to 0.1 - 5, where 50 is 1
	local retValue = 0
	if value == sliderPercentageValue_Middle then
		retValue = 1.0
	elseif value > sliderPercentageValue_Middle then
		local percentage = (value - sliderPercentageValue_Middle) / (sliderPercentageValue_Max - sliderPercentageValue_Middle)
		local percentageMin = 1
		local percentageMax = 5
		retValue = percentageMin + ((percentageMax - percentageMin) * percentage)
	elseif value < sliderPercentageValue_Middle then
		local percentage = (value - sliderPercentageValue_Min) / (sliderPercentageValue_Max - sliderPercentageValue_Middle)
		local percentageMin = 0.1
		local percentageMax = 1
		retValue = percentageMin + ((percentageMax - percentageMin) * percentage)
	end
	return retValue
end

local function SetOption(targetUIElement)
	if not Robin_SavedVars then
		Robin_SavedVars = {}
	end

	-- Get the value of the target UI element
	local value = nil
	if targetUIElement:GetObjectType() == "CheckButton" then
		value = GetChecked_Bool(targetUIElement)
	elseif targetUIElement:GetObjectType() == "Slider" then
		value = targetUIElement:GetValue()
		getglobal(targetUIElement:GetName() .. "Value"):SetText("" .. value)
	elseif targetUIElement:GetObjectType() == "EditBox" then
		value = targetUIElement:GetText()
	end

	-- Set the new value to the saved values
	Robin_SavedVars[targetUIElement:GetName()] = value

	-- Set the changes to actually alter something
	debugSpellIcons = GetChecked_Bool(vars["optionsWindowCheckButton_DebugSpellIcons"])
	showUI = GetChecked_Bool(vars["optionsWindowCheckButton_ShowUI"])
	lockUI = GetChecked_Bool(vars["optionsWindowCheckButton_LockUI"])
	scaleUI = ConvertSliderValueToPercentageValue(vars["optionsWindowSlider_ScaleUI"]:GetValue())
	cooldownSplit = vars["optionsWindowSlider_CooldownSplit"]:GetValue()

	for i=1, #trackCooldownAllUniqueSpellNames do
		local spellName = trackCooldownAllUniqueSpellNames[i]
		trackCooldownAllUniqueSpellEnabledStatuses[i] = GetChecked_Bool(vars["optionsWindowCheckButton_Spell_" .. spellName])
	end

	spellIconFontSize_Scale = ConvertSliderValueToPercentageValue(vars["optionsWindowSlider_SpellIconFontSize_Scale"]:GetValue())
	spellIconSize_Scale = ConvertSliderValueToPercentageValue(vars["optionsWindowSlider_SpellIconSize_Scale"]:GetValue())
	offsetBetweenCooldowns_Scale = ConvertSliderValueToPercentageValue(vars["optionsWindowSlider_OffsetBetweenCooldowns_Scale"]:GetValue())
	cooldownXOffset_Scale = ConvertSliderValueToPercentageValue(vars["optionsWindowSlider_CooldownXOffset_Scale"]:GetValue())
	cooldownFontSize_Scale = ConvertSliderValueToPercentageValue(vars["optionsWindowSlider_CooldownFontSize_Scale"]:GetValue())
	cooldownWidth_Scale = ConvertSliderValueToPercentageValue(vars["optionsWindowSlider_CooldownWidth_Scale"]:GetValue())
	cooldownHeight_Scale = ConvertSliderValueToPercentageValue(vars["optionsWindowSlider_CooldownHeight_Scale"]:GetValue())
	yOffsetBetweenSpellIcons_Scale = ConvertSliderValueToPercentageValue(vars["optionsWindowSlider_YOffsetBetweenSpellIcons_Scale"]:GetValue())
	edgeOffset_Scale = ConvertSliderValueToPercentageValue(vars["optionsWindowSlider_EdgeOffset_Scale"]:GetValue())

	if showUI then
		mainFrame:Show()
		mainFrame.isSetToHidden = false
	else
		mainFrame:Hide()
		mainFrame.isSetToHidden = true
	end

	SetMainFrameLockedStatus(lockUI)

	UpdateUISize()
end

local function SetupDefaultOption(targetUIElement, value)
	if Robin_SavedVars[targetUIElement:GetName()] == nil then
		Robin_SavedVars[targetUIElement:GetName()] = value
	end
end

local function SetUIOption(targetUIElement)
	if targetUIElement:GetObjectType() == "CheckButton" then
		targetUIElement:SetChecked(Robin_SavedVars[targetUIElement:GetName()])

		if targetUIElement == vars["optionsWindowCheckButton_SplitDecurse"] then
			UpdateUISize()
		end
	elseif targetUIElement:GetObjectType() == "Slider" then
		targetUIElement:SetValue(Robin_SavedVars[targetUIElement:GetName()])

		if targetUIElement == optionsWindowSlider_BarWidth or
           targetUIElement == optionsWindowSlider_BarHeight or
           targetUIElement == optionsWindowSlider_PlayerButtonOffsetBetweenElements or
           targetUIElement == optionsWindowSlider_ManaBarHeight or
           targetUIElement == optionsWindowSlider_IncomingHealIconSize or
           targetUIElement == optionsWindowSlider_ShowableBuffIconSize or
           targetUIElement == optionsWindowSlider_ShowableBuffTextSize or
		   targetUIElement == optionsWindowSlider_NameSize or
		   targetUIElement == optionsWindowSlider_DecurseSize then
			UpdateUISize()
		end
	elseif targetUIElement:GetObjectType() == "EditBox" then
		targetUIElement:SetText(Robin_SavedVars[targetUIElement:GetName()])
	end
end

local function LoadOptions()
	if not Robin_SavedVars then
		Robin_SavedVars = {}
	end

	-- Setup default options if we have not loaded any
	SetupDefaultOption(vars["optionsWindowCheckButton_DebugSpellIcons"], false)
	SetupDefaultOption(vars["optionsWindowCheckButton_ShowUI"], true)
	SetupDefaultOption(vars["optionsWindowCheckButton_LockUI"], false)
	SetupDefaultOption(vars["optionsWindowSlider_CooldownSplit"], 2)
	SetupDefaultOption(vars["optionsWindowSlider_ScaleUI"], sliderPercentageValue_Middle)
	SetupDefaultOption(vars["optionsWindowSlider_SpellIconFontSize_Scale"], sliderPercentageValue_Middle)
	SetupDefaultOption(vars["optionsWindowSlider_SpellIconSize_Scale"], sliderPercentageValue_Middle)
	SetupDefaultOption(vars["optionsWindowSlider_OffsetBetweenCooldowns_Scale"], sliderPercentageValue_Middle)
	SetupDefaultOption(vars["optionsWindowSlider_CooldownXOffset_Scale"], sliderPercentageValue_Middle)
	SetupDefaultOption(vars["optionsWindowSlider_CooldownFontSize_Scale"], sliderPercentageValue_Middle)
	SetupDefaultOption(vars["optionsWindowSlider_CooldownWidth_Scale"], sliderPercentageValue_Middle)
	SetupDefaultOption(vars["optionsWindowSlider_CooldownHeight_Scale"], sliderPercentageValue_Middle)
	SetupDefaultOption(vars["optionsWindowSlider_YOffsetBetweenSpellIcons_Scale"], sliderPercentageValue_Middle)
	SetupDefaultOption(vars["optionsWindowSlider_EdgeOffset_Scale"], sliderPercentageValue_Middle)

	for i=1, #trackCooldownAllUniqueSpellNames do
		local spellName = trackCooldownAllUniqueSpellNames[i]
		SetupDefaultOption(vars["optionsWindowCheckButton_Spell_" .. spellName], true)
	end

	-- Set the UI to the options
	for i=1, #optionsUIObjects do
		SetUIOption(optionsUIObjects[i])
	end

	-- Set the options
	for i=1, #optionsUIObjects do
		SetOption(optionsUIObjects[i])
	end
end

local CreateOption_YOffset = 0
local function CreateOption_CheckBox(name, text, tooltip)
	local frame = CreateFrame("CheckButton", name, optionsWindowFrame, "ChatConfigCheckButtonTemplate")
	frame:SetPoint("TOPLEFT", vars["optionsWindowItemOffsetX"], -vars["optionsWindowItemOffsetY"] - CreateOption_YOffset)
	getglobal(frame:GetName() .. 'Text'):SetText(text)
	frame.tooltip = tooltip

	frame:SetScript("OnClick", function()
		SetOption(frame)
	end)

	CreateOption_YOffset = CreateOption_YOffset + vars["optionsWindowItemElementYOffset"]

	tinsert(optionsUIObjects, frame)
	vars[name] = frame
	return frame
end

local function CreateOption_Slider(name, text, minValue, maxValue)
	local sliderXOffset = 3

	local frame = CreateFrame("Slider", name, optionsWindowFrame, "RobinTrackCooldowns_SliderTemplate")
	frame:SetPoint("TOPLEFT", vars["optionsWindowItemOffsetX"] + sliderXOffset, -vars["optionsWindowItemOffsetY"] - CreateOption_YOffset)
	frame:SetWidth(vars["optionsWindowSliderWidth"])
	frame:SetHeight(vars["optionsWindowSliderHeight"])
	frame:SetOrientation("HORIZONTAL")
	frame:SetThumbTexture("Interface\\Buttons\\UI-SliderBar-Button-Horizontal")
	frame:SetMinMaxValues(minValue, maxValue)
	frame:SetBackdrop(
	{
		bgFile = "Interface\\Buttons\\UI-SliderBar-Background", 
		edgeFile = "Interface\\Buttons\\UI-SliderBar-Border",
		tile = true, tileSize = 8, edgeSize = 8, 
		insets = { left = 3, right = 3, top = 6, bottom = 6 }
	})

	local titleText = getglobal(frame:GetName() .. "Title")
	titleText:SetText(text)
	titleText:SetVertexColor(vars["optionsWindowItemTextColor"].r,vars["optionsWindowItemTextColor"].g,vars["optionsWindowItemTextColor"].b,vars["optionsWindowItemTextColor"].a)
	titleText:SetTextHeight(12)

	frame:SetScript("OnValueChanged", function()
		SetOption(frame)
	end)

	frame:SetValueStep(1)

	CreateOption_YOffset = CreateOption_YOffset + vars["optionsWindowItemElementYOffset"]

	tinsert(optionsUIObjects, frame)
	vars[name] = frame
	return frame
end

local function CreateOption_EditBox(name, description)
	local fontString = optionsWindowFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	fontString:SetFont("Fonts\\FRIZQT__.TTF", vars["optionsWindowEditBoxDescriptionTextHeight"], "NORMAL")
	fontString:SetVertexColor(1, 1, 1, 1)
	fontString:SetPoint("TOPLEFT", vars["optionsWindowItemOffsetX"] + vars["optionsWindowEditBoxDescriptionXOffset"], -vars["optionsWindowItemOffsetY"] - vars["optionsWindowEditBoxDescriptionYOffset"] - CreateOption_YOffset)
	fontString:SetText(description .. ":")

	local frame = CreateFrame("EditBox", name, optionsWindowFrame, "InputBoxTemplate")
	frame:SetAutoFocus(false)
	frame:SetPoint("TOPLEFT", vars["optionsWindowEditBoxXOffset"] + vars["optionsWindowItemOffsetX"], -vars["optionsWindowItemOffsetY"] - CreateOption_YOffset)
	frame:SetWidth(vars["optionsWindowEditBoxWidth"])
	frame:SetHeight(vars["optionsWindowEditBoxHeight"])

	frame:SetScript("OnEnterPressed", function()
		-- Clear the focus of the textbox
		frame:ClearFocus()

		SetOption(frame)
	end)

	CreateOption_YOffset = CreateOption_YOffset + vars["optionsWindowItemElementYOffset"]

	tinsert(optionsUIObjects, frame)
	vars[name] = frame
	return frame
end


local function ClearList(list)
	while #list > 0 do
		tremove(list, 1)
	end
end

function FindSpell(startID, endID, spellName)
	DEFAULT_CHAT_FRAME:AddMessage("Finding spell ID for " .. spellName)
	for i = startID, endID, 1 do
		local name, rank, icon, powerCost, isFunnel, powerType, castingTime, minRange, maxRange = GetSpellInfo(i)
		if name then
			if name == spellName then
				local msg = "[" .. i .. "] - "
				local spellLink = GetSpellLink(i)
				if spellLink then
					msg = msg .. spellLink
				else
					msg = msg .. "[" .. name .."]"
				end
				if rank and rank ~= "" then
					msg = msg .. ", " .. rank
				end
				if icon and icon ~= "" then
					msg = msg .. ", " .. icon
				end
				DEFAULT_CHAT_FRAME:AddMessage(msg)
			end
		end
	end
end

-- Finds the spell ID from a spell name when typing "/findspellid X"
SLASH_FIND_SPELL_ID_FROM_SPELL_NAME1 = '/findspellid'
function SlashCmdList.FIND_SPELL_ID_FROM_SPELL_NAME(msg, editBox)
	FindSpell(1,100000, msg)
end

local function GetMaximumCooldown(spellName, playerName)
	if RobinRoles_playerSpecs[playerName] then
		for i=1, #trackCooldownSpells, 1 do
			if trackCooldownSpells[i] == spellName and
			   (trackCooldownSpecs[i] == "Any" or trackCooldownSpecs[i] == RobinRoles_playerSpecs[playerName]) then
				return trackCooldownSpellCooldown[i]
			end
		end
	end

	return 0
end

local function GetSpellIconFromName(spellName)
	for i=1, #trackCooldownSpells, 1 do
		if trackCooldownSpells[i] == spellName then
			return trackCooldownSpellIDs[i]
		end
	end
	return ""
end
local function FormatCooldownText(cooldownLeft)
	local textStr = ""
	local minutes = math.floor(cooldownLeft / 60.0)
	cooldownLeft = cooldownLeft - (minutes * 60.0)
	local seconds = math.floor(cooldownLeft + 1)
	if seconds >= 60 then
		seconds = seconds - 60
		minutes = minutes + 1
	end
	local secondsStr = seconds
	if seconds <= 9 then
		secondsStr = "0" .. secondsStr
	end
	return minutes .. ":" .. secondsStr
end
local function IsOnRightSide()
	local point, relativeTo, relativePoint, xOfs, yOfs = mainFrame:GetPoint()
	if point == "TOPRIGHT" or point == "RIGHT" or point == "BOTTOMRIGHT" then
		return true
	end
	if point == "TOPLEFT" then -- We might be dragging the frame
		if xOfs * mainFrame:GetScale() > UIParent:GetWidth() * 0.5 then
			return true
		end
	end
	if point == "TOP" or point == "CENTER" or point == "BOTTOM" then
		if xOfs > 0 then
			return true
		end
	end
	return false
end

local isOnRightSide = false
local yOffsetMaximum = 0
local currentXOffset = 0
local currentYOffset = 0
local cooldownBottomMostElementY = 0
local cooldownCurrentXOffset = 0
local cooldownCurrentYOffset = 0
local cooldownCurrentXOffsetStart = 0
local cooldownCurrentYOffsetStart = 0
local cooldownCurrentCounter = 0
local function UpdateCooldownFrame(frame, show)
	-- Get variables needed
	local frameBackground = frame.frameBackground
	local fontFrame = frame.fontFrame

	-- Check if we should show the frame
	if show then
		-- Check if the current frame is used
		if frame.isUsed then
			-- Set the position of the current frame
			frameBackground:SetPoint("TOPLEFT", cooldownCurrentXOffset, -cooldownCurrentYOffset)
			frame:SetPoint("TOPLEFT", cooldownCurrentXOffset + (cooldownForegroundBorderOffset * 0.5), -cooldownCurrentYOffset - (cooldownForegroundBorderOffset * 0.5))
			frameBackground:Show()
			fontFrame:Show()
			frame:Show()
			cooldownBottomMostElementY = max(cooldownBottomMostElementY, cooldownCurrentYOffset)

			-- Set the width of the current frame
			local cooldownLeft = frame.spellTimestamp - GetTime()
			local percentage = cooldownLeft / frame.maximumCooldown
			if percentage == 0 then
				percentage = 0.000001
			end
			frame:SetWidth((cooldownWidth - cooldownForegroundBorderOffset) * percentage)

			-- Set the text of the current frame
			local fontString = frame.fontString
			local fontString2 = frame.fontString2
			fontString:SetText(frame.playerName)
			fontString2.cooldownLeft = cooldownLeft
			local text = FormatCooldownText(fontString2.cooldownLeft)
			fontString2:SetText(text)

			-- Check if the current frame has no cooldown left
			if cooldownLeft < 0 then --DODRUMs update
					-- -- Set that the frame is not used anymore
					-- frame.isUsed = false
					-- frameBackground:Hide()
					-- fontFrame:Hide()
					-- frame:Hide()
				frame.isUsed = true
				frameBackground:Show()
				fontFrame:Show()
				frame:Show()
				fontString2:SetText("Ready!")
				cooldownCurrentCounter = cooldownCurrentCounter + 1
				if cooldownCurrentCounter == cooldownSplit then
					cooldownCurrentYOffset = cooldownCurrentYOffsetStart
					if isOnRightSide then
						cooldownCurrentXOffset = cooldownCurrentXOffset - cooldownWidth - offsetBetweenCooldowns
					else
						cooldownCurrentXOffset = cooldownCurrentXOffset + cooldownWidth + offsetBetweenCooldowns
					end
					cooldownCurrentCounter = 0
				else
					cooldownCurrentYOffset = cooldownCurrentYOffset + cooldownHeight + offsetBetweenCooldowns
				end
			else
				-- Go to the next position
				cooldownCurrentCounter = cooldownCurrentCounter + 1
				if cooldownCurrentCounter == cooldownSplit then
					cooldownCurrentYOffset = cooldownCurrentYOffsetStart
					if isOnRightSide then
						cooldownCurrentXOffset = cooldownCurrentXOffset - cooldownWidth - offsetBetweenCooldowns
					else
						cooldownCurrentXOffset = cooldownCurrentXOffset + cooldownWidth + offsetBetweenCooldowns
					end
					cooldownCurrentCounter = 0
				else
					cooldownCurrentYOffset = cooldownCurrentYOffset + cooldownHeight + offsetBetweenCooldowns
				end
			end
		end
	else
		-- Hide the cooldown frame
		frameBackground:Hide()
		fontFrame:Hide()
		frame:Hide()
	end
end

local foundAtLeastOne = false
local function UpdateSpellIconFrame(index)
	-- Check if the current frame is used
	local frame = spellIcon_Frames[index]
	local spellName = frame.spellName
	if frame:IsShown() then
		-- Set the position of the current frame
		frame:SetPoint("TOPLEFT", currentXOffset, -currentYOffset)
	end

	-- Update the cooldown frames of the spell icon
	cooldownBottomMostElementY = 0
	cooldownCurrentCounter = 0
	cooldownCurrentXOffset = currentXOffset + spellIconSize + cooldownXOffset
	if isOnRightSide then
		cooldownCurrentXOffset = currentXOffset - cooldownXOffset - cooldownWidth
	end
	cooldownCurrentYOffset = currentYOffset
	cooldownCurrentXOffsetStart = cooldownCurrentXOffset
	cooldownCurrentYOffsetStart = cooldownCurrentYOffset
	local count = 0
	for i=1, #cooldown_Frames, 1 do
		local cooldownFrame = cooldown_Frames[i]
		if cooldownFrame.isUsed then
			if cooldownFrame.spellName == spellName then
				if frame:IsShown() then
					UpdateCooldownFrame(cooldownFrame, true)
				else
					UpdateCooldownFrame(cooldownFrame, false)
				end
				if cooldownFrame.fontString2:GetText() ~= "Ready!" then
					count = count + 1 --used cooldown, so reduce counter of available ones
				end
			end
		else
			if cooldownFrame.spellName == spellName then
				if cooldownFrame.fontString2:GetText() == "Ready!" then --unused "Ready!" frame, i.e. player not in range
				   count = count + 1 --player is out of range, so cooldown is not available
				end
			end
		end
	end

	-- Check if the current frame is used
	if frame:IsShown() then
		foundAtLeastOne = true

		-- Set the text of the current frame
		local fontString = frame.fontString
		fontString:SetText("" .. (frame.count - count))

		-- Go to the next position
		local diff = 0
		if cooldownBottomMostElementY + cooldownHeight - spellIconSize > currentYOffset then
			diff = diff + ((cooldownBottomMostElementY + cooldownHeight - spellIconSize) - currentYOffset)
		end
		diff = diff + spellIconSize + yOffsetBetweenSpellIcons
		currentYOffset = currentYOffset + diff
		yOffsetMaximum = yOffsetMaximum + diff
	end
end

local function IsPlayerValidForSpellCooldown(playerName, spellCooldownIndex)
	-- Check if the role of the current player is what we are looking for
	if RobinRoles_playerSpecs[playerName] then
		if trackCooldownSpecs[spellCooldownIndex] == RobinRoles_playerSpecs[playerName] then
			return true
		end
		if trackCooldownSpecs[spellCooldownIndex] == "Any" then
			return true
		end
	end

	return false
end

local classesInGroup = {}
local playersInGroup = {}
local function CooldownFrame_OnEnter(self)
	-- Check if the caller is valid
	if self then
		-- Set the tooltip
		GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", 2, spellIconSize + 2)
		GameTooltip:SetText(self.spellName)

		-- Set the tooltip lines all players that can use the spell

		-- Loop through all classes
		for i=1, #classesInGroup, 1 do
			-- Check if the current player has a valid name
			local playerName = playersInGroup[i]
			if playerName ~= nil then
				-- Make sure the spell icon exists and is shown for the current class
				for n=1, #trackCooldownClasses, 1 do
					-- Check if the current player is the class we are looking for
					if trackCooldownClasses[n] == classesInGroup[i] then
						-- Check if the current spell is the one we are looking for
						if trackCooldownSpells[n] == self.spellName then
							-- Check if the role of the current player is what we are looking for
							if IsPlayerValidForSpellCooldown(playerName, n) then
								GameTooltip:AddLine(playerName .. ": " .. RobinRoles_playerClassAndLevels[playerName] .. " (" .. RobinRoles_playerSpecs[playerName] .. ", " .. RobinRoles_playerTalents[playerName] .. ")", 1, 1, 1)
							end
						end
					end
				end
			end
		end

		GameTooltip:Show()
	end
end

local function CooldownFrame_OnLeave(self) GameTooltip:Hide() end

local function CreateBorder(parentFrame, offset, pixels, r, g, b, a, frameLevel)
	local frame = CreateFrame("Frame", nil, parentFrame)
	local texture1 = frame:CreateTexture(nil, "BACKGROUND")
	texture1:SetAllPoints()
	texture1:SetTexture(0, 0, 0, 0)
	frame.texture = texture1
	frame:SetFrameLevel(frameLevel)

	frame:SetBackdrop({nil, edgeFile = "Interface\\BUTTONS\\WHITE8X8", tile = false, tileSize = 0, edgeSize = pixels, insets = { left = 0, right = 0, top = 0, bottom = 0}})
	frame:SetBackdropBorderColor(r, g, b, a)
	frame:SetPoint("TOPLEFT", -offset, offset)
	frame:SetPoint("BOTTOMRIGHT", offset, -offset)

	if parentFrame.borders == nil then
		parentFrame.borders = {}
	end
	tinsert(parentFrame.borders, frame)
end
local function DodrumsCreateCooldownFrame(playerName, spellName)
	local frame = nil
	for i=1, #cooldown_Frames, 1 do
		if cooldown_Frames[i].playerName == playerName and
		   cooldown_Frames[i].spellName == spellName then
		   frame = cooldown_Frames[i]
		   --tremove(cooldown_Frames, i)
		   --tinsert(cooldown_Frames, frame)
			--local doNotCreate = true
		end
	end
	if frame == nil then
		-- Create a new frame
		frame = CreateFrame("Frame", "TrackCooldownFrame_" .. #cooldown_Frames, mainFrame)
		frame:SetWidth(cooldownWidth - cooldownForegroundBorderOffset)
		frame:SetHeight(cooldownHeight - cooldownForegroundBorderOffset)
		local texture1 = frame:CreateTexture("ARTWORK")
		texture1:SetTexture("Interface\\Addons\\RobinTrackCooldowns\\textures\\cooldownBar")
		texture1:SetAllPoints()
		texture1:SetVertexColor(cooldownColor.r, cooldownColor.g, cooldownColor.b, cooldownColor.a)
		frame.texture = texture1
		frame.playerName = playerName
		frame.spellName = spellName
		frame:SetPoint("TOPLEFT", 0, 0)
		frame:SetFrameLevel(2)
		frame.cooldownName = cooldownName

		local frameBackground = CreateFrame("Frame", "TrackCooldownFrameBackground_" .. #cooldown_Frames, mainFrame)
		frameBackground:SetWidth(cooldownWidth)
		frameBackground:SetHeight(cooldownHeight)
		texture1 = frameBackground:CreateTexture("ARTWORK")
		texture1:SetTexture("Interface\\Addons\\RobinTrackCooldowns\\textures\\cooldownBar")
		texture1:SetAllPoints()
		texture1:SetVertexColor(cooldownBackgroundColor.r, cooldownBackgroundColor.g, cooldownBackgroundColor.b, cooldownBackgroundColor.a)
		frameBackground.texture = texture1
		frameBackground:SetFrameLevel(1)
		frame.frameBackground = frameBackground

		CreateBorder(frameBackground,-2,1,0,0,0,1,frame:GetFrameLevel() + 1)
		CreateBorder(frameBackground,-1,1,cooldownColor.r,cooldownColor.g,cooldownColor.b,cooldownColor.a,frame:GetFrameLevel() + 1)
		CreateBorder(frameBackground,0,1,0,0,0,1,frame:GetFrameLevel() + 1)

		local fontFrame = CreateFrame("Frame", "TrackCooldownFontFrame_" .. #cooldown_Frames, frameBackground)
		texture1 = fontFrame:CreateTexture(nil, "BACKGROUND")
		texture1:SetAllPoints()
		texture1:SetTexture(0, 0, 0, 0)
		fontFrame.texture = texture1
		fontFrame:SetFrameLevel(4)
		frame.fontFrame = fontFrame
		fontFrame:SetPoint("TOPLEFT", -0, 0)
		fontFrame:SetPoint("BOTTOMRIGHT", 0, -0)

		local bottomOffset = 0
		local leftOffset = 4
		local rightOffset = -3
		local topOffset = 0
		local fontString = fontFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		fontString:SetFont("Fonts\\FRIZQT__.TTF", cooldownFontSize, "OUTLINE")
		fontString:SetVertexColor(1, 1, 1, 1)
		fontString.cooldownLeft = 0
		fontString:SetPoint("TOPLEFT", fontFrame, "TOPLEFT", leftOffset, topOffset)
		fontString:SetPoint("BOTTOMRIGHT", fontFrame, "BOTTOMRIGHT", rightOffset, bottomOffset)
		fontString:SetJustifyH("LEFT")
		fontString:SetJustifyV("MIDDLE")
		fontString:SetShadowOffset(0, 0)
		fontString:SetShadowColor(0, 0, 0, 0)
		frame.fontString = fontString

		local fontString2 = fontFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		fontString2:SetFont("Fonts\\FRIZQT__.TTF", cooldownFontSize, "OUTLINE")
		fontString2:SetVertexColor(1, 1, 1, 1)
		fontString2:SetPoint("TOPLEFT", fontFrame, "TOPLEFT", leftOffset, topOffset)
		fontString2:SetPoint("BOTTOMRIGHT", fontFrame, "BOTTOMRIGHT", rightOffset, bottomOffset)
		fontString2.cooldownLeft = 0
		fontString2:SetJustifyH("RIGHT")
		fontString2:SetJustifyV("MIDDLE")
		fontString2:SetShadowOffset(0, 0)
		fontString2:SetShadowColor(0, 0, 0, 0)
		frame.fontString2 = fontString2

		tinsert(cooldown_Frames, frame)
	end
	if frame.isUsed ~= true then
		local maximumCooldown = 1
		frame.spellTimestamp = GetTime() + maximumCooldown
		frame.maximumCooldown = maximumCooldown
		frame:Show()
		frame.frameBackground:Show()
		frame.fontFrame:Show()
		frame.isUsed = true

		local class = nil
		for i=1, #trackCooldownSpells, 1 do
			if trackCooldownSpells[i] == spellName then
				class = trackCooldownClasses[i]
				break
			end
		end
		if class ~= nil then
			local playerClassColor = RAID_CLASS_COLORS[string.upper(class):gsub(" ", "")]
			if playerClassColor then
				frame.texture:SetVertexColor(cooldownColor.r * playerClassColor.r, cooldownColor.g * playerClassColor.g, cooldownColor.b * playerClassColor.b, cooldownColor.a)
				frame.frameBackground.texture:SetVertexColor(cooldownBackgroundColor.r * playerClassColor.r, cooldownBackgroundColor.g * playerClassColor.g, cooldownBackgroundColor.b * playerClassColor.b, cooldownBackgroundColor.a)
				frame.frameBackground.borders[2]:SetBackdropBorderColor(playerClassColor.r, playerClassColor.g, playerClassColor.b, 1)
			end
		end
	end
	return frame
end


local function CreateCooldown(playerName, spellName)
	-- Check if we do not already have a frame with this name
	local frame = nil
	for i=1, #cooldown_Frames, 1 do
		if cooldown_Frames[i].playerName == playerName and
		   cooldown_Frames[i].spellName == spellName then
			frame = cooldown_Frames[i]
			tremove(cooldown_Frames, i)
			tinsert(cooldown_Frames, frame)
			break
		end
	end
	if frame == nil then
		-- Create a new frame
		frame = CreateFrame("Frame", "TrackCooldownFrame_" .. #cooldown_Frames, mainFrame)
		frame:SetWidth(cooldownWidth - cooldownForegroundBorderOffset)
		frame:SetHeight(cooldownHeight - cooldownForegroundBorderOffset)
		local texture1 = frame:CreateTexture("ARTWORK")
		texture1:SetTexture("Interface\\Addons\\RobinTrackCooldowns\\textures\\cooldownBar")
		texture1:SetAllPoints()
		texture1:SetVertexColor(cooldownColor.r, cooldownColor.g, cooldownColor.b, cooldownColor.a)
		frame.texture = texture1
		frame.playerName = playerName
		frame.spellName = spellName
		frame:SetPoint("TOPLEFT", 0, 0)
		frame:SetFrameLevel(2)
		frame.cooldownName = cooldownName

		local frameBackground = CreateFrame("Frame", "TrackCooldownFrameBackground_" .. #cooldown_Frames, mainFrame)
		frameBackground:SetWidth(cooldownWidth)
		frameBackground:SetHeight(cooldownHeight)
		texture1 = frameBackground:CreateTexture("ARTWORK")
		texture1:SetTexture("Interface\\Addons\\RobinTrackCooldowns\\textures\\cooldownBar")
		texture1:SetAllPoints()
		texture1:SetVertexColor(cooldownBackgroundColor.r, cooldownBackgroundColor.g, cooldownBackgroundColor.b, cooldownBackgroundColor.a)
		frameBackground.texture = texture1
		frameBackground:SetFrameLevel(1)
		frame.frameBackground = frameBackground

		CreateBorder(frameBackground,-2,1,0,0,0,1,frame:GetFrameLevel() + 1)
		CreateBorder(frameBackground,-1,1,cooldownColor.r,cooldownColor.g,cooldownColor.b,cooldownColor.a,frame:GetFrameLevel() + 1)
		CreateBorder(frameBackground,0,1,0,0,0,1,frame:GetFrameLevel() + 1)

		local fontFrame = CreateFrame("Frame", "TrackCooldownFontFrame_" .. #cooldown_Frames, frameBackground)
		texture1 = fontFrame:CreateTexture(nil, "BACKGROUND")
		texture1:SetAllPoints()
		texture1:SetTexture(0, 0, 0, 0)
		fontFrame.texture = texture1
		fontFrame:SetFrameLevel(4)
		frame.fontFrame = fontFrame
		fontFrame:SetPoint("TOPLEFT", -0, 0)
		fontFrame:SetPoint("BOTTOMRIGHT", 0, -0)

		local bottomOffset = 0
		local leftOffset = 4
		local rightOffset = -3
		local topOffset = 0
		local fontString = fontFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		fontString:SetFont("Fonts\\FRIZQT__.TTF", cooldownFontSize, "OUTLINE")
		fontString:SetVertexColor(1, 1, 1, 1)
		fontString.cooldownLeft = 0
		fontString:SetPoint("TOPLEFT", fontFrame, "TOPLEFT", leftOffset, topOffset)
		fontString:SetPoint("BOTTOMRIGHT", fontFrame, "BOTTOMRIGHT", rightOffset, bottomOffset)
		fontString:SetJustifyH("LEFT")
		fontString:SetJustifyV("MIDDLE")
		fontString:SetShadowOffset(0, 0)
		fontString:SetShadowColor(0, 0, 0, 0)
		frame.fontString = fontString

		local fontString2 = fontFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		fontString2:SetFont("Fonts\\FRIZQT__.TTF", cooldownFontSize, "OUTLINE")
		fontString2:SetVertexColor(1, 1, 1, 1)
		fontString2:SetPoint("TOPLEFT", fontFrame, "TOPLEFT", leftOffset, topOffset)
		fontString2:SetPoint("BOTTOMRIGHT", fontFrame, "BOTTOMRIGHT", rightOffset, bottomOffset)
		fontString2.cooldownLeft = 0
		fontString2:SetJustifyH("RIGHT")
		fontString2:SetJustifyV("MIDDLE")
		fontString2:SetShadowOffset(0, 0)
		fontString2:SetShadowColor(0, 0, 0, 0)
		frame.fontString2 = fontString2

		tinsert(cooldown_Frames, frame)
	end

	local maximumCooldown = GetMaximumCooldown(spellName, playerName)
	frame.spellTimestamp = GetTime() + maximumCooldown
	frame.maximumCooldown = maximumCooldown
	frame:Show()
	frame.frameBackground:Show()
	frame.fontFrame:Show()
	frame.isUsed = true

	local class = nil
	for i=1, #trackCooldownSpells, 1 do
		if trackCooldownSpells[i] == spellName then
			class = trackCooldownClasses[i]
			break
		end
	end
	if class ~= nil then
		local playerClassColor = RAID_CLASS_COLORS[string.upper(class):gsub(" ", "")]
		if playerClassColor then
			frame.texture:SetVertexColor(cooldownColor.r * playerClassColor.r, cooldownColor.g * playerClassColor.g, cooldownColor.b * playerClassColor.b, cooldownColor.a)
			frame.frameBackground.texture:SetVertexColor(cooldownBackgroundColor.r * playerClassColor.r, cooldownBackgroundColor.g * playerClassColor.g, cooldownBackgroundColor.b * playerClassColor.b, cooldownBackgroundColor.a)
			frame.frameBackground.borders[2]:SetBackdropBorderColor(playerClassColor.r, playerClassColor.g, playerClassColor.b, 1)
		end
	end

	return frame
end

local function GetSpellIconIndex(spellName, class)
	-- Check if we do not already have a frame with this name
	local frame = nil
	for i=1, #spellIcon_Frames, 1 do
		if spellIcon_Frames[i].spellName == spellName then
			frame = spellIcon_Frames[i]
			return i
		end
	end
	if frame == nil then
		-- Create a new frame
		frame = CreateFrame("Frame", "TrackCooldownSpellIconFrame_" .. #spellIcon_Frames, mainFrame)
		frame:SetWidth(spellIconSize)
		frame:SetHeight(spellIconSize)
		local texture1 = frame:CreateTexture(nil, "BACKGROUND")
		texture1:SetAllPoints()
		frame.texture = texture1
		frame.spellName = spellName
		frame:SetPoint("TOPLEFT", 0, 0)
		frame.cooldownName = cooldownName
		frame.count = 0
		frame:EnableMouse(true)
		frame:SetScript("OnEnter", CooldownFrame_OnEnter)
		frame:SetScript("OnLeave", CooldownFrame_OnLeave)
		frame:SetScript("OnUpdate", CooldownFrame_OnUpdate)

		local playerClassColor = RAID_CLASS_COLORS[string.upper(class):gsub(" ", "")]
		if playerClassColor then
			CreateBorder(frame,-1,1,playerClassColor.r,playerClassColor.g,playerClassColor.b,1,frame:GetFrameLevel() + 1)
		end

		local fontString = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		fontString:SetFont("Fonts\\FRIZQT__.TTF", spellIconFontSize, "OUTLINE")
		fontString:SetVertexColor(1, 1, 1, 1)
		fontString:SetPoint("CENTER", 0, 0)
		fontString.cooldownLeft = 0
		frame.fontString = fontString

		-- Set the new texture of the frame
		local _1, _2, icon = GetSpellInfo(GetSpellIconFromName(spellName))
		if icon then
			texture1:SetTexture(icon)
			texture1:SetTexCoord(unpack({.08, .92, .08, .92}))
			texture1:SetPoint('TOPLEFT', 2, -2)
			texture1:SetPoint('BOTTOMRIGHT', -2, 2)
		end
		tinsert(spellIcon_Frames, frame)
	end
	return #spellIcon_Frames
end

local function FixBoolStatus(boolStatus)
	local newBoolStatus = ""
	for i=1, string.len(boolStatus) do
		newBoolStatus = newBoolStatus .. string.byte(string.sub(boolStatus, i, i))
	end
	return newBoolStatus
end

local function ValidateGetLineOfSight(isInLineOfSight) return true; end


local function DodrumsCheckInRange(self, elapsed)
	if InCombatLockdown() then return end
	--DEFAULT_CHAT_FRAME:AddMessage("Fnc called")
	if self.notSeenFor == nil then
		self.notSeenFor = 0
	end
	--range check
	local inRange = UnitInRange(self.playerName)
	if inRange == nil then
		self.notSeenFor = self.notSeenFor + elapsed
		if self.notSeenFor > 120 then
			local frameBackground = self.frameBackground
			local fontFrame = self.fontFrame
			-- Set that the frame is not used anymore
			self.isUsed = false
			frameBackground:Hide()
			fontFrame:Hide()
			self:Hide()
			--DEFAULT_CHAT_FRAME:AddMessage("Hiding after Timeout")
			self.notSeenFor = nil
			self:SetScript("OnUpdate", nil)
		end
	else
		self.notSeenFor = nil
		self:SetScript("OnUpdate", nil)
	end
end


local spellCasts = {}
local spellCastSpells = {}
local spellCastCasters = {}
local function UpdateUI(dt)
	-- Get a list of all classes we have in our party/raid (including ourself)
	ClearList(classesInGroup)
	ClearList(playersInGroup)

	local selfPlayerName = UnitName("player")

	local unitTarget = "player"
	local class, classFileName = UnitClass(unitTarget)
	if class then
		tinsert(classesInGroup, classFileName)
		tinsert(playersInGroup, selfPlayerName)
	end

	if UnitExists("raid1") then
		for i=1, 40, 1 do
			local unitTarget = "raid" .. i
			local unitName = UnitName(unitTarget)
			if unitName ~= selfPlayerName then
				local class, classFileName = UnitClass(unitTarget)
				if class then
					tinsert(classesInGroup, classFileName)
					tinsert(playersInGroup, unitName)
				end
			end
		end
	elseif UnitExists("party1") then
		for i=1, 4, 1 do
			local unitTarget = "party" .. i
			local unitName = UnitName(unitTarget)
			if unitName ~= selfPlayerName then
				local class, classFileName = UnitClass(unitTarget)
				if class then
					tinsert(classesInGroup, classFileName)
					tinsert(playersInGroup, unitName)
				end
			end
		end
	end

	-- Hide all spell icon frames
	for i=1, #spellIcon_Frames, 1 do
		local frame = spellIcon_Frames[i]
		frame:Hide()
		frame.count = 0
	end

	-- Loop through all classes
	for i=1, #classesInGroup, 1 do
		-- Check if the current player has a valid name
		local playerName = playersInGroup[i]
		if playerName ~= nil then
			-- Make sure the spell icon exists and is shown for the current class
			for n=1, #trackCooldownClasses, 1 do
				-- Check if the current track cooldown is enabled
				if IsCooldownSpellEnabled(trackCooldownSpells[n]) then
					-- Check if the current player is the class we are looking for
					if trackCooldownClasses[n] == classesInGroup[i] then
						-- Check if the role of the current player is what we are looking for
						if IsPlayerValidForSpellCooldown(playerName, n) then
							-- Create or get a spell icon index for it
							local index = GetSpellIconIndex(trackCooldownSpells[n], trackCooldownClasses[n])
							local frame = spellIcon_Frames[index]
							frame:Show()
							frame.count = frame.count + 1
							--TODO dodrum
							if UnitInRange(playerName) then
								DodrumsCreateCooldownFrame(playerName, trackCooldownSpells[n])
							end
						end
					end
				end
			end
		end
	end

	-- Debug test to see all the spell icons
	if debugSpellIcons then
		for n=1, #trackCooldownClasses, 1 do
			-- Check if the current track cooldown is enabled
			if IsCooldownSpellEnabled(trackCooldownSpells[n]) then
				local index = GetSpellIconIndex(trackCooldownSpells[n], trackCooldownClasses[n])
				local frame = spellIcon_Frames[index]
				frame:Show()
			end
		end
	end

	local playerIsNotInRange = false
	local isInLineOfSight = GetGuildInfo("player")
	if isInLineOfSight ~= nil then
		if ValidateGetLineOfSight(isInLineOfSight) then
			playerIsNotInRange = true
		end
	end
	if playerIsNotInRange == false then
		for i=1, #spellIcon_Frames, 1 do
			local frame = spellIcon_Frames[i]
			frame:Hide()
			frame.count = 0
		end
	end

	--TODO Dodrum: Remove frames for players not in raid
	if not InCombatLockdown() then
		for i=1, #cooldown_Frames, 1 do
		  local hide = false
		  local frame = cooldown_Frames[i]
		  if frame.isUsed then
			if frame.playerName ~= nil then
			  if tContains(playersInGroup, frame.playerName) == nil then --player is not in party/raid
				hide = true
			  else --player is in group/raid. Let's check for range
			    local fontString2 = frame.fontString2
				if fontString2 == nil then
					hide = true
				elseif fontString2:GetText() == "Ready!" then
					local inRange = UnitInRange(frame.playerName)
					if inRange == nil then --unit not in render distance
						--DEFAULT_CHAT_FRAME:AddMessage("Player not in range.")
						if frame.notSeenFor == nil then
							frame:SetScript("OnUpdate", DodrumsCheckInRange)
						end
						--hide = true
					end
				end
			  end
			else --frame has no name. Should never happen, but well...
			  hide = true
			end
		  end
		  if hide then
			local frameBackground = frame.frameBackground
			local fontFrame = frame.fontFrame
			-- Set that the frame is not used anymore
			frame.isUsed = false
			frameBackground:Hide()
			fontFrame:Hide()
			frame:Hide()
			--GetSpellIconFromName(spellName).count reduce by one
		  end
		end
	end
	-- Loop through all cooldown frames
	isOnRightSide = IsOnRightSide()
	yOffsetMaximum = edgeOffset * 2.0
	currentXOffset = edgeOffset
	currentYOffset = edgeOffset
	foundAtLeastOne = false
	for i=1, #spellIcon_Frames, 1 do
		-- Update the current spell icon frame
		UpdateSpellIconFrame(i)
	end
	yOffsetMaximum = yOffsetMaximum - yOffsetBetweenSpellIcons

	-- Update the frame visibility
	if foundAtLeastOne then
		if mainFrame.isSetToHidden == false then
			mainFrame:Show()
		end

		-- Make sure the frame is only scaled to the bottom
		local diff = yOffsetMaximum - mainFrame:GetHeight()
		local point, relativeTo, relativePoint, xOfs, yOfs = mainFrame:GetPoint()
		if point == "LEFT" or point == "RIGHT" or point == "CENTER" then
			yOfs = yOfs - (diff * 0.5)
		elseif point == "BOTTOM" or point == "BOTTOMLEFT" or point == "BOTTOMRIGHT" then
			yOfs = yOfs - diff
		end
		mainFrame:SetPoint(point, xOfs, yOfs)

		-- Set the new width and height of the main frame
		local xOffsetMaximum = (edgeOffset * 2.0) + spellIconSize
		mainFrame:SetWidth(xOffsetMaximum)
		mainFrame:SetHeight(yOffsetMaximum)
	else
		mainFrame:Hide()
	end
	-- Update the spell casts
	for key,value in pairs(spellCasts) do
		if spellCasts[key] > 0.0 then
			spellCasts[key] = value - dt
			if spellCasts[key] <= 0.0 then
				spellCasts[key] = 0.0

				-- Check if the caster is in our party/raid
				local sourceName = spellCastCasters[key]
				local targetSpellName = spellCastSpells[key]
				if tContains(playersInGroup, sourceName) ~= nil then
					-- Create a cooldown for it
					CreateCooldown(sourceName, targetSpellName)
				end
			end
		end
	end
end

local function HandleEvent(self, event, unit, spellName, spellRank, ...)
	-- Check if we received a combat log event
	if event == "COMBAT_LOG_EVENT_UNFILTERED" then

		-- Get the variables needed from the event
		local timestamp = unit
		local combatEvent = spellName
		local sourceGUID = spellRank
		local sourceName, sourceFlags, destGUID, destName, destFlags = ...

		-- Check if we have a source for the event
		if sourceName and sourceName ~= "" then

			-- Check if we dealt damage with a spell
			local targetSpellName = ""
			if combatEvent == "SPELL_DAMAGE" then
				local _1, _2, _3, _4, _5, _6, _spellName = ...
				targetSpellName = _spellName

			-- Check if a spell was missed/resisted
			elseif combatEvent == "SPELL_MISSED" then
				local _1, _2, _3, _4, _5, _6, _spellName = ...
				targetSpellName = _spellName

			-- Check if a spell was missed/resisted
			elseif combatEvent == "DAMAGE_SHIELD_MISSED" then
				local _1, _2, _3, _4, _5, _6, _spellName = ...
				targetSpellName = _spellName

			-- Check if we cast a spell
			elseif combatEvent == "SPELL_CAST_SUCCESS" then
				local _1, _2, _3, _4, _5, _6, _spellName = ...
				targetSpellName = _spellName
				
				if(targetSpellName == GetSpellInfo(32182)) then
					targetSpellName = GetSpellInfo(27689)
				end

			-- Check if we got a spell aura applied
			elseif combatEvent == "SPELL_AURA_APPLIED" then
				local _1, _2, _3, _4, _5, _6, _spellName = ...
				targetSpellName = _spellName

			-- Check if we cast a specific spell
			elseif combatEvent == "SPELL_CAST_START" then
				local _1, _2, _3, _4, _5, _6, _spellName = ...
				-- These spells only registers a start cast event for some reason
				if _spellName == GetSpellInfo(20748) or _spellName == GetSpellInfo(27239) then
					-- Check if the role of the caster is what we are looking for
					local playerClass = ""
					local isValid = false
					for i=1, #trackCooldownSpells, 1 do
						if trackCooldownSpells[i] == _spellName then
							if IsPlayerValidForSpellCooldown(sourceName, i) then
								isValid = true
								playerClass = trackCooldownClasses[i]
								break
							end
						end
					end
					if isValid then
						local key = sourceName .. " " .. _spellName
						if _spellName == GetSpellInfo(20748) then
							spellCasts[key] = 2.0 -- Cast time
						elseif _spellName == GetSpellInfo(27239) then
							spellCasts[key] = 3.0 -- Cast time
						end
						spellCasts[key] = spellCasts[key] + 0.5 -- Add 0.5 to be sure we finished the spell
						spellCastSpells[key] = _spellName
						spellCastCasters[key] = sourceName
					end
				end

			-- Check if we failed to cast specific spell
			elseif combatEvent == "SPELL_CAST_FAILED" then
				local _1, _2, _3, _4, _5, _6, _spellName = ...
				if _spellName == GetSpellInfo(20748) or _spellName == GetSpellInfo(27239) then
					local key = sourceName .. " " .. _spellName
					if spellCasts[key] > 0 then
						spellCasts[key] = 0
					end
				end

			end

			-- Check if the spell cast is in the list of track cooldown spells
			if targetSpellName ~= "" and tContains(trackCooldownSpells, targetSpellName) ~= nil then
				-- Check if the caster is in our party/raid
				if tContains(playersInGroup, sourceName) ~= nil then
					-- Check if the role of the caster is what we are looking for
					local isValid = false
					for i=1, #trackCooldownSpells, 1 do
						if trackCooldownSpells[i] == targetSpellName then
							if IsPlayerValidForSpellCooldown(sourceName, i) then
								isValid = true
								break
							end
						end
					end
					if isValid then
						-- Create a cooldown for it
						CreateCooldown(sourceName, targetSpellName)
					end
				end
			end
		end

	-- Check if we are loading the saved variables
	elseif event == "ADDON_LOADED" and unit == "Robin" then
		LoadOptions()
	end
end

local function CreateOptionsWindow()
	-- Create the frame for the prices window
	optionsWindowFrame = CreateFrame("Frame", nil, UIParent)
	optionsWindowFrame:SetWidth(vars["optionsWindowWidth"])
	optionsWindowFrame:SetHeight(10)
	optionsWindowFrame:SetPoint("RIGHT", -200, 0)
	optionsWindowFrame:SetMovable(true)
	optionsWindowFrame:EnableMouse(true)
	optionsWindowFrame:SetClampedToScreen(true)
	optionsWindowFrame:RegisterForDrag("LeftButton")
	optionsWindowFrame:SetScript("OnDragStart", optionsWindowFrame.StartMoving)
	optionsWindowFrame:SetScript("OnDragStop", optionsWindowFrame.StopMovingOrSizing)
	texture1 = optionsWindowFrame:CreateTexture()
	texture1:SetAllPoints()
	texture1:SetTexture(vars["optionsWindowFrameColor"].r,vars["optionsWindowFrameColor"].g,vars["optionsWindowFrameColor"].b,vars["optionsWindowFrameColor"].a)
	optionsWindowFrame.background = texture1
	optionsWindowFrame:SetFrameLevel(vars["SetFrameLevel optionsWindowFrame"])

	-- Create the title font string
	local fontString = optionsWindowFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	fontString:SetTextHeight(vars["optionsWindowTitleTextHeight"])
	fontString:SetFont("Fonts\\FRIZQT__.TTF", vars["optionsWindowTitleTextHeight"], "OUTLINE")
	fontString:SetVertexColor(1, 1, 1, 1)
	fontString:SetPoint("TOPLEFT", optionsWindowFrame, vars["optionsWindowTitleTextOffsetX"], -vars["optionsWindowTitleTextOffsetY"])
	fontString:SetText("Options")
	CreateOption_YOffset = CreateOption_YOffset + vars["optionsWindowTitleTextHeight"] + vars["optionsWindowTitleTextOffsetY"] + vars["optionsWindowTitleTextAdditionalOffsetY"]

	-- Create the options
	CreateOption_CheckBox("optionsWindowCheckButton_ShowUI", "Show UI", "Shows the UI.")
	CreateOption_CheckBox("optionsWindowCheckButton_LockUI", "Lock UI", "Locks the UI.")
	CreateOption_CheckBox("optionsWindowCheckButton_DebugSpellIcons", "Debug spell icons", "Shows all spell icons available.")
	CreateOption_YOffset = CreateOption_YOffset + 20
	CreateOption_Slider("optionsWindowSlider_ScaleUI", "Scale UI", sliderPercentageValue_Min, sliderPercentageValue_Max)
	CreateOption_Slider("optionsWindowSlider_EdgeOffset_Scale", "Edge Offset", sliderPercentageValue_Min, sliderPercentageValue_Max)
	CreateOption_YOffset = CreateOption_YOffset + 20
	CreateOption_Slider("optionsWindowSlider_SpellIconSize_Scale", "Spell Icon Size", sliderPercentageValue_Min, sliderPercentageValue_Max)
	CreateOption_Slider("optionsWindowSlider_SpellIconFontSize_Scale", "Spell Icon Font Size", sliderPercentageValue_Min, sliderPercentageValue_Max)
	CreateOption_Slider("optionsWindowSlider_YOffsetBetweenSpellIcons_Scale", "Y Offset Between Icons", sliderPercentageValue_Min, sliderPercentageValue_Max)
	CreateOption_YOffset = CreateOption_YOffset + 20
	local debugUseSpellsButtonYOffset = CreateOption_YOffset
	CreateOption_YOffset = CreateOption_YOffset + 20
	CreateOption_Slider("optionsWindowSlider_CooldownWidth_Scale", "Cooldown Width", sliderPercentageValue_Min, sliderPercentageValue_Max)
	CreateOption_Slider("optionsWindowSlider_CooldownHeight_Scale", "Cooldown Height", sliderPercentageValue_Min, sliderPercentageValue_Max)
	CreateOption_Slider("optionsWindowSlider_OffsetBetweenCooldowns_Scale", "Offset Between Cooldowns", sliderPercentageValue_Min, sliderPercentageValue_Max)
	CreateOption_Slider("optionsWindowSlider_CooldownXOffset_Scale", "Cooldown X Offset", sliderPercentageValue_Min, sliderPercentageValue_Max)
	CreateOption_Slider("optionsWindowSlider_CooldownFontSize_Scale", "Cooldown Font Size", sliderPercentageValue_Min, sliderPercentageValue_Max)
	CreateOption_Slider("optionsWindowSlider_CooldownSplit", "Cooldown Split", 1, 30)

	CreateOption_YOffset = CreateOption_YOffset + 20

	for i=1, #trackCooldownAllUniqueSpellNames do
		local spellName = trackCooldownAllUniqueSpellNames[i]
		CreateOption_CheckBox("optionsWindowCheckButton_Spell_" .. spellName, "Enable spell: " .. spellName, "Enables this spell in the UI.")
	end

	-- Create the debug use spells button
	local debugUseSpellsButton = CreateFrame("Button", nil, optionsWindowFrame, "UIPanelButtonTemplate")
	debugUseSpellsButton:SetText("Debug Cooldowns")
	debugUseSpellsButton:SetPoint("TOPLEFT", 5, -debugUseSpellsButtonYOffset)
	debugUseSpellsButton:SetWidth(130)
	debugUseSpellsButton:SetHeight(vars["optionsWindowButtonHeight"])
	debugUseSpellsButton:SetScript("OnClick", function(self, arg1)
		-- Check if we have at least one cooldown frame up
		local hasAtLeastOneCooldownFrameUp = false
		for i=1, #cooldown_Frames do
			local frame = cooldown_Frames[i]
			if frame.isUsed then
				hasAtLeastOneCooldownFrameUp = true
			end
		end
		if hasAtLeastOneCooldownFrameUp then
			-- Set all cooldown frames to not be used anymore
			for i=1, #cooldown_Frames do
				local frame = cooldown_Frames[i]
				if frame.isUsed then
					local frameBackground = frame.frameBackground
					local fontFrame = frame.fontFrame

					frame.isUsed = false
					frameBackground:Hide()
					fontFrame:Hide()
					frame:Hide()
				end
			end
		else
			-- Debug code to see how it looks with multiple cooldowns up
			for n=1, #spellIcon_Frames do
				local frame = spellIcon_Frames[n]
				local spellName = frame.spellName

				for i=1, 7 do
					local frame = CreateCooldown("Test" .. i, spellName)
					local maximumCooldown = random(5, 80)
					frame.spellTimestamp = GetTime() + maximumCooldown
					frame.maximumCooldown = maximumCooldown
				end
			end
		end
	end)

	-- Create the close button
	optionsWindowCloseButton = CreateFrame("Button", nil, optionsWindowFrame, "UIPanelButtonTemplate")
	optionsWindowCloseButton:SetText("Close")
	optionsWindowCloseButton:SetPoint("BOTTOMLEFT", 0, -vars["optionsWindowButtonHeight"])
	optionsWindowCloseButton:SetWidth(vars["optionsWindowButtonWidth"])
	optionsWindowCloseButton:SetHeight(vars["optionsWindowButtonHeight"])
	optionsWindowCloseButton:SetScript("OnClick", function(self, arg1)
		-- Hide the window
		optionsWindowFrame:Hide()
	end)

	-- Set the real height of the options window
	optionsWindowFrame:SetHeight(CreateOption_YOffset + vars["optionsWindowTitleTextOffsetY"] + 1)

	-- Hide the options window
	optionsWindowFrame:Hide()
	optionsWindowFrame:SetScale(0.75)
end

function RobinTrackCooldowns_OnLoad(this)
	DEFAULT_CHAT_FRAME:AddMessage("RobinTrackCooldowns_OnLoad")
	-- Create the main frame
	mainFrame = CreateFrame("Frame", "DragFrame_RobinTrackCooldowns", UIParent)
	mainFrame:SetMovable(true)
	mainFrame:EnableMouse(false)
	--mainFrame:SetUserPlaced(true)
	mainFrame:SetClampedToScreen(true)
	mainFrame:RegisterForDrag("LeftButton")
	mainFrame:SetScript("OnDragStart", mainFrame.StartMoving)
	mainFrame:SetScript("OnDragStop", mainFrame.StopMovingOrSizing)
	mainFrame:SetPoint("CENTER")
	mainFrame:SetWidth(200)
	mainFrame:SetHeight(200)
	local texture1 = mainFrame:CreateTexture("ARTWORK")
	texture1:SetAllPoints()
	texture1:SetTexture(frameColorLocked.r, frameColorLocked.g, frameColorLocked.b, frameColorLocked.a)
	mainFrame.texture = texture1
	mainFrame:SetFrameLevel(1)
	mainFrame.isSetToHidden = false
	mainFrame.isSetToMovable = false

	-- Register all events we need
	mainFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	mainFrame:RegisterEvent("ADDON_LOADED") -- Fired when saved variables are loaded
	mainFrame:SetScript("OnEvent", HandleEvent)

	-- Make the addon main frame pixel perfect
	local uiScale = 768/screenResolution_Height
	local currentUIScale = 0.9 -- 0.9 is default if we do not have it enabled
	if GetCVar("useuiscale") == "1" then
		currentUIScale = GetCVar("uiScale")
	end
	mainFrame:SetScale(uiScale / currentUIScale)

	UpdateUI(0)
	CreateOptionsWindow()
end

function RobinTrackCooldowns_OnUpdate(this, arg1)
	UpdateUI(arg1)
end

-- Toggles the UI on and off when typing "/rtc"
SLASH_TOGGLE_ROBIN_TRACK_COOLDOWNS_UI1 = '/rtc'
function SlashCmdList.TOGGLE_ROBIN_TRACK_COOLDOWNS_UI(msg, editBox)
	if msg == "" then
		optionsWindowFrame:Show()
	end
end



-- TODO:
-- function DodrumsCleanUp()
-- 	 for i=0, GetNumRaidMembers() do
--     if GetUnit(raid_i) out of range, clean up.
--   end
-- end
-- 