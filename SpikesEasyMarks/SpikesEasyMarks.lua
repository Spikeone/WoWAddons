function SEM_OnLoad()
    this:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
    this:RegisterEvent("PLAYER_TARGET_CHANGED")
    this:RegisterEvent("PLAYER_REGEN_ENABLED");
    this:RegisterEvent("PLAYER_REGEN_DISABLED");
    this:RegisterEvent('VARIABLES_LOADED');
    
    --SLASH_SPELLWATCH1 = "/sw";
    SLASH_SPIKESEASYMARKS1 = "/sem";
    SlashCmdList["SPIKESEASYMARKS"] = function(msg)
        SEM_SlashCommandHandler(msg);
    end

    DEFAULT_CHAT_FRAME:AddMessage("SpikesEasyMarks loaded!");
end

isInfight = false;

--SEM_MARKS_LOCAL = {}

SEM_MARKS_DEFAULT = {}
SEM_MARKS_DEFAULT["0xF1300030C101374D"] = 1

-- 1 = Yellow 4-point Star
-- 2 = Orange Circle
-- 3 = Purple Diamond
-- 4 = Green Triangle
-- 5 = White Crescent Moon
-- 6 = Blue Square
-- 7 = Red "X" Cross
-- 8 = White Skull


function SEM_SlashCommandHandler(msg)

    local a, b, command = string.find( msg, "(%w+)" );

    if( command == nil ) then
        return;
    else
        command = string.lower( msg );
    end

    if(command == "rt1") then

    elseif(command == "rt2") then

    elseif(command == "rt3") then

    elseif(command == "rt4") then

    elseif(command == "rt5") then

    elseif(command == "rt6") then

    elseif(command == "rt7") then

    elseif(command == "rt8") then

    elseif(command == "clear") then

    end
end

function SEM_AddNewRT()

end

function SEM_RemoveRT()

end

function SEM_OnEvent(self, event, ...)

    if (event == 'VARIABLES_LOADED') then
        SEM_OnVariablesLoaded();
    end

    -- infight check
    if (event == "PLAYER_REGEN_ENABLED") then
        isInfight = false;
    elseif (event == "PLAYER_REGEN_DISABLED") then
        isInfight = true;
    end


    if (event == "UPDATE_MOUSEOVER_UNIT") then

        local guid = UnitGUID("mouseover")

        if (guid) then
            SEM_SetTargetMark("mouseover", guid)
        end

    end

    if (event == "PLAYER_TARGET_CHANGED") then
        local guid = UnitGUID("target")

        if (guid) then
            SEM_SetTargetMark("target", guid)
        end
    end
end

function SEM_SetTargetMark(strTarget, guid)
    local mark = SEM_GetMarkForTarget(guid)

    if (mark and mark > 0) then
        SetRaidTarget(strTarget, mark);
    end
end

function SEM_GetMarkForTarget(guid)

    if(SEM_MARKS_LOCAL[guid]) then
        return SEM_MARKS_LOCAL[guid]
    end

    if(SEM_MARKS_DEFAULT[guid]) then
        return SEM_MARKS_DEFAULT[guid]
    end

    return 0
end

function SEM_OnVariablesLoaded()

    if (not SEM_MARKS_LOCAL) then
        SEM_MARKS_LOCAL = {}
    end

    -- general settings
    --if (not SW_SETTINGS)                        then SW_SETTINGS ={} end
    --if (not SW_SETTINGS["GENERAL_ENABLE"])      then SW_SETTINGS["GENERAL_ENABLE"] = 1 end
    --if (not SW_SETTINGS["GENERAL_ENABLE_RAID"]) then SW_SETTINGS["GENERAL_ENABLE_RAID"] = 1 end
    --if (not SW_SETTINGS["GENERAL_ENABLE_PARTY"])then SW_SETTINGS["GENERAL_ENABLE_PARTY"] = 1 end
    --if (not SW_SETTINGS["GENERAL_INSTANCE"])    then SW_SETTINGS["GENERAL_INSTANCE"] = 1 end
    --if (not SW_SETTINGS["GENERAL_SOUND"])       then SW_SETTINGS["GENERAL_SOUND"] = 1 end
    --if (not SW_SETTINGS["GENERAL_MAXCHANNEL"])  then SW_SETTINGS["GENERAL_MAXCHANNEL"] = 1 end
    --if (not SW_SETTINGS["GENERAL_MARK1"])       then SW_SETTINGS["GENERAL_MARK1"] = 1 end --star
    --if (not SW_SETTINGS["GENERAL_MARK2"])       then SW_SETTINGS["GENERAL_MARK2"] = 1 end --circle
    --if (not SW_SETTINGS["GENERAL_MARK3"])       then SW_SETTINGS["GENERAL_MARK3"] = 1 end --diamond
    --if (not SW_SETTINGS["GENERAL_MARK4"])       then SW_SETTINGS["GENERAL_MARK4"] = 1 end --triangle
    --if (not SW_SETTINGS["GENERAL_MARK5"])       then SW_SETTINGS["GENERAL_MARK5"] = 1 end --moon
    --if (not SW_SETTINGS["GENERAL_MARK6"])       then SW_SETTINGS["GENERAL_MARK6"] = 1 end --square
    --if (not SW_SETTINGS["GENERAL_MARK7"])       then SW_SETTINGS["GENERAL_MARK7"] = 1 end --cross
    --if (not SW_SETTINGS["GENERAL_MARK8"])       then SW_SETTINGS["GENERAL_MARK8"] = 1 end --skull
    --
    ---- module 01 (necklace)
    --if (not SW_SETTINGS["NECK"])                then SW_SETTINGS["NECK"] = 1 end
    --if (not SW_SETTINGS["NECK_SYSTEM"])         then SW_SETTINGS["NECK_SYSTEM"] = 0 end
    --if (not SW_SETTINGS["NECK_SELF"])           then SW_SETTINGS["NECK_SELF"] = 1 end
    --
    ---- module 02 (soulcharge)
    --if (not SW_SETTINGS["SOULCHARGE"])              then SW_SETTINGS["SOULCHARGE"] = 1 end
    --if (not SW_SETTINGS["SOULCHARGE_SYSTEM"])       then SW_SETTINGS["SOULCHARGE_SYSTEM"] = 0 end
    --if (not SW_SETTINGS["SOULCHARGE_SELF"])         then SW_SETTINGS["SOULCHARGE_SELF"] = 1 end
    --if (not SW_SETTINGS["SOULCHARGE_YELL"])         then SW_SETTINGS["SOULCHARGE_YELL"] = 0 end
    --if (not SW_SETTINGS["SOULCHARGE_PARTY"])        then SW_SETTINGS["SOULCHARGE_PARTY"] = 0 end
    --if (not SW_SETTINGS["SOULCHARGE_RAID"])         then SW_SETTINGS["SOULCHARGE_RAID"] = 1 end
    --if (not SW_SETTINGS["SOULCHARGE_RAIDWARNING"])  then SW_SETTINGS["SOULCHARGE_RAIDWARNING"] = 1 end
    --
    ---- module 03 (btbanish)
    --if (not SW_SETTINGS["BTBANISH"])              then SW_SETTINGS["BTBANISH"] = 1 end
    --if (not SW_SETTINGS["BTBANISH_SYSTEM"])       then SW_SETTINGS["BTBANISH_SYSTEM"] = 0 end
    --if (not SW_SETTINGS["BTBANISH_SELF"])         then SW_SETTINGS["BTBANISH_SELF"] = 1 end
    --if (not SW_SETTINGS["BTBANISH_YELL"])         then SW_SETTINGS["BTBANISH_YELL"] = 0 end
    --if (not SW_SETTINGS["BTBANISH_PARTY"])        then SW_SETTINGS["BTBANISH_PARTY"] = 0 end
    --if (not SW_SETTINGS["BTBANISH_RAID"])         then SW_SETTINGS["BTBANISH_RAID"] = 0 end
    --if (not SW_SETTINGS["BTBANISH_RAIDWARNING"])  then SW_SETTINGS["BTBANISH_RAIDWARNING"] = 1 end
    --if (not SW_SETTINGS["BTBANISH_MARKS"])        then SW_SETTINGS["BTBANISH_MARKS"] = 1 end
    --
    ---- module 04 (btarcaneblast)
    --if (not SW_SETTINGS["BTARCANEBLAST"])              then SW_SETTINGS["BTARCANEBLAST"] = 1 end
    --if (not SW_SETTINGS["BTARCANEBLAST_SYSTEM"])       then SW_SETTINGS["BTARCANEBLAST_SYSTEM"] = 0 end
    --if (not SW_SETTINGS["BTARCANEBLAST_SELF"])         then SW_SETTINGS["BTARCANEBLAST_SELF"] = 0 end
    --if (not SW_SETTINGS["BTARCANEBLAST_YELL"])         then SW_SETTINGS["BTARCANEBLAST_YELL"] = 0 end
    --if (not SW_SETTINGS["BTARCANEBLAST_PARTY"])        then SW_SETTINGS["BTARCANEBLAST_PARTY"] = 0 end
    --if (not SW_SETTINGS["BTARCANEBLAST_RAID"])         then SW_SETTINGS["BTARCANEBLAST_RAID"] = 0 end
    --if (not SW_SETTINGS["BTARCANEBLAST_RAIDWARNING"])  then SW_SETTINGS["BTARCANEBLAST_RAIDWARNING"] = 1 end
    --
    ---- module 05 (btdivinieshield)
    --if (not SW_SETTINGS["BTDIVINESHIELD"])              then SW_SETTINGS["BTDIVINESHIELD"] = 1 end
    --if (not SW_SETTINGS["BTDIVINESHIELD_SYSTEM"])       then SW_SETTINGS["BTDIVINESHIELD_SYSTEM"] = 0 end
    --if (not SW_SETTINGS["BTDIVINESHIELD_SELF"])         then SW_SETTINGS["BTDIVINESHIELD_SELF"] = 0 end
    --if (not SW_SETTINGS["BTDIVINESHIELD_YELL"])         then SW_SETTINGS["BTDIVINESHIELD_YELL"] = 0 end
    --if (not SW_SETTINGS["BTDIVINESHIELD_PARTY"])        then SW_SETTINGS["BTDIVINESHIELD_PARTY"] = 0 end
    --if (not SW_SETTINGS["BTDIVINESHIELD_RAID"])         then SW_SETTINGS["BTDIVINESHIELD_RAID"] = 1 end
    --if (not SW_SETTINGS["BTDIVINESHIELD_RAIDWARNING"])  then SW_SETTINGS["BTDIVINESHIELD_RAIDWARNING"] = 1 end
    --
    ---- module 06 (btcurseofmending)
    --if (not SW_SETTINGS["BTCURSEOFMENDING"])                then SW_SETTINGS["BTCURSEOFMENDING"] = 1 end
    --if (not SW_SETTINGS["BTCURSEOFMENDING_SYSTEM"])         then SW_SETTINGS["BTCURSEOFMENDING_SYSTEM"] = 0 end
    --if (not SW_SETTINGS["BTCURSEOFMENDING_SELF"])           then SW_SETTINGS["BTCURSEOFMENDING_SELF"] = 0 end
    --if (not SW_SETTINGS["BTCURSEOFMENDING_YELL"])           then SW_SETTINGS["BTCURSEOFMENDING_YELL"] = 0 end
    --if (not SW_SETTINGS["BTCURSEOFMENDING_PARTY"])          then SW_SETTINGS["BTCURSEOFMENDING_PARTY"] = 0 end
    --if (not SW_SETTINGS["BTCURSEOFMENDING_RAID"])           then SW_SETTINGS["BTCURSEOFMENDING_RAID"] = 1 end
    --if (not SW_SETTINGS["BTCURSEOFMENDING_RAIDWARNING"])    then SW_SETTINGS["BTCURSEOFMENDING_RAIDWARNING"] = 1 end
    --if (not SW_SETTINGS["BTCURSEOFMENDING_MARKS"])          then SW_SETTINGS["BTCURSEOFMENDING_MARKS"] = 1 end
    --
    ---- module 07 (btchaoticcharge)
    --if (not SW_SETTINGS["BTCHAOTICCHARGE"])                then SW_SETTINGS["BTCHAOTICCHARGE"] = 1 end
    --if (not SW_SETTINGS["BTCHAOTICCHARGE_SYSTEM"])         then SW_SETTINGS["BTCHAOTICCHARGE_SYSTEM"] = 0 end
    --if (not SW_SETTINGS["BTCHAOTICCHARGE_SELF"])           then SW_SETTINGS["BTCHAOTICCHARGE_SELF"] = 0 end
    --if (not SW_SETTINGS["BTCHAOTICCHARGE_YELL"])           then SW_SETTINGS["BTCHAOTICCHARGE_YELL"] = 0 end
    --if (not SW_SETTINGS["BTCHAOTICCHARGE_PARTY"])          then SW_SETTINGS["BTCHAOTICCHARGE_PARTY"] = 0 end
    --if (not SW_SETTINGS["BTCHAOTICCHARGE_RAID"])           then SW_SETTINGS["BTCHAOTICCHARGE_RAID"] = 1 end
    --if (not SW_SETTINGS["BTCHAOTICCHARGE_RAIDWARNING"])    then SW_SETTINGS["BTCHAOTICCHARGE_RAIDWARNING"] = 1 end
    --if (not SW_SETTINGS["BTCHAOTICCHARGE_MARKS"])          then SW_SETTINGS["BTCHAOTICCHARGE_MARKS"] = 1 end
    --
    ---- module 08 (soulshatter)
    --if (not SW_SETTINGS["SOULSHATTER"])                then SW_SETTINGS["SOULSHATTER"] = 1 end
    --if (not SW_SETTINGS["SOULSHATTER_SYSTEM"])         then SW_SETTINGS["SOULSHATTER_SYSTEM"] = 0 end
    --if (not SW_SETTINGS["SOULSHATTER_SELF"])           then SW_SETTINGS["SOULSHATTER_SELF"] = 0 end
    --if (not SW_SETTINGS["SOULSHATTER_YELL"])           then SW_SETTINGS["SOULSHATTER_YELL"] = 0 end
    --if (not SW_SETTINGS["SOULSHATTER_PARTY"])          then SW_SETTINGS["SOULSHATTER_PARTY"] = 0 end
    --if (not SW_SETTINGS["SOULSHATTER_RAID"])           then SW_SETTINGS["SOULSHATTER_RAID"] = 1 end
    --if (not SW_SETTINGS["SOULSHATTER_RAIDWARNING"])    then SW_SETTINGS["SOULSHATTER_RAIDWARNING"] = 1 end
    --if (not SW_SETTINGS["SOULSHATTER_MARKS"])          then SW_SETTINGS["SOULSHATTER_MARKS"] = 1 end
    --
    ---- module 09 (createsoulwell)
    --if (not SW_SETTINGS["SOULWELL"])                then SW_SETTINGS["SOULWELL"] = 1 end
    --if (not SW_SETTINGS["SOULWELL_SYSTEM"])         then SW_SETTINGS["SOULWELL_SYSTEM"] = 0 end
    --if (not SW_SETTINGS["SOULWELL_SELF"])           then SW_SETTINGS["SOULWELL_SELF"] = 1 end
    --if (not SW_SETTINGS["SOULWELL_YELL"])           then SW_SETTINGS["SOULWELL_YELL"] = 0 end
    --if (not SW_SETTINGS["SOULWELL_PARTY"])          then SW_SETTINGS["SOULWELL_PARTY"] = 0 end
    --if (not SW_SETTINGS["SOULWELL_RAID"])           then SW_SETTINGS["SOULWELL_RAID"] = 1 end
    --if (not SW_SETTINGS["SOULWELL_RAIDWARNING"])    then SW_SETTINGS["SOULWELL_RAIDWARNING"] = 1 end
    --
    ---- module 10 (ritualofsummoning)
    --if (not SW_SETTINGS["SUMMONING"])                then SW_SETTINGS["SUMMONING"] = 1 end
    --if (not SW_SETTINGS["SUMMONING_SYSTEM"])         then SW_SETTINGS["SUMMONING_SYSTEM"] = 0 end
    --if (not SW_SETTINGS["SUMMONING_SELF"])           then SW_SETTINGS["SUMMONING_SELF"] = 1 end
    --if (not SW_SETTINGS["SUMMONING_YELL"])           then SW_SETTINGS["SUMMONING_YELL"] = 0 end
    --if (not SW_SETTINGS["SUMMONING_PARTY"])          then SW_SETTINGS["SUMMONING_PARTY"] = 0 end
    --if (not SW_SETTINGS["SUMMONING_RAID"])           then SW_SETTINGS["SUMMONING_RAID"] = 1 end
    --if (not SW_SETTINGS["SUMMONING_RAIDWARNING"])    then SW_SETTINGS["SUMMONING_RAIDWARNING"] = 1 end
    --
    ---- module 11 (conjurerefreshmenttable)
    --if (not SW_SETTINGS["TABLE"])                then SW_SETTINGS["TABLE"] = 1 end
    --if (not SW_SETTINGS["TABLE_SYSTEM"])         then SW_SETTINGS["TABLE_SYSTEM"] = 0 end
    --if (not SW_SETTINGS["TABLE_SELF"])           then SW_SETTINGS["TABLE_SELF"] = 1 end
    --if (not SW_SETTINGS["TABLE_YELL"])           then SW_SETTINGS["TABLE_YELL"] = 0 end
    --if (not SW_SETTINGS["TABLE_PARTY"])          then SW_SETTINGS["TABLE_PARTY"] = 0 end
    --if (not SW_SETTINGS["TABLE_RAID"])           then SW_SETTINGS["TABLE_RAID"] = 1 end
    --if (not SW_SETTINGS["TABLE_RAIDWARNING"])    then SW_SETTINGS["TABLE_RAIDWARNING"] = 1 end

    --if(SW_SETTINGS["GENERAL_ENABLE"] == 1) then
    --    DEFAULT_CHAT_FRAME:AddMessage("call SW_RegisterEvents");
    --    SW_RegisterEvents()
    --end
end

function SEM_IsInRaid()
    for i = 1, 40 do
        local name, rank, subgroup = GetRaidRosterInfo(i);
        if (name ~=  nil) then
            -- GetRaidRosterInfo will return nil if not in a raid
            return true;
        end
    end

    return false
end

function SEM__IsInGroup()
    local memberCount = 0

    for groupindex = 1,MAX_PARTY_MEMBERS do
        if (GetPartyMember(groupindex)) then
            memberCount = memberCount + 1
        end
    end

    if (memberCount > 0) then
        return true
    else
        return false
    end
end

function SEM_IsInInstance()
    local inInstance, instanceType = IsInInstance()
    if(inInstance) then
        return true
    else
        return false
    end
end