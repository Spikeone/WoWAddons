assert(RaidCooldowns, "RaidCooldowns not found!")
if (select(2, UnitClass("player"))) ~= "SHAMAN" then return end

local mod = RaidCooldowns:NewModule("Shaman", RaidCooldowns.ModuleBase, "AceEvent-3.0", "AceBucket-3.0")
mod.cooldowns = RaidCooldowns.cooldowns["SHAMAN"]

--[[

	This module is almost entirely copied from oRA2_Participant, so thanks to that.
	
]]--

local ankhs   = nil
local resTime = nil

local GetTime = _G.GetTime
local GetItemCount = _G.GetItemCount

function mod:OnEnable()
	self:Super("OnEnable")
	
	self:RegisterEvent("PLAYER_ALIVE")
	self:RegisterBucketEvent("BAG_UPDATE", 0.5)
	
	ankhs = GetItemCount(17030)
	resTime = GetTime()
end

function mod:ScanTalents()
	-- Improved Reincarnation (Tab 3, Index 3)
	-- Reduce Reincarnation cooldown by Rank * 600
	local _, _, _, _, rank = GetTalentInfo(3, 3)
	self:CooldownModifier(20608, rank * 600)
end

function mod:PLAYER_ALIVE()
	resTime = GetTime()
end

function mod:BAG_UPDATE()
	if (GetTime() - (resTime or 0)) > 1 then
		return
	end

	local newankhs = GetItemCount(17030)
	if newankhs == (ankhs - 1) then
		local spellData = self.cooldowns[GetSpellInfo(20608)]
		
		self:Sync(20608, spellData.cd) -- Already modified by ScanTalents()
	end
	ankhs = newankhs
end