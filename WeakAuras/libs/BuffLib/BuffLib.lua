BuffLibDebug = 0
BuffLib2DB = BuffLib2DB or { sync = true, buffs = true, debuffs = true}
local function log(msg)
	if BuffLibDebug == 1 then
		DEFAULT_CHAT_FRAME:AddMessage(msg)
	elseif BuffLibDebug == 0 then
		return
	end
end -- alias for convenience

local DR_RESET_TIME = 15
local DRLib

local logDelay = 0.05

local applyEvents = {
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REFRESH",
	"SPELL_AURA_APPLIED_DOSE",
	"SPELL_CAST_SUCCESS",
}

local removeEvents = {
	"SPELL_AURA_REMOVE",
	"SPELL_AURA_DISPEL",
	"SPELL_AURA_STOLEN",
}

local syncList = {}
local lastSync = GetTime()
local syncTimer = GetTime()
local _UnitBuff = UnitBuff
local _UnitDebuff = UnitDebuff
local _SetUnitDebuff = GameTooltip.SetUnitDebuff
local _SetUnitBuff = GameTooltip.SetUnitBuff
local SendAddonMessage = _G.SendAddonMessage;
if (ChatThrottleLib) then
	SendAddonMessage = function (...)
		ChatThrottleLib:SendAddonMessage("NORMAL", ...);
	end
end

-- make seaLib optional
local seaLib;
if (AceLibrary:HasInstance("SpecialEvents-Aura-2.0")) then
	AceLibrary("SpecialEvents-Aura-2.0")
end

local function firstToUpper(str)
	if (str~=nil) then
		return (str:gsub("^%l", string.upper));
	else
		return nil;
	end
end

local function wipe(t)
	for k,v in pairs(t) do
		t[k]=nil
	end
end

BuffLib = CreateFrame("Frame", "BuffLib", UIParent);
function BuffLib:OnEvent(event, ...) -- functions created in "object:method"-style have an implicit first parameter of "self", which points to object
	self[event](self, ...) -- route event parameters to LoseControl:event methods
end
BuffLib:SetScript("OnEvent", BuffLib.OnEvent)
BuffLib:RegisterEvent("PLAYER_TARGET_CHANGED")
BuffLib:RegisterEvent("PLAYER_ENTERING_WORLD")
BuffLib:RegisterEvent("PLAYER_LOGIN")
BuffLib:SetScript("OnUpdate", function()
	-- only sync every second
	local t = GetTime();
	if (BuffLib2DB.sync == true and t - lastSync >= 1 and #syncList > 0) then
		BuffLib:Sync();
	end
end);

GameTooltip.SetUnitBuff = function(f, unit, id)
	_SetUnitBuff(f, unit, id);

	local name, _, _, _, duration, timeLeft, isMine = UnitBuff(unit, id);
	if (timeLeft and not isMine) then
		local replString = SPELL_TIME_REMAINING_SEC;
		if (timeLeft > 60) then
			replString = SPELL_TIME_REMAINING_MIN;
			timeLeft = math.ceil(timeLeft / 60);
		end

		replString = string.format(replString, timeLeft);
		f:AddLine(replString);
	end

	f:Show();
end

GameTooltip.SetUnitDebuff = function(f, unit, id, dispellable)
	_SetUnitDebuff(f, unit, id, dispellable);

	local name, _, _, _, _, duration, timeLeft, isMine = UnitDebuff(unit, id);
	if (timeLeft and not isMine) then
		local replString = SPELL_TIME_REMAINING_SEC;
		if (timeLeft > 60) then
			replString = SPELL_TIME_REMAINING_MIN;
			timeLeft = math.ceil(timeLeft / 60);
		end

		replString = string.format(replString, timeLeft);
		f:AddLine(replString);
	end

	f:Show();
end

function BuffLib:PLAYER_TARGET_CHANGED(...)
	if (UnitGUID("target") == nil or UnitGUID("target") == UnitGUID("player")) then
		return
	end

	if (not UnitInParty("target")) then
		return
	end

	if (BuffLib2DB.buffs) then
		for i = 1, 40 do
			local name, _, _, _, duration, timeLeft = UnitBuff("target", i);
			if (name == nil) then
				break;
			end

			if (duration == nil) then
				self:RequestTargetAuraRefresh();
				return;
			end
		end
	end


	if (BuffLib2DB.debuffs) then
		for i = 1, 40 do
			local name, _, _, _, _, duration, timeLeft = UnitDebuff("target", i);
			if (name == nil) then
				break;
			end

			if (duration == nil) then
				self:RequestTargetAuraRefresh();
				return;
			end
		end
	end
end

function BuffLib:RequestTargetAuraRefresh()
	SendAddonMessage("BuffLib2-R", "RefreshAuras", "WHISPER", UnitName("target"));
end

function BuffLib:InitDR(destGUID, spellID, event)
	if type(self.guids[destGUID]) ~= "table" then
		self.guids[destGUID] = { }
	end
	local drCat = DRLib:GetSpellCategory(spellID)
	if drCat then
		local tracked = self.guids[destGUID][drCat]
		--first AURA_APPLIED - initialize DR
		if not self.guids[destGUID][drCat] then
			self.guids[destGUID][drCat] = { reset = 99999999, diminished = 1.0, lastDR = 0 }
		--another AURA_APPLIED - reset DR if run out of time
		elseif tracked and tracked.reset <= GetTime() then -- reset DR because timer ran out
			tracked.diminished = 1.0
			tracked.reset = 99999999
			tracked.lastDR = 0
			log(DR_RESET_TIME.." seconds DR timer ran out, resetting "..drCat)
		elseif event == "SPELL_AURA_REMOVED" then
			tracked.reset = GetTime() + DR_RESET_TIME
			tracked.lastDR = 0
			log("start "..DR_RESET_TIME.." seconds DR timer "..GetSpellInfo(spellID))
		end	
	end
	
end

function BuffLib:NextDR(destGUID, spellID, event)
	local tracked
	local drCat
	if self.guids[destGUID] then
		drCat = DRLib:GetSpellCategory(spellID)
		tracked = self.guids[destGUID][drCat]
	end
	if tracked and tracked.lastDR+0.5 <= GetTime() then
		tracked.diminished = DRLib:NextDR(tracked.diminished)
		tracked.lastDR = GetTime()
		log("next DR: "..GetSpellInfo(spellID).. "  "..drCat)
	end
end

function BuffLib:CreateFrames(destGUID, spellName, spellID)
	-- don't create any more frames than necessary to avoid memory overload
	if self.guids[destGUID] and self.guids[destGUID][spellName] then
		self:UpdateFrames(destGUID, spellName, spellID)
	else
		local diminished = 1.0
		local tracked
		if( self.guids[destGUID] ) then
			local drCat = DRLib:GetSpellCategory(spellID)
			tracked = self.guids[destGUID][drCat]
			if (tracked) then
				diminished = tracked.diminished
			end
		end
		if type(self.guids[destGUID]) ~= "table" then
			self.guids[destGUID] = { }
		end
		
		self.guids[destGUID][spellName] = {}
		self.guids[destGUID][spellName].startTime = GetTime()
		self.guids[destGUID][spellName].endTime = self.abilities[spellID]*diminished
		self.guids[destGUID][spellName].count = 1
	end
end

function BuffLib:UpdateFrames(destGUID, spellName, spellID)
	if self.guids[destGUID] and self.guids[destGUID][spellName] and self.abilities[spellID] then
		local diminished = 1.0
		local tracked
		if( self.guids[destGUID] ) then
			local drCat = DRLib:GetSpellCategory(spellID)
			tracked = self.guids[destGUID][drCat]
			if (tracked) then
				diminished = tracked.diminished
			end
		end

		-- update "library"
		self.guids[destGUID][spellName].startTime = GetTime()
		self.guids[destGUID][spellName].endTime = self.abilities[spellID]*diminished

		-- reset sync data
		-- sync
		self.guids[destGUID][spellName].timeLeft = nil
		self.guids[destGUID][spellName].getTime = nil
	end
end

function BuffLib:HideFrames(destGUID, spellName, spellID)
	if self.guids[destGUID] and self.guids[destGUID][spellName] and self.abilities[spellID] and self.guids[destGUID][spellName].count == 0 then
		-- combatLog
		self.guids[destGUID][spellName].startTime = 0
		self.guids[destGUID][spellName].endTime = 0
		-- sync
		self.guids[destGUID][spellName].timeLeft = nil
		self.guids[destGUID][spellName].getTime = nil
	end
end

function BuffLib:PLAYER_LOGIN(...)
	self:CreateOptions()
end

function BuffLib:PLAYER_ENTERING_WORLD(...)
	-- clear frames, just to be sure
	if type(self.guids) == "table" then
		local t = GetTime();
		for k,v in pairs(self.guids) do
			local all = true;
			for spellName,spellData in pairs(v) do
				if (spellData.timeLeft ~= nil) then
					if (t - spellData.getTime > spellData.timeLeft) then
						self.guids[k][spellName] = nil;
						all = false;
					end
				elseif (spellData.endTime <= t) then
					self.guids[k][spellName] = nil
					all = false;
				end
			end

			if (all) then
				self.guids[k] = nil;
			end
		end
	else
		self.guids = {}
		self.abilities = {}
		self.reverseLookup = {}

		_G["SLASH_BUFFLIBZ1"] = "/bldump";
		_G.SlashCmdList["BUFFLIBZ"] = function()
			BuffLib:PrintOwnBuffs();
		end

		for k,v in pairs(BuffLibabilityIDs) do
			local name = GetSpellInfo(k);
			if (name) then
				self.abilities[k]=v;
				self.reverseLookup[name] = k;
			end
		end

		DRLib = LibStub("DRData-1.0")
		self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		self:RegisterEvent("CHAT_MSG_ADDON")
	end
	
	-- We do not need to sync each aura
	--if BuffLib2DB.sync == true then
	--	self:RegisterEvent("UNIT_AURA")
	--end
	
end

function BuffLib:PrintOwnBuffs()
	if (self.guids[UnitGUID("player")]) then
		for a,b in pairs(self.guids[UnitGUID("player")]) do
			DEFAULT_CHAT_FRAME:AddMessage("ID: " .. a .. " (" .. GetSpellInfo(a) ..")");
		end
	else
		DEFAULT_CHAT_FRAME:AddMessage("No player buffs found.")
	end
end

--[[
	first: initialize DR with 1.0 (full duration), if timestamp older than 15 seconds, reset to 1.0
	next: AFTER calculating spell duration, divide DR by 2 (0.5, 0.25, ...) IF a CC is applied
	next: on REMOVE, set a timestamp as "DR timer"
--]]
function BuffLib:COMBAT_LOG_EVENT_UNFILTERED(...)
	local timestamp, eventType, sourceGUID,sourceName,sourceFlags,destGUID,destName,destFlags,spellID,spellName,spellSchool,auraType = select ( 1 , ... );

	if eventType == "SPELL_AURA_APPLIED" or eventType == "SPELL_AURA_REFRESH" or eventType == "SPELL_AURA_REMOVED" or (eventType == "SPELL_CAST_SUCCESS" and spellSchool == "0x1") then
		self:InitDR(destGUID, spellID, eventType)
	end
	
	if self.abilities[spellID] and (eventType == "SPELL_AURA_APPLIED") then -- check if spell just used is in list
		-- filter multiple incorrect combatlog events || don't want to trigger spell timer twice if SUCCESS+REFRESH or SUCCESS+APPLIED
		if self.guids[destGUID] and self.guids[destGUID][spellName] and self.guids[destGUID][spellName].lastTime and self.guids[destGUID][spellName].lastTime+logDelay <= GetTime() then
			self:CreateFrames(destGUID, spellName, spellID)
		elseif not self.guids[destGUID] or not self.guids[destGUID][spellName] or not self.guids[destGUID][spellName].lastTime then
			self:CreateFrames(destGUID, spellName, spellID)
			self.guids[destGUID][spellName].count = self.guids[destGUID][spellName].count + 1;
		end
	-- have to also take CAST_SUCCESS because it's the only way to get refreshed spells like MS, Harmstring etc	
	elseif self.abilities[spellID] and (eventType == "SPELL_AURA_REFRESH" or eventType == "SPELL_AURA_APPLIED_DOSE" or eventType == "SPELL_CAST_SUCCESS") then	
		if self.guids[destGUID] and self.guids[destGUID][spellName] and self.guids[destGUID][spellName].lastTime and self.guids[destGUID][spellName].lastTime+logDelay <= GetTime() then
			self:CreateFrames(destGUID, spellName, spellID)
		elseif not self.guids[destGUID] or not self.guids[destGUID][spellName] or not self.guids[destGUID][spellName].lastTime then
			self:CreateFrames(destGUID, spellName, spellID)
		end
	elseif self.abilities[spellID] and removeEvents[eventType] then
		self.guids[destGUID][spellName].count = self.guids[destGUID][spellName].count - 1;
		self:HideFrames(destGUID, spellName, spellID)
	end

	
	-- some spells do not have AURA_REFRESH because they are physical, CAST_SUCCESS works though
	-- could technically catch even more by just using CAST_SUCCESS without spellSchool
	if eventType == "SPELL_AURA_APPLIED" or eventType == "SPELL_AURA_REFRESH" or (eventType == "SPELL_CAST_SUCCESS" and spellSchool == "0x1") then
		self:NextDR(destGUID, spellID, eventType)
	end
	
	
	-- hack for Wound Poison
	if spellName == GetSpellInfo(13220) and eventType == "SPELL_DAMAGE" then
		self:CreateFrames(destGUID, spellName, spellID)
	end
	
	--[[
		timer of last update on this spell, this is to ensure that multiple combatlog events will not overwrite the current timer
		for example CAST_SUCCESS and AURA_APPLIED fire at the SAME time (or virtually same time)
		only do this for spells which can actually DR - anything else doesn't matter
	--]]
	if self.abilities[spellID] and DRLib:GetSpellCategory(spellID) then
		if self.guids[destGUID] and self.guids[destGUID][spellName] and eventType ~= "SPELL_AURA_REMOVE" then
			self.guids[destGUID][spellName].lastTime = GetTime() 
			--log("setting lastTime")
		end
	end	

	-- call UNIT_AURA on any units where the player COULD see buff/debuff durations
	-- UNIT_AURA does not fire automatically when a spell is refreshed :(
	-- the self:UNIT_AURA() sends sync messages
	-- check if we need to sync
	local needToSync = false;
	if BuffLib2DB.sync == true then
		if (eventType == "SPELL_AURA_REFRESH") then
			needToSync = true;
		end
	end

	if needToSync then
		-- DEFAULT_CHAT_FRAME:AddMessage("ID: " .. spellID .. " Name: " .. spellName .. " Event: " .. eventType);
		-- mark spell for sync
		table.insert(syncList, {spellID, destGUID});

		if syncTimer <= GetTime() then
			syncTimer = GetTime() + 0.2;
		end
	end
end

function BuffLib:UpdatePitBullTarget(unit)
	if (PitBull ~= nil and PitBull:GetModule("Aura") ~= nil) then
		PitBull:GetModule("Aura"):UNIT_AURA(nil, "UNIT_AURA", unit);
	end
end

function BuffLib:ScanSEA(unit)
	if (seaLib) then
		seaLib:AuraScan(unit, "BuffLib2 - AuraRefresh")
	end
end

function BuffLib:CHAT_MSG_ADDON(prefix, message, channel, sender)
	if prefix == "BuffLib2" and sender ~= UnitName("player") then
		if (sender == nil) then
			return;
		end

		local messages = {}
		message:gsub("([^|]+)", function(c)
			table.insert(messages, c);
		end);

		while #messages > 0 do
			message = table.remove(messages);
			local spellId, duration, timeLeft, guid = strsplit("&", message);
			local name = GetSpellInfo(spellId);

			if (guid == nil) then
				guid = UnitGUID(sender);
			end

			--local EBFrame = getglobal(name.."_"..guid)
			local EBFrame
			if self.guids[guid] then
				EBFrame = self.guids[guid][name]
			end
			if EBFrame ~= nil then
				EBFrame.timeLeft = tonumber(timeLeft)
				EBFrame.duration = tonumber(duration)
				EBFrame.getTime = GetTime()
				--[[delete combatlog data
				EBFrame.startTime = nil
				EBFrame.endTime = nil]]
			else
				--self.guids[guid][name] = CreateFrame("Frame", name.."_"..guid, UIParent)
				if type(self.guids[guid]) ~= "table" then
					self.guids[guid] = { }
				end

				self.guids[guid][name] = {}
				self.guids[guid][name].timeLeft = tonumber(timeLeft)
				self.guids[guid][name].duration = tonumber(duration)
				self.guids[guid][name].getTime = GetTime()
				self.guids[guid][name].count = 1
			end

			--instant buff/debuff timer update for default UnitFrames
			if (guid == UnitGUID("target")) then
				-- handle default unit frames
				if TargetFrame:IsVisible() then
					TargetDebuffButton_Update()
				end

				BuffLib:UpdatePitBullTarget("target")
				BuffLib:ScanSEA("target")
			elseif (guid == UnitGUID("focus")) then
				if FocusFrame and FocusFrame:IsVisible() then
					FocusDebuffButton_Update()
				end

				BuffLib:UpdatePitBullTarget("focus")
				BuffLib:ScanSEA("focus")
			elseif (guid == UnitGUID("player")) then
				BuffLib:UpdatePitBullTarget("player")
				BuffLib:ScanSEA("player")
			else
				local updated = false;
				for i = 1,GetNumPartyMembers() do
					if (UnitGUID("party" .. i) == guid) then
						BuffLib:UpdatePitBullTarget("party" .. i)
						BuffLib:ScanSEA("party" .. i)
						updated = true
						break
					end
				end

				if not updated then
					for i = 1, GetNumRaidMembers() do
						if (UnitGUID("raid" .. i) == guid) then
							BuffLib:UpdatePitBullTarget("raid" .. i)
							BuffLib:ScanSEA("raid" .. i)
							updated = true
							break
						end
					end
				end
			end
		end
	elseif (prefix == "BuffLib2-R") then -- Refresh Request
		if (message == "RefreshAuras") then
			BuffLib:SendAuraRefreshResponse(sender);
		end
	end
end

function BuffLib:SendAuraRefreshResponse(target)
	local maxLength = 254 - #"BuffLib2"; -- 254 is max length of message + prefix

	-- we will sync spellId (2 Bytes)
	local syncMessage = "";
	local guid = UnitGUID("player");

	for i = 1,40 do	
		local part = "";
		local name, _, _, _, duration, timeLeft = _UnitBuff("player", i);
		if (name) then
			local spellId = self.reverseLookup[name];
			if (duration and spellId) then
				part = spellId .. "&" .. duration .. "&" .. timeLeft .. "&" .. guid;
			end
		else
			break;
		end

		if (#part > 0) then
			if (#part + #syncMessage + 1 > maxLength) then
				BuffLib:SendSync(syncMessage);
				syncMessage = "";
			end

			if (#syncMessage > 0) then
				syncMessage = syncMessage .. "|" .. part;
			else
				syncMessage = part;
			end
		end
	end

	for i = 1,40 do	
		local part = "";
		local name, _, _, _, _, duration, timeLeft = _UnitDebuff("player", i);
		if (buffName) then
			local spellId = self.reverseLookup[name];
			if (duration and spellId) then
				part = spellId .. "&" .. duration .. "&" .. timeLeft .. "&" .. guid;
			end
		else
			break;
		end

		if (#part > 0) then
			if (#part + #syncMessage + 1 > maxLength) then
				BuffLib:SendSync(syncMessage, target);
				syncMessage = "";
			end

			if (#syncMessage > 0) then
				syncMessage = syncMessage .. "|" .. part;
			else
				syncMessage = part;
			end
		end
	end

	if (#syncMessage > 0) then
		BuffLib:SendSync(syncMessage, target);
	end
end

function BuffLib:Sync()
	lastSync = GetTime();

	-- keep track of how many abilities we actually sync
	local syncCount = #syncList;
	local maxLength = 254 - #"BuffLib2"; -- 254 is max length of message + prefix

	-- we will sync spellId (2 Bytes)
	local syncMessage = "";

	local function GetBuffData(n,u)
		for i = 1,40 do
			local name, _, _, _, duration, timeLeft = _UnitBuff(u, i);
			if (name and name == n) then
				return duration, timeLeft;
			end

			if (name == nil) then
				break;
			end
		end
	end

	local function GetDebuffData(n,u)
		for i = 1,40 do
			local name, _, _, _, _, duration, timeLeft = _UnitDebuff(u, i);
			if (name and name == n) then
				return duration, timeLeft;
			end

			if (name == nil) then
				break;
			end
		end
	end

	while syncCount > 0 do
		local syncSpell = table.remove(syncList);
		local name = GetSpellInfo(syncSpell[1]);
		syncCount = syncCount - 1;

		local unit = "player";
		if (syncSpell[2] ~= UnitGUID(unit)) then
			unit = "target";
			if (syncSpell[2] ~= UnitGUID(unit)) then
				unit = "";
			end
		end

		if (unit ~= "") then
			local duration, timeLeft = GetBuffData(name, unit);
			local part = "";

			-- make sure spell is still present
			if (duration) then
				part = syncSpell[1] .. "&" .. duration .. "&" .. timeLeft .. "&" .. syncSpell[2];
			else
				duration, timeLeft = GetDebuffData(name, unit);
				if (duration) then
					part = syncSpell[1] .. "&" .. duration .. "&" .. timeLeft .. 	"&" .. syncSpell[2];
				end
			end

			if (#part > 0) then
				if (#part + #syncMessage + 1 > maxLength) then
					BuffLib:SendSync(syncMessage);
					syncMessage = "";
				end

				if (#syncMessage > 0) then
					syncMessage = syncMessage .. "|" .. part;
				else
					syncMessage = part;
				end
			end
		end
	end

	if (#syncMessage > 0) then
		BuffLib:SendSync(syncMessage);
	end
end


function BuffLib:lshift(x, by)
	return x * 2 ^ by
end
  
function BuffLib:rshift(x, by)
return math.floor(x / 2 ^ by)
end

function BuffLib:SendSync(message, target)
	if (target ~= nil) then
		SendAddonMessage("BuffLib2", message, "WHISPER", target);
		return
	end

	local inInstance, instanceType = IsInInstance()
	if instanceType == "pvp" then
		SendAddonMessage("BuffLib2", message, "BATTLEGROUND")
	elseif instanceType == "raid" then
		SendAddonMessage("BuffLib2", message, "RAID")
	elseif instanceType == "arena" or instanceType == "party" then
		SendAddonMessage("BuffLib2", message, "PARTY")
	elseif instanceType == "none" then
		if UnitGUID("party1") then
			SendAddonMessage("BuffLib2", message, "PARTY")
		elseif UnitGUID("raid1") then
			SendAddonMessage("BuffLib2", message, "RAID")
		end
	end
end

local SO = LibStub("LibSimpleOptions-1.0")
function BuffLib:CreateOptions()
	local panel = SO.AddOptionsPanel("BuffLib", function() end)
	self.panel = panel
	SO.AddSlashCommand("BuffLib","/bufflib")
	SO.AddSlashCommand("BuffLib","/bl")
	local title, subText = panel:MakeTitleTextAndSubText("Buff Library Addon", "General settings")
	local sync = panel:MakeToggle(
	     'name', 'Synchronize timers',
	     'description', 'Turns off synchronizing timers with your teammates. Could prevent lags.',
	     'default', false,
	     'getFunc', function() return BuffLib2DB.sync end,
		 'setFunc', function(value) BuffLib2DB.sync = value BuffLib:PLAYER_ENTERING_WORLD() end)
		 
	local buff = panel:MakeToggle(
		'name', 'Show Buff-Timers',
		'description', 'Turns off support from Bufflib for buff spells',
		'default', false,
		'getFunc', function() return BuffLib2DB.buffs end,
		'setFunc', function(value) BuffLib2DB.buffs = value end)

	local debuff = panel:MakeToggle(
		'name', 'Show Debuff-Timers',
		'description', 'Turns off support from BuffLib for debuff spells',
		'default', false,
		'getFunc', function() return BuffLib2DB.debuffs end,
		'setFunc', function(value) BuffLib2DB.debuffs = value end)
	     
	sync:SetPoint("TOPLEFT",subText,"TOPLEFT",16,-32)
	buff:SetPoint("TOPLEFT",sync,"TOPLEFT",0, -32)
	debuff:SetPoint("TOPLEFT",buff,"TOPLEFT",0, -32)
end	

-------- HOOKING FUNCTIONS -------

-- endTime is equal to duration
-- startTime is GetTime() when the spell was found in CombatLog
-- endTime-(GetTime()-startTime) is therefore timeLeft

function UnitBuff(unitID, index, castable)
	local name, rank, icon, count, duration, timeLeft, isMine = _UnitBuff(unitID, index, castable)
	if not name or not BuffLib2DB.buffs then return name, rank, icon, count, duration, timeLeft, isMine end
	--local EBFrame = getglobal(name.."_"..UnitGUID(unitID))
	local EBFrame
	if BuffLib.guids and BuffLib.guids[UnitGUID(unitID)] then
		EBFrame = BuffLib.guids[UnitGUID(unitID)][name]
	end
	
	-- if duration can be seen by the player (provided by the server) return original duration and end function here
	if timeLeft ~= nil and duration ~=nil then -- can see timer, perfect
		if (timeLeft == 0 and duration == 0) or (duration > 0 and timeLeft > 0) then
			if unitID ~= "player" then
				isMine = true
			else
				isMine = false
			end

			return name, rank, icon, count, duration, timeLeft, isMine
		end
	end	
	
	if (timeLeft == nil or (duration > 0 and timeLeft == 0)) and EBFrame ~=nil and EBFrame.timeLeft ~= nil and EBFrame.timeLeft-(GetTime()-EBFrame.getTime) > 0 then -- can't see timer but someone in party/raid/bg can
		--log(name.. " reading from snyc")
		duration = EBFrame.duration
		timeLeft = EBFrame.timeLeft-(GetTime()-EBFrame.getTime)
		isMine = false
	elseif (timeLeft == nil or (timeLeft == 0 and duration > 0)) and EBFrame ~=nil and EBFrame.timeLeft == nil then -- have to load timer from combatlog :(
		--log(name.. " reading from combatlog")
		duration = EBFrame.endTime
		timeLeft = EBFrame.endTime-(GetTime()-EBFrame.startTime)
		isMine = false		
	end

	if timeLeft and timeLeft <= 0 then
		timeLeft = nil
		duration = nil
		--log(name.." resetting timeLeft "..unitID)
	end	
	return name, rank, icon, count, duration, timeLeft, isMine
end

function UnitDebuff(unitID, index, castable)
	local name, rank, icon, count, debuffType, duration, timeLeft, isMine = _UnitDebuff(unitID, index, castable)
	if not name or not BuffLib2DB.debuffs then return name, rank, icon, count, debuffType, duration, timeLeft, duration ~= nil end
	--local EBFrame = getglobal(name.."_"..UnitGUID(unitID))
	local EBFrame
	if BuffLib.guids and BuffLib.guids[UnitGUID(unitID)] then
		EBFrame = BuffLib.guids[UnitGUID(unitID)][name]
	end
	
	if timeLeft ~= nil or duration ~= nil then
		if unitID ~= "player" then
			isMine = true
		else
			isMine = false
		end
		return name, rank, icon, count, debuffType, duration, timeLeft, isMine
	end	
	
	if timeLeft == nil and EBFrame ~=nil and EBFrame.timeLeft ~= nil and EBFrame.timeLeft-(GetTime()-EBFrame.getTime) > 0 then
		--log(name.. " reading from snyc")
		duration = EBFrame.duration
		timeLeft = EBFrame.timeLeft-(GetTime()-EBFrame.getTime)
		isMine = false
	elseif timeLeft == nil and EBFrame ~=nil and EBFrame.timeLeft == nil then
		--log(name.. " reading from combatlog")
		duration = EBFrame.endTime
		timeLeft = EBFrame.endTime-(GetTime()-EBFrame.startTime)
		isMine = false
	end
	
	if timeLeft and timeLeft <= 0 then
		timeLeft = nil
		duration = nil
		--log(name.." resetting timeLeft "..unitID)
	end	
	
	return name, rank, icon, count, debuffType, duration, timeLeft, isMine
end