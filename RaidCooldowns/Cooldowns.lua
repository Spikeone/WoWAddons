assert(RaidCooldowns, "RaidCooldowns not found!")

--[[
	["Localized Spell Name"] = {
		id = 12345, -- Spell ID
		cd = 123,   -- Spell's cooldown, in seconds
		ora = x,    -- Spell's oRA sync id; if set, RaidCooldowns will not display 
	}               -- this cooldown unless it was synced from another RCD user.
]]

local hero = (UnitFactionGroup("player") == "Alliance") and 32182 or 2825
local cooldowns = {
	["DRUID"] = {
		[GetSpellInfo(17116)] = { id = 17116, cd = 180 },           -- Nature's Swiftness
		[GetSpellInfo(26994)] = { id = 26994, cd = 1200, ora = 1 }, -- Rebirth (Rank 6)
		[GetSpellInfo(29166)] = { id = 29166, cd = 360 },           -- Innervate
		[GetSpellInfo(5209)] = { id = 5209, cd = 600 },            -- Challenging Roar
	},
	["HUNTER"] = {
		[GetSpellInfo(34477)] = { id = 34477, cd = 120 },           -- Misdirection
		[GetSpellInfo(5384)]  = { id = 5384, cd = 30 },             -- Feign Death
	},
	["MAGE"] = {
		[GetSpellInfo(2139)]  = { id = 2139,  cd = 24 },            -- Counterspell
		[GetSpellInfo(45438)] = { id = 45438, cd = 300 },           -- Ice Block
	},
	["PALADIN"] = {
		[GetSpellInfo(1020)]  = { id = 1020,  cd = 300 },           -- Divine Shield (Rank 2)
		[GetSpellInfo(10278)] = { id = 10278, cd = 300,  ora = 9 }, -- Blessing of Protection (Rank 3) [requires talent info]
		[GetSpellInfo(19752)] = { id = 19752, cd = 3600, ora = 4 }, -- Divine Intervention
	},
	["PRIEST"] = {
		[GetSpellInfo(33206)] = { id = 33206, cd = 120 },           -- Pain Suppression
		[GetSpellInfo(6346)]  = { id = 6346, cd = 180 },            -- Fear Ward
	},
	["ROGUE"] = {
		[GetSpellInfo(31224)] = { id = 31224, cd = 60 },            -- Cloak of Shadows
		[GetSpellInfo(38768)] = { id = 38768, cd = 10 },            -- Kick (Rank 5)
		[GetSpellInfo(1725)]  = { id = 1725, cd = 30 },            	-- Distract
	},
	["SHAMAN"] = {
		[GetSpellInfo(hero)]  = { id = hero,  cd = 600 },           -- Bloodlust/Heroism
		[GetSpellInfo(16188)] = { id = 16188, cd = 180 },           -- Nature's Swiftness
		[GetSpellInfo(20608)] = { id = 20608, cd = 3600, ora = 2 }, -- Reincarnation
		[GetSpellInfo(2894)]  = { id = 2894, cd = 1200 },           -- Fire Elemental Totem
		[GetSpellInfo(2062)]  = { id = 2062, cd = 1200 },           -- Earth Elemental Totem
		[GetSpellInfo(16190)]  = { id = 16190, cd = 300 },          -- Mana Tide Totem
	},
	["WARLOCK"] = {
		[GetSpellInfo(27239)] = { id = 27239, cd = 1800, ora = 3 }, -- Soulstone Resurrection
		[GetSpellInfo(29858)] = { id = 29858, cd = 300 },           -- Soulshatter
	},
	["WARRIOR"] = {
		[GetSpellInfo(871)]   = { id = 871,   cd = 1800 },          -- Shield Wall
		[GetSpellInfo(12975)] = { id = 12975, cd = 480 },           -- Last Stand
		[GetSpellInfo(6554)]  = { id = 6554,  cd = 10 },            -- Pummel
		[GetSpellInfo(1161)]  = { id = 1161,  cd = 600 },          -- Challenging Shout
	},
}

RaidCooldowns.cooldowns = cooldowns