--[[
	TODO:
	- Broadcast for an update after joining a raid, to get everyone's current cooldowns
	- Version check
]]

local MINOR_VERSION = tonumber(("$Revision: 2 $"):match("%d+"))

RaidCooldowns = LibStub("AceAddon-3.0"):NewAddon("RaidCooldowns", "AceComm-3.0", "AceEvent-3.0")
RaidCooldowns.MINOR_VERSION = MINOR_VERSION

function RaidCooldowns:OnInitialize()
	self:UnregisterAllEvents()
	self:SetEnabledState(false) -- Enabled when we join a raid

	self.prefix = "RaCD"
	
	self:RegisterEvent("RAID_ROSTER_UPDATE")
	
	-- Logged in or reloaded in a raid; fake a RAID_ROSTER_UPDATE
	if UnitInRaid("player") then
		self:RAID_ROSTER_UPDATE()
	end
end

function RaidCooldowns:OnEnable()
	self:RegisterComm(self.prefix)
	
	local name, module
	for name, module in self:IterateModules() do
		if not module:IsEnabled() then
			self:EnableModule(name)
		end
	end
end

function RaidCooldowns:OnDisable()
	local name, module
	for name, module in self:IterateModules() do
		self:DisableModule(name)
	end
end

--------------[[		Events		]]--------------

-- oRA2
do
	local inRaid = false
	function RaidCooldowns:RAID_ROSTER_UPDATE()
		local inRaidNow = UnitInRaid("player")
		if not inRaid and inRaidNow then
			self:Enable()
			inRaid = true
		elseif inRaid and not inRaidNow then
			self:Disable()
		end
	end
end

--------------[[		Comm Methods		]]--------------

function RaidCooldowns:OnCommReceived(prefix, msg, distro, sender)
	-- We don't do anything with these yet, but RaidCooldowns_Display does!
end