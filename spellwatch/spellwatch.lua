function SW_OnLoad()
    this:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
    this:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
    this:RegisterEvent("PLAYER_REGEN_ENABLED");
    this:RegisterEvent("PLAYER_REGEN_DISABLED");
    this:RegisterEvent('VARIABLES_LOADED');
    DEFAULT_CHAT_FRAME:AddMessage("SpellWatch loaded!");

    SW_TextFrame = CreateFrame("Frame");
    SW_TextFrame:ClearAllPoints();
    SW_TextFrame:SetHeight(300);
    SW_TextFrame:SetWidth(600);
    SW_TextFrame:SetScript("OnUpdate", SW_TextFrame_OnUpdate);
    SW_TextFrame:Hide();
    SW_TextFrame.text = SW_TextFrame:CreateFontString(nil, "BACKGROUND", "PVPInfoTextFont");
    SW_TextFrame.text:SetAllPoints();
    SW_TextFrame:SetPoint("CENTER", 0, 100);
    SW_TextFrameTime = 0;

    --SLASH_SPELLWATCH1 = "/sw";
    SLASH_SPELLWATCH1 = "/spellwatch";
    SlashCmdList["SPELLWATCH"] = function(msg)
        SW_SlashCommandHandler(msg);
    end
end

--function SW_RegisterEvents()
--    DEFAULT_CHAT_FRAME:AddMessage("SW_RegisterEvents");
--    this:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
--    this:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
--    this:RegisterEvent("PLAYER_REGEN_ENABLED");
--    this:RegisterEvent("PLAYER_REGEN_DISABLED");
--end
--
--function SW_UnregisterEvents()
--    DEFAULT_CHAT_FRAME:AddMessage("SW_UnregisterEvents");
--    this:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
--    this:UnregisterEvent("UPDATE_MOUSEOVER_UNIT");
--    this:UnregisterEvent("PLAYER_REGEN_ENABLED");
--    this:UnregisterEvent("PLAYER_REGEN_DISABLED");
--end

isInfight = false;
lastUnitFalling = nil;

function SW_SlashCommandHandler(msg)

    --SW_IsInRaid()
    --SW_IsInGroup()

    local a, b, command = string.find( msg, "(%w+)" );

    if( command == nil ) then
        SWConfig:Show();
        return;
    else
        command = string.lower( msg );
    end
end

function SW_TextFrame_OnUpdate()
    if (SW_TextFrameTime < GetTime() - 3) then
        local alpha = SW_TextFrame:GetAlpha();
        if (alpha ~= 0) then SW_TextFrame:SetAlpha(alpha - .05); end
        if (alpha == 0) then SW_TextFrame:Hide(); end
    end
end

function SW_TextMessage(message)
    SW_TextFrame.text:SetTextColor(1, 0, 0, 1)
    SW_TextFrame.text:SetText(message);
    SW_TextFrame:SetAlpha(1);
    SW_TextFrame:Show();
    SW_TextFrameTime = GetTime();
    if (SW_SETTINGS["GENERAL_SOUND"] ~= 0) then
        PlaySoundFile("Sound\\Spells\\PVPFlagTakenHorde.wav")
    end
end

function SW_OnEvent(self, event, ...)

    if (event == 'VARIABLES_LOADED') then
        SW_OnVariablesLoaded();
    end

    if(SW_SETTINGS["GENERAL_ENABLE"] == 0) then
        return
    end

    if(SW_SETTINGS["GENERAL_INSTANCE"] == 1 and not SW_IsInInstance()) then
        return
    end

    if (event=="COMBAT_LOG_EVENT_UNFILTERED") then

        --DEFAULT_CHAT_FRAME:AddMessage("COMBAT_LOG_EVENT_UNFILTERED");

        if (arg2=="SPELL_CREATE") then
            -- Tischlein deck dich

            if (arg9==43987 and SW_SETTINGS["TABLE"]  == 1) then
                SW_DisplayMessageInOrder("CLICK: " ..arg4.. " wants to conjure a refreshment table!", "TABLE")

            end

            -- Beschwören
            if (arg9==46546 and SW_SETTINGS["SUMMONING"] == 1) then
                summontarget = GetUnitName(SW_GetRaidTarget(arg4) .. "target")
                --DEFAULT_CHAT_FRAME:AddMessage(SW_GetRaidTarget(arg4) .. "target")


                if(summontarget == nil) then 
                    SW_DisplayMessageInOrder("CLICK: " ..arg4.. " wants to summon a player!", "SUMMONING")
                else
                    SW_DisplayMessageInOrder("CLICK: " ..arg4.. " wants to summon " .. summontarget .."!", "SUMMONING")
                end

            end
            
            -- Gesu 
            if (arg9==29893 and SW_SETTINGS["SOULWELL"] == 1) then
            
            SW_DisplayMessageInOrder("CLICK: " ..arg4.. " wants to create a Soulwell!", "SOULWELL")

            end                                                        
        end

        -- Seelebrechen
        if (arg2=="SPELL_MISSED") then
            if (arg9==32835 and SW_SETTINGS["SOULSHATTER"] == 1) then

                SW_DisplayMessageInOrder("Spell missed: "..arg4.." failed using "..arg10.." at "..arg7.." ("..arg12..")", "SOULSHATTER")

            end
        end

        -- Haescher Aufladungen (erste)
        if (arg2=="SPELL_AURA_APPLIED") then
            if(arg9 == 41033 and SW_SETTINGS["BTCHAOTICCHARGE"] == 1) then

                SW_DisplayMessageInOrder("Chaotic Charge (1)!", "BTCHAOTICCHARGE")

            end
        end

        -- Haescher Aufladungen (n-te)
        if (arg2=="SPELL_AURA_APPLIED_DOSE" and SW_SETTINGS["BTCHAOTICCHARGE"] == 1) then
            if(arg9 == 41033) then

                SW_DisplayMessageInOrder("Chaotic Charge ("..arg13..")!", "BTCHAOTICCHARGE")

            end
        end

        -- Fluch der Heilung
        if (arg2=="SPELL_AURA_APPLIED") then
            if(arg9 == 39647 and SW_SETTINGS["BTCURSEOFMENDING"] == 1) then

                SW_DisplayMessageInOrder("Curse of Mending: "..arg7.."!", "BTCURSEOFMENDING")

            end
        end
        
        -- Gottesschild
        if (arg2=="SPELL_AURA_APPLIED") then
            if(arg9 == 41367 and SW_SETTINGS["BTDIVINESHIELD"] == 1) then

                SW_DisplayMessageInOrder("Massdispell (Divine Shield)!", "BTDIVINESHIELD")

            end
        end
        
        -- Arkane Aufladung
        if (arg2 == "SPELL_CAST_START") then
            if(arg9 == 41360 and SW_SETTINGS["BTARCANEBLAST"] == 1) then
            
            SW_DisplayMessageInOrder("Arcane Charge! Shield Target!", "BTARCANEBLAST")

                -- Zauber wird nicht auf Ziel gewirkt, Target von Spieler und Mob holen
                -- playertarget = GetUnitName("playertarget")
                -- playertargettarget = GetUnitName("playertargettarget")
                -- addInfo = ""
                -- 
                -- -- Irgendwas war ungueltig, dann nichts machen
                -- if(playertarget ~= nil and playertarget~= "" and playertargettarget ~= nil and playertargettarget~= "") then
                --     -- Spielertarget war castender mob?
                --     if(playertarget == arg4) then
                --         -- aktuelles target vom mob auslesen und dazu schreiben
                --         addInfo = "("..playertargettarget..")"
                --     end
                -- end
                -- 
                -- if(IsRaidLeader() or IsRaidOfficer())then
                --     SendChatMessage("Arcane Charge "..addInfo.."!", "RAID_WARNING");
                -- else
                --     SendChatMessage("Arcane Charge "..addInfo.."!", "RAID");
                -- end
            end
        end
        
        -- Banish
        if (arg2 == "SPELL_AURA_APPLIED") then
            if(arg9 == 39674 and SW_SETTINGS["BTBANISH"] == 1) then

                SW_DisplayMessageInOrder("Massdispell! "..arg7.." banished!", "BTBANISH")

            end
        end
        
        -- falling (elevator)
        if(arg2 == "UNIT_DIED" and SW_SETTINGS["SOULCHARGE"] == 1) then
            -- DEFAULT_CHAT_FRAME:AddMessage("UNIT_DIED")
            if(lastUnitFalling ~= nil) then
                --DEFAULT_CHAT_FRAME:AddMessage("LastUnit: " ..lastUnitFalling)
                if(arg7 == lastUnitFalling) then
                    SW_DisplayMessageInOrder("Shattrath elevator fail by: " ..arg7.. "!", "SOULCHARGE")
                else
                    lastUnitFalling = nil
                end
            end
        end

        -- falling (soulcharge)
        if(arg2 == "ENVIRONMENTAL_DAMAGE" and SW_SETTINGS["SOULCHARGE"] == 1) then
            --DEFAULT_CHAT_FRAME:AddMessage("ENVIRONMENTAL_DAMAGE")

            if(arg9 == "FALLING") then
            --DEFAULT_CHAT_FRAME:AddMessage("UnitHealth(" ..arg7.. "): " ..UnitHealth(arg7))
            --DEFAULT_CHAT_FRAME:AddMessage("UnitHealth('target'): " ..UnitHealth("target"))
            --DEFAULT_CHAT_FRAME:AddMessage("UnitHealth('Spikeone'): " ..UnitHealth("Spikeone"))
            --DEFAULT_CHAT_FRAME:AddMessage("UnitGUID(" ..arg7.. "): " ..UnitGUID(arg7))

                isInSameParty = UnitInParty(arg7)
                isInSameRaid = UnitInRaid(arg7)

                if(isInSameParty or isInSameRaid) then
                    -- we only get health if the player is in same party
                    -- otherwise one has to use UnitHealth('target') which we cant force
                    if(UnitHealth(arg7) <= arg10) then
                    _, class = UnitClass(arg7)
                    -- if class is nil then we have no unit info, thus no HP info at all
                    -- this check could be removed
                    if(class ~= nil) then
                        SW_DisplayMessageInOrder("Tear fail ("..arg7.. ") " ..class.. " Soul charge!", "SOULCHARGE")
                    end
                end
                else
                    lastUnitFalling = arg7
                end
            end
        end
    end

    -- infight check
    if (event == "PLAYER_REGEN_ENABLED") then
        isInfight = false;
    elseif (event == "PLAYER_REGEN_DISABLED") then
        isInfight = true;
    end

    -- necklace check
    if(SW_SETTINGS["NECK"] == 1) then
        if (event == "UPDATE_MOUSEOVER_UNIT") then

            base, total, bonus, minus = UnitResistance("player", 5)

            classification = UnitClassification("mouseover");
            name = GetUnitName("mouseover")
            if (classification == "worldboss" and total < 140) then
                slotId, textureName = GetInventorySlotInfo("NECKSLOT")

                if (slotId ~= nil) then
                    neckID = tonumber((GetInventoryItemLink("player", slotId) or ""):match(".-item:(%d+):.*"))
                end

                if (neckID == 32757 and not isInfight) then
                    SW_DisplayMessageInOrder("Zieh die Schattenresikette aus!", "NECK")
                end 
            end
        end
    end
end

function SW_SetMarks(modulename, unit)
    if(SW_SETTINGS[(modulename .. "_SYSTEM")] == 1) then
        DEFAULT_CHAT_FRAME:AddMessage("|cFF9b060d" ..message.. "|r");
    end
end

-- TODO: Add option to only use highest channel
function SW_DisplayMessageInOrder(message, modulename)
    usedHighest = false

    -- self is always possible
    if(SW_SETTINGS[(modulename .. "_SYSTEM")] == 1) then
        DEFAULT_CHAT_FRAME:AddMessage("|cFF9b060d" ..message.. "|r");
    end

    -- self is always possible
    if(SW_SETTINGS[(modulename .. "_SELF")] == 1) then
        SW_TextMessage(message)
    end

    if(SW_SETTINGS[(modulename .. "_RAIDWARNING")] == 1 and (IsRaidLeader() or IsRaidOfficer()) and SW_IsInRaid()) then
        SendChatMessage(message, "RAID_WARNING")
        if (SW_SETTINGS["GENERAL_MAXCHANNEL"] == 1) then
            usedHighest = true
        end
    end

    if(SW_SETTINGS[(modulename .. "_RAID")] == 1 and not usedHighest and SW_IsInRaid()) then
        SendChatMessage(message, "RAID")
        if (SW_SETTINGS["GENERAL_MAXCHANNEL"] == 1) then
            usedHighest = true
        end
    end

    if(SW_SETTINGS[(modulename .. "_PARTY")] == 1 and not usedHighest and SW_IsInGroup()) then
        SendChatMessage(message, "PARTY")
        if (SW_SETTINGS["GENERAL_MAXCHANNEL"] == 1) then
            usedHighest = true
        end
    end

    if(SW_SETTINGS[(modulename .. "_YELL")] == 1 and not usedHighest) then
        SendChatMessage(message, "YELL")
        if (SW_SETTINGS["GENERAL_MAXCHANNEL"] == 1) then
            usedHighest = true
        end
    end

end

function SW_OnVariablesLoaded()

    -- general settings
    if (not SW_SETTINGS)                        then SW_SETTINGS ={} end
    if (not SW_SETTINGS["GENERAL_ENABLE"])      then SW_SETTINGS["GENERAL_ENABLE"] = 1 end
    if (not SW_SETTINGS["GENERAL_ENABLE_RAID"]) then SW_SETTINGS["GENERAL_ENABLE_RAID"] = 1 end
    if (not SW_SETTINGS["GENERAL_ENABLE_PARTY"])then SW_SETTINGS["GENERAL_ENABLE_PARTY"] = 1 end
    if (not SW_SETTINGS["GENERAL_INSTANCE"])    then SW_SETTINGS["GENERAL_INSTANCE"] = 1 end
    if (not SW_SETTINGS["GENERAL_SOUND"])       then SW_SETTINGS["GENERAL_SOUND"] = 1 end
    if (not SW_SETTINGS["GENERAL_MAXCHANNEL"])  then SW_SETTINGS["GENERAL_MAXCHANNEL"] = 1 end
    if (not SW_SETTINGS["GENERAL_MARK1"])       then SW_SETTINGS["GENERAL_MARK1"] = 1 end --star
    if (not SW_SETTINGS["GENERAL_MARK2"])       then SW_SETTINGS["GENERAL_MARK2"] = 1 end --circle
    if (not SW_SETTINGS["GENERAL_MARK3"])       then SW_SETTINGS["GENERAL_MARK3"] = 1 end --diamond
    if (not SW_SETTINGS["GENERAL_MARK4"])       then SW_SETTINGS["GENERAL_MARK4"] = 1 end --triangle
    if (not SW_SETTINGS["GENERAL_MARK5"])       then SW_SETTINGS["GENERAL_MARK5"] = 1 end --moon
    if (not SW_SETTINGS["GENERAL_MARK6"])       then SW_SETTINGS["GENERAL_MARK6"] = 1 end --square
    if (not SW_SETTINGS["GENERAL_MARK7"])       then SW_SETTINGS["GENERAL_MARK7"] = 1 end --cross
    if (not SW_SETTINGS["GENERAL_MARK8"])       then SW_SETTINGS["GENERAL_MARK8"] = 1 end --skull

    -- module 01 (necklace)
    if (not SW_SETTINGS["NECK"])                then SW_SETTINGS["NECK"] = 1 end
    if (not SW_SETTINGS["NECK_SYSTEM"])         then SW_SETTINGS["NECK_SYSTEM"] = 0 end
    if (not SW_SETTINGS["NECK_SELF"])           then SW_SETTINGS["NECK_SELF"] = 1 end

    -- module 02 (soulcharge)
    if (not SW_SETTINGS["SOULCHARGE"])              then SW_SETTINGS["SOULCHARGE"] = 1 end
    if (not SW_SETTINGS["SOULCHARGE_SYSTEM"])       then SW_SETTINGS["SOULCHARGE_SYSTEM"] = 0 end
    if (not SW_SETTINGS["SOULCHARGE_SELF"])         then SW_SETTINGS["SOULCHARGE_SELF"] = 1 end
    if (not SW_SETTINGS["SOULCHARGE_YELL"])         then SW_SETTINGS["SOULCHARGE_YELL"] = 0 end
    if (not SW_SETTINGS["SOULCHARGE_PARTY"])        then SW_SETTINGS["SOULCHARGE_PARTY"] = 0 end
    if (not SW_SETTINGS["SOULCHARGE_RAID"])         then SW_SETTINGS["SOULCHARGE_RAID"] = 1 end
    if (not SW_SETTINGS["SOULCHARGE_RAIDWARNING"])  then SW_SETTINGS["SOULCHARGE_RAIDWARNING"] = 1 end

    -- module 03 (btbanish)
    if (not SW_SETTINGS["BTBANISH"])              then SW_SETTINGS["BTBANISH"] = 1 end
    if (not SW_SETTINGS["BTBANISH_SYSTEM"])       then SW_SETTINGS["BTBANISH_SYSTEM"] = 0 end
    if (not SW_SETTINGS["BTBANISH_SELF"])         then SW_SETTINGS["BTBANISH_SELF"] = 1 end
    if (not SW_SETTINGS["BTBANISH_YELL"])         then SW_SETTINGS["BTBANISH_YELL"] = 0 end
    if (not SW_SETTINGS["BTBANISH_PARTY"])        then SW_SETTINGS["BTBANISH_PARTY"] = 0 end
    if (not SW_SETTINGS["BTBANISH_RAID"])         then SW_SETTINGS["BTBANISH_RAID"] = 0 end
    if (not SW_SETTINGS["BTBANISH_RAIDWARNING"])  then SW_SETTINGS["BTBANISH_RAIDWARNING"] = 1 end
    if (not SW_SETTINGS["BTBANISH_MARKS"])        then SW_SETTINGS["BTBANISH_MARKS"] = 1 end

    -- module 04 (btarcaneblast)
    if (not SW_SETTINGS["BTARCANEBLAST"])              then SW_SETTINGS["BTARCANEBLAST"] = 1 end
    if (not SW_SETTINGS["BTARCANEBLAST_SYSTEM"])       then SW_SETTINGS["BTARCANEBLAST_SYSTEM"] = 0 end
    if (not SW_SETTINGS["BTARCANEBLAST_SELF"])         then SW_SETTINGS["BTARCANEBLAST_SELF"] = 0 end
    if (not SW_SETTINGS["BTARCANEBLAST_YELL"])         then SW_SETTINGS["BTARCANEBLAST_YELL"] = 0 end
    if (not SW_SETTINGS["BTARCANEBLAST_PARTY"])        then SW_SETTINGS["BTARCANEBLAST_PARTY"] = 0 end
    if (not SW_SETTINGS["BTARCANEBLAST_RAID"])         then SW_SETTINGS["BTARCANEBLAST_RAID"] = 0 end
    if (not SW_SETTINGS["BTARCANEBLAST_RAIDWARNING"])  then SW_SETTINGS["BTARCANEBLAST_RAIDWARNING"] = 1 end

    -- module 05 (btdivinieshield)
    if (not SW_SETTINGS["BTDIVINESHIELD"])              then SW_SETTINGS["BTDIVINESHIELD"] = 1 end
    if (not SW_SETTINGS["BTDIVINESHIELD_SYSTEM"])       then SW_SETTINGS["BTDIVINESHIELD_SYSTEM"] = 0 end
    if (not SW_SETTINGS["BTDIVINESHIELD_SELF"])         then SW_SETTINGS["BTDIVINESHIELD_SELF"] = 0 end
    if (not SW_SETTINGS["BTDIVINESHIELD_YELL"])         then SW_SETTINGS["BTDIVINESHIELD_YELL"] = 0 end
    if (not SW_SETTINGS["BTDIVINESHIELD_PARTY"])        then SW_SETTINGS["BTDIVINESHIELD_PARTY"] = 0 end
    if (not SW_SETTINGS["BTDIVINESHIELD_RAID"])         then SW_SETTINGS["BTDIVINESHIELD_RAID"] = 1 end
    if (not SW_SETTINGS["BTDIVINESHIELD_RAIDWARNING"])  then SW_SETTINGS["BTDIVINESHIELD_RAIDWARNING"] = 1 end

    -- module 06 (btcurseofmending)
    if (not SW_SETTINGS["BTCURSEOFMENDING"])                then SW_SETTINGS["BTCURSEOFMENDING"] = 1 end
    if (not SW_SETTINGS["BTCURSEOFMENDING_SYSTEM"])         then SW_SETTINGS["BTCURSEOFMENDING_SYSTEM"] = 0 end
    if (not SW_SETTINGS["BTCURSEOFMENDING_SELF"])           then SW_SETTINGS["BTCURSEOFMENDING_SELF"] = 0 end
    if (not SW_SETTINGS["BTCURSEOFMENDING_YELL"])           then SW_SETTINGS["BTCURSEOFMENDING_YELL"] = 0 end
    if (not SW_SETTINGS["BTCURSEOFMENDING_PARTY"])          then SW_SETTINGS["BTCURSEOFMENDING_PARTY"] = 0 end
    if (not SW_SETTINGS["BTCURSEOFMENDING_RAID"])           then SW_SETTINGS["BTCURSEOFMENDING_RAID"] = 1 end
    if (not SW_SETTINGS["BTCURSEOFMENDING_RAIDWARNING"])    then SW_SETTINGS["BTCURSEOFMENDING_RAIDWARNING"] = 1 end
    if (not SW_SETTINGS["BTCURSEOFMENDING_MARKS"])          then SW_SETTINGS["BTCURSEOFMENDING_MARKS"] = 1 end

    -- module 07 (btchaoticcharge)
    if (not SW_SETTINGS["BTCHAOTICCHARGE"])                then SW_SETTINGS["BTCHAOTICCHARGE"] = 1 end
    if (not SW_SETTINGS["BTCHAOTICCHARGE_SYSTEM"])         then SW_SETTINGS["BTCHAOTICCHARGE_SYSTEM"] = 0 end
    if (not SW_SETTINGS["BTCHAOTICCHARGE_SELF"])           then SW_SETTINGS["BTCHAOTICCHARGE_SELF"] = 0 end
    if (not SW_SETTINGS["BTCHAOTICCHARGE_YELL"])           then SW_SETTINGS["BTCHAOTICCHARGE_YELL"] = 0 end
    if (not SW_SETTINGS["BTCHAOTICCHARGE_PARTY"])          then SW_SETTINGS["BTCHAOTICCHARGE_PARTY"] = 0 end
    if (not SW_SETTINGS["BTCHAOTICCHARGE_RAID"])           then SW_SETTINGS["BTCHAOTICCHARGE_RAID"] = 1 end
    if (not SW_SETTINGS["BTCHAOTICCHARGE_RAIDWARNING"])    then SW_SETTINGS["BTCHAOTICCHARGE_RAIDWARNING"] = 1 end
    if (not SW_SETTINGS["BTCHAOTICCHARGE_MARKS"])          then SW_SETTINGS["BTCHAOTICCHARGE_MARKS"] = 1 end

    -- module 08 (soulshatter)
    if (not SW_SETTINGS["SOULSHATTER"])                then SW_SETTINGS["SOULSHATTER"] = 1 end
    if (not SW_SETTINGS["SOULSHATTER_SYSTEM"])         then SW_SETTINGS["SOULSHATTER_SYSTEM"] = 0 end
    if (not SW_SETTINGS["SOULSHATTER_SELF"])           then SW_SETTINGS["SOULSHATTER_SELF"] = 0 end
    if (not SW_SETTINGS["SOULSHATTER_YELL"])           then SW_SETTINGS["SOULSHATTER_YELL"] = 0 end
    if (not SW_SETTINGS["SOULSHATTER_PARTY"])          then SW_SETTINGS["SOULSHATTER_PARTY"] = 0 end
    if (not SW_SETTINGS["SOULSHATTER_RAID"])           then SW_SETTINGS["SOULSHATTER_RAID"] = 1 end
    if (not SW_SETTINGS["SOULSHATTER_RAIDWARNING"])    then SW_SETTINGS["SOULSHATTER_RAIDWARNING"] = 1 end
    if (not SW_SETTINGS["SOULSHATTER_MARKS"])          then SW_SETTINGS["SOULSHATTER_MARKS"] = 1 end

    -- module 09 (createsoulwell)
    if (not SW_SETTINGS["SOULWELL"])                then SW_SETTINGS["SOULWELL"] = 1 end
    if (not SW_SETTINGS["SOULWELL_SYSTEM"])         then SW_SETTINGS["SOULWELL_SYSTEM"] = 0 end
    if (not SW_SETTINGS["SOULWELL_SELF"])           then SW_SETTINGS["SOULWELL_SELF"] = 1 end
    if (not SW_SETTINGS["SOULWELL_YELL"])           then SW_SETTINGS["SOULWELL_YELL"] = 0 end
    if (not SW_SETTINGS["SOULWELL_PARTY"])          then SW_SETTINGS["SOULWELL_PARTY"] = 0 end
    if (not SW_SETTINGS["SOULWELL_RAID"])           then SW_SETTINGS["SOULWELL_RAID"] = 1 end
    if (not SW_SETTINGS["SOULWELL_RAIDWARNING"])    then SW_SETTINGS["SOULWELL_RAIDWARNING"] = 1 end

    -- module 10 (ritualofsummoning)
    if (not SW_SETTINGS["SUMMONING"])                then SW_SETTINGS["SUMMONING"] = 1 end
    if (not SW_SETTINGS["SUMMONING_SYSTEM"])         then SW_SETTINGS["SUMMONING_SYSTEM"] = 0 end
    if (not SW_SETTINGS["SUMMONING_SELF"])           then SW_SETTINGS["SUMMONING_SELF"] = 1 end
    if (not SW_SETTINGS["SUMMONING_YELL"])           then SW_SETTINGS["SUMMONING_YELL"] = 0 end
    if (not SW_SETTINGS["SUMMONING_PARTY"])          then SW_SETTINGS["SUMMONING_PARTY"] = 0 end
    if (not SW_SETTINGS["SUMMONING_RAID"])           then SW_SETTINGS["SUMMONING_RAID"] = 1 end
    if (not SW_SETTINGS["SUMMONING_RAIDWARNING"])    then SW_SETTINGS["SUMMONING_RAIDWARNING"] = 1 end

    -- module 11 (conjurerefreshmenttable)
    if (not SW_SETTINGS["TABLE"])                then SW_SETTINGS["TABLE"] = 1 end
    if (not SW_SETTINGS["TABLE_SYSTEM"])         then SW_SETTINGS["TABLE_SYSTEM"] = 0 end
    if (not SW_SETTINGS["TABLE_SELF"])           then SW_SETTINGS["TABLE_SELF"] = 1 end
    if (not SW_SETTINGS["TABLE_YELL"])           then SW_SETTINGS["TABLE_YELL"] = 0 end
    if (not SW_SETTINGS["TABLE_PARTY"])          then SW_SETTINGS["TABLE_PARTY"] = 0 end
    if (not SW_SETTINGS["TABLE_RAID"])           then SW_SETTINGS["TABLE_RAID"] = 1 end
    if (not SW_SETTINGS["TABLE_RAIDWARNING"])    then SW_SETTINGS["TABLE_RAIDWARNING"] = 1 end

    --if(SW_SETTINGS["GENERAL_ENABLE"] == 1) then
    --    DEFAULT_CHAT_FRAME:AddMessage("call SW_RegisterEvents");
    --    SW_RegisterEvents()
    --end
end

function SW_IsInRaid()
    for i = 1, 40 do
        name, rank, subgroup = GetRaidRosterInfo(i);
        if (name ~=  nil) then
            -- GetRaidRosterInfo will return nil if not in a raid
            return true;
        end
    end

    return false
end

function SW_GetRaidTarget(strSummonerName)

    for i = 1, 40 do
        name, rank, subgroup = GetRaidRosterInfo(i);
        if (name ==  strSummonerName) then
            return ("raid" .. i) 

        end
    end

end

function SW_IsInGroup()
    memberCount = 0

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

function SW_IsInInstance()
    inInstance, instanceType = IsInInstance()
    if(inInstance) then
        return true
    else
        return false
    end
end