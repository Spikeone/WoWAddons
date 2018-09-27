-- 
--
-- FanDjango / AnSyNova - Abbessinia  Priest  70
--     Dun Morogh         Magrophagus Mage    70
--                        Grandcru    Hunter  70
--                        Leva        Warrior 70

--------------------------------------------------------
-- myAddOns support
--------------------------------------------------------
SheepWatchDetails = {
	name = "SheepWatch",
	version = "24008",
	releaseDate = "Oct 7, 2008",
	author = "FanDjango",
	email = "",
	website = "",
	category = Mage,
	optionsframe = "SheepWatchConfig"
};

SheepWatchHelp = {};

-- default sheepspell
SHEEPWATCH_ACTIVE_SPELL = SHEEPWATCH_SPELL;

--------------------------------------------------------
-- Initialization functions
--------------------------------------------------------
function SheepWatch_OnLoad()
	SheepWatch_Initialize();
	SheepWatch_EventRegister();
	DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH_TEXT_LOADED);

end


function SheepWatchButton_OnLoad()
	SheepWatchButton:SetAttribute("type1","macro");
	SheepWatchButton:SetAttribute("macrotext", "/clearfocus [modifier][target=focus,dead][target=focus,noexists]\n/focus [target=focus,noexists]\n/stopcasting\n/stopmacro [modifier:alt]\n/cast [target=focus] " .. SHEEPWATCH_SPELL .. "\n/stopmacro [nogroup]");
	DEFAULT_CHAT_FRAME:AddMessage("Button: " .. SHEEPWATCH_ACTIVE_SPELL);

end


function SheepWatch_Initialize()
--	seterrorhandler(ErrorWithStack);
	SLASH_SHEEPWATCH1 = "/sheepwatch";
	SLASH_SHEEPWATCH2 = "/sheep";
	SlashCmdList["SHEEPWATCH"] = function(msg)
		SheepWatch_SlashCommandHandler(msg);
	end

end


--------------------------------------------------------
-- Register the necessary UI API events.
--------------------------------------------------------
function SheepWatch_EventRegister()
	this:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
	this:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED");
	this:RegisterEvent("PLAYER_LOGIN");
	this:RegisterEvent("PLAYER_REGEN_ENABLED");
	this:RegisterEvent("PLAYER_DEAD");

end


--------------------------------------------------------
-- DEBUG 
--------------------------------------------------------
function SheepWatch_Debug(message)
	if( SHEEPWATCH.DEBUG ) then
		DEFAULT_CHAT_FRAME:AddMessage("SheepWatch Debug:\n " .. message);
--		DEFAULT_CHAT_FRAME:AddMessage(message);
	end

end


--------------------------------------------------------
-- Handler for /sheepwatch
--------------------------------------------------------
function SheepWatch_SlashCommandHandler(msg)
	local a, b, command = string.find( msg, "(%w+)" );

	if( command == nil ) then
		SheepWatchConfig:Show();
		return;
	else
		command = string.lower( msg );
	end
	
	if( command == "unlock" ) then
		SHEEPWATCH.STATUS = 3;
		SheepWatch:Show();
		SheepWatchCounterText:SetText( "23.4s" );
		SheepWatchCounterText:Show();
		
		DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH_TEXT_UNLOCKED);
		
	elseif( command == "lock" ) then
		SHEEPWATCH.STATUS = 1;
		SheepWatch:Hide();
		SheepWatchCounterText:Hide();
		DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH_TEXT_LOCKED);
		
	elseif( command == "clear" ) then
		local pn = UnitName("player");
		if(pn ~= nil and pn ~= UNKNOWNBEING and pn ~= UKNOWNBEING and pn ~= UNKNOWNOBJECT) then
			SheepWatch_ClearProfile();
		else
			DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH_TEXT_WORLD_NOT_LOADED);
		end

	elseif( command == "resetpos" ) then
		SHEEPWATCH.ALPHA = 1;
		SheepWatch_Settings.alpha = SHEEPWATCH.ALPHA;
		SheepWatch:ClearAllPoints();
		SheepWatch:SetPoint("CENTER", 0, 300);
		DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH_TEXT_RESETPOS);
		
	elseif( command == "status" ) then
		SheepWatch_PrintStatus();

	elseif( command == "nodebug" ) then
		SHEEPWATCH.DEBUG = false;
		DEFAULT_CHAT_FRAME:AddMessage("Debugging disabled for this session.");

	elseif( command == "debug" ) then
		SHEEPWATCH.DEBUG = true;
		DEFAULT_CHAT_FRAME:AddMessage("Debugging enabled for this session.");
	
	else
		SheepWatchConfig:Show();
	end
	
end


--------------------------------------------------------
-- Event handling
--------------------------------------------------------
function SheepWatch_OnEvent(event)

	-- Don't do anything if SheepWatch isn't enabled
 	if( SHEEPWATCH.STATUS == 0 and event ~= "PLAYER_LOGIN") then
		return
	end
	
	SheepWatch_Debug("Event: "..event);

	SheepWatch_EventHandler[event](arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15);

end


SheepWatch_EventHandler = {}


SheepWatch_EventHandler["COMBAT_LOG_EVENT_UNFILTERED"] = function()

	SheepWatch_Debug("Event COMBAT_LOG_EVENT_UNFILTERED triggered");
	SheepWatch_Debug("Arg2: " .. arg2);

	SheepWatch_Debug("Arg3: " .. arg3);
	if( arg4 == nil ) then
		SheepWatch_Debug("Arg4: nil");
	else
		SheepWatch_Debug("Arg4: " .. arg4);
	end
	SheepWatch_Debug("Arg5: " .. arg5);

	SheepWatch_Debug("Arg6: " .. arg6);
	if( arg7 == nil ) then
		SheepWatch_Debug("Arg7: nil");
	else
		SheepWatch_Debug("Arg7: " .. arg7);
	end
	SheepWatch_Debug("Arg8: " .. arg8);


--	if( arg2 == "SPELL_AURA_APPLIED" ) then

--		DEFAULT_CHAT_FRAME:AddMessage("APPLIED" .. arg10 .. arg7 );
		
--		SheepWatch_Debug("Event SPELL_AURA_APPLIED triggered");

--		if( string.find(arg10, SHEEPWATCH_SPELL) ) then
--			SHEEPWATCH.MOBGUID    = arg6;
--			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESCAST,SHEEPWATCH.ANNOUNCEPCAST,SHEEPWATCH.ANNOUNCERCAST,SHEEPWATCH_SPELL .. "->" .. arg6);
--
--			if( SHEEPWATCH.ACTIVE == 1 ) then
--				SheepWatch:Hide();
--				SheepWatch:Show();
--			else
--				SheepWatch:Show();
--			end
--
--			SHEEPWATCH.SHEEPTYPE  = arg10;
--
--			SHEEPWATCH.ACTIVE     = 1;
--		end

	if( arg2 == "SPELL_DAMAGE" ) then

--		DEFAULT_CHAT_FRAME:AddMessage("DAMAGE" .. arg10 .. arg7 .. arg4 );

--		SheepWatch_Debug("Event SPELL_DAMAGE triggered");

		if( SHEEPWATCH.ACTIVE == 1 ) then

			if( arg6 == SHEEPWATCH.MOBGUID ) then
				if( arg4 ~= nil ) then
					SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESWHO,SHEEPWATCH.ANNOUNCEPWHO,SHEEPWATCH.ANNOUNCERWHO,arg4 .. "!");
				end
				SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESEND,SHEEPWATCH.ANNOUNCEPEND,SHEEPWATCH.ANNOUNCEREND,"CC Ends!");
				PlaySoundFile("Interface\\AddOns\\SheepWatch\\opened.wav");
				SHEEPWATCH.ACTIVE = 0;
				SheepWatch:Hide();
			end
		end

	elseif( arg2 == "RANGE_DAMAGE" ) then

--		DEFAULT_CHAT_FRAME:AddMessage("DAMAGE" .. arg10 .. arg7 .. arg4 );

--		SheepWatch_Debug("Event RANGE_DAMAGE triggered");

		if( SHEEPWATCH.ACTIVE == 1 ) then

			if( arg6 == SHEEPWATCH.MOBGUID ) then
				if( arg4 ~= nil ) then
					SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESWHO,SHEEPWATCH.ANNOUNCEPWHO,SHEEPWATCH.ANNOUNCERWHO,arg4 .. "!");
				end
				SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESEND,SHEEPWATCH.ANNOUNCEPEND,SHEEPWATCH.ANNOUNCEREND,"CC Ends!");
				PlaySoundFile("Interface\\AddOns\\SheepWatch\\opened.wav");
				SHEEPWATCH.ACTIVE = 0;
				SheepWatch:Hide();
			end
		end

	elseif( arg2 == "SPELL_AURA_BROKEN" ) then

--		DEFAULT_CHAT_FRAME:AddMessage("BROKEN" .. arg10 .. arg7 .. arg4 );

--		SheepWatch_Debug("Event SPELL_AURA_BROKEN triggered");

		if( string.find(arg10, SHEEPWATCH_ACTIVE_SPELL) ) then
		
			if( SHEEPWATCH.ACTIVE == 1 ) then
	
				if( arg6 == SHEEPWATCH.MOBGUID ) then
					if( arg4 ~= nil ) then
						SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESWHO,SHEEPWATCH.ANNOUNCEPWHO,SHEEPWATCH.ANNOUNCERWHO,arg4 .. "!");
					end
					SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESEND,SHEEPWATCH.ANNOUNCEPEND,SHEEPWATCH.ANNOUNCEREND,"CC Ends!");
					PlaySoundFile("Interface\\AddOns\\SheepWatch\\opened.wav");
					SHEEPWATCH.ACTIVE = 0;
					SheepWatch:Hide();
				end
			end
		end

	elseif( arg2 == "SPELL_AURA_BROKEN_SPELL" ) then

--		DEFAULT_CHAT_FRAME:AddMessage("BROKEN" .. arg10 .. arg7 .. arg4 );

--		SheepWatch_Debug("Event SPELL_AURA_BROKEN_SPELL triggered");

		if( string.find(arg10, SHEEPWATCH_ACTIVE_SPELL) ) then
		
			if( SHEEPWATCH.ACTIVE == 1 ) then
	
				if( arg6 == SHEEPWATCH.MOBGUID ) then
					if( arg4 ~= nil ) then
						SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESWHO,SHEEPWATCH.ANNOUNCEPWHO,SHEEPWATCH.ANNOUNCERWHO,arg4 .. "!");
					end
					SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESEND,SHEEPWATCH.ANNOUNCEPEND,SHEEPWATCH.ANNOUNCEREND,"CC Ends!");
					PlaySoundFile("Interface\\AddOns\\SheepWatch\\opened.wav");
					SHEEPWATCH.ACTIVE = 0;
					SheepWatch:Hide();
				end
			end
		end

	elseif( arg2 == "SPELL_AURA_REMOVED" ) then

--		DEFAULT_CHAT_FRAME:AddMessage("REMOVED" .. arg10 .. arg7 );

--		SheepWatch_Debug("Event SPELL_AURA_REMOVED triggered");

		if( string.find(arg10, SHEEPWATCH_ACTIVE_SPELL) ) then

			if( SHEEPWATCH.ACTIVE == 1 ) then

				if( arg6 == SHEEPWATCH.MOBGUID ) then
					if( arg4 ~= nil ) then
						SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESWHO,SHEEPWATCH.ANNOUNCEPWHO,SHEEPWATCH.ANNOUNCERWHO,arg4 .. "!");
					end
					SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESEND,SHEEPWATCH.ANNOUNCEPEND,SHEEPWATCH.ANNOUNCEREND,"CC Ends!");
					if( SHEEPWATCH.SOUND ) then
						PlaySoundFile("Interface\\AddOns\\SheepWatch\\opened.wav");
					end
					SHEEPWATCH.ACTIVE = 0;
					SheepWatch:Hide();
				end
			end
		end

	elseif( arg2 == "SPELL_AURA_DISPELLED" ) then

--		DEFAULT_CHAT_FRAME:AddMessage("DISPELLED" .. arg10 .. arg7 .. arg4 );
		
--		SheepWatch_Debug("Event SPELL_AURA_DISPELLED triggered");

		if( SHEEPWATCH.ACTIVE == 1 ) then

			if( arg6 == SHEEPWATCH.MOBGUID ) then
				if( arg4 ~= nil ) then
					SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESWHO,SHEEPWATCH.ANNOUNCEPWHO,SHEEPWATCH.ANNOUNCERWHO,arg4 .. "!");
				end
				SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESEND,SHEEPWATCH.ANNOUNCEPEND,SHEEPWATCH.ANNOUNCEREND,"CC Ends!");
				if( SHEEPWATCH.SOUND ) then
					PlaySoundFile("Interface\\AddOns\\SheepWatch\\opened.wav");
				end
				SHEEPWATCH.ACTIVE = 0;
				SheepWatch:Hide();
			end

		end

	else
--		DEFAULT_CHAT_FRAME:AddMessage(arg2 );
	end

end


SheepWatch_EventHandler["UNIT_SPELLCAST_SUCCEEDED"] = function()

	SheepWatch_Debug("Event UNIT_SPELLCAST_SUCCEEDED triggered");
	SheepWatch_Debug("Arg1: " .. arg1 .. " Arg2: " .. arg2)
	
	if( UnitName("target") == nil and UnitName("focus") == nil) then
		return;
	end
	
	if( string.find(arg2, SHEEPWATCH_ACTIVE_SPELL) ) then

		if( UnitName("focus") == nil) then
			SHEEPWATCH.MOBGUID    = UnitGUID("target");
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESCAST,SHEEPWATCH.ANNOUNCEPCAST,SHEEPWATCH.ANNOUNCERCAST,SHEEPWATCH_ACTIVE_SPELL .. "->" .. UnitName("target"));
		else
			SHEEPWATCH.MOBGUID    = UnitGUID("focus");
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESCAST,SHEEPWATCH.ANNOUNCEPCAST,SHEEPWATCH.ANNOUNCERCAST,SHEEPWATCH_ACTIVE_SPELL .. "->" .. UnitName("focus"));
		end

		if( SHEEPWATCH.ACTIVE == 1 ) then
			SheepWatch:Hide();
			SheepWatch:Show();
		else
			SheepWatch:Show();
		end

		SHEEPWATCH.SHEEPTYPE  = arg2;

		SHEEPWATCH.ACTIVE     = 1;

	end

end


SheepWatch_EventHandler["PLAYER_LOGIN"] = function()

	if(myAddOnsFrame_Register) then
		myAddOnsFrame_Register(SheepWatchDetails, SheepWatchHelp);
	end

	SheepWatch_LoadVariables();

end


SheepWatch_EventHandler["PLAYER_REGEN_ENABLED"] = function()

	SheepWatch_Debug("Event PLAYER_REGEN_ENABLED triggered");

	if( SHEEPWATCH.ACTIVE == 1 ) then
		SHEEPWATCH.ACTIVE = 0;
		SheepWatch:Hide();
		SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESEND,SHEEPWATCH.ANNOUNCEPEND,SHEEPWATCH.ANNOUNCEREND,"CC Ends!");
	end

end


SheepWatch_EventHandler["PLAYER_DEAD"] = function()

	SheepWatch_Debug("Event PLAYER_DEAD triggered");

	if( SHEEPWATCH.ACTIVE == 1 ) then
		SHEEPWATCH.ACTIVE = 0;
		SheepWatch:Hide();
		SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCESEND,SHEEPWATCH.ANNOUNCEPEND,SHEEPWATCH.ANNOUNCEREND,"CC Ends!");
	end

end


--------------------------------------------------------
-- Shows the statusbar
--------------------------------------------------------
function SheepWatch_OnShow()

	SHEEPWATCH.LASTUPDATE = 0;

	SHEEPWATCH.TIMER_START = GetTime();
    SHEEPWATCH.S50 = 1;
    SHEEPWATCH.S40 = 1;
	SHEEPWATCH.S30 = 1;
	SHEEPWATCH.S20 = 1;
	SHEEPWATCH.S15 = 1;
	SHEEPWATCH.S10 = 1;
	SHEEPWATCH.S5 = 1;
	SHEEPWATCH.S4 = 1;
	SHEEPWATCH.S3 = 1;
	SHEEPWATCH.S2 = 1;
	SHEEPWATCH.S1 = 1;
	SHEEPWATCH.TIMER_END = SHEEPWATCH.TIMER_START + SHEEPWATCH.LENGTH;

	SheepWatch:SetScale(UIParent:GetScale() * SHEEPWATCH.SCALE);
	SheepWatch:SetAlpha(SHEEPWATCH.ALPHA);
	SheepWatchFrameStatusBar:SetStatusBarColor(SheepWatch_Settings["barcolor"].r, SheepWatch_Settings["barcolor"].g, SheepWatch_Settings["barcolor"].b);
	SheepWatchSpark:SetPoint("CENTER", "SheepWatchFrameStatusBar", "LEFT", 0, 0);
	SheepWatchText:SetText( SHEEPWATCH.SHEEPTYPE );
	
	if( SHEEPWATCH.COUNTER ) then
		SheepWatchCounterText:Show();
	end

end


--------------------------------------------------------
-- Update handler
--------------------------------------------------------
function SheepWatch_OnUpdate(self,elapsed)

	SHEEPWATCH.LASTUPDATE = SHEEPWATCH.LASTUPDATE + elapsed; 

	if( SHEEPWATCH.LASTUPDATE > SHEEPWATCH.UPDATEINT) then

		if( SHEEPWATCH.STATUS == 3 ) then
			return;
		end

		local TimeStamp = GetTime();
		local RestTime = math.max(SHEEPWATCH.TIMER_END - TimeStamp,0);

		if( SHEEPWATCH.DECIMALS ) then
			decimalcut = 0;
		else
			decimalcut = 2;
		end
	
		local subto = 4 - decimalcut;
		if (RestTime < 10) then
			subto = 3 - decimalcut;
		end
	
		local seconds = string.sub(RestTime+0.001, 1, subto);	
		
        if (SHEEPWATCH.S50 == 1 and RestTime < 50) then
			SHEEPWATCH.S50 = 0;
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCEST50,SHEEPWATCH.ANNOUNCEPT50,SHEEPWATCH.ANNOUNCERT50,"50s");
		end

        if (SHEEPWATCH.S40 == 1 and RestTime < 40) then
			SHEEPWATCH.S40 = 0;
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCEST40,SHEEPWATCH.ANNOUNCEPT40,SHEEPWATCH.ANNOUNCERT40,"40s");
		end

		if (SHEEPWATCH.S30 == 1 and RestTime < 30) then
			SHEEPWATCH.S30 = 0;
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCEST30,SHEEPWATCH.ANNOUNCEPT30,SHEEPWATCH.ANNOUNCERT30,"30s");
		end
		if (SHEEPWATCH.S20 == 1 and RestTime < 20) then
			SHEEPWATCH.S20 = 0;
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCEST20,SHEEPWATCH.ANNOUNCEPT20,SHEEPWATCH.ANNOUNCERT20,"20s");
		end
		if (SHEEPWATCH.S15 == 1 and RestTime < 15) then
			SHEEPWATCH.S15 = 0;
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCEST15,SHEEPWATCH.ANNOUNCEPT15,SHEEPWATCH.ANNOUNCERT15,"15s");
		end
		if (SHEEPWATCH.S10 == 1 and RestTime < 10) then
			SHEEPWATCH.S10 = 0;
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCEST10,SHEEPWATCH.ANNOUNCEPT10,SHEEPWATCH.ANNOUNCERT10,"10s");
			if( SHEEPWATCH.SOUND ) then
				PlaySoundFile("Interface\\AddOns\\SheepWatch\\opening.wav");
			end
		end
		if (SHEEPWATCH.S5 == 1 and RestTime < 5) then
			SHEEPWATCH.S5 = 0;
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCEST5,SHEEPWATCH.ANNOUNCEPT5,SHEEPWATCH.ANNOUNCERT5,"5s");
		end
		if (SHEEPWATCH.S4 == 1 and RestTime < 4) then
			SHEEPWATCH.S4 = 0;
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCEST4,SHEEPWATCH.ANNOUNCEPT4,SHEEPWATCH.ANNOUNCERT4,"4s");
		end
		if (SHEEPWATCH.S3 == 1 and RestTime < 3) then
			SHEEPWATCH.S3 = 0;
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCEST3,SHEEPWATCH.ANNOUNCEPT3,SHEEPWATCH.ANNOUNCERT3,"3s");
		end
		if (SHEEPWATCH.S2 == 1 and RestTime < 2) then
			SHEEPWATCH.S2 = 0;
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCEST2,SHEEPWATCH.ANNOUNCEPT2,SHEEPWATCH.ANNOUNCERT2,"2s");
		end
		if (SHEEPWATCH.S1 == 1 and RestTime < 1) then
			SHEEPWATCH.S1 = 0;
			SheepWatch_SendAnnouncement(SHEEPWATCH.ANNOUNCEST1,SHEEPWATCH.ANNOUNCEPT1,SHEEPWATCH.ANNOUNCERT1,"1s");
		end
	
		SheepWatchFrameStatusBar:SetMinMaxValues(SHEEPWATCH.TIMER_START, SHEEPWATCH.TIMER_END);
	
		local sparkPosition = ((TimeStamp - SHEEPWATCH.TIMER_START) / (SHEEPWATCH.TIMER_END - SHEEPWATCH.TIMER_START)) * 195;
		if( SHEEPWATCH.DIRECTION == 2 ) then
			sparkPosition = 195 - sparkPosition;
			SheepWatchFrameStatusBar:SetValue(SHEEPWATCH.TIMER_START + SHEEPWATCH.TIMER_END - TimeStamp);
		else
			SheepWatchFrameStatusBar:SetValue(TimeStamp);
		end
		if( sparkPosition < 1 ) then
			sparkPosition = 1;
		end
		SheepWatchSpark:SetPoint("CENTER", "SheepWatchFrameStatusBar", "LEFT", sparkPosition, 0);

		if ( SHEEPWATCH.ACTIVE == 0 ) then
			SheepWatchText:SetText("");
			SheepWatchCounterText:Hide();
			SheepWatch:Hide();
		elseif( RestTime == 0 ) then
			SheepWatchText:SetText("Timeout");
			SheepWatchCounterText:Hide();
		else
			if( SHEEPWATCH.COUNTER ) then
				SheepWatchCounterText:SetText(seconds .. "s");
			end
		end

		SHEEPWATCH.LASTUPDATE = 0;
	end

end


-------------------------------------------------------
-- Get the highest rank of Polymorph spell
--------------------------------------------------------
local function SheepWatch_GetSpellRank(spell)
	local rank = 0;

	for i = 1, 180 do 
		local spellName, spellRank = GetSpellName(i, BOOKTYPE_SPELL);

		if( spellName ) then
			if( string.find(spellName, spell, 1, true) and not string.find(spellName, ":", 1, true) ) then
--				DEFAULT_CHAT_FRAME:AddMessage(spellName .. " " .. spellRank);
				rank = spellRank;
			end    	                
	            
		end
 	end
	return rank;

end

local function ShackleWatch_GetSpellRank(spell)
	local rank = 0;
	for i = 1, 180 do 
		local spellName, spellRank = GetSpellName(i, BOOKTYPE_SPELL);

		if( spellName ) then
			if( string.find(spellName, spell, 1, true) ) then
				rank = spellRank;
			end    	                
	            
		end
 	end
  return rank;
end

--------------------------------------------------------
-- Set SHEEPWATCH.LENGTH based on the highest spell rank
--------------------------------------------------------
function SheepWatch_SetTimerLength()
	local rank = SheepWatch_GetSpellRank( SHEEPWATCH_SPELL );
    local rank2 = ShackleWatch_GetSpellRank( SHEEPWATCH_SPELL2 );

	_, _, _, ranknumber = string.find( rank, "(.+) (.+)" );
    _, _, _, ranknumber2 = string.find( rank2, "(.+) (.+)" );

	SHEEPWATCH.RANK = rank;

--	SheepWatch_Debug("Rank set to:" .. SHEEPWATCH.RANK);

	if( ranknumber ) then
		DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH.RANK .. SHEEPWATCH_TEXT_RANK);
        SHEEPWATCH_ACTIVE_SPELL = SHEEPWATCH_SPELL;
		if( ranknumber == "1" ) then
			SHEEPWATCH.LENGTH = 20.0;
		elseif( ranknumber == "2" ) then
			SHEEPWATCH.LENGTH = 30.0;
		elseif( ranknumber == "3" ) then
			SHEEPWATCH.LENGTH = 40.0;
		elseif( ranknumber == "4" ) then
			SHEEPWATCH.LENGTH = 50.0;
		end
    elseif( ranknumber2 ) then
        SHEEPWATCH.RANK = rank2;
		DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH.RANK .. SHEEPWATCH_TEXT_RANK);
        SHEEPWATCH_ACTIVE_SPELL = SHEEPWATCH_SPELL2;
		if( ranknumber2 == "1" ) then
			SHEEPWATCH.LENGTH = 30.0;
		elseif( ranknumber2 == "2" ) then
			SHEEPWATCH.LENGTH = 40.0;
		elseif( ranknumber2 == "3" ) then
			SHEEPWATCH.LENGTH = 50.0;
		end
	else
--		SheepWatch_Debug("No rank found.");

		-- If we don't get a rank, we disable ourself.
		DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH_TEXT_NORANK);
		SHEEPWATCH.STATUS = 0;
		DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH_TEXT_DISABLED);
	end		

end


--------------------------------------------------------
-- Sends a message
--------------------------------------------------------
function SheepWatch_SendAnnouncement( sf, pf, rf, msg )
	local pn, rn

	if ( sf == 0 and pf == 0 and rf == 0 ) then
		return;
	end

	rn = GetNumRaidMembers();

	if ( rf == 1 and rn > 0 ) then
		SendChatMessage( msg, "RAID" );
		return;
	end

	pn = GetNumPartyMembers();

	if ( pf == 1 and pn > 0 ) then
		SendChatMessage( msg, "PARTY" );
		return;
	end
	
	if ( sf == 1 )then
		SendChatMessage( msg, "SAY" );
	end	     

end

function SheepWatch_SendAnnouncementMulti( msg )

	if ( GetNumRaidMembers() > 0 ) then
		SendChatMessage( msg, "RAID" );
	elseif ( GetNumPartyMembers() > 0 ) then
		SendChatMessage( msg, "PARTY" );
	end

end


--------------------------------------------------------
-- Load the variables.
--------------------------------------------------------
function SheepWatch_LoadVariables()
	if SHEEPWATCH_VARIABLES_LOADED then
		return
	end
	
	-- Disable debugging by default
	SHEEPWATCH.DEBUG = false;

	-- Get the actual Polymorph rank
	SheepWatch_SetTimerLength();

	-- Apply default settings to the profile if the aren't set yet
	-- Default settings are defined in SheepWatch_Globals.lua
	if( SheepWatch_Settings == nil ) then
		SheepWatch_Settings = { };
		SheepWatch_Settings.version = SHEEPWATCH_VERSION;
	else
		SheepWatch_CheckProfile();
	end

	if( SheepWatch_Settings.status == nil ) then
		SheepWatch_Settings.status = SHEEPWATCH.STATUS;
	end

	if( SheepWatch_Settings.direction == nil ) then
		SheepWatch_Settings.direction = SHEEPWATCH.DIRECTION;
	end

	if( SheepWatch_Settings.counter == nil ) then
		SheepWatch_Settings.counter = SHEEPWATCH.COUNTER;
	end	

	if( SheepWatch_Settings.decimals == nil ) then
		SheepWatch_Settings.decimals = SHEEPWATCH.DECIMALS;
	end	

	if( SheepWatch_Settings.sound == nil ) then
		SheepWatch_Settings.sound = SHEEPWATCH.SOUND;
	end	

	if ( SheepWatch_Settings.alpha == nil ) then
		SheepWatch_Settings.alpha = SHEEPWATCH.ALPHA;
	end

	if ( SheepWatch_Settings.scale == nil ) then
		SheepWatch_Settings.scale = SHEEPWATCH.SCALE;
	end

	if ( SheepWatch_Settings["barcolor"] == nil ) then
		SheepWatch_Settings["barcolor"] = { };
		SheepWatch_Settings["barcolor"].r = "1.0";
		SheepWatch_Settings["barcolor"].g = "1.0";
		SheepWatch_Settings["barcolor"].b = "0.0";
	end

	if ( SheepWatch_Settings.AnnounceSCast == nil ) then
		SheepWatch_Settings.AnnounceSCast = SHEEPWATCH.ANNOUNCESCAST;
	end

	if ( SheepWatch_Settings.AnnounceST30 == nil ) then
		SheepWatch_Settings.AnnounceST30 = SHEEPWATCH.ANNOUNCEST30;
	end

	if ( SheepWatch_Settings.AnnounceST20 == nil ) then
		SheepWatch_Settings.AnnounceST20 = SHEEPWATCH.ANNOUNCEST20;
	end

	if ( SheepWatch_Settings.AnnounceST15 == nil ) then
		SheepWatch_Settings.AnnounceST15 = SHEEPWATCH.ANNOUNCEST15;
	end

	if ( SheepWatch_Settings.AnnounceST10 == nil ) then
		SheepWatch_Settings.AnnounceST10 = SHEEPWATCH.ANNOUNCEST10;
	end

	if ( SheepWatch_Settings.AnnounceST5 == nil ) then
		SheepWatch_Settings.AnnounceST5 = SHEEPWATCH.ANNOUNCEST5;
	end

	if ( SheepWatch_Settings.AnnounceST4 == nil ) then
		SheepWatch_Settings.AnnounceST4 = SHEEPWATCH.ANNOUNCEST4;
	end

	if ( SheepWatch_Settings.AnnounceST3 == nil ) then
		SheepWatch_Settings.AnnounceST3 = SHEEPWATCH.ANNOUNCEST3;
	end

	if ( SheepWatch_Settings.AnnounceST2 == nil ) then
		SheepWatch_Settings.AnnounceST2 = SHEEPWATCH.ANNOUNCEST2;
	end

	if ( SheepWatch_Settings.AnnounceST1 == nil ) then
		SheepWatch_Settings.AnnounceST1 = SHEEPWATCH.ANNOUNCEST1;
	end

	if ( SheepWatch_Settings.AnnounceSEnd == nil ) then
		SheepWatch_Settings.AnnounceSEnd = SHEEPWATCH.ANNOUNCESEND;
	end

	if ( SheepWatch_Settings.AnnounceSWho == nil ) then
		SheepWatch_Settings.AnnounceSWho = SHEEPWATCH.ANNOUNCESWHO;
	end

	if ( SheepWatch_Settings.AnnouncePCast == nil ) then
		SheepWatch_Settings.AnnouncePCast = SHEEPWATCH.ANNOUNCEPCAST;
	end

	if ( SheepWatch_Settings.AnnouncePT30 == nil ) then
		SheepWatch_Settings.AnnouncePT30 = SHEEPWATCH.ANNOUNCEPT30;
	end

	if ( SheepWatch_Settings.AnnouncePT20 == nil ) then
		SheepWatch_Settings.AnnouncePT20 = SHEEPWATCH.ANNOUNCEPT20;
	end

	if ( SheepWatch_Settings.AnnouncePT15 == nil ) then
		SheepWatch_Settings.AnnouncePT15 = SHEEPWATCH.ANNOUNCEPT15;
	end

	if ( SheepWatch_Settings.AnnouncePT10 == nil ) then
		SheepWatch_Settings.AnnouncePT10 = SHEEPWATCH.ANNOUNCEPT10;
	end

	if ( SheepWatch_Settings.AnnouncePT5 == nil ) then
		SheepWatch_Settings.AnnouncePT5 = SHEEPWATCH.ANNOUNCEPT5;
	end

	if ( SheepWatch_Settings.AnnouncePT4 == nil ) then
		SheepWatch_Settings.AnnouncePT4 = SHEEPWATCH.ANNOUNCEPT4;
	end

	if ( SheepWatch_Settings.AnnouncePT3 == nil ) then
		SheepWatch_Settings.AnnouncePT3 = SHEEPWATCH.ANNOUNCEPT3;
	end

	if ( SheepWatch_Settings.AnnouncePT2 == nil ) then
		SheepWatch_Settings.AnnouncePT2 = SHEEPWATCH.ANNOUNCEPT2;
	end

	if ( SheepWatch_Settings.AnnouncePT1 == nil ) then
		SheepWatch_Settings.AnnouncePT1 = SHEEPWATCH.ANNOUNCEPT1;
	end

	if ( SheepWatch_Settings.AnnouncePEnd == nil ) then
		SheepWatch_Settings.AnnouncePEnd = SHEEPWATCH.ANNOUNCEPEND;
	end

	if ( SheepWatch_Settings.AnnouncePWho == nil ) then
		SheepWatch_Settings.AnnouncePWho = SHEEPWATCH.ANNOUNCEPWHO;
	end

	if ( SheepWatch_Settings.AnnounceRCast == nil ) then
		SheepWatch_Settings.AnnounceRCast = SHEEPWATCH.ANNOUNCERCAST;
	end

	if ( SheepWatch_Settings.AnnounceRT30 == nil ) then
		SheepWatch_Settings.AnnounceRT30 = SHEEPWATCH.ANNOUNCERT30;
	end

	if ( SheepWatch_Settings.AnnounceRT20 == nil ) then
		SheepWatch_Settings.AnnounceRT20 = SHEEPWATCH.ANNOUNCERT20;
	end

	if ( SheepWatch_Settings.AnnounceRT15 == nil ) then
		SheepWatch_Settings.AnnounceRT15 = SHEEPWATCH.ANNOUNCERT15;
	end

	if ( SheepWatch_Settings.AnnounceRT10 == nil ) then
		SheepWatch_Settings.AnnounceRT10 = SHEEPWATCH.ANNOUNCERT10;
	end

	if ( SheepWatch_Settings.AnnounceRT5 == nil ) then
		SheepWatch_Settings.AnnounceRT5 = SHEEPWATCH.ANNOUNCERT5;
	end

	if ( SheepWatch_Settings.AnnounceRT4 == nil ) then
		SheepWatch_Settings.AnnounceRT4 = SHEEPWATCH.ANNOUNCERT4;
	end

	if ( SheepWatch_Settings.AnnounceRT3 == nil ) then
		SheepWatch_Settings.AnnounceRT3 = SHEEPWATCH.ANNOUNCERT3;
	end

	if ( SheepWatch_Settings.AnnounceRT2 == nil ) then
		SheepWatch_Settings.AnnounceRT2 = SHEEPWATCH.ANNOUNCERT2;
	end

	if ( SheepWatch_Settings.AnnounceRT1 == nil ) then
		SheepWatch_Settings.AnnounceRT1 = SHEEPWATCH.ANNOUNCERT1;
	end

	if ( SheepWatch_Settings.AnnounceREnd == nil ) then
		SheepWatch_Settings.AnnounceREnd = SHEEPWATCH.ANNOUNCEREND;
	end

	if ( SheepWatch_Settings.AnnounceRWho == nil ) then
		SheepWatch_Settings.AnnounceRWho = SHEEPWATCH.ANNOUNCERWHO;
	end

	-- Read settings from the profile
	SHEEPWATCH.STATUS = SheepWatch_Settings.status;
	SHEEPWATCH.DIRECTION = SheepWatch_Settings.direction;
	SHEEPWATCH.COUNTER = SheepWatch_Settings.counter;
	SHEEPWATCH.DECIMALS = SheepWatch_Settings.decimals;
	SHEEPWATCH.SOUND = SheepWatch_Settings.sound;
	SheepWatchConfigBarColorSwatchNormalTexture:SetVertexColor(SheepWatch_Settings["barcolor"].r, SheepWatch_Settings["barcolor"].g, SheepWatch_Settings["barcolor"].b);
	SheepWatchFrameStatusBar:SetStatusBarColor(SheepWatch_Settings["barcolor"].r, SheepWatch_Settings["barcolor"].g, SheepWatch_Settings["barcolor"].b);
	SHEEPWATCH.ALPHA = SheepWatch_Settings.alpha;
	SHEEPWATCH.SCALE = SheepWatch_Settings.scale;
    if(UIParent:GetScale() > 0 and SHEEPWATCH.SCALE > 0) then
	    SheepWatch:SetScale(UIParent:GetScale() * SHEEPWATCH.SCALE);
    end
	SHEEPWATCH.ANNOUNCESCAST = SheepWatch_Settings.AnnounceSCast;
	SHEEPWATCH.ANNOUNCEST30 = SheepWatch_Settings.AnnounceST30;
	SHEEPWATCH.ANNOUNCEST20 = SheepWatch_Settings.AnnounceST20;
	SHEEPWATCH.ANNOUNCEST15 = SheepWatch_Settings.AnnounceST15;
	SHEEPWATCH.ANNOUNCEST10 = SheepWatch_Settings.AnnounceST10;
	SHEEPWATCH.ANNOUNCEST5 = SheepWatch_Settings.AnnounceST5;
	SHEEPWATCH.ANNOUNCEST4 = SheepWatch_Settings.AnnounceST4;
	SHEEPWATCH.ANNOUNCEST3 = SheepWatch_Settings.AnnounceST3;
	SHEEPWATCH.ANNOUNCEST2 = SheepWatch_Settings.AnnounceST2;
	SHEEPWATCH.ANNOUNCEST1 = SheepWatch_Settings.AnnounceST1;
	SHEEPWATCH.ANNOUNCESEND = SheepWatch_Settings.AnnounceSEnd;
	SHEEPWATCH.ANNOUNCESWHO = SheepWatch_Settings.AnnounceSWho;
	SHEEPWATCH.ANNOUNCEPCAST = SheepWatch_Settings.AnnouncePCast;
	SHEEPWATCH.ANNOUNCEPT30 = SheepWatch_Settings.AnnouncePT30;
	SHEEPWATCH.ANNOUNCEPT20 = SheepWatch_Settings.AnnouncePT20;
	SHEEPWATCH.ANNOUNCEPT15 = SheepWatch_Settings.AnnouncePT15;
	SHEEPWATCH.ANNOUNCEPT10 = SheepWatch_Settings.AnnouncePT10;
	SHEEPWATCH.ANNOUNCEPT5 = SheepWatch_Settings.AnnouncePT5;
	SHEEPWATCH.ANNOUNCEPT4 = SheepWatch_Settings.AnnouncePT4;
	SHEEPWATCH.ANNOUNCEPT3 = SheepWatch_Settings.AnnouncePT3;
	SHEEPWATCH.ANNOUNCEPT2 = SheepWatch_Settings.AnnouncePT2;
	SHEEPWATCH.ANNOUNCEPT1 = SheepWatch_Settings.AnnouncePT1;
	SHEEPWATCH.ANNOUNCEPEND = SheepWatch_Settings.AnnouncePEnd;
	SHEEPWATCH.ANNOUNCEPWHO = SheepWatch_Settings.AnnouncePWho;
	SHEEPWATCH.ANNOUNCERCAST = SheepWatch_Settings.AnnounceRCast;
	SHEEPWATCH.ANNOUNCERT30 = SheepWatch_Settings.AnnounceRT30;
	SHEEPWATCH.ANNOUNCERT20 = SheepWatch_Settings.AnnounceRT20;
	SHEEPWATCH.ANNOUNCERT15 = SheepWatch_Settings.AnnounceRT15;
	SHEEPWATCH.ANNOUNCERT10 = SheepWatch_Settings.AnnounceRT10;
	SHEEPWATCH.ANNOUNCERT5 = SheepWatch_Settings.AnnounceRT5;
	SHEEPWATCH.ANNOUNCERT4 = SheepWatch_Settings.AnnounceRT4;
	SHEEPWATCH.ANNOUNCERT3 = SheepWatch_Settings.AnnounceRT3;
	SHEEPWATCH.ANNOUNCERT2 = SheepWatch_Settings.AnnounceRT2;
	SHEEPWATCH.ANNOUNCERT1 = SheepWatch_Settings.AnnounceRT1;
	SHEEPWATCH.ANNOUNCEREND = SheepWatch_Settings.AnnounceREnd;
	SHEEPWATCH.ANNOUNCERWHO = SheepWatch_Settings.AnnounceRWho;

	SHEEPWATCH_VARIABLES_LOADED = true;

end


--------------------------------------------------------
-- Print the internal variables for debugging purposes.
--------------------------------------------------------
function SheepWatch_PrintStatus()

	DEFAULT_CHAT_FRAME:AddMessage("SheepWatch Status:");
	DEFAULT_CHAT_FRAME:AddMessage("Version: " .. SHEEPWATCH_VERSION);
	DEFAULT_CHAT_FRAME:AddMessage("Status: " .. SHEEPWATCH.STATUS .. " \(0=disabled, 1=enabled\)");
	DEFAULT_CHAT_FRAME:AddMessage("Spell: " .. SHEEPWATCH_ACTIVE_SPELL);
	DEFAULT_CHAT_FRAME:AddMessage("Rank: " .. SHEEPWATCH.RANK .. " \(determined at loading time\)");	
	DEFAULT_CHAT_FRAME:AddMessage("Length: " .. SHEEPWATCH.LENGTH .. " \(defined through the rank\)");
	DEFAULT_CHAT_FRAME:AddMessage("Direction: " .. SHEEPWATCH.DIRECTION);
	if( SHEEPWATCH.COUNTER ) then
		DEFAULT_CHAT_FRAME:AddMessage("Counter: On");
	else
		DEFAULT_CHAT_FRAME:AddMessage("Counter: Off");
	end
	if( SHEEPWATCH.DECIMALS ) then
		DEFAULT_CHAT_FRAME:AddMessage("Decimals: On");
	else
		DEFAULT_CHAT_FRAME:AddMessage("Decimals: Off");
	end

end


--------------------------------------------------------
-- Check if user's profile need to be cleared
--------------------------------------------------------
function SheepWatch_CheckProfile()
	local profileversion = nil;
	local version = SHEEPWATCH_VERSION;
	
	if( SheepWatch_Settings.version ~= nil ) then
		-- Get the actual version in the profile when already set.
		profileversion = SheepWatch_Settings.version;
	end
	
	if( profileversion == nil and SHEEPWATCH.CLEAR ) then
		-- Clear when we are asked to do so and no version was set yet.
		SheepWatch_ClearProfile();
		SheepWatch_Settings.version = version;
	elseif( version ~= profileversion and SHEEPWATCH.CLEAR ) then
		-- Clear because we are asked to do so.
		SheepWatch_ClearProfile();
		SheepWatch_Settings.version = version;
		DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH_TEXT_PROFILECLEARED);
	end	 

end


--------------------------------------------------------
-- Clear user's profile from SavedVariables.lua
--------------------------------------------------------
function SheepWatch_ClearProfile()
	SheepWatch_Settings = nil;
	SHEEPWATCH_VARIABLES_LOADED = false;
	SheepWatch_LoadVariables();
end


--------------------------------------------------------
-- Print the help
--------------------------------------------------------
function SheepWatch_Help()
	DEFAULT_CHAT_FRAME:AddMessage("SheepWatch " .. SHEEPWATCH_VERSION .. SHEEPWATCH_HELP1);
end


--------------------------------------------------------
-- Better error messages
--------------------------------------------------------
--function ErrorWithStack(msg)
--   msg = msg.."\n"..debugstack()
--   _ERRORMESSAGE(msg)
--end
