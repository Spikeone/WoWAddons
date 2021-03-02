local L = LibStub("AceLocale-3.0"):NewLocale("UnitRoles", "enUS", true)
if (not L) then return end
L["HEAL"] = "Healer"
L["TANK"] = "Tank"
L["MELEE"] = "Melee"
L["CASTER"] = "Caster"
L["Set role to Tank"] = true
L["Set role to Heal"] = true
L["Set role to Melee"] = true
L["Set role to Caster"] = true
L["Set role"] = true
L["Unknown"] = true
L["ROLE_CHANGED_SELF"] = "|cffffff00Your role has been set to %s.|r"
L["ROLE_CHANGED"] = "|cffffff00%s is now %s.|r"