assert(RaidCooldowns, "RaidCooldowns not found!")
if (select(2, UnitClass("player"))) ~= "ROGUE" then return end

local mod = RaidCooldowns:NewModule("Rogue", RaidCooldowns.ModuleBase, "AceEvent-3.0")
mod.cooldowns = RaidCooldowns.cooldowns["ROGUE"]