----------- // BamModRevived // -----------
-- (Re)-written by Tråpz - Ravencrest EU
-- BamModRevived is based on the idea of BamMod written by Acrylangel, Feradon and xastarothx

----------- // To Do List // -----------
--add config for ChatFrame1 or BAM channel output
-- very minor: Handle Offhand Spells: Mutilate(Rogue), Stormstrike(Shaman), Raging Blow(Warrior)...are there more?

--Statistics?
--* Save highest critical hit; when to save? probably want to save after eaech fight?
--* Option to display it properly + reset option per spell, 
--* Data to store per character: spellId, crit amount


--Main Frame
local BamModRevived = CreateFrame("Frame")

--Upvalues
local playerGUID, petGUID, new_petGUID, link, critAmount, InterfaceOptions_AddCategory, InterfaceOptionsFrame_OpenToCategory 
	= playerGUID, petGUID, new_petGUID, link, critAmount, InterfaceOptions_AddCategory, InterfaceOptionsFrame_OpenToCategory	

--Misc Variables
local configUI
local DB
local tab

--Default Config
local Defaults = {
    SpellSound              = true,
    DotSound                = false,
    HealSound               = true,
    HotSound                = false,
    WhiteHitSound           = false,
    PetSound                = false,
    PetWhiteHitSound        = false,
    SpellChatMessage        = true,
    DotChatMessage          = false,
    HealChatMessage         = true,
    HotChatMessage          = false,
    WhitHitChatMessage      = false,
    PetChatMessage          = false,
    PetWhiteHitChatMessage  = false,
    MsgStyle                = true,
    ChatFrameOutput         = false,
    DoSay                   = false,
    DoYell                  = false,
    DoParty                 = false,
    DoRaid                  = false,
    FrameName               = "BAM",
}


--Create CheckButton()
local function CreateCheckButton(Parent, Checked, Label, Tooltip, OnClickFunc)
  local CheckButton = CreateFrame("CheckButton", nil, Parent, "ChatConfigCheckButtonTemplate")

  CheckButton.Label = select(6, CheckButton:GetRegions())
  CheckButton.Label:SetText(Label)
  CheckButton.Label:SetPoint("LEFT", CheckButton.Label:GetParent(), "RIGHT", 2, 0)
  CheckButton.tooltip = Tooltip
  CheckButton:SetChecked(Checked)
  CheckButton:SetScript("OnClick", function(self) OnClickFunc(self) end)

  return CheckButton
end

local function MakeEditBox(name, parent, title, w, h, l, enter_func)
    local edit_box_obj = CreateFrame("EditBox", name, parent)
    --edit_box_obj.title_text = UIFactory:MakeText(edit_box_obj, title, 12)
    --edit_box_obj.title_text:SetPoint("TOP", 0, 12)
    edit_box_obj:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        tile = true,
        tileSize = 26,
        edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4}
    })
    edit_box_obj:SetBackdropColor(0,0,0,1)
    edit_box_obj:SetSize(w, h)
    edit_box_obj:SetMultiLine(false)
    edit_box_obj:SetAutoFocus(false)
    edit_box_obj:SetMaxLetters(l)
    edit_box_obj:SetJustifyH("CENTER")
    edit_box_obj:SetJustifyV("CENTER")
    edit_box_obj:SetFontObject(GameFontNormal)
    edit_box_obj:SetScript("OnEnterPressed", function(self)
        enter_func(self)
        self:ClearFocus()
    end)
    edit_box_obj:SetScript("OnEscapePressed", function(self)
        self:ClearFocus()
    end)
    
    return edit_box_obj
end


--Configuration Panel
local function CreateConfigUI()
	--Strings for later use
	local label, tooltip
	
	--Create Addon Panel
	configUI = CreateFrame("Frame", nil, InterfaceOptionsFrame)
	configUI.name = "BamModRevived"
	InterfaceOptions_AddCategory(configUI)

	--Title
	configUI.title = configUI:CreateFontString(nil, "ARTWORK", "GameFontNormalHuge")
	configUI.title:SetText("BamModRevived")
	configUI.title:SetPoint("TOPLEFT", 16, -16)
	
	--Subtitle sound
	configUI.soundSubtitle = configUI:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	configUI.soundSubtitle:SetText("Sounds")
	configUI.soundSubtitle:SetPoint("TOPLEFT", 16, -50)
	
	--Toggle SpellSounds checkbox
	label = "Spells"
	tooltip = "Enable/Disable sound for damage spells"
	configUI.SpellSound = CreateCheckButton(configUI, DB.SpellSound, label, tooltip, function(self)
		DB.SpellSound = self:GetChecked() and true or false
	end)
	configUI.SpellSound:SetPoint("TOPLEFT", configUI.soundSubtitle, "BOTTOMLEFT", 0, -10)
	
	--Toggle DotSounds checkbox
	label = "DoTs"
	tooltip = "Enable/Disable sound for damage over time effects"
	configUI.DotSound = CreateCheckButton(configUI, DB.DotSound, label, tooltip, function(self)
		DB.DotSound = self:GetChecked() and true or false
	end)
	configUI.DotSound:SetPoint("TOPLEFT", configUI.SpellSound, "BOTTOMLEFT", 0, 0)
	
	--Toggle HealSounds checkbox
	label = "Heals"
	tooltip = "Enable/Disable sound for heals"
	configUI.HealSound = CreateCheckButton(configUI, DB.HealSound, label, tooltip, function(self)
		DB.HealSound = self:GetChecked() and true or false
	end)
	configUI.HealSound:SetPoint("TOPLEFT", configUI.DotSound, "BOTTOMLEFT", 0, 0)
	
	--Toggle HotSounds checkbox 
	label = "HoTs"
	tooltip = "Enable/Disable sound for heal over time effects"
	configUI.HotSound = CreateCheckButton(configUI, DB.HotSound, label, tooltip, function(self)
		DB.HotSound = self:GetChecked() and true or false
	end)
	configUI.HotSound:SetPoint("TOPLEFT", configUI.HealSound, "BOTTOMLEFT", 0, 0)
	
	--Toggle WhiteHitSounds checkbox
	label = "White hits"
	tooltip = "Enable/Disable sound for white hits"
	configUI.WhiteHitSound = CreateCheckButton(configUI, DB.WhiteHitSound, label, tooltip, function(self)
		DB.WhiteHitSound = self:GetChecked() and true or false
	end)
	configUI.WhiteHitSound:SetPoint("TOPLEFT", configUI.HotSound, "BOTTOMLEFT", 0, 0)
	
	--Toggle PetSounds checkbox
	label = "Pet"
	tooltip = "Enable/Disable sound for pet spells"
	configUI.PetSound = CreateCheckButton(configUI, DB.PetSound, label, tooltip, function(self)
		DB.PetSound = self:GetChecked() and true or false
	end)
	configUI.PetSound:SetPoint("TOPLEFT", configUI.WhiteHitSound, "BOTTOMLEFT", 0, 0)
	
	--Toggle PetWhiteHitSounds checkbox
	label = "Pet white hits"
	tooltip = "Enable/Disable sound for pet white hits"
	configUI.PetWhiteHitSound = CreateCheckButton(configUI, DB.PetWhiteHitSound, label, tooltip, function(self)
		DB.PetWhiteHitSound = self:GetChecked() and true or false
	end)
	configUI.PetWhiteHitSound:SetPoint("TOPLEFT", configUI.PetSound, "BOTTOMLEFT", 0, 0)
	
	
	--subtitle chat message
	configUI.msgSubtitle = configUI:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	configUI.msgSubtitle:SetText("Chat Messages")
	configUI.msgSubtitle:SetPoint("TOPLEFT", 175, -50)
	
	--Toggle SpellChatMessage checkbox
	label = "Spells"
	tooltip = "Enable/Disable chat messages for damage spells"
	configUI.SpellChatMessage = CreateCheckButton(configUI, DB.SpellChatMessage, label, tooltip, function(self)
		DB.SpellChatMessage = self:GetChecked() and true or false
	end)
	configUI.SpellChatMessage:SetPoint("TOPLEFT", configUI.msgSubtitle, "BOTTOMLEFT", 0, -10)
	
	--Toggle DotChatMessage checkbox
	label = "DoTs"
	tooltip = "Enable/Disable chat messages for damage over time effects"
	configUI.DotChatMessage = CreateCheckButton(configUI, DB.DotChatMessage, label, tooltip, function(self)
		DB.DotChatMessage = self:GetChecked() and true or false
	end)
	configUI.DotChatMessage:SetPoint("TOPLEFT", configUI.SpellChatMessage, "BOTTOMLEFT", 0, 0)
	
	--Toggle HealChatMessage checkbox
	label = "Heals"
	tooltip = "Enable/Disable chat messages for heals"
	configUI.HealChatMessage = CreateCheckButton(configUI, DB.HealChatMessage, label, tooltip, function(self)
		DB.HealChatMessage = self:GetChecked() and true or false
	end)
	configUI.HealChatMessage:SetPoint("TOPLEFT", configUI.DotChatMessage, "BOTTOMLEFT", 0, 0)
	
	--Toggle HotChatMessage checkbox
	label = "HoTs"
	tooltip = "Enable/Disable chat messages for heal over time effects"
	configUI.HotChatMessage = CreateCheckButton(configUI, DB.HotChatMessage, label, tooltip, function(self)
		DB.HotChatMessage = self:GetChecked() and true or false
	end)
	configUI.HotChatMessage:SetPoint("TOPLEFT", configUI.HealChatMessage, "BOTTOMLEFT", 0, 0)
	
	--Toggle WhiteHitChatMessage checkbox
	label = "White hits"
	tooltip = "Enable/Disable chat messages for white hits"
	configUI.WhiteHitChatMessage = CreateCheckButton(configUI, DB.WhiteHitChatMessage, label, tooltip, function(self)
		DB.WhiteHitChatMessage = self:GetChecked() and true or false
	end)
	configUI.WhiteHitChatMessage:SetPoint("TOPLEFT", configUI.HotChatMessage, "BOTTOMLEFT", 0, 0)
	
	--Toggle PetChatMessage checkbox
	label = "Pet"
	tooltip = "Enable/Disable chat messages for pet spells"
	configUI.PetChatMessage = CreateCheckButton(configUI, DB.PetChatMessage, label, tooltip, function(self)
		DB.PetChatMessage = self:GetChecked() and true or false
	end)
	configUI.PetChatMessage:SetPoint("TOPLEFT", configUI.WhiteHitChatMessage, "BOTTOMLEFT", 0, 0)
	
	--Toggle PetWhiteHitChatMessage checkbox
	label = "Pet white hits"
	tooltip = "Enable/Disable chat messages for pet white hits"
	configUI.PetWhiteHitChatMessage = CreateCheckButton(configUI, DB.PetWhiteHitChatMessage, label, tooltip, function(self)
		DB.PetWhiteHitChatMessage = self:GetChecked() and true or false
	end)
	configUI.PetWhiteHitChatMessage:SetPoint("TOPLEFT", configUI.PetChatMessage, "BOTTOMLEFT", 0, 0)
    
    --Toggle Say checkbox
    label = "Output in: Say"
    tooltip = "This toggles if the message is also shown in channel SAY"
    configUI.DoSay = CreateCheckButton(configUI, DB.DoSay, label, tooltip, function(self)
        DB.DoSay = self:GetChecked() and true or false
    end)
    configUI.DoSay:SetPoint("TOPLEFT", configUI.PetWhiteHitChatMessage, "BOTTOMLEFT", 0, 0)
    
    --Toggle Yell checkbox
    label = "Output in: Yell"
    tooltip = "This toggles if the message is also shown in channel YELL"
    configUI.DoYell = CreateCheckButton(configUI, DB.DoYell, label, tooltip, function(self)
        DB.DoYell = self:GetChecked() and true or false
    end)
    configUI.DoYell:SetPoint("TOPLEFT", configUI.DoSay, "BOTTOMLEFT", 0, 0)
    
    --Toggle Party checkbox
    label = "Output in: Party"
    tooltip = "This toggles if the message is also shown in channel PARTY"
    configUI.DoParty = CreateCheckButton(configUI, DB.DoParty, label, tooltip, function(self)
        DB.DoParty = self:GetChecked() and true or false
    end)
    configUI.DoParty:SetPoint("TOPLEFT", configUI.DoYell, "BOTTOMLEFT", 0, 0)
    
    --Toggle Raid checkbox
    label = "Output in: Raid"
    tooltip = "This toggles if the message is also shown in channel RAID"
    configUI.DoRaid = CreateCheckButton(configUI, DB.DoRaid, label, tooltip, function(self)
        DB.DoRaid = self:GetChecked() and true or false
    end)
    configUI.DoRaid:SetPoint("TOPLEFT", configUI.DoParty, "BOTTOMLEFT", 0, 0)
    
	--subtitle message style	
	configUI.msgStyleSubtitle = configUI:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	configUI.msgStyleSubtitle:SetText("Chat Message Style")
	configUI.msgStyleSubtitle:SetPoint("TOPLEFT", 350, -50)
	
	--Toggle message styles
	label = "Short"
	tooltip = "Display all chat messages in a shorter form"
	configUI.MsgStyle = CreateCheckButton(configUI, DB.MsgStyle, label, tooltip, function(self)
		DB.MsgStyle = self:GetChecked() and true or false
	end)
	configUI.MsgStyle:SetPoint("TOPLEFT", configUI.msgStyleSubtitle, "BOTTOMLEFT", 0, -10)
    
    
    configUI.ChannelBox = MakeEditBox("EditChannel", configUI, "OutputFrame Name:", 132, 28, 16, function(self)
        DEFAULT_CHAT_FRAME:AddMessage("NewFrameName: " ..self:GetText())
        DB.FrameName = self:GetText()
    end)
    configUI.ChannelBox:SetPoint("TOPLEFT", configUI.DoRaid, "BOTTOMLEFT", 0, -10)
    
	--subtitle no chatframe output option
	configUI.ChatFrameOutputSubtitle = configUI:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	configUI.ChatFrameOutputSubtitle:SetText("Disable ChatFrame Output")
	configUI.ChatFrameOutputSubtitle:SetPoint("TOPLEFT", configUI.msgStyleSubtitle, "BOTTOMLEFT", 0, -50)
	
		--Toggle message styles
	label = "Disable ChatFrame Output \n(Only BAM-Sound)\nREQUIRES RELOAD UI"
	tooltip = "Disable the Bam Mod Revived ChatFrame Output REQUIRES RELOAD UI"
	configUI.ChatFrameOutput = CreateCheckButton(configUI, DB.ChatFrameOutput, label, tooltip, function(self)
		DB.ChatFrameOutput = self:GetChecked() and true or false
	end)
	configUI.ChatFrameOutput:SetPoint("TOPLEFT", configUI.ChatFrameOutputSubtitle, "BOTTOMLEFT", 0, -10)
	
--TestField = CreateFrame("EditBox", nil, Parent)
--TestField:SetPoint("TOPLEFT", configUI.ChatFrameOutput, "BOTTOMLEFT", 0, -10)

--CheckButton.Label = select(6, CheckButton:GetRegions())
--CheckButton.Label:SetText(Label)
--CheckButton.Label:SetPoint("LEFT", CheckButton.Label:GetParent(), "RIGHT", 2, 0)
--CheckButton.tooltip = Tooltip
--CheckButton:SetChecked(Checked)
--CheckButton:SetScript("OnClick", function(self) OnClickFunc(self) end)
	
	
	--Reset to Default Button
	local Reset = CreateFrame("Button", nil, configUI, "UIPanelButtonTemplate")
		Reset:SetSize(120, 25)
		Reset:SetText("Reset to Default")
		Reset:SetScript("OnClick", function() 
			if not configUI.SpellSound:GetChecked() then configUI.SpellSound:Click() end
			if configUI.DotSound:GetChecked() then configUI.DotSound:Click() end
			if not configUI.HealSound:GetChecked() then configUI.HealSound:Click() end
			if configUI.HotSound:GetChecked() then configUI.HotSound:Click() end
			if configUI.WhiteHitSound:GetChecked() then configUI.WhiteHitSound:Click() end
			if configUI.PetSound:GetChecked() then configUI.PetSound:Click() end
			if configUI.PetWhiteHitSound:GetChecked() then configUI.PetWhiteHitSound:Click() end
			if not configUI.SpellChatMessage:GetChecked() then configUI.SpellChatMessage:Click() end
			if configUI.DotChatMessage:GetChecked() then configUI.DotChatMessage:Click() end
			if not configUI.HealChatMessage:GetChecked() then configUI.HealChatMessage:Click() end
			if configUI.HotChatMessage:GetChecked() then configUI.HotChatMessage:Click() end
			if configUI.WhiteHitChatMessage:GetChecked() then configUI.WhiteHitChatMessage:Click() end
			if configUI.PetChatMessage:GetChecked() then configUI.PetChatMessage:Click() end
			if configUI.PetWhiteHitChatMessage:GetChecked() then configUI.PetWhiteHitChatMessage:Click() end
			if configUI.MsgStyle:GetChecked() then configUI.MsgStyle:Click() end
			if configUI.ChatFrameOutput:GetChecked() then configUI.ChatFrameOutput:Click() end
		end)
  Reset:SetPoint("TOPLEFT", configUI.PetWhiteHitSound, "BOTTOMLEFT", 0, -30)
  
  
  --Reload UI Button
  local Reload = CreateFrame("Button", nil, configUI, "UIPanelButtonTemplate")
	Reload:SetSize(120, 25)
	Reload:SetText("Reload UI")
	Reload:SetScript("OnClick", function()
		ReloadUI()
	end)
	Reload:SetPoint("TOPLEFT", configUI.ChannelBox, "BOTTOMLEFT", 0, -30)
end


--Copy Default Settings
local function CopyDefaults(Source, Destination)
	if not Source then return {} end	
	if not Destination then Destination = {} end
	
	for k, v in pairs(Source) do
		if type(v) == "table" then 
			Destination[k] = CopyDefaults(v, Destination[k])
		elseif type(v) ~= type(Destination[k]) then
			Destination[k] = v
		end
	end
	
	return Destination
end


--This creates the custiom output channel with whatever index the game assings
--static index with local frame = ChatFrame10 could work aswell. risk: someone uses 10 chatframes but who the heck has 10 chatframes...
local function CreateOutputChatFrame()
	local ChannelFound = false
	for i =1, 10 do
		local name, _, _, _, _, _, _, _, _, _ = GetChatWindowInfo(i)
		--print(i.."="..name)
		if (name and name == DB.FrameName) then
			ChannelFound = true			
		break	
		end		
	end
	
	if ChannelFound == false then
		local frame = FCF_OpenNewWindow(DB.FrameName)
				ChatFrame_RemoveAllMessageGroups(frame)
				ChatFrame_RemoveAllChannels(frame)
	end
end


--We use this to get the index of our output channel
local function AddMsgToTab()	
	for i = 1, 10 do
		--name, fontSize, r, g, b, alpha, shown, locked, docked, uninteractable = GetChatWindowInfo(frameIndex)
		local name, _, _, _, _, _, _, _, _, _ = GetChatWindowInfo(i)
		--_G["ChatFrame"..i]:AddMessage("Name: " ..name,1,1,1,1)
		if GetChatWindowInfo(i) == DB.FrameName then
			tab = i	
			--print("AddMsgToTab "..tab)
			--Re-open the window to the dock if we closed it 
			if  (_G["ChatFrame"..tab]:IsVisible() == false) then
				local frame = FCF_DockFrame(_G["ChatFrame"..tab], tab)
			end	
			break
		end	
	end	
end


--Get our new pet guid when we change pets
local function GetPetGUID()
	new_petGUID = UnitGUID("pet")
	if new_petGUID ~= petGUID then
		petGUID = new_petGUID	
	end
end

local function MessageOutput(strMsg)

    if (DB.MsgStyle) then
        strMsg = "BaM!! " ..strMsg
    else
        strMsg = "BamMod [BaM!! " ..strMsg.. "]"
    end

    _G["ChatFrame"..tab]:AddMessage(strMsg ,1,1,1,1)
    
    if (DB.DoSay) then
        SendChatMessage(strMsg, "SAY", "Common", nil);
    end
    
    if (DB.DoYell) then
        SendChatMessage(strMsg, "YELL", "Common", nil);
    end
    
    if (DB.DoParty and GetNumGroupMembers() ~= 0) then
        SendChatMessage(strMsg, "PARTY", "Common", nil);
    end
    
    if (DB.DoRaid and IsInRaid()) then
        SendChatMessage(strMsg, "RAID", "Common", nil);
    end
end


--Our main function
local function CheckForCrits()
	--local timestamp, event, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = CombatLogGetCurrentEventInfo()
	local _, eventType, _, sourceGUID, _, _, _, _, _, _, _ = CombatLogGetCurrentEventInfo()
	--print(eventType, sourceGUID)
	--Check for Player
	if sourceGUID == playerGUID then
		--print(eventType)
		--Check for Spells
		if eventType == "SPELL_DAMAGE" then
			local spellId, spellName, _, amount, _, _, _, _, _, critical, _, _, _  = select(12, CombatLogGetCurrentEventInfo())	
			--print(spellId, amount, critical)
			if critical then
				critAmount = amount
				if DB.SpellSound then
					PlaySoundFile("Interface\\AddOns\\BamModRevived\\bam.ogg")
				end
				if DB.SpellChatMessage and not DB.ChatFrameOutput then
                    MessageOutput(spellName.." - "..critAmount)
				end
			end
			
		--Check for DoTs
		elseif eventType == "SPELL_PERIODIC_DAMAGE" then		
			local spellId, spellName, _, amount, _, _, _, _, _, critical, _, _, _ = select(12, CombatLogGetCurrentEventInfo())	
			if critical then
				critAmount = amount
				if DB.DotSound then
					PlaySoundFile("Interface\\AddOns\\BamModRevived\\bam.ogg")
				end
				if DB.DotChatMessage and not DB.ChatFrameOutput then
                    MessageOutput(spellName.." - "..critAmount)
				end
			end
			
		--Check for Melee White Hits		
		elseif eventType == "SWING_DAMAGE" then 
			local amount, _, _, _, _, _, critical, _, _, _ = select(12, CombatLogGetCurrentEventInfo())
			if critical then					
				critAmount = amount
				if DB.WhiteHitSound then
					PlaySoundFile("Interface\\AddOns\\BamModRevived\\bam.ogg")
				end
				if DB.WhiteHitChatMessage and not DB.ChatFrameOutput then
                    MessageOutput("Normal - "..critAmount)
				end
			end
			
		--Check for Range White Hits
		elseif eventType == "RANGE_DAMAGE" then
			local spellId, spellName, _, amount, _, _, _, _, _, critical, _, _, _  = select(12, CombatLogGetCurrentEventInfo())
			
			if(spellName == nil) then
				spellName = "Normal"
			end
			
			if critical then
				critAmount = amount
				if DB.WhiteHitSound then
					PlaySoundFile("Interface\\AddOns\\BamModRevived\\bam.ogg")
				end
				if DB.WhiteHitChatMessage and not DB.ChatFrameOutput then
                    MessageOutput(spellName.." - "..critAmount)
				end
			end
				
		--Check for Heals
		elseif eventType == "SPELL_HEAL" then
			local spellId, spellName, _, amount, _, _, critical  = select(12, CombatLogGetCurrentEventInfo())
			
			if critical then
				critAmount = amount
				if DB.HealSound then
					PlaySoundFile("Interface\\AddOns\\BamModRevived\\bam.ogg")
				end
				if DB.HealChatMessage and not DB.ChatFrameOutput then
                    MessageOutput(spellName.." - "..critAmount)
				end
			end		
		
		--Check for HoTs
		elseif eventType == "SPELL_PERIODIC_HEAL" then		
			local spellId, spellName, _, amount, _, _, critical  = select(12, CombatLogGetCurrentEventInfo())	
			if critical then
				critAmount = amount
				if DB.HotSound then
					PlaySoundFile("Interface\\AddOns\\BamModRevived\\bam.ogg")
				end
				if DB.HotChatMessage and not DB.ChatFrameOutput then
                    MessageOutput(spellName.." - "..critAmount)
				end
			end
		end


	--Check Pets
	elseif sourceGUID == petGUID then
		--Check Pet Spells
		if eventType == "SPELL_DAMAGE" then
		local spellId, spellName, _, amount, _, _, _, _, _, critical, _, _, _ = select(12, CombatLogGetCurrentEventInfo())
			if critical then
				critAmount = amount
				if  DB.PetSound then
					PlaySoundFile("Interface\\AddOns\\BamModRevived\\bam.ogg")
				end
				if DB.PetChatMessage and not DB.ChatFrameOutput then
                    MessageOutput("Pet " ..spellName.." - "..critAmount)
				end
			end
				
		--Check Pet Melee White Hits
		elseif eventType == "SWING_DAMAGE" then
			local amount, _, _, _, _, _, critical, _, _, _  = select(12, CombatLogGetCurrentEventInfo())
			
			if critical then
				critAmount = amount
				if DB.PetWhiteHitSound then
					PlaySoundFile("Interface\\AddOns\\BamModRevived\\bam.ogg")
				end
				if DB.PetWhiteHitChatMessage and not DB.ChatFrameOutput then
                    MessageOutput("Pet Normal - "..critAmount)
				end
			end
		end
	end
end


--Slash command: /bmr
--Opens config panel
SLASH_BAMMODREVIVED1 = "/bmr"
SlashCmdList["BAMMODREVIVED"] = function()
	InterfaceOptionsFrame_OpenToCategory(configUI)
	InterfaceOptionsFrame_OpenToCategory(configUI)
end


--Handle events
local function EventHandler(self, event, ...)	
	if (event == "UNIT_PET") then
		GetPetGUID()
	elseif (event == "COMBAT_LOG_EVENT_UNFILTERED") then
		CheckForCrits()
	elseif (event == "ADDON_LOADED") then
		if not BamModRevivedDB then BamModRevivedDB = {} end	--no saved vars, creating sv	
		DB = BamModRevivedDB
		CopyDefaults(Defaults, DB)
		CreateConfigUI()
		
		if not DB.ChatFrameOutput then
			CreateOutputChatFrame()
			AddMsgToTab()	
		end
	
		BamModRevived:UnregisterEvent("ADDON_LOADED")
	end	
end


local function LoginEvent(self, event, ...)
	playerGUID = UnitGUID("player")	--Get player GUID
	petGUID = UnitGUID("pet")	 or "nil"			--Get pet GUID
	
	--if not DB.ChatFrameOutput then	--Moved to ADDON_LOADED because Saved Vars are available there
	--	CreateOutputChatFrame()
	--	AddMsgToTab()	
	--end
	
	BamModRevived:UnregisterEvent("PLAYER_LOGIN")
	
	BamModRevived:SetScript("OnEvent", EventHandler)
	BamModRevived:RegisterEvent("ADDON_LOADED")	
	BamModRevived:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	BamModRevived:RegisterEvent("UNIT_PET", "player")
	
	--Debug
	--print("playerGUID "..playerGUID)
	--print("petGUID "..petGUID)
end


BamModRevived:SetScript("OnEvent", LoginEvent)
BamModRevived:RegisterEvent("PLAYER_LOGIN")


local function ChatInfo()
	for i = 1,10 do
		name, fontSize, r, g, b, alpha, shown, locked, docked, uninteractable = GetChatWindowInfo(i)
		print("name, fontSize, r, g, b, alpha, shown, locked, docked, uninteractable")
		print(name, fontSize, r, g, b, alpha, shown, locked, docked, uninteractable)
	end
 end
SlashCmdList["CHATINFO"] = function() ChatInfo() end
SLASH_CHATINFO1 = "/ci"