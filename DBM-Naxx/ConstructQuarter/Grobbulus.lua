local mod = DBM:NewMod("Grobbulus", "DBM-Naxx", 2)
local L = mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 112 $"):sub(12, -3))
mod:SetCreatureID(15931)
mod:SetZone(GetAddOnMetadata("DBM-Naxx", "X-DBM-Mod-LoadZone"))

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED"
)

local warnInjection			= mod:NewAnnounce("WarningInjection", 2, 28169)
local specWarnInjection		= mod:NewSpecialWarning("SpecialWarningInjection")

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 28169 then
		warnInjection:Show(args.destName)
		if args.destName == UnitName("player") then
			specWarnInjection:Show()
		end
		self:SetIcon(args.destName, 8, 9)
	end	
end

