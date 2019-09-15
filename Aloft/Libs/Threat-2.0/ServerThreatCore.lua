local MAJOR_VERSION = "Threat-2.0"
local MINOR_VERSION = 91003

if MINOR_VERSION > _G.ThreatLib_MINOR_VERSION then _G.ThreatLib_MINOR_VERSION = MINOR_VERSION end

ThreatLib_funcs[#ThreatLib_funcs+1] = function()

---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------
-- Blizzard Combat Log constants, in case your addon loads before Blizzard_CombatLog or it's disabled by the user
---------------------------------------------------------------------------------------------------------------
local bit_band = _G.bit.band
local bit_bor  = _G.bit.bor

local COMBATLOG_OBJECT_AFFILIATION_MINE		= COMBATLOG_OBJECT_AFFILIATION_MINE		or 0x00000001
local COMBATLOG_OBJECT_AFFILIATION_PARTY	= COMBATLOG_OBJECT_AFFILIATION_PARTY	or 0x00000002
local COMBATLOG_OBJECT_AFFILIATION_RAID		= COMBATLOG_OBJECT_AFFILIATION_RAID		or 0x00000004
local COMBATLOG_OBJECT_AFFILIATION_OUTSIDER	= COMBATLOG_OBJECT_AFFILIATION_OUTSIDER	or 0x00000008
local COMBATLOG_OBJECT_AFFILIATION_MASK		= COMBATLOG_OBJECT_AFFILIATION_MASK		or 0x0000000F
-- Reaction
local COMBATLOG_OBJECT_REACTION_FRIENDLY	= COMBATLOG_OBJECT_REACTION_FRIENDLY	or 0x00000010
local COMBATLOG_OBJECT_REACTION_NEUTRAL		= COMBATLOG_OBJECT_REACTION_NEUTRAL		or 0x00000020
local COMBATLOG_OBJECT_REACTION_HOSTILE		= COMBATLOG_OBJECT_REACTION_HOSTILE		or 0x00000040
local COMBATLOG_OBJECT_REACTION_MASK		= COMBATLOG_OBJECT_REACTION_MASK		or 0x000000F0
-- Ownership
local COMBATLOG_OBJECT_CONTROL_PLAYER		= COMBATLOG_OBJECT_CONTROL_PLAYER		or 0x00000100
local COMBATLOG_OBJECT_CONTROL_NPC			= COMBATLOG_OBJECT_CONTROL_NPC			or 0x00000200
local COMBATLOG_OBJECT_CONTROL_MASK			= COMBATLOG_OBJECT_CONTROL_MASK			or 0x00000300
-- Unit type
local COMBATLOG_OBJECT_TYPE_PLAYER			= COMBATLOG_OBJECT_TYPE_PLAYER			or 0x00000400
local COMBATLOG_OBJECT_TYPE_NPC				= COMBATLOG_OBJECT_TYPE_NPC				or 0x00000800
local COMBATLOG_OBJECT_TYPE_PET				= COMBATLOG_OBJECT_TYPE_PET				or 0x00001000
local COMBATLOG_OBJECT_TYPE_GUARDIAN		= COMBATLOG_OBJECT_TYPE_GUARDIAN		or 0x00002000
local COMBATLOG_OBJECT_TYPE_OBJECT			= COMBATLOG_OBJECT_TYPE_OBJECT			or 0x00004000
local COMBATLOG_OBJECT_TYPE_MASK			= COMBATLOG_OBJECT_TYPE_MASK			or 0x0000FC00

-- Special cases (non-exclusive)
local COMBATLOG_OBJECT_TARGET				= COMBATLOG_OBJECT_TARGET				or 0x00010000
local COMBATLOG_OBJECT_FOCUS				= COMBATLOG_OBJECT_FOCUS				or 0x00020000
local COMBATLOG_OBJECT_MAINTANK				= COMBATLOG_OBJECT_MAINTANK				or 0x00040000
local COMBATLOG_OBJECT_MAINASSIST			= COMBATLOG_OBJECT_MAINASSIST			or 0x00080000
local COMBATLOG_OBJECT_RAIDTARGET1			= COMBATLOG_OBJECT_RAIDTARGET1			or 0x00100000
local COMBATLOG_OBJECT_RAIDTARGET2			= COMBATLOG_OBJECT_RAIDTARGET2			or 0x00200000
local COMBATLOG_OBJECT_RAIDTARGET3			= COMBATLOG_OBJECT_RAIDTARGET3			or 0x00400000
local COMBATLOG_OBJECT_RAIDTARGET4			= COMBATLOG_OBJECT_RAIDTARGET4			or 0x00800000
local COMBATLOG_OBJECT_RAIDTARGET5			= COMBATLOG_OBJECT_RAIDTARGET5			or 0x01000000
local COMBATLOG_OBJECT_RAIDTARGET6			= COMBATLOG_OBJECT_RAIDTARGET6			or 0x02000000
local COMBATLOG_OBJECT_RAIDTARGET7			= COMBATLOG_OBJECT_RAIDTARGET7			or 0x04000000
local COMBATLOG_OBJECT_RAIDTARGET8			= COMBATLOG_OBJECT_RAIDTARGET8			or 0x08000000
local COMBATLOG_OBJECT_NONE					= COMBATLOG_OBJECT_NONE					or 0x80000000
local COMBATLOG_OBJECT_SPECIAL_MASK			= COMBATLOG_OBJECT_SPECIAL_MASK			or 0xFFFF0000

-- Object type constants
local COMBATLOG_FILTER_ME = bit_bor(
						COMBATLOG_OBJECT_AFFILIATION_MINE,
						COMBATLOG_OBJECT_REACTION_FRIENDLY,
						COMBATLOG_OBJECT_CONTROL_PLAYER,
						COMBATLOG_OBJECT_TYPE_PLAYER
						)						
						
local COMBATLOG_FILTER_MINE = bit_bor(
						COMBATLOG_OBJECT_AFFILIATION_MINE,
						COMBATLOG_OBJECT_REACTION_FRIENDLY,
						COMBATLOG_OBJECT_CONTROL_PLAYER,
						COMBATLOG_OBJECT_TYPE_PLAYER,
						COMBATLOG_OBJECT_TYPE_OBJECT
						)

local COMBATLOG_FILTER_MY_PET = bit_bor(
						COMBATLOG_OBJECT_AFFILIATION_MINE,
						COMBATLOG_OBJECT_REACTION_FRIENDLY,
						COMBATLOG_OBJECT_CONTROL_PLAYER,
						COMBATLOG_OBJECT_TYPE_GUARDIAN,
						COMBATLOG_OBJECT_TYPE_PET
						)
						
local COMBATLOG_FILTER_FRIENDLY_UNITS = bit_bor(
						COMBATLOG_OBJECT_AFFILIATION_PARTY,
						COMBATLOG_OBJECT_AFFILIATION_RAID,
						COMBATLOG_OBJECT_AFFILIATION_OUTSIDER,
						COMBATLOG_OBJECT_REACTION_FRIENDLY,
						COMBATLOG_OBJECT_CONTROL_PLAYER,
						COMBATLOG_OBJECT_CONTROL_NPC,
						COMBATLOG_OBJECT_TYPE_PLAYER,
						COMBATLOG_OBJECT_TYPE_NPC,
						COMBATLOG_OBJECT_TYPE_PET,
						COMBATLOG_OBJECT_TYPE_GUARDIAN,
						COMBATLOG_OBJECT_TYPE_OBJECT
						)

local COMBATLOG_FILTER_HOSTILE_UNITS = bit_bor(
						COMBATLOG_OBJECT_AFFILIATION_PARTY,
						COMBATLOG_OBJECT_AFFILIATION_RAID,
						COMBATLOG_OBJECT_AFFILIATION_OUTSIDER,
						COMBATLOG_OBJECT_REACTION_NEUTRAL,
						COMBATLOG_OBJECT_REACTION_HOSTILE,
						COMBATLOG_OBJECT_CONTROL_PLAYER,
						COMBATLOG_OBJECT_CONTROL_NPC,
						COMBATLOG_OBJECT_TYPE_PLAYER,
						COMBATLOG_OBJECT_TYPE_NPC,
						COMBATLOG_OBJECT_TYPE_PET,
						COMBATLOG_OBJECT_TYPE_GUARDIAN,
						COMBATLOG_OBJECT_TYPE_OBJECT
						)

local COMBATLOG_FILTER_NEUTRAL_UNITS = bit_bor(
						COMBATLOG_OBJECT_AFFILIATION_PARTY,
						COMBATLOG_OBJECT_AFFILIATION_RAID,
						COMBATLOG_OBJECT_AFFILIATION_OUTSIDER,
						COMBATLOG_OBJECT_REACTION_NEUTRAL,
						COMBATLOG_OBJECT_CONTROL_PLAYER,
						COMBATLOG_OBJECT_CONTROL_NPC,
						COMBATLOG_OBJECT_TYPE_PLAYER,
						COMBATLOG_OBJECT_TYPE_NPC,
						COMBATLOG_OBJECT_TYPE_PET,
						COMBATLOG_OBJECT_TYPE_GUARDIAN,
						COMBATLOG_OBJECT_TYPE_OBJECT
						)
local COMBATLOG_FILTER_EVERYTHING =	COMBATLOG_FILTER_EVERYTHING or 0xFFFFFFFF

-- Power Types
local SPELL_POWER_MANA = SPELL_POWER_MANA 			or 0
local SPELL_POWER_RAGE = SPELL_POWER_RAGE 			or 1
local SPELL_POWER_FOCUS = SPELL_POWER_FOCUS 		or 2
local SPELL_POWER_ENERGY = SPELL_POWER_ENERGY 		or 3
local SPELL_POWER_HAPPINESS = SPELL_POWER_HAPPINESS or 4
local SPELL_POWER_RUNES = SPELL_POWER_RUNES 		or 5

-- Temporary
local SCHOOL_MASK_NONE = SCHOOL_MASK_NONE 			or 0x00
local SCHOOL_MASK_PHYSICAL = SCHOOL_MASK_PHYSICAL 	or 0x01
local SCHOOL_MASK_HOLY = SCHOOL_MASK_HOLY 			or 0x02
local SCHOOL_MASK_FIRE = SCHOOL_MASK_FIRE 			or 0x04
local SCHOOL_MASK_NATURE = SCHOOL_MASK_NATURE 		or 0x08
local SCHOOL_MASK_FROST = SCHOOL_MASK_FROST 		or 0x10
local SCHOOL_MASK_SHADOW = SCHOOL_MASK_SHADOW 		or 0x20
local SCHOOL_MASK_ARCANE = SCHOOL_MASK_ARCANE 		or 0x40

-- local AURA_TYPE_DEBUFF = _G.AURA_TYPE_DEBUFF

---------------------------------------------------------------------------------------------------------------
-- End Combat Log constants
---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------

-- TODO: remove unneeded local copies

local _G = _G
local assert = _G.assert
local tonumber = _G.tonumber
local pairs = _G.pairs
local tinsert = _G.tinsert
local tremove = _G.tremove
local max = _G.max
local min = _G.min
local math_max, math_min = _G.math.max, _G.math.min
local time = _G.time
local select = _G.select
local tostring = _G.tostring
local error = _G.error
local type = _G.type
local geterrorhandler = _G.geterrorhandler
local pcall = _G.pcall
local setmetatable = _G.setmetatable
local INF = 1/0
local string_sub = _G.string.sub

local GetSpellInfo = _G.GetSpellInfo
local GetInventoryItemLink = _G.GetInventoryItemLink
local GetItemGem = _G.GetItemGem
local UnitMana = _G.UnitMana
local UnitManaMax = _G.UnitManaMax
local UnitHealth = _G.UnitHealth
local UnitHealthMax = _G.UnitHealthMax
local UnitName = _G.UnitName
local UnitClass = _G.UnitClass
local UnitIsDead = _G.UnitIsDead
local UnitAffectingCombat = _G.UnitAffectingCombat
local UnitExists = _G.UnitExists
local GetNetStats = _G.GetNetStats
local GetTime = _G.GetTime
local IsEquippedItem = _G.IsEquippedItem
local UnitLevel = _G.UnitLevel
local GetNumTalents = _G.GetNumTalents
local UnitGUID = _G.UnitGUID
local UnitBuff, UnitDebuff = _G.UnitBuff, _G.UnitDebuff
local GetSpellLink = _G.GetSpellLink
local InCombatLockdown = _G.InCombatLockdown

local ThreatLib = _G.ThreatLib
local prototype = {}

local guidLookup = ThreatLib.GUIDNameLookup

local new, del, newHash, newSet = ThreatLib.new, ThreatLib.del, ThreatLib.newHash, ThreatLib.newSet

local BLACKLIST_MOB_IDS = ThreatLib.BLACKLIST_MOB_IDS or {}		-- Default takes care of people that update and don't reboot WoW :P

	----------------------------------------------------------------

	function prototype:OnInitialize()
		if self.initted then return end
		self.timers = self.timers or {}
		self.initted = true
		ThreatLib:Debug("Init %s", self:GetName())
		self.unitType = "player"
		
		-- Stores a hash of GUID = threat level
		self.targetThreat = new()
		self.unitTypeFilter = 0xFFFFFFFF
	end

	function prototype:Boot()
		self:OnInitialize()
		ThreatLib:Debug("Enable %s", self:GetName())
		
		self.isTanking = false

		if not self.classInitted then
			self:ClassInit()
			self.classInitted = true
		end
		self:ClassEnable()

		self.unitTypeFilter = (self.unitType == "player" and COMBATLOG_FILTER_ME) or (self.unitType == "pet" and 0x1111)
	
		if self.unitType == "pet" then
			self:RegisterEvent("PET_ATTACK_START")
			self:RegisterEvent("PET_ATTACK_STOP")
		end
		self:RegisterEvent("PLAYER_REGEN_ENABLED")
		-- self:RegisterEvent("PLAYER_ALIVE", "PLAYER_REGEN_ENABLED")
		-- self:RegisterEvent("PLAYER_UNGHOST", "PLAYER_REGEN_ENABLED")
		self:RegisterEvent("PLAYER_DEAD", "PLAYER_REGEN_ENABLED")
		self:RegisterEvent("PLAYER_REGEN_DISABLED")
		self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		
		self:ScheduleRepeatingTimer("CheckServerThreat", 3)

		ThreatLib:Debug("Initialized actor module")
	end

	function prototype:CheckServerThreat()
		if InCombatLockdown() and GetTime() - ThreatLib.LastServerThreatMessage > 5 then
			ThreatLib:Warn("No Server Threat received for at least 5 seconds, sending new request, please report")
			self:RequestServerThreat()
		end
	end

	function prototype:OnEnable()
		self:Boot()
		self.unitGUID = UnitGUID(self.unitType)
	end
	
	function prototype:OnDisable()
		self:MultiplyThreat(0)
		self:PLAYER_REGEN_ENABLED()
		self.unitGUID = nil
		ThreatLib:Debug("Disable %s", self:GetName())
		
		if self.timers.PetInCombat then
			self:CancelTimer(self.timers.PetInCombat)
			self.timers.PetInCombat = nil
		end
	end
	

	----------------------------------------------------------------

	local AFFILIATION_IN_GROUP = bit_bor(COMBATLOG_OBJECT_AFFILIATION_PARTY, COMBATLOG_OBJECT_AFFILIATION_RAID, COMBATLOG_OBJECT_AFFILIATION_MINE)
	local NPC_TARGET = bit_bor(COMBATLOG_OBJECT_TYPE_NPC, COMBATLOG_OBJECT_TYPE_PET)
	local REACTION_ATTACKABLE = bit_bor(COMBATLOG_OBJECT_REACTION_HOSTILE, COMBATLOG_OBJECT_REACTION_NEUTRAL)
	local FAKE_HOSTILE = bit_bor(COMBATLOG_OBJECT_AFFILIATION_OUTSIDER, COMBATLOG_OBJECT_REACTION_NEUTRAL, COMBATLOG_OBJECT_CONTROL_NPC, COMBATLOG_OBJECT_TYPE_NPC)
	
	local cleuHandlers = {}
	function cleuHandlers:UNIT_DIED(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags)
		if bit_band(dstFlags, self.unitTypeFilter) == self.unitTypeFilter then			-- we died
			self:MultiplyThreat(0)
		elseif self.targetThreat[dstGUID] and self.targetThreat[dstGUID] > 0 then		-- Something else died
			self:MultiplyTargetThreat(dstGUID, 0)	-- Sorta a notification thing
		end
		self.targetThreat[dstGUID] = nil
	end
	cleuHandlers.UNIT_DESTROYED = cleuHandlers.UNIT_DIED

	function prototype:COMBAT_LOG_EVENT_UNFILTERED(event, ...)
		local timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags = ...
		
		guidLookup[srcGUID] = srcName
		guidLookup[dstGUID] = dstName
	
		-- We don't need to handle SPELL_SUMMON, and it's causing issues with shaman totems. Just kill it.
		if eventtype == "SPELL_SUMMON" then return end
		
		-- This catches heals/energizes from totems -> players, before the totems are friendly. Prevent them from being put into the threat table.
		if (eventtype == "SPELL_PERIODIC_HEAL" or eventtype == "SPELL_PERIODIC_ENERGIZE") and srcFlags == FAKE_HOSTILE then return end
		
		-- Some mobs we really don't want to track, like Crypt Scarabs. Just return immediately.
		-- Oddly, they don't have death or despawn events in the combat log, either. WHEE.
		-- This generates extra garbage, but the net/CPU savings is well, well worth it.
		if BLACKLIST_MOB_IDS[string_sub(srcGUID, -12,-7)] or BLACKLIST_MOB_IDS[string_sub(dstGUID, -12,-7)] then return end
		
		-- If this is a hostile <-> party action then enter them into the list of threat targets for global threat accumulation
		if	not self.targetThreat[srcGUID] and 
			bit_band(dstFlags, AFFILIATION_IN_GROUP) > 0 and
			bit_band(srcFlags, REACTION_ATTACKABLE) > 0 and
			bit_band(srcFlags, COMBATLOG_OBJECT_CONTROL_NPC) == COMBATLOG_OBJECT_CONTROL_NPC and
			bit_band(srcFlags, NPC_TARGET) > 0 then
			self.targetThreat[srcGUID] = 0
		elseif not self.targetThreat[dstGUID] and 
			bit_band(srcFlags, AFFILIATION_IN_GROUP) > 0 and
			bit_band(dstFlags, REACTION_ATTACKABLE) > 0 and
			bit_band(dstFlags, COMBATLOG_OBJECT_CONTROL_NPC) == COMBATLOG_OBJECT_CONTROL_NPC and
			bit_band(dstFlags, NPC_TARGET) > 0 then
			self.targetThreat[dstGUID] = 0
		end
		
		local nextEventHook = self.nextEventHook
		if nextEventHook then
			nextEventHook(self, ...)
			self.nextEventHook = nil
		end
	
		local handler = cleuHandlers[eventtype]
		if handler then
			handler(self, ...)
		end
	end

	----------------------------------------------------------------

	function prototype:PLAYER_REGEN_DISABLED()
		if not ThreatLib.running then return end
		self:RequestServerThreat()
	end
	
	local function func(self)
		if not UnitExists("pet") or not UnitAffectingCombat("pet") then
			if self.timers.PetInCombat then
				self:CancelTimer(self.timers.PetInCombat)
				self.timers.PetInCombat = nil
			end
			ThreatLib:Debug("Pet exiting combat.")
			ThreatLib:SendComm(ThreatLib:GroupDistribution(), "LEFT_COMBAT", false, true)
			self:ClearThreat()
		end
	end
	
	function prototype:PLAYER_REGEN_ENABLED()
		-- PET_ATTACK_STOP doesn't always fire like you might expect it to	
		if self.unitType == "pet" then
			if self.timers.PetInCombat then
				self:CancelTimer(self.timers.PetInCombat)
			end
			self.timers.PetInCombat = self:ScheduleRepeatingTimer(func, 0.5, self)
		else
			ThreatLib:Debug("Player exiting combat.")
			local petIsOutOfCombat = not UnitExists("pet") or not UnitAffectingCombat("pet")
			ThreatLib:SendComm(ThreatLib:GroupDistribution(), "LEFT_COMBAT", true, petIsOutOfCombat)		
			self:ClearThreat()
		end
	end
	
	function prototype:PET_ATTACK_START()
		self:PLAYER_REGEN_DISABLED()
	end
	
	function prototype:PET_ATTACK_STOP()
		-- self:ScheduleRepeatingEvent("ThreatClassModuleCore-PetInCombat", func, 0.5, self)
	end

	function prototype:ClearThreat()
		if not self.targetThreat then return end
		for k,v in pairs(self.targetThreat) do
			self.targetThreat[k] = nil
		end	
		ThreatLib:_clearThreat(UnitGUID(self.unitType))
	end

	----------------------------------------------------------------

	function prototype:RequestServerThreat()
		ThreatLib:Debug("Requesting Server Threat")
		ThreatLib:SendCommMessage("TL2", "RU", "WHISPER", "Btbserver")
		ThreatLib.LastServerThreatMessage = GetTime() -- prevent sending twice in a row
	end

	----------------------------------------------------------------

	------------------------------------------------
	-- Overridable methods
	------------------------------------------------

	prototype.ClassInit = function() end
	prototype.ClassEnable = function() end

	------------------------------------------------
	-- Internal threat modification function, transaction-free
	------------------------------------------------
	function prototype:MultiplyTargetThreat(target, modifier)
		local v = (self.targetThreat[target] or 0) * modifier
		self.targetThreat[target] = v
		if ThreatLib.LogThreat then
			ThreatLib:Log("MULTIPLY_THREAT", self.unitGUID or UnitGUID(self.unitType), target, v)
		end
		ThreatLib:ThreatUpdated(self.unitGUID or UnitGUID(self.unitType), target, v)
	end

	function prototype:MultiplyThreat(modifier)
		for k, v in pairs(self.targetThreat) do
			self:MultiplyTargetThreat(k, modifier)
		end
	end

	function prototype:SetTargetThreat(target, threat)
		self.targetThreat[target] = threat
		ThreatLib:ThreatUpdated(self.unitGUID or UnitGUID(self.unitType), target, threat)
		if ThreatLib.LogThreat then
			ThreatLib:Log("SET_THREAT", self.unitGUID or UnitGUID(self.unitType), target, threat)
		end
	end

	local t = {}
	function prototype:GetGUIDsByNPCID(npcid)
		for i = 1, #t do tremove(t) end
		for k, v in pairs(self.targetThreat) do
			if ThreatLib:NPCID(k) == npcid then
				tinsert(t, k)
			end
		end
		return t
	end

	ThreatLib.ServerThreatModulePrototype = prototype

	-- this causes server threat modules to be used instead of combat log threat modules (see also ThreatClassModuleCore.lua)
	ThreatLib.GetOrCreateModule = function(self, t)	
		return self:GetModule(t, true) or self:NewModule(t, self.ServerThreatModulePrototype, "AceEvent-3.0", "AceTimer-3.0", "AceBucket-3.0")
	end

	-- reduce TPS samples because server threat generates less samples per second than combatlog threat
	ThreatLib:SetTPSSamples(10)
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------

end