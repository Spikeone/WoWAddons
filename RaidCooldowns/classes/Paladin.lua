assert(RaidCooldowns, "RaidCooldowns not found!")
if (select(2, UnitClass("player"))) ~= "PALADIN" then return end

local mod = RaidCooldowns:NewModule("Paladin", RaidCooldowns.ModuleBase, "AceEvent-3.0")
mod.cooldowns = RaidCooldowns.cooldowns["PALADIN"]

function mod:ScanTalents()
	-- Guardian's Favor (Tab 2, Index 4)
	-- Reduce BoP cooldown by Rank * 60
	local _, _, _, _, rank = GetTalentInfo(2, 4)
	self:CooldownModifier(10278, rank * 60)
end