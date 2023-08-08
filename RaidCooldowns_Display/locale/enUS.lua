local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("RaidCooldowns_Display", "enUS", true)
if not L then return end

L["RaidCooldowns"] = true

L["DRUID"] = "Druid"
L["HUNTER"] = "Hunter"
L["MAGE"] = "Mage"
L["PALADIN"] = "Paladin"
L["PET"] = "Pet"
L["PRIEST"] = "Priest"
L["ROGUE"] = "Rogue"
L["SHAMAN"] = "Shaman"
L["WARLOCK"] = "Warlock"
L["WARRIOR"] = "Warrior"

L["%s's %s is up."] = true -- Sebudai's Bloodlust is up.

-- Config options
L["Test"] = true
L["Display Options"] = true
L["Lock Anchor"] = true
L["Locks the anchor in place and prevents it from being dragged."] = true
L["Scale"] = true
L["Control the scale of the entire RaidCooldowns GUI"] = true
L["Grow Up"] = true
L["Grow bars upwards"] = true
L["X Position"] = true
L["Y Position"] = true
L["Clamp to screen"] = true
L["Prevent the anchor from moving off screen."] = true
L["Bar options"] = true
L["Options which affect the style of the cooldown bars"] = true
L["Texture"] = true
L["The texture that the bar will use"] = true
L["Label Font"] = true
L["The font that the bar labels will use"] = true
L["Label Font Size"] = true
L["The size of the font that the bar labels will use"] = true
L["Orientation"] = true
L["Left to Right"] = true
L["Right to Left"] = true
L["Spell Options"] = true
L["Configure which spell cooldowns are shown and which aren't"] = true
L["Hide Self"] = true
L["Hide your own cooldowns."] = true
L["Ready Message"] = true
L["Print a chat message after a cooldown is ready."] = true
L["Configure"] = true
L["Open the configuration dialog"] = true
L["Display %s cooldowns"] = true
L["Reset"] = true
L["Alpha"] = true
L["Control the transparency of the entire RaidCooldowns GUI"] = true
L["Width"] = true
L["Height"] = true