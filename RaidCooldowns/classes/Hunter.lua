assert(RaidCooldowns, "RaidCooldowns not found!")
if (select(2, UnitClass("player"))) ~= "HUNTER" then return end

local mod = RaidCooldowns:NewModule("Hunter", RaidCooldowns.ModuleBase, "AceEvent-3.0")
mod.cooldowns = RaidCooldowns.cooldowns["HUNTER"]