-- X-Perl UnitFrames
-- Author: Zek <Boodhoof-EU>
-- License: GNU GPL v3, 29 June 2007 (see LICENSE.txt)

local playerClass, playerName
local conf
XPerl_RequestConfig(function(new) conf = new end, "$Revision: 188 $")

local GetNumPartyMembers = GetNumPartyMembers
local GetNumRaidMembers = GetNumRaidMembers
local GetTime = GetTime
local UnitBuff = UnitBuff
local UnitClass = UnitClass
local UnitInParty = UnitInParty
local UnitInRaid = UnitInRaid
local UnitGUID = UnitGUID
local UnitPlayerOrPetInRaid = UnitPlayerOrPetInRaid
local UnitPlayerOrPetInParty = UnitPlayerOrPetInParty
local UnitName = UnitName
local cos = math.cos
local sin = math.sin
local xperlHealComms = XPERL_COMMS_PREFIX.."Heal"

local new, del, copy = XPerl_GetReusableTable, XPerl_FreeTable, XPerl_CopyTable

local hotSpells  = XPERL_HIGHLIGHT_SPELLS.hotSpells
local pomSpells = XPERL_HIGHLIGHT_SPELLS.pomSpells
local shieldSpells = XPERL_HIGHLIGHT_SPELLS.shieldSpells
local healSpells = XPERL_HIGHLIGHT_SPELLS.healSpells
local groupHealSpells = XPERL_HIGHLIGHT_SPELLS.groupHealSpells

local colours = {HOT = {r = 0.2, g = 0.4, b = 0.8, canFlash = true},
		 POM = {r = 0.8, g = 0.6, b = 0.4},
		 SHIELD = {r = 0.6, g = 0.1, b = 0.6, canFlash = true},
		 AGGRO = {r = 0.8, g = 0, b = 0},
		 HEAL = {r = 0.2, g = 0.8, b = 0.2},
		 SEL = {r = 0.86, g = 0.82, b = 0.41},
		 TARGET = {r = 0.7167, g = 0.6833, b = 0.31467}			-- Coloured so that colour * 1.2 == SEL colour
}

local xpHigh = CreateFrame("Frame", "XPerl_Highlight")
xpHigh.list = {}
xpHigh.callbacks = {}
xpHigh.lastExpireCheck = 0
xpHigh.flashers = {}
xpHigh.gettingGUIDsFrom = {}
xpHigh.mendingIcons = {}

-- rotate
-- Positive angle is clockwise rotation
local function rotate(angle)
	local hcos = 0.5 * cos(angle)
	local mhcos = -hcos
	local hsin = 0.5 * sin(angle)
	local mhsin = -hsin
	local ULx, ULy, LLx, LLy = hcos - mhsin, mhsin + hcos, hcos - hsin, mhsin + mhcos
	local URx, URy, LRx, LRy = mhcos - mhsin, hsin + hcos, mhcos - hsin, hsin + mhcos
	return ULx+0.5, ULy+0.5, LLx+0.5, LLy+0.5, URx+0.5, URy+0.5, LRx+0.5, LRy+0.5
end

function xpHigh:Print(...)
	ChatFrame1:AddMessage("|cFFFFFF80"..format(...))
end

-- XPerl_Highlight:Add
function xpHigh:Add(guid, highlightType, duration, source)
--self:Print("self:Add(%s, %s, %s)", tostring(guid), tostring(highlightType), tostring(duration))
	if (not strfind(guid, "^0x")) then
		guid = self.lookup and self.lookup[guid]
	end
	if (not guid) then
		return
	end

	local a = self.list[guid]
	if (not a) then
		a = new()
		self.list[guid] = a
	end

	if (not duration) then
		a[highlightType] = nil
		self:Send(guid)
	else
		if (duration == 0) then
			a[highlightType] = 0
			self:Send(guid)
		else
			if (highlightType == "HOTCOUNT") then
				a[highlightType] = duration
				self:Send(guid)
			else
				local newEndTime = GetTime() + duration
				if (highlightType == "HEAL" and (UnitInRaid(source) or UnitInParty(source))) then
					if (source and not UnitIsUnit("player", source)) then
						-- We'll query their cast bar and get accurate highlight time info
						local spellName, rank, spellNameAlso, iconTexture, startTime, endTime, isTradeSkill = UnitCastingInfo(source)
						if (spellName and rank and rank ~= "") then
							newEndTime = endTime / 1000
						end

						--newEndTime = newEndTime + 0.8		-- Add some because other highlights expire 1 sec early
					end
				end

				local current = a[highlightType]
				if (not current or current < newEndTime) then
					a[highlightType] = newEndTime
					self:Send(guid)
				end
			end
		end
	end
end

-- xpHigh:TooltipInfo
function xpHigh:TooltipInfo(guid)
	local effects = self.list[guid]
	if (effects) then
		local str = ""
		local prefix = XPERL_LOC_STATUSTIP
		for k,v in pairs(effects) do
			local desc = XPERL_LOC_STATUSTIPLIST[k]
			local c = colours[k]
			if (desc and c) then
				str = str..prefix..format("|c00%02X%02X%02X", 255 * c.r, 255 * c.g, 255 * c.b)..desc.."|r"
				prefix = ", "
			end
		end

		if (prefix == ", ") then
			GameTooltip:AddLine("\r"..str)
			GameTooltip:Show()
		end
	end
end

-- xpHigh:Remove
function xpHigh:Remove(guid, highlightType)
	if (not strfind(guid, "^0x")) then
		guid = self.lookup and self.lookup[guid]
	end
	if (not guid) then
		return
	end

	local a = self.list[guid]
	if (a) then
		a[highlightType] = nil
		self:Send(guid)
	end
end

-- xpHigh:HasEffect
function xpHigh:HasEffect(guid, effect)
	if (not strfind(guid, "^0x")) then
		guid = self.lookup and self.lookup[guid]
	end
	if (not guid) then
		return
	end

	local list = self.list[guid]
	if (list) then
		return list[effect]
	end
end

-- MakeNameToGUIDLookup
function xpHigh:MakeNameToGUIDLookup()
	del(self.lookup)
	local l = new()
	self.lookup = l

	local tempGetting = copy(self.gettingGUIDsFrom)

	local tempRoster = new()
	for unit, unitName, unitClass, group in XPerl_NextMember do
		local name, server = UnitName(unit)
		if (name) then
			if (server and server ~= "") then
				name = format("%s-%s", name, server)
			end
			tempGetting[name] = nil

			l[name] = UnitGUID(unit)
			local petid = unit == "player" and "pet" or unit:gsub("^(%a+)(%d+)$", "%1pet%2")
			if (UnitExists(petid)) then
				l[UnitName(petid)] = UnitGUID(petid)
			end
		end
	end

	for name in pairs(tempGetting) do
		self.gettingGUIDsFrom[name] = nil			-- Left raid, clear the memory
	end

	del(tempGetting)
end

-- xpHigh:OnUpdate
function xpHigh:OnUpdate(elapsed)
	if (self.rosterUpdate) then
		self.rosterUpdate = nil
		if (select(2, IsInInstance()) == "pvp") then
			self.distribution = "BATTLEGROUND"
		elseif (GetNumRaidMembers() > 0) then
			self.distribution = "RAID"
		elseif (GetNumPartyMembers() > 0) then
			self.distribution = "PARTY"
		else
			self.distribution = nil
			self.gettingGUIDsFrom = {}
		end

		self:MakeNameToGUIDLookup()

		self:RefreshAllAuras()			-- New roster, get all
		if (not (conf.highlight.enable and (conf.highlight.HOT or conf.highlight.SHIELD or conf.highlight.HEAL))) then
			self:SetScript("OnUpdate", nil)
			return
		end
	end

	if (self.mendingAnimation) then
		self:MendingAnimationOnUpdate(elapsed)
	end

	if (self.sparkleAreas) then
		self:SparkleAreasOnUpdate(elapsed)
	end

	self.lastExpireCheck = self.lastExpireCheck + elapsed
	if (self.lastExpireCheck > 0.2) then
		self.lastExpireCheck = 0
	else
		return
	end

	-- We expire things 1 second early so people can cast in time for buff to expire
	local now = GetTime()			--  + 1

	for guid,list in pairs(self.list) do
		local any
		for k,v in pairs(list) do
			any = true
			if (k ~= "HOTCOUNT") then
				if (v > 0) then
					if (v <= now) then
						self.flashers[guid] = nil
						list[k] = nil
						self:Send(guid)

					elseif (v <= now + 5 and colours[k] and colours[k].canFlash) then
						if (not self.flashers[guid]) then
							self.flashers[guid] = k
							self:Send(guid)
						end
					end
				end
			end
		end

		if (not any) then
			self.list[guid] = nil
			self.flashers[guid] = nil
		end
	end
end

-- xpHigh:Query
function xpHigh:SetHighlight(frame, guid)
	if (not frame.highlight) then
		XPerl_Notice("No .highlight region for "..frame:GetName()..", unit: "..guid)
		return
	end

	local unitid
	if (not guid) then
		unitid = SecureButton_GetUnit(frame)
		if (unitid) then
			guid = UnitGUID(unitid)
		end
	end

	self:OnUpdate(0)

	local hotCount, pomActive, hotBar, hotSparks, showShield
	if (guid and conf.highlight.enable) then
		local r = self.list[guid]
		if (r) then
			local r1, g1, b1, r2, g2, b2, t1
			for k,v in pairs(r) do
				if (k == "POM" and conf.highlight.sparkles) then
					pomActive = true
				elseif (k == "HOTCOUNT") then
					hotCount = v
				elseif (k == "HOT" and conf.highlight.sparkles) then
					hotBar = true
				elseif (k == "HOTSPARKS" and conf.highlight.extraSparkles) then
					hotSparks = true
				elseif (k == "SHIELD" and conf.highlight.sparkles and conf.highlight.extraSparkles) then
					showShield = true
				else
					if (not r1 or t1 == "TARGET") then
						t1 = k
						r1, g1, b1 = colours[k].r, colours[k].g, colours[k].b
					else
						r2, g2, b2 = colours[k].r, colours[k].g, colours[k].b
						break
					end
				end
			end

			if (r1) then
				frame.highlight.tex:Show()
				frame.highlight.tex:SetAlpha(1)

				if (frame.highlight.sel) then
					r1 = min(r1 * 1.2, 1)
					g1 = min(g1 * 1.2, 1)
					b1 = min(b1 * 1.2, 1)
				end

				if (r2) then
					if (frame.highlight.sel) then
						r2 = min(r2 * 1.2, 1)
						g2 = min(g2 * 1.2, 1)
						b2 = min(b2 * 1.2, 1)
					end
					frame.highlight.tex:SetGradient("HORIZONTAL", r1, g1, b1, r2, g2, b2)
				else
					frame.highlight.tex:SetVertexColor(r1, g1, b1)
				end

				if (self.flashers[guid]) then
					XPerl_FrameFlash(frame.highlight.tex)
				else
					XPerl_FrameFlashStop(frame.highlight.tex)
				end
				self:ShowHotCount(frame, hotCount)
				self:ShowMending(frame, pomActive)
				self:ShowHotBar(frame, hotBar)
				self:ShowHotSparks(frame, hotSparks)
				self:ShowShield(frame, showShield)
				return
			end
		end
	end

	self:RemoveHighlight(frame)
	self:ShowHotCount(frame, hotCount)
	self:ShowMending(frame, pomActive)
	self:ShowHotBar(frame, hotBar)
	self:ShowHotSparks(frame, hotSparks)
	self:ShowShield(frame, showShield)
end

-- shieldOnShow
local function shieldOnShow(self)
	self.alpha = 0
	self.maxWidth = 1.03
	self.minWidth = 0.98
	self.width = self:GetParent():GetWidth() * 1.1
	self.height = self:GetParent():GetHeight() * 1.1
	self.speed = 0.1 / (self.maxWidth - self.minWidth)
	self.size = 0.2
	self.state = "out"
	self.fading = nil
	self.highAlpha = 0
	self.highlightMode = "in"
end

-- pulse
-- Pulse an alpha value
local function pulse(self, var, elapsed)
	local val = self[var]
	local key = "_"..var
	if (self[key] == "out") then
		val = val - elapsed
		if (val < 0.2) then
			val = 0.2
			self[key] = "in"
		end
	else
		val = val + elapsed
		if (val >= 1) then
			val = 1
			self[key] = "out"
		end
	end
	self[var] = val
end

-- shieldOnUpdate
local function shieldOnUpdate(self, elapsed)
	pulse(self, "highAlpha", elapsed * 10)

	if (self.fading) then
		self.alpha = self.alpha - elapsed
		if (self.alpha <= 0) then
			self:Hide()
		end
		self.size = self.size + elapsed	* self.speed
	else
		if (self.alpha < 1) then
			self.alpha = min(1, self.alpha + elapsed)
		end

		if (self.state == "bouncein") then
			self.size = self.size - elapsed	* self.speed
			if (self.size < self.minWidth) then
				self.size = self.minWidth
				self.state = "bounceout"
			end
		else
			self.size = self.size + elapsed	* self.speed
			if (self.size > self.maxWidth) then
				self.size = self.maxWidth
				if (self.state == "out") then
					self.speed = 0.01 / (self.maxWidth - self.minWidth)
				end
				self.state = "bouncein"
			end
		end
	end

	self:SetWidth(self.width * self.size)
	self:SetHeight(self.height / max(0.98, self.size))
	self:SetAlpha(self.alpha)

	self.highlight1:SetAlpha(self.highAlpha)
	self.highlight2:SetAlpha(1 - self.highAlpha)
end

-- CreateShield
function xpHigh:CreateShield(frame)
	local h = frame.highlight
	local s = CreateFrame("Frame", nil, frame)
	h.shield = s

	local l = (frame.statsFrame and frame.statsFrame.healthBar) or frame.healthBar or frame
	s:SetFrameLevel(l:GetFrameLevel() + 1)

	s.tex = s:CreateTexture(nil, "OVERLAY")
	s.tex:SetTexture("Interface\\Addons\\XPerl\\Images\\Bubble")
	s.tex:SetAllPoints()
	s.tex:SetBlendMode("ADD")
	s.tex:SetVertexColor(1, 1, 0.5)

	s.highlight1 = s:CreateTexture("OVERLAY")
	s.highlight1:SetTexture("Interface\\Addons\\XPerl\\Images\\Bubble2")
	s.highlight1:SetPoint("TOPLEFT", 15, -10)
	s.highlight1:SetPoint("BOTTOMRIGHT", -15, 10)
	s.highlight1:SetBlendMode("ADD")
	s.highlight1:SetVertexColor(1, 1, 0.5)

	s.highlight2 = s:CreateTexture("OVERLAY")
	s.highlight2:SetTexture("Interface\\Addons\\XPerl\\Images\\Bubble2")
	s.highlight2:SetPoint("TOPLEFT", 20, -8)
	s.highlight2:SetPoint("BOTTOMRIGHT", -20, 8)
	s.highlight2:SetBlendMode("ADD")
	s.highlight2:SetVertexColor(1, 1, 0.5)
	s.highlight2:SetTexCoord(rotate(180))

	s:SetPoint("CENTER")
	s:SetWidth(1)
	s:SetHeight(1)

	s:SetScript("OnShow", shieldOnShow)
	s:SetScript("OnUpdate", shieldOnUpdate)

    s:Hide()
    return s
end

-- ShowShield
function xpHigh:ShowShield(frame, show)
	local h = frame.highlight
	if (conf.highlight.SHIELD and conf.highlight.sparkles) then
		if (show) then
			if (not h.shield) then
				self:CreateShield(frame)
			end

			local unit = SecureButton_GetUnit(frame)
			h.shield.unit = unit
			--h.shield.endTime = self:HasMyShield(unit) + GetTime()

			h.shield:Show()
			return
		end
	end

	if (h.shield) then
		h.shield.fading = true
	end
end

-- fluctuateOnUpdate
local function fluctuateOnUpdate(self, elapsed)
	if (self.fluctuate) then
		if (self.fluctuate == "dim" or self.fluctuate == "notbright") then
			self.fluctuatingBrightness = self.fluctuatingBrightness - elapsed
			if (self.fluctuatingBrightness < 0.5) then
				if (self.fluctuate == "dim") then
					self.fluctuatingBrightness = 0.5
					self.fluctuate = "notdim"
				else
					self.fluctuatingBrightness = nil
					self.fluctuate = nil
				end
			end
		elseif (self.fluctuate == "notdim" or self.fluctuate == "bright") then
			self.fluctuatingBrightness = self.fluctuatingBrightness + elapsed
			if (self.fluctuatingBrightness >= 1) then
				if (self.fluctuate == "notdim") then
					self.fluctuatingBrightness = nil
					self.fluctuate = nil
				else
					self.fluctuatingBrightness = 1
					self.fluctuate = "notbright"
				end
			end
		end
	elseif (random(10) == 1) then
		self.fluctuate = random(3) == 2 and "dim" or "bright"
		self.fluctuatingBrightness = 1
	end

	return self.fluctuatingBrightness or 1
end

-- hotBarOnUpdate
function hotBarOnUpdate(self, elapsed)
	local Min, Max = self:GetMinMaxValues()
	local val = self:GetValue()
	val = val - elapsed
	if (val <= 0) then
		self:Hide()
		return
	end

	self:SetValue(val)

	local sparkPosition = self:GetWidth() * (val / Max)
	self.spark:SetPoint("CENTER", self, "LEFT", sparkPosition, 0)

	self.angle = self.angle + elapsed
	if (self.angle > 360) then
		self.angle = self.angle - 360
	end

	local ULx, ULy, LLx, LLy, URx, URy, LRx, LRy = rotate(self.angle)
	self.spark:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy)
	self.shine:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy)

	local a
	if (val < 5) then
		if (self.alphaPulse == "in") then
			a = self.alpha + elapsed * 2
			if (a >= 1) then
				a = 1
				self.alphaPulse = "out"
			end
		else
			a = self.alpha - elapsed * 2
			if (a < 0.3) then
				a = 0.3
				self.alphaPulse = "in"
			end
		end
	else
		a = 1
		self.alphaPulse = "out"
	end

	--self:SetAlpha(self.alpha)
	self.spark:SetVertexColor(1, 1, 1, a * fluctuateOnUpdate(self.spark, elapsed))
	self.shine:SetVertexColor(1, 1, 1, a * fluctuateOnUpdate(self.shine, elapsed))
	self.alpha = a
end

-- CreateShine
function xpHigh:CreateShine(parent)
	local shine = parent:CreateTexture(nil, "OVERLAY")
	shine:SetTexture("Spells\\SparkleBlue")
	shine:SetBlendMode("ADD")
	shine:SetWidth(12)
	shine:SetHeight(12)
	return shine
end

-- CreateHotBar
function xpHigh:CreateHotBar(frame)
	local parent = frame.healthBar
	if (not parent) then
		parent = frame.statsFrame and frame.statsFrame.healthBar
	end
	if (not parent) then
		return
	end

	local f = CreateFrame("StatusBar", nil, parent)
	frame.highlight.hotBar = f
	f:SetPoint("TOPLEFT")
	f:SetPoint("BOTTOMRIGHT", parent, "TOPRIGHT", 0, -4)
	f:SetMinMaxValues(0, 0.1)
	f:Hide()

	f.spark = self:CreateShine(f)
	f.shine = self:CreateShine(f)
	f.shine:SetPoint("CENTER", f, "LEFT")

	f:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
	f:SetStatusBarColor(1, 1, 0)

	f:SetScript("OnUpdate", hotBarOnUpdate)
	f:SetScript("OnShow",
		function(self)
			self.angle = 0
			self.alpha = 1
			self.alphaPulse = "out"
		end)
end

-- GetMyHotTime
function xpHigh:GetMyHotTime(unit)
	local maxDur, maxTimeLeft = 0, 0
	for i = 1,40 do
		local name, rank, tex, count, dur, timeLeft = UnitBuff(unit, i)
		if (not name) then
			break
		end

		if (timeLeft and hotSpells[name]) then
			if (timeLeft > maxTimeLeft) then
				maxDur, maxTimeLeft = dur, timeLeft
			end
		end
	end
	return maxDur, maxTimeLeft
end

-- ShowHotBar
function xpHigh:ShowHotBar(frame, show)
	local h = frame.highlight
	if (conf.highlight.HOT and conf.highlight.sparkles) then
		if (show) then
			if (not h.hotBar) then
				self:CreateHotBar(frame)
			end

			local unit = SecureButton_GetUnit(frame)

			h.hotBar.unit = unit
			local dur, timeLeft = self:GetMyHotTime(unit)
			if (dur) then
				h.hotBar:SetMinMaxValues(0, dur)
				h.hotBar:SetValue(timeLeft)
				h.hotBar:Show()
				return
			end
		end
	end

	if (h.hotBar) then
		h.hotBar:Hide()
		h.hotBar:SetMinMaxValues(0, 0.1)
	end
end

-- xpHigh:CreateHotCount(frame)
function xpHigh:CreateHotCount(frame)

	local f = frame.highlight:CreateFontString(nil, "OVERLAY", "NumberFontNormalLarge")
	frame.highlight.hot = f

	f:SetTextColor(0, 1, 0)
	f:Hide()

	local sf = getglobal(frame:GetName().."statsFrame")
	if (sf) then
		if (strfind(frame:GetName(), "XPerl_Raid_Grp")) then
			f:SetTextHeight(15)
			f:SetPoint("TOPLEFT", sf, "TOPLEFT", 3, -3)
		else
			f:SetPoint("TOPLEFT", sf, "TOPLEFT", 5, -8)
		end
	else
		if (strfind(frame:GetName(), "XPerl_Raid_GrpPets")) then
			f:SetTextHeight(15)
			f:SetPoint("TOPLEFT", 3, -3)
		else
			f:SetPoint("CENTER", 0, 0)
		end
	end
end

-- ShowHotCount
function xpHigh:ShowHotCount(frame, hotCount)
	local h = frame.highlight
	if (conf.highlight.HOTCOUNT) then
		if (hotCount and hotCount > 0) then
			if (not h.hot) then
				self:CreateHotCount(frame)
			end

			h.hot:SetText(hotCount)
			h.hot:Show()
			return
		end
	end

	if (h.hot) then
		h.hot:Hide()
	end
end

-- GetMyPomEndTime
function xpHigh:GetMyPomEndTime(unit)
	for i = 1,40 do
		local name, rank, tex, count, dur, timeLeft = UnitBuff(unit, i)
		if (not name) then
			break
		end

		if (pomSpells[name]) then
			if (timeLeft) then
				return GetTime() + timeLeft
			end
			break				-- A player can only have 1 POM
		end
	end
end

-- ShowMending
function xpHigh:ShowMending(frame, active)
	local h = frame.highlight

	if (conf.highlight.POM and conf.highlight.sparkles) then
		if (active) then
			if (not h.mending or not h.mending:GetParent():IsShown()) then
				self:CreateMendingIcon(frame)
			end

			if (h.mending) then
				local unit = SecureButton_GetUnit(frame)
				h.mending.endTime = self:GetMyPomEndTime(unit) or 30
				h.mending:Show()
			end
			return
		end
	end

	if (h.mending) then
		h.mending:Hide()
		tinsert(self.mendingIcons, h.mending)
		h.mending = nil
	end
end

-- mendingOnUpdate
local function mendingOnUpdate(self, elapsed)
	if (self.shineMode == "in") then
		self.shineAlpha = self.shineAlpha + elapsed
		if (self.shineAlpha >= 1) then
			self.shineAlpha = 1
			self.shineMode = "out"
		end
	else
		self.shineAlpha = self.shineAlpha - elapsed
		if (self.shineAlpha <= 0.3) then
			self.shineAlpha = 0.3
			self.shineMode = "in"
		end
	end

	self.shineAngle = self.shineAngle + elapsed * 3
	if (self.shineAngle > 360) then
		self.shineAngle = self.shineAngle - 360
	end

	self.shine:SetTexCoord(rotate(self.shineAngle))

	self.shine:SetVertexColor(1, 1, 1, self.shineAlpha)

	if (GetTime() > self.endTime - 5) then
		self:SetAlpha(self.shineAlpha)
	else
		self:SetAlpha(1)
	end
end

-- CreateMendingIcon
function xpHigh:CreateMendingIcon(frame)
	local h = frame.highlight
	local p = frame.statsFrame		-- or frame
	local anchor = "CENTER"
	local anchorRel = "TOP"
	local anchorRelP = p
	local sizeMod = -8
	local xOffset, yOffset = 0, 0
	if (p) then
		p = p.healthBar or p
		if (strfind(p:GetName(), "^XPerl_Raid")) then
			sizeMod = 0
			yOffset = -2
		else
			sizeMod = 10
			yOffset = -4
		end
	end

	if (h and p) then
		local icon = h.mending
		if (not icon) then
			icon = tremove(self.mendingIcons, 1)
			h.mending = icon
		end
		if (icon) then
			-- Re-parent
			icon:SetParent(p)
			icon:ClearAllPoints()
		else
			icon = CreateFrame("Frame", nil, p)
			h.mending = icon
			icon.tex = icon:CreateTexture(nil, "BACKGROUND")
			icon.tex:SetAllPoints()
			icon.tex:SetTexture("Interface\\Icons\\Spell_Holy_PrayerOfMendingtga")
			icon.tex:SetTexCoord(0.1, 0.9, 0.1, 0.9)

			icon.shine = self:CreateShine(icon)
			icon.shine:SetPoint("TOPLEFT", -5, 5)
			icon.shine:SetPoint("BOTTOMRIGHT", 5, -5)
		end

		icon:SetWidth(p:GetHeight() + sizeMod)
		icon:SetHeight(p:GetHeight() + sizeMod)
		icon:SetPoint(anchor, anchorRelP, anchorRel, xOffset, yOffset)
		icon:Hide()

		local x1, y1 = icon:GetCenter()
		local x2, y2 = frame:GetCenter()
		frame.lastPomPosX = x1 - x2
		frame.lastPomPosY = y1 - y2

		icon.shine:Show()
		icon.shine:SetVertexColor(1, 1, 1, 0)
		icon:SetScript("OnUpdate", mendingOnUpdate)

		icon:SetScript("OnShow",
			function(self)
				self.shineAngle = 0
				self.shineAlpha = 0
				self.shineMode = "in"
				self:SetAlpha(1)
			end)
	end
end

-- TriggerMendingAnimation
function xpHigh:TriggerMendingAnimation(sourceGUID, targetGUID)
	local sourceFrame, targetFrame
	if (GetNumRaidMembers() > 0 and XPerl_Raid_GetUnitFrameByUnit) then
		sourceFrame, targetFrame = XPerl_Raid_GetUnitFrameByGUID(sourceGUID), XPerl_Raid_GetUnitFrameByGUID(targetGUID)
		if (not sourceFrame and XPerl_Raid_Pet_GetUnitFrameByGUID) then
			sourceFrame = XPerl_Raid_Pet_GetUnitFrameByGUID(sourceGUID)
		end
		if (not targetFrame and XPerl_Raid_Pet_GetUnitFrameByGUID) then
			targetFrame = XPerl_Raid_Pet_GetUnitFrameByGUID(targetGUID)
		end

	elseif (GetNumPartyMembers() > 0 and XPerl_Party_GetUnitFrameByUnit) then
		sourceFrame = sourceID == "player" and XPerl_Player or XPerl_Party_GetUnitFrameByGUID(sourceGUID)
		targetFrame = targetID == "player" and XPerl_Player or XPerl_Party_GetUnitFrameByGUID(targetGUID)
		if (not sourceFrame and XPerl_Party_Pet_GetUnitFrameByGUID) then
			sourceFrame = XPerl_Party_Pet_GetUnitFrameByGUID(sourceGUID)
		end
		if (not targetFrame and XPerl_Party_Pet_GetUnitFrameByGUID) then
			targetFrame = XPerl_Party_Pet_GetUnitFrameByGUID(targetGUID)
		end
	end

	if (sourceFrame and targetFrame) then
		self:StartMendingAnimation(sourceFrame, targetFrame)
	end
end

-- StartMendingAnimation
function xpHigh:StartMendingAnimation(sourceFrame, targetFrame)
    local oldMA = self.mendingAnimation

    local ma = new()
	self.mendingAnimation = ma

	local sx, sy = sourceFrame:GetCenter()
	local tx, ty = targetFrame:GetCenter()
	local ss, ts = sourceFrame:GetEffectiveScale(), targetFrame:GetEffectiveScale()

	if (oldMA) then
		ma.sourceX = oldMA.currentX
		ma.sourceY = oldMA.currentY
	else
		ma.sourceX = (sx + (sourceFrame.lastPomPosX or 0)) * ss
		ma.sourceY = (sy + (sourceFrame.lastPomPosY or 0)) * ss
	end

	ma.targetX = (tx + (targetFrame.lastPomPosX or 0)) * ts
	ma.targetY = (ty + (targetFrame.lastPomPosY or 0)) * ts
	ma.currentX = ma.sourceX
	ma.currentY = ma.sourceY

	-- Star will take 0.667 seconds to arrive
	ma.speedX = (ma.targetX - ma.sourceX) * 1.5
	ma.speedY = (ma.targetY - ma.sourceY) * 1.5

	ma.shown = 0
	ma.showGap = 1
	local icons = self.mendingAnimationIcons
	if (not icons) then
		icons = {}
		self.mendingAnimationIcons = icons
		for i = 1,3 do
			local icon = CreateFrame("Frame", nil, UIParent)
			icons[i] = icon
			icon:SetFrameStrata("DIALOG")
			icon:SetHeight((4 - i) * 8)
			icon:SetWidth((4 - i) * 8)

			icon.tex = icon:CreateTexture(nil, "OVERLAY")
			icon.tex:SetTexture("Spells\\SparkleBlue")
			icon.tex:SetAllPoints()
			icon.tex:SetVertexColor(1 / i, 1 / i, 0.7 / i)
			icon.tex:SetBlendMode("ADD")
			icon.angle = 0
		end
	else
		for i = 1,3 do
			icons[i]:Hide()
		end
	end

	del(oldMA)
end

-- MendingAnimationOnUpdate
function xpHigh:MendingAnimationOnUpdate(elapsed)
	local ma = self.mendingAnimation
	local icons = self.mendingAnimationIcons

	local x, y = ma.currentX, ma.currentY

	ma.currentX = ma.currentX + ma.speedX * elapsed
	ma.currentY = ma.currentY + ma.speedY * elapsed

	if ((ma.speedX < 0 and ma.currentX < ma.targetX) or (ma.speedX > 0 and ma.currentX > ma.targetX)) then
		ma.currentX = ma.targetX
		ma.speedX = 0
		if (ma.speedY == 0) then
			ma.endCounter = 0
		end
	end
	if ((ma.speedY < 0 and ma.currentY < ma.targetY) or (ma.speedY > 0 and ma.currentY > ma.targetY)) then
		ma.currentY = ma.targetY
		ma.speedY = 0
		if (ma.speedX == 0) then
			ma.endCounter = 0
		end
	end

	if (ma.shown < 3) then
		ma.showGap = ma.showGap + elapsed
		if (ma.showGap > 0.2) then
			ma.showGap = 0

			ma.shown = ma.shown + 1
			icons[ma.shown]:Show()
		end
	end

	for i = 1,ma.shown do
		local icon = icons[i]
		icon:ClearAllPoints()
		if (i == 1) then
			icon:SetPoint("CENTER", UIParent, "BOTTOMLEFT", ma.currentX / UIParent:GetScale(), ma.currentY / UIParent:GetScale())
		else
			icon:SetPoint("CENTER", UIParent, "BOTTOMLEFT", (ma.currentX - (ma.speedX * elapsed * i)) / UIParent:GetScale(), (ma.currentY - (ma.speedY * elapsed * i)) / UIParent:GetScale())
		end

		icon.angle = icon.angle + elapsed * 3
		if (icon.angle > 360) then
			icon.angle = icon.angle - 360
		end
		icon.tex:SetTexCoord(rotate(icon.angle))
	end

	if (ma.endCounter) then
		ma.endCounter = ma.endCounter + 1
		if (ma.endCounter >= 5) then
			self:StopMendingAnimation()
		end
	elseif (self.expectingPOM) then
		if (GetTime() > self.expectingPOM + 2) then
			self.expectingPOM = nil
			self:StopMendingAnimation()
		end
	end
end

-- StopMendingAnimation
function xpHigh:StopMendingAnimation()
	self.mendingAnimation = del(self.mendingAnimation)
	local icons = self.mendingAnimationIcons
	if (icons) then
		for i = 1,3 do
			local icon = icons[i]
			if (icon) then
				icon:Hide()
			end
		end
	end
end

function T()
	xpHigh:ShowHotSparks(XPerl_Player, true)
	xpHigh:ShowHotSparks(XPerl_Target, true)
end

-- SparkleArea
function xpHigh:SparkleArea(a, duration, mode, ttl)
	local area
	if (type(a) == "table" and type(a[0]) == "userdata") then
		if (a:GetLeft()) then
			local s = a:GetEffectiveScale()
			area = new()
			area.left	= a:GetLeft()	* s
			area.right	= a:GetRight()	* s
			area.top	= a:GetTop()	* s
			area.bottom	= a:GetBottom()	* s
		end
	elseif (type(a) == "table") then
		if (a.top and a.left and a.bottom and a.right) then
			area = new()
			area.left, area.right, area.top, area.bottom = a.left, a.right, a.top, a.bottom
		end
	end

	if (area) then
		area.key = format("%d-%d-%d-%d", area.left, area.right, area.top, area.bottom)
		area.endTime = GetTime() + duration
		area.mode = mode or "evaporate"
		area.ttl = ttl or 0.5
		area.colour = new()
		area.colour.r = 1
		area.colour.g = 1
		area.colour.b = 0.5
		area.fadeInMultiplier = 6
		area.fadeOutMultiplier = 1
		area.rotateMultiplier = 1

		area.sparks = new()
		area.sparkTime = 0

		if (not self.sparkleAreas) then
			self.sparkleAreas = new()
		end

		if (not self.sparkleAreas[area.key]) then
			self.sparkleAreas[area.key] = area
		else
			del(area)			-- Duplicate area, discard
		end
	end
end

-- sparkOnShow
local function sparkOnShow(self)
	self.angle = 0
	self.alpha = 0
	self.begin = GetTime()
	self.state = "new"
end

-- sparkOnUpdate
local function sparkOnUpdate(self, elapsed)
	self.angle = self.angle + elapsed * self.area.rotateMultiplier
	if (self.angle > 360) then
		self.angle = self.angle - 360
	end
	self.tex:SetTexCoord(rotate(self.angle))

	if (self.mode == "evaporate") then
		local x, y = self:GetCenter()
		x = x * self:GetEffectiveScale()
		y = y * self:GetEffectiveScale()
    
		y = y + elapsed * self.speed

		self:ClearAllPoints()
		self:SetPoint("CENTER", UIParent, "BOTTOMLEFT", x, y)
	end

	if (self.state == "new") then
		self.alpha = self.alpha + elapsed * self.area.fadeInMultiplier
		if (self.alpha >= 1) then
			self.alpha = 1
			if (GetTime() > self.begin + self.ttl) then
				self.state = "fade"
			else
				self.state = "cycle"
			end
		end

	elseif (self.state == "cycle") then
		if (GetTime() > self.begin + self.ttl) then
			self.state = "fade"
		end

	elseif (self.state == "fade") then
		self.alpha = self.alpha - elapsed * self.area.fadeOutMultiplier
		if (self.alpha <= 0) then
			self:Hide()
			xpHigh:SparkleAreaRemoveSpark(self)
			return
		end
	end

	local c = self.area.colour
	local a = self.alpha * fluctuateOnUpdate(self, elapsed)
	self.tex:SetVertexColor(c.r, c.g, c.b, a)
end

-- SparkleAreaRemoveSpark
function xpHigh:SparkleAreaRemoveSpark(spark)
	local area = spark.area
	spark.area = nil
	self.activeSparks[spark.id] = nil
	tinsert(self.inactiveSparks, spark)
	area.sparks[spark.id] = nil

	if (not next(area.sparks)) then
		area.sparks = del(area.sparks)
	end
end

-- SparkleAreaAddSpark
function xpHigh:SparkleAreaAddSpark(area, bias)
	-- Retreive spark from pool
	if (not self.inactiveSparks) then
		self.inactiveSparks = new()
	end
	local spark = tremove(self.inactiveSparks, 1)

	if (not spark) then
		-- Create new spark
		spark = CreateFrame("Frame", nil, XPerl_Highlight)
		spark.tex = self:CreateShine(spark)
		spark.tex:SetAllPoints()

		spark:SetScript("OnShow", sparkOnShow)
		spark:SetScript("OnUpdate", sparkOnUpdate)
		spark:Hide()

		-- Make unique ID
		self.sparkIncrement = (self.sparkIncrement or 0) + 1
		spark.id = self.sparkIncrement
	end

	-- Store into active sparks list (what gets OnUpdate'd)
	if (not self.activeSparks) then
		self.activeSparks = new()
	end
	self.activeSparks[spark.id] = spark

	spark.mode = area.mode
	spark.ttl = area.ttl
	spark.area = area

	-- Random size
	local rand = random(6)
	local size = 8 + rand
	spark:SetWidth(size)
	spark:SetHeight(size)

	local h = area.top - area.bottom
	--spark.speed = 1 + random(10) / 10
	spark.speed = size

	-- Position in area
	spark:ClearAllPoints()
	local x, y
	local w = area.right - area.left
	if (bias == "left") then
		x = area.left + random(w) / 3
	elseif (bias == "right") then
		x = area.right - random(w) / 3
	elseif (bias == "middle") then
		x = area.left + (w / 3) + (random(w) / 3)
	else
		x = area.left + random(w)
	end
	y = area.bottom + random(area.top - area.bottom) / (area.mode == "evaporate" and 2 or 1)
	spark:SetPoint("CENTER", UIParent, "BOTTOMLEFT", x, y)

	-- Keep ID in area's spark list
	area.sparks[spark.id] = true

	spark:Show()
	return spark
end

-- SparkleAreaOnUpdate
function xpHigh:SparkleAreaOnUpdate(area, elapsed)
	if (GetTime() < area.endTime) then
		area.sparkTime = area.sparkTime + elapsed
		if (area.sparkTime > 0.1) then
			area.sparkTime = 0
			self:SparkleAreaAddSpark(area, "left")
			self:SparkleAreaAddSpark(area, "middle")
			self:SparkleAreaAddSpark(area, "right")
		end
	else
		area.ending = true
		if (not area.sparks) then
			self.sparkleAreas[area.key] = nil
			del(area, true)
		end
	end
end

-- SparkleAreasOnUpdate
function xpHigh:SparkleAreasOnUpdate(elapsed)
	for key,area in pairs(self.sparkleAreas) do
		self:SparkleAreaOnUpdate(area, elapsed)
	end
end

-- ShowHotSparks
function xpHigh:ShowHotSparks(frame, show)
	if (show) then
		local h = frame.healthBar or (frame.statsFrame and frame.statsFrame.healthBar)
		if (not h) then
			return
		end

		self:SparkleArea(h, 0.4, "evaporate", 0.1)
	end
end

-- xpHigh:RemoveHighlight
function xpHigh:RemoveHighlight(frame)
	XPerl_FrameFlashStop(frame.highlight.tex)

	frame.highlight.tex:SetVertexColor(0.86, 0.82, 0.41)	-- Default selection colour

	if (frame.highlight.sel and conf.highlightSelection) then
		frame.highlight.tex:Show()
		frame.highlight.tex:SetAlpha(1)
	else
		frame.highlight.tex:Hide()
	end
end

-- xpHigh:ClearAll
function xpHigh:ClearAll(clearType)
	for k,v in pairs(self.list) do
		if (v[clearType]) then
			v[clearType] = nil
			self:Send(k)
		end
	end
end

-- xpHigh:Send
function xpHigh:Send(guid)
	for k,v in pairs(self.callbacks) do
		v[1](v[2], guid)
	end
end

-- XPerl_RegisterFrameHighlighter
function xpHigh:Register(callback, slf)
	tinsert(self.callbacks, {callback, slf})
end

-- xpHigh:OnEvent
function xpHigh:OnEvent(event, ...)
	self[event](self, ...)
end

-- xpHigh:UNIT_SPELLCAST_SENT
function xpHigh:UNIT_SPELLCAST_SENT(unit, spell, rank, targetName)
--self:Print("UNIT_SPELLCAST_SENT(%s, %s, %s, %s)", unit, spell, rank, targetName)
	--if (hotSpells[spell] or shieldSpells[spell] or pomSpells[spell]) then
	--	self.castSpell = spell
	--	self.castTarget = targetName
	--else

	if (unit == "player") then
		local guid
		if (UnitName("mouseover") == targetName) then
			guid = UnitGUID("mouseover")
		elseif (UnitName("target") == targetName) then
			guid = UnitGUID("target")
		elseif (UnitName("focus") == targetName) then
			guid = UnitGUID("focus")
		else
			guid = self.lookup[targetName]
		end

		local t = healSpells[spell]
		if (t) then
			self.castSpell = spell
			self.castTarget = targetName
			self.castGUID = guid
			if (conf.highlight.HEAL) then
				self:Add(guid or targetName, "HEAL", max(2, t), "player")
			end
			if (self.distribution) then
				if (guid) then
					SendAddonMessage(xperlHealComms, format("HEALG %s %d", guid, t), nil, self.distribution)
				end
				SendAddonMessage(xperlHealComms, "HEAL "..targetName, nil, self.distribution)
			end
		else
			t = groupHealSpells[spell]
			if (t) then
				local findGUID = t < 0 and guid or UnitGUID("player")
				local targetGroup
				self.castSpell = spell
				self.castTarget = targetName
				self.castGUID = guid

				for unit, unitName, unitClass, group in XPerl_NextMember do
					if (UnitGUID(unit) == findGUID) then
						targetGroup = group
						break
					end
				end
				if (targetGroup) then
					t = max(0.5, t)
					for unit, unitName, unitClass, group in XPerl_NextMember do
						if (group == targetGroup) then
							if (UnitExists(unit) and UnitIsVisible(unit)) then
								local guid = UnitGUID(unit)
								if (conf.highlight.HEAL) then
									self:Add(guid or unitName, "HEAL", t, "player")
								end
								if (self.distribution) then
									SendAddonMessage(xperlHealComms, "HEAL "..unitName, nil, self.distribution)
									SendAddonMessage(xperlHealComms, format("HEALG %s %d", guid, t), nil, self.distribution)
								end
							end
						end
					end
				end
			end
		end
	end
end

-- xpHigh:UNIT_SPELLCAST_FAILED
function xpHigh:UNIT_SPELLCAST_FAILED(unit)
	if (unit == "player" and self.castTarget) then
		if (conf.highlight.HEAL) then
			self:Remove(self.castTarget, "HEAL")
		end
		if (self.distribution) then
			SendAddonMessage(xperlHealComms, "FAIL "..self.castTarget, nil, self.distribution)
		end
		self.castTarget = nil
		self.castSpell = nil
		self.castGUID = nil
	end
end

xpHigh.UNIT_SPELLCAST_INTERRUPTED = xpHigh.UNIT_SPELLCAST_FAILED

-- COMBAT_LOG_EVENT_UNFILTERED
-- Using this instead of UNIT_SPELLCAST_SUCCEEDED so we can use the dstGUID for a guarenteed correct target, rather than implied and not necessarily correct name
local dstMask = COMBATLOG_OBJECT_AFFILIATION_MINE + COMBATLOG_OBJECT_AFFILIATION_PARTY + COMBATLOG_OBJECT_AFFILIATION_RAID
function xpHigh:COMBAT_LOG_EVENT_UNFILTERED(timestamp, event, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, ...)
	if (event == "SPELL_CAST_SUCCESS") then
		if (srcGUID == UnitGUID("player")) then
			if (bit.band(dstFlags, dstMask) ~= 0) then
				local spellId, spellName, spellSchool = ...
				if (hotSpells[spellName]) then
					if (conf.highlight.HOT) then
						self:Add(dstGUID, "HOT", hotSpells[spellName])
					end
				elseif (shieldSpells[spellName]) then
					if (conf.highlight.SHIELD) then
						self:Add(dstGUID, "SHIELD", shieldSpells[spellName])
					end
				elseif (pomSpells[spellName]) then
					if (conf.highlight.POM) then
						self.expectingPOM = nil
						self.pomSourceGUID = nil
						self:ClearAll("POM")
						self:StopMendingAnimation()
						self:Add(dstGUID, "POM", pomSpells[spellName])
						self.expectingPOM = nil
					end
				end
			end
		end

	elseif (event == "SPELL_HEAL") then
		if (conf.highlight.HEAL and conf.highlight.extraSparkles and srcGUID == UnitGUID("player")) then
			if (bit.band(dstFlags, dstMask) ~= 0) then
				-- Pretty sparkles for our healing target
				self:Add(dstGUID, "HOTSPARKS", 0.1)
			end
		end

	elseif (event == "SPELL_PERIODIC_HEAL") then
		if (conf.highlight.HOT and conf.highlight.extraSparkles and srcGUID == UnitGUID("player")) then
			if (bit.band(dstFlags, dstMask) ~= 0) then
				local spellId, spellName, spellSchool, amount = ...
				if (hotSpells[spellName]) then
					-- Our HOT actually healed someone, so we'll do something pretty
					if (self:HasEffect(dstGUID, "HOT")) then
						self:Add(dstGUID, "HOTSPARKS", 0.1)
					end
				end
			end
		end
	end
end

-- xpHigh:CHAT_MSG_ADDON
function xpHigh:CHAT_MSG_ADDON(source, msg, channel, player)
	if (player ~= playerName and conf.highlight.HEAL) then
		if (source == "HealComm") then
			local name, healSize = strmatch(msg, "^(.+):(.+)$")
			if (name) then
				self:Add(name, "HEAL", 1, source)
			end
		elseif (source == xperlHealComms) then
			local msgType, name, dur = strmatch(msg, "^(%a+) ([%a%d]+) (%d+)")
			if (msgType) then
				if (msgType == "HEALG") then
					self.gettingGUIDsFrom[source] = true
					self:Add(name, "HEAL", 1, source)
				elseif (msgType == "FAILG") then
					self.gettingGUIDsFrom[source] = true
					self:Remove(name, "HEAL")
				end
			else
				msgType, name = strmatch(msg, "^(%a+) (%a+)")
				
				if (msgType) then
					if (msgType == "HEAL") then
						if (not self.gettingGUIDsFrom[source]) then
							self:Add(name, "HEAL", 1, source)
						end
					elseif (msgType == "FAIL") then
						if (not self.gettingGUIDsFrom[source]) then
							self:Remove(name, "HEAL")
						end
					end
				--else
				--	ChatFrame1:AddMessage("Un-parsed X-Perl Heal comms: "..msg)
				end
			end
		end
	end
end

-- xpHigh:CommLibCallback()
function xpHigh:CommLibCallback(sender, senderUnit, action, target, channel, spell, rank, displayName, icon, startTime, endTime, isTradeSkill)
	if (not channel and healSpells[spell]) then
		self:Add(target, "HEAL", healSpells[spell], senderUnit)
	end
end

-- xpHigh:HasMyPomPom(unit)
function xpHigh:HasMyPomPom(unit)
	for i = 1,40 do
		local name, rank, tex, count, dur, timeLeft = UnitBuff(unit, i)
		if (not name) then
			break
		end

		if (timeLeft and pomSpells[name]) then
			return timeLeft
		end
	end
end

-- xpHigh:HasMyShield(unit)
function xpHigh:HasMyShield(unit)
	for i = 1,20 do
		local name, rank, tex, count, dur, timeLeft = UnitBuff(unit, i)
		if (not name) then
			break
		end

		if (timeLeft and shieldSpells[name]) then
			return timeLeft
		end
	end
end

-- xpHigh:FindMyPomPom()
function xpHigh:FindMyPomPom()
	for unit, unitName, unitClass, group in XPerl_NextMember do
		local timeLeft = self:HasMyPomPom(unit)
		if (timeLeft) then
			return UnitGUID(unit), timeLeft
		end

		local petid = unit == "player" and "pet" or unit:gsub("^(%a+)(%d+)$", "%1pet%2")
		if (UnitExists(petid)) then
			local timeLeft = self:HasMyPomPom(petid)
			if (timeLeft) then
				return UnitGUID(petid), timeLeft
			end
		end
	end
end

-- RemoveAllFromGUID
function xpHigh:RemoveAllFromGUID(unit)
	if (guid and self.list[guid]) then
		self.list[guid] = nil
		self:Send(guid)
	end
end

-- xpHigh:UNIT_AURA
function xpHigh:UNIT_AURA(unit)
	if (not UnitInParty(unit) and not UnitPlayerOrPetInRaid(unit) and not UnitPlayerOrPetInParty(unit)) then
		return
	end

	local guid = UnitGUID(unit)

	if (UnitIsDeadOrGhost(unit)) then
		self:RemoveAllFromGUID(guid)
		return
	end

	if (playerClass == "PRIEST") then
		-- Check pom movement
		if (self:HasEffect(guid, "POM")) then
			if (not self:HasMyPomPom(unit)) then
				self.pomSourceGUID = guid
				self:Remove(guid, "POM")
				self.expectingPOM = GetTime()
			end
		end

		if (self.expectingPOM) then
			local findGUID, timeLeft = self:FindMyPomPom()
			if (findGUID) then
				self.expectingPOM = nil
				self:Add(findGUID, "POM", timeLeft)
				self:TriggerMendingAnimation(self.pomSourceGUID, findGUID)
			elseif (GetTime() > self.expectingPOM + 2) then
				self.expectingPOM = nil
				self:StopMendingAnimation()
			end
		end
	end

	-- Check for pre-mature end of shield buff (Power Word: Shield, Earth Shield)
	if (playerClass == "SHAMAN" or playerClass == "PRIEST") then
		if (self:HasEffect(guid, "SHIELD")) then
			if (not self:HasMyShield(unit)) then
				self:Remove(guid, "SHIELD")
			end
		end
	end

	if (conf.highlight.HOTCOUNT) then
		local hotCount = 0
		for i = 1,40 do
			local buffName = UnitBuff(unit, i)
			if (not buffName) then
				break
			end
			if (hotSpells[buffName]) then
				hotCount = hotCount + 1
			end
		end

		if (hotCount == 0) then
			self:Remove(guid, "HOTCOUNT")
		else
			self:Add(guid, "HOTCOUNT", hotCount)
		end
	end
end

-- xpHigh:RAID_ROSTER_UPDATE
function xpHigh:RAID_ROSTER_UPDATE()
	self.rosterUpdate = true
	self:SetScript("OnUpdate", self.OnUpdate)
end

xpHigh.PARTY_MEMBERS_CHANGED = xpHigh.RAID_ROSTER_UPDATE

-- PLAYER_TARGET_CHANGED
function xpHigh:PLAYER_TARGET_CHANGED()
	self:ClearAll("TARGET")
	if (UnitExists("target") and UnitPlayerOrPetInParty("target") or UnitPlayerOrPetInRaid("target")) then
		self:Add(UnitName("target"), "TARGET", 0)
	end
end

-- xpHigh:RefreshAllAuras
function xpHigh:RefreshAllAuras()
	self.expectingPOM = nil
	for unitid in XPerl_NextMember do
		self:UNIT_AURA(unitid)
	end
end

local hcTried

-- xpHigh:OptionChange
function xpHigh:OptionChange()
	local events

	local _
	_, playerClass = UnitClass("player")
	playerName = UnitName("player")

	self:RegisterEvent("UNIT_SPELLCAST_SENT")
	self:RegisterEvent("UNIT_SPELLCAST_FAILED")

	if (conf.highlight.enable and (conf.highlight.HOT or conf.highlight.SHIELD or conf.highlight.HEAL)) then
		events = true
		self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	else
		self:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	end

	if (not conf.highlight.enable or not conf.highlight.HOT) then
		self:ClearAll("HOT")
		self:ClearAll("POM")
	end
	if (not conf.highlight.enable or not conf.highlight.SHIELD) then
		self:ClearAll("SHIELD")
	end

	if (conf.highlight.enable and conf.highlight.HEAL) then
		events = true
		self:RegisterEvent("CHAT_MSG_ADDON")
		self:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED")

		if (not hcTried) then
			hcTried = true
			if (playerClass == "SHAMAN" or playerClass == "PRIEST" or playerClass == "DRUID" or playerClass == "PALADIN") then
				if (not IsAddOnLoaded("LibHealComm-3.0")) then
					if (not LoadAddOn("LibHealComm-3.0")) then
						LoadAddOn("HealCommLib")		-- Will load if it's enabled and load on demand
					end
				end
			end

			LoadAddOn("CastCommLib")
			local cc = AceLibrary and AceLibrary:HasInstance("CastCommLib") and AceLibrary("CastCommLib")
			if (cc) then
				cc:RegisterCallBack(xpHigh, "CommLibCallback")
			end
		end
	else
		self:UnregisterEvent("CHAT_MSG_ADDON")
		self:UnregisterEvent("UNIT_SPELLCAST_INTERRUPTED")
		self:ClearAll("HEAL")
	end

	if (conf.highlight.enable and (conf.highlight.HOTCOUNT or conf.highlight.HOT or conf.highlight.SHIELD)) then
		events = true
		self:RegisterEvent("UNIT_AURA")
		self:RegisterEvent("RAID_ROSTER_UPDATE")
		self:RegisterEvent("PARTY_MEMBERS_CHANGED")
		self:RefreshAllAuras()
	else
		self:UnregisterEvent("UNIT_AURA")
		self:UnregisterEvent("RAID_ROSTER_UPDATE")
		self:UnregisterEvent("PARTY_MEMBERS_CHANGED")
		self:ClearAll("HOTCOUNT")
	end

	if (conf.highlight.TARGET) then
		events = true
		self:RegisterEvent("PLAYER_TARGET_CHANGED")
		self:PLAYER_TARGET_CHANGED()
	else
		self:UnregisterEvent("PLAYER_TARGET_CHANGED")
		self:ClearAll("TARGET")
	end

	if (not conf.highlight.AGGRO) then
		XPerl_Highlight:ClearAll("AGGRO")
	end

	if (conf.highlight.enable and events) then
		self:SetScript("OnEvent", self.OnEvent)
	else
		self:SetScript("OnEvent", nil)
	end

	if (conf.highlight.enable and (conf.highlight.HOT or conf.highlight.SHIELD or conf.highlight.HEAL)) then
		self:SetScript("OnUpdate", self.OnUpdate)
	else
		self:SetScript("OnUpdate", nil)
	end

	self:MakeNameToGUIDLookup()
end

XPerl_RegisterOptionChanger(xpHigh.OptionChange, xpHigh)
