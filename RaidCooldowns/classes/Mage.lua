assert(RaidCooldowns, "RaidCooldowns not found!")
if (select(2, UnitClass("player"))) ~= "MAGE" then return end

local mod = RaidCooldowns:NewModule("Mage", RaidCooldowns.ModuleBase, "AceEvent-3.0")
mod.cooldowns = RaidCooldowns.cooldowns["MAGE"]