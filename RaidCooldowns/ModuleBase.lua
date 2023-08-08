assert(RaidCooldowns, "RaidCooldowns not found!")
local MINOR_VERSION = tonumber(("$Revision: 2 $"):match("%d+"))
if MINOR_VERSION > RaidCooldowns.MINOR_VERSION then RaidCooldowns.MINOR_VERSION = MINOR_VERSION end

local base = {}

function base:OnInitialize()
	self:SetEnabledState(false)
end

function base:OnEnable()
	self:ScanTalents()
	
	-- FIXME: Potential bug here if the user respecs, and then respecs again
	-- because we'd essentially be reducing an ability's cooldown twice as much as we should
	self:RegisterEvent("CHARACTER_POINTS_CHANGED", "ScanTalents")
	
	self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED", "GenericSpellSuccess")
end

function base:OnDisable()
	self:UnregisterAllEvents()
end

function base:Super(t)
	local sup = getmetatable(self)["__index"]
	return sup[t](sup == base and self or sup)
end

--------------[[		Combat Events		]]--------------

function base:GenericSpellSuccess(event, unit, spell)
	if unit ~= "player" then return end

	for k, v in pairs(self.cooldowns) do
		if spell == k then
			self:Sync(v.id, v.cd)

			if not oRA and v.ora ~= nil then
				RaidCooldowns:SendCommMessage("oRA", "CD " .. v.ora .. " " .. (v.cd / 60), "RAID")
			end
			
			return
		end
	end
end

--------------[[		Comm Methods		]]--------------

function base:Sync(id, cooldown)
	if cooldown == 0 then return end
	
	RaidCooldowns:SendCommMessage(RaidCooldowns.prefix, (id .. " " .. cooldown), "RAID")
end

--------------[[		Talent Modifiers		]]--------------

function base:CooldownModifier(id, reduction)
	local spellInfo = GetSpellInfo(id)
	self.cooldowns[spellInfo].cd = (self.cooldowns[spellInfo].cd - reduction)
end

function base:ScanTalents()
end

RaidCooldowns.ModuleBase = base