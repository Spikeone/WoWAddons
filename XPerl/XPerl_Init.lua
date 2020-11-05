-- X-Perl UnitFrames
-- Author: Zek <Boodhoof-EU>
-- License: GNU GPL v3, 29 June 2007 (see LICENSE.txt)

local init_done, gradient, conf, doneOptions
local errorCount = 0
XPerl_RequestConfig(function(new) conf = new end, "$Revision: 176 $")

-- SetTex
local highlightPositions = {	{0, 0.25, 0, 0.5},
				{0.25, 0.75, 0, 0.5},
				{0, 1, 0.5, 1},
				{0.75, 1, 0, 0.5}}
local function SetTex(self, num)
	local p = highlightPositions[num]
	if (self:GetFrameType() == "Button") then
		if (conf.highlightSelection == 1) then
			self:SetHighlightTexture("Interface\\Addons\\XPerl\\images\\XPerl_Highlight", "ADD")
			local tex = self:GetHighlightTexture()
			tex:SetTexCoord(unpack(p))
			tex:SetVertexColor(0.86, 0.82, 0.41)
		else
			self:SetHighlightTexture("")
		end

	elseif (self:GetFrameType() == "Frame") then
		if (self.tex) then
			self.tex:SetTexture("Interface\\Addons\\XPerl\\images\\XPerl_Highlight", "ADD")
			self.tex:SetTexCoord(unpack(p))
			self.tex:SetVertexColor(0.86, 0.82, 0.41)
			XPerl_Highlight:SetHighlight(self:GetParent())
		end
	end
end

-- RegisterHighlight
local HighlightFrames = {}
function XPerl_RegisterHighlight(frame, ratio)
	HighlightFrames[frame] = ratio
	if (init_done) then
		SetTex(frame, ratio)
	end
end

-- XPerl_SetHighlights
function XPerl_SetHighlights()
	for k,v in pairs(HighlightFrames) do
		SetTex(k, v)
	end
end

-- XPerl_MakeGradient(self)
function XPerl_DoGradient(self, force)
	if ((force or (conf and conf.colour.gradient.enable)) and not self.tfade) then
		if (gradient) then
			if (not self.gradient) then
				local w = self:GetWidth()
				if (w and w > 10) then
					self.gradient = self:CreateTexture(nil, "BORDER")
					self.gradient:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
					self.gradient:SetBlendMode("ADD")

					local bd = self:GetBackdrop()

					if (bd) then
						self.gradient:SetPoint("TOPLEFT", bd.insets.left, -bd.insets.top)
						self.gradient:SetPoint("BOTTOMRIGHT", -bd.insets.right, bd.insets.bottom)
					else
						self.gradient:SetAllPoints()
					end
				end
			end
			if (self.gradient) then
				self.gradient:Show()
				self.gradient:SetGradientAlpha(unpack(gradient))
			end
			return true
		end
	else
		if (self.gradient) then
			self.gradient:Hide()
		end
	end
end

-- SetupUnitFrame
local function SetupUnitFrame(self)
	self:SetBackdropBorderColor(conf.colour.border.r, conf.colour.border.g, conf.colour.border.b, conf.colour.border.a)
	self:SetBackdropColor(conf.colour.frame.r, conf.colour.frame.g, conf.colour.frame.b, conf.colour.frame.a)
	XPerl_DoGradient(self)
end

-- SetupUnitFrameList
local function SetupUnitFrameList(frame, subList)

	if (conf.colour.gradient.enable) then
		local o
		if (conf.colour.gradient.horizontal) then
			o = "HORIZONTAL"
		else
			o = "VERTICAL"
		end

		gradient = {o, conf.colour.gradient.e.r, conf.colour.gradient.e.g, conf.colour.gradient.e.b, conf.colour.gradient.e.a,
				conf.colour.gradient.s.r, conf.colour.gradient.s.g, conf.colour.gradient.s.b, conf.colour.gradient.s.a}
	end

	if (type(subList) == "table") then
		frame:SetAlpha(conf.transparency.frame)
		for k,v in pairs(subList) do
			SetupUnitFrame(v)
		end
	else
		SetupUnitFrame(frame)
	end
end

-- XPerl_RegisterUnitFrame(frame)
local UnitFrames = {}
function XPerl_RegisterPerlFrames(frame, subList)
	if (not subList) then
		subList = true
	end
	UnitFrames[frame] = subList

	if (init_done) then
		SetupUnitFrameList(frame, subList)
	end
end

-- XPerl_SetupAllPerlFrames
function XPerl_SetupAllPerlFrames(frame)
	for k,v in pairs(UnitFrames) do
		SetupUnitFrameList(k, v)
	end
end

-- XPerl_SetAllFrames
function XPerl_SetAllFrames()
	XPerl_SetupAllPerlFrames()
	XPerl_SetHighlights()
end

-- XPerl_pcall
function XPerl_pcall(...)
	local success, error = pcall(...)
	if (not success) then
		errorCount = errorCount + 1
		if (not doneOptions) then
			XPerl_Notice("Error:"..error)
		end
		geterrorhandler()(error)
	end
end

-- Buff Tooltip Hook
local function XPerl_GameTooltipSetPlayerBuff(self, buffId)
	if (this.parent and this.parent.buffObject and this.parent.buffObject.type) then
		-- For CT_BuffMod
		local parent = this.parent
		if (parent.buffObject.type == "BUFF" or parent.buffObject.type == "AURA") then
			XPerl_ToolTip_AddBuffDuration(this, "player", buffId)
		end
	else
		local found
		if (not ElkBuffButton1) then
			-- Elkano version 1.*
			-- They no longer assign the buff type (HELPFUL, HARMFUL) to the buff icon, so we have to search for it (as of WoW 2.1.0)
			local findID = this:GetID()
			for i = 1,100 do
				local id = GetPlayerBuff(i, "HELPFUL")
				if (id == 0) then
					break
				elseif (id == findID) then
					found = true
					break
				end
			end
		end

		if (found or (ElkBuffButton1 and this.type == "BUFF")) then
			XPerl_ToolTip_AddBuffDuration(this, "player", buffId)
			return
		end

		if (not this:GetName()) then
			-- Elkano version 2.*
			if (this.bar and this.bar.uid and this.bar.data) then
				if (this.bar.data.type == "BUFF") then
					XPerl_ToolTip_AddBuffDuration(this, "player", this.bar.data.id or 1)
					return
				end
			end
		end
	end
end

-- XPerl_Init()
function XPerl_Init()
	init_done = true
	hooksecurefunc(GameTooltip, "SetPlayerBuff", XPerl_GameTooltipSetPlayerBuff)

	DisableAddOn("XPerl_TeamSpeak")

	-- Check for eCastbar and disable old frame if used.
	if (eCastingBar_Saved and eCastingBar_Player and eCastingBar_Saved[eCastingBar_Player].Enabled == 1) then
		conf.player.castBar.original = nil
	elseif (BCastBar and BCastingBar and BCastBarDragButton) then
		conf.player.castBar.original = nil
	end

	XPerl_pcall(XPerl_OptionActions)

	--PartyMemberFrame:UnregisterEvent("UNIT_NAME_UPDATE")

	if (CT_PartyBuffFrame1) then
		if (XPerl_party1) then
			CT_PartyBuffFrame1:Hide()
			CT_PartyBuffFrame2:Hide()
			CT_PartyBuffFrame3:Hide()
			CT_PartyBuffFrame4:Hide()
		end
		if (XPerl_Player_Pet) then
			CT_PetBuffFrame:Hide()
		end
	end

	if (CT_RAMTGroup) then
		-- Fix CTRA lockup issues for WoW 2.1
		-- Sure it's not my responsibility, but you can bet your ass I'll get blamed for it's lockups...
		CT_RAMTGroup:UnregisterEvent("UNIT_NAME_UPDATE")
		if (CT_RAMTTGroup) then	CT_RAMTTGroup:UnregisterEvent("UNIT_NAME_UPDATE")	end
		if (CT_RAPTGroup) then	CT_RAPTGroup:UnregisterEvent("UNIT_NAME_UPDATE")	end
		if (CT_RAPTTGroup) then	CT_RAPTTGroup:UnregisterEvent("UNIT_NAME_UPDATE")	end
		if (CT_RAGroup1) then
			for i = 1,8 do
				local f = getglobal("CT_RAGroup"..i)
				if (f) then	f:UnregisterEvent("UNIT_NAME_UPDATE")		end
			end
		end
	end

	local name, title, notes, enabled = GetAddOnInfo("SupportFuncs")
	if (name and enabled) then
		local ver = GetAddOnMetadata(name, "Version")
		if (tonumber(ver) < 20000.2) then
			XPerl_Notice("Out-dated version of SupportFuncs detected. This will break the X-Perl Range Finder by replacing standard Blizzard API functions.")
		end
	end

	name, title, notes, enabled = GetAddOnInfo("AutoBar")
	if (name and enabled) then
		local ver = GetAddOnMetadata(name, "Version")
		if (ver < "2.01.00.02 beta") then
			XPerl_Notice("Out-dated version of AutoBar detected. This will taint the Targetting system for all mods that use them, including X-Perl.")
		end
	end

	name, title, notes, enabled = GetAddOnInfo("TrinityBars")
	if (name and enabled) then
		local ver = GetAddOnMetadata(name, "Version")
		if (ver <= "20003.14") then
			XPerl_Notice("Out-dated version of TrinityBars detected. This will taint the Targetting system for all mods that use them, including X-Perl.")
		end
	end

	if (EarthFeature_AddButton) then
		EarthFeature_AddButton ({name = XPerl_ProductName,
					icon = XPerl_ModMenuIcon,
					subtext = "by "..XPerl_Author,
					tooltip = XPerl_LongDescription,
					callback = XPerl_Toggle})
	end

	if (CT_RegisterMod) then
		CT_RegisterMod(XPerl_ProductName.." "..XPerl_VersionNumber, "By "..XPerl_Author, 4, XPerl_ModMenuIcon, XPerl_LongDescription, "switch", "", XPerl_Toggle)
	end

	if (myAddOnsFrame) then
		myAddOnsList.XPerl_Description = {
			name			= XPerl_Description,
			description		= XPerl_LongDescription,
			version			= XPerl_VersionNumber,
			category		= MYADDONS_CATEGORY_OTHERS,
			frame			= "XPerl_Globals",
			optionsframe		= "XPerl_Options"
		}
	end

	--if (not strfind("Zek Zali Hek Zeks Zekked Zekstuff Pooksie Wazek", UnitName("player")) or GetRealmName() ~= "Bloodhoof") then
	--	XPerl_ShowMessage = function() end
	--end

	XPerl_pcall(XPerl_DebufHighlightInit)

	XPerl_Init = nil
end

-- XPerl_StatsFrame_Setup
function XPerl_StatsFrameSetup(self, others, offset)
	if (not self) then
		return
	end
	local StatsFrame = self.statsFrame
	if (not StatsFrame) then
		return
	end

        local healthBar = StatsFrame.healthBar
        local healthBarText = healthBar.text
        local healthBarPercent = healthBar.percent
        local manaBar = StatsFrame.manaBar
        local manaBarPercent = manaBar.percent
	local otherBars = {}
	local secondaryBarsShown = 0
        local percentSize = 0
	if (healthBarPercent:IsShown() or manaBarPercent:IsShown()) then
		percentSize = 35
	end

	offset = (offset or 0)

	if (manaBar:IsShown()) then
		secondaryBarsShown = secondaryBarsShown + 1
	end

	local needTicker = 0
	if (StatsFrame.energyTicker) then
		needTicker = 1
	end

	if (others) then
		for i,bar in pairs(others) do
			if (bar) then
				tinsert(otherBars, bar)
				if (bar:IsShown()) then
					secondaryBarsShown = secondaryBarsShown + 1
				end
			end
		end
	end

	if (conf.bar.fat) then
		if (StatsFrame == XPerl_Player_PetstatsFrame) then
			healthBarText:SetFontObject(GameFontNormalSmall)
		else
			healthBarText:SetFontObject(GameFontNormal)
		end

        	healthBar:ClearAllPoints()
        	healthBar:SetPoint("TOPLEFT", 5, -5)
        	healthBar:SetPoint("BOTTOMRIGHT", -(5 + percentSize), 5 + needTicker + (secondaryBarsShown * 10))

        	manaBar:ClearAllPoints()
        	manaBar:SetPoint("BOTTOMLEFT", 5, -5 + needTicker + (secondaryBarsShown * 10))
        	manaBar:SetPoint("TOPRIGHT", healthBar, "BOTTOMRIGHT", 0, 0)

		local lastBar = manaBar
		local tickerSpace = needTicker * 1.5
		for i,bar in pairs(otherBars) do
			if (bar:IsShown()) then
        	        	bar:ClearAllPoints()

        	        	bar:SetPoint("TOPLEFT", lastBar, "BOTTOMLEFT", 0, -tickerSpace)
        	        	bar:SetPoint("BOTTOMRIGHT", lastBar, "BOTTOMRIGHT", 0, -10 - tickerSpace)

				lastBar = bar
				tickerSpace = 0
			end
        	end
	else
		healthBarText:SetFontObject(GameFontNormalSmall)

        	healthBar:ClearAllPoints()
        	healthBar:SetPoint("TOPLEFT", 8, -9 + offset)
        	healthBar:SetPoint("BOTTOMRIGHT", StatsFrame, "TOPRIGHT", -(8 + percentSize), -19 + offset)

        	manaBar:ClearAllPoints()
        	manaBar:SetPoint("TOPLEFT", healthBar, "BOTTOMLEFT", 0, -2)
        	manaBar:SetPoint("BOTTOMRIGHT", healthBar, "BOTTOMRIGHT", 0, -12)

		local lastBar = manaBar
		for i,bar in pairs(otherBars) do
			if (bar:IsShown()) then
        	        	bar:ClearAllPoints()

        	        	bar:SetPoint("TOPLEFT", lastBar, "BOTTOMLEFT", 0, -2)
        	        	bar:SetPoint("BOTTOMRIGHT", lastBar, "BOTTOMRIGHT", 0, -12)

				lastBar = bar
			end
        	end
	end
end

-- XPerl_RegisterUnitText(self)
local unitText = {}
function XPerl_RegisterUnitText(self)
	tinsert(unitText, self)
end

-- XPerl_SetTextTransparency()
function XPerl_SetTextTransparency()
	local t = conf.transparency.text
	for k,v in pairs(unitText) do
		local r, g, b = v:GetTextColor()
		v:SetTextColor(r, g, b, t)
	end
end

-- Set1Bar
local function Set1Bar(bar, tex)
	if (bar.tex) then
		bar.tex:SetTexture(tex)
	end
	if (bar.bg) then
		if (conf.bar.background) then
			bar.bg:SetTexture(tex)
		else
			bar.bg:SetTexture("Interface\\TargetingFrame\\UI-StatusBar")
		end
	end
end

-- XPerl_RegisterBar
local XPerlBars = {}
function XPerl_RegisterBar(bar)
	tinsert(XPerlBars, bar)
	if (init_done) then
		local tex = XPerl_GetBarTexture()
		Set1Bar(bar, tex)
	end
end

-- XPerl_SetBarTextures
function XPerl_SetBarTextures()
	local tex = XPerl_GetBarTexture()
	for k,v in pairs(XPerlBars) do
		Set1Bar(v, tex)
	end
end

-- XPerl_RegisterOptionChanger
local optionFuncs = {}
function XPerl_RegisterOptionChanger(f, s)
	tinsert(optionFuncs, {func = f, slf = s})
end

-- XPerl_OptionActions()
function XPerl_OptionActions(which)

	UIParent:UnregisterEvent("RAID_ROSTER_UPDATE")			-- IMPORTANT! Stops raid framerate lagging when members join/leave/zone

	if (InCombatLockdown()) then
		XPerl_OutOfCombatOptionSet = true
		return
	end

	if (conf.showTutorials) then
		if (not IsAddOnLoaded("XPerl_Tutorial")) then
			EnableAddOn("XPerl_Tutorial")
			LoadAddOn("XPerl_Tutorial")
		end
	end

	conf.transparency.frame	= min(max(tonumber(conf.transparency.frame or 1), 0), 1)
	conf.transparency.text	= min(max(tonumber(conf.transparency.text or 1), 0), 1)

	XPerl_pcall(XPerl_SetBarTextures)

	XPerl_pcall(XPerl_SetAllFrames)

	for k,v in pairs(optionFuncs) do
		XPerl_NoFadeBars(true)
		XPerl_pcall(v.func, v.slf, which)
	end
	XPerl_NoFadeBars()

	XPerl_pcall(XPerl_SetTextTransparency)
	doneOptions = true
end
