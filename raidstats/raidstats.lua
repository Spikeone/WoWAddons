function RRS_OnLoad()
    this:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
    this:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
    this:RegisterEvent("PLAYER_REGEN_ENABLED")
    this:RegisterEvent("PLAYER_REGEN_DISABLED")

    -- general raidstats
    raidstats_raid ={}
    raidstats_raid["PLAYER_REGEN_DISABLED"] = 0
    raidstats_raid["TIME_INCOMBAT"] = 0
    raidstats_raid["TIME_OUTCOMBAT"] = 0

    DEFAULT_CHAT_FRAME:AddMessage("RandomRaidStats loaded!");
end

isInfight = false;
datLastOutfight = GetTime()
datLastInfight = nil

-- in s
TIMER_ANNOUNCE_INFO = 60

time_lastAnnounce = 0

function RRS_OnUpdate(self, elapsed)
    --DEFAULT_CHAT_FRAME:AddMessage("elapsed: " ..elapsed);

    if(isInfight) then
        raidstats_raid["TIME_INCOMBAT"] = raidstats_raid["TIME_INCOMBAT"] + elapsed
    else
        raidstats_raid["TIME_OUTCOMBAT"] = raidstats_raid["TIME_OUTCOMBAT"] + elapsed
    end

    if(time_lastAnnounce + elapsed > TIMER_ANNOUNCE_INFO) then
        time_lastAnnounce = 0
        announceInfo(math.random(5))
    else
        time_lastAnnounce = time_lastAnnounce + elapsed
        -- DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[RRS]|r Time since last announce: " ..time_lastAnnounce);
    end
end

function announceInfo(infoID)
    if(infoID == 1) then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[RRS]|r Combats started: " ..raidstats_raid["PLAYER_REGEN_DISABLED"]);
    elseif(infoID == 2) then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[RRS]|r Overall time in combat: " ..(math.floor(raidstats_raid["TIME_INCOMBAT"] + 0.5)).. "s");
    elseif(infoID == 3) then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[RRS]|r Overall time out of combat: " ..(math.floor(raidstats_raid["TIME_OUTCOMBAT"] + 0.5)).. "s");
    elseif(infoID == 4) then
        val_inout = raidstats_raid["TIME_INCOMBAT"] + raidstats_raid["TIME_OUTCOMBAT"]
        perc_in = raidstats_raid["TIME_INCOMBAT"] / val_inout * 100
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[RRS]|r This raid was " ..math.floor(perc_in + 0.5).. "% of it's time infight.");
    elseif(infoID == 5) then
        val_inout = raidstats_raid["TIME_INCOMBAT"] + raidstats_raid["TIME_OUTCOMBAT"]
        perc_out = raidstats_raid["TIME_OUTCOMBAT"] / val_inout * 100
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[RRS]|r This raid was " ..math.floor(perc_out + 0.5).. "% of it's time outfight.");
    else
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[RRS]|r Invalid infoID: " ..infoID);
    end
end

function RRS_OnEvent(self, event, ...)

    --if (event=="COMBAT_LOG_EVENT_UNFILTERED") then
    --    DEFAULT_CHAT_FRAME:AddMessage("COMBAT_LOG_EVENT_UNFILTERED")
    --end


    --DEFAULT_CHAT_FRAME:AddMessage("Not IF")

    --if (event=="COMBAT_LOG_EVENT_UNFILTERED") then
    --
    --    if (arg2=="SPELL_SUMMON") then
    --        -- Tischlein deck dich
    --        if (arg9==43987) then
    --            if(IsRaidLeader() or IsRaidOfficer())then
    --                SendChatMessage("CLICK: " ..arg4.. " wants to conjure a refreshment table!", "RAID_WARNING");
    --            end
    --        end
    --
    --        -- Beschwören
    --        if (arg9==46546) then
    --            if(IsRaidLeader() or IsRaidOfficer())then
    --                SendChatMessage("CLICK: " ..arg4.. " wants to summon a player!", "RAID_WARNING");
    --            end
    --        end
    --        
    --        -- Gesu
    --        if (arg9==29893) then
    --            if(IsRaidLeader() or IsRaidOfficer())then
    --                SendChatMessage("CLICK: " ..arg4.. " wants to create a Soulwell!", "RAID_WARNING");
    --            end
    --        end                                                        
    --    end
    --
    --    -- Seelebrechen
    --    if (arg2=="SPELL_MISSED") then
    --        if (arg9==32835) then
    --            local playerName = UnitName("player");
    --            if (arg4==playerName) then
    --                DEFAULT_CHAT_FRAME:AddMessage("YOU FAILED using "..arg10.." at "..arg7.." ("..arg12..")");
    --            else
    --                SendChatMessage("Spell missed: "..arg4.." failed using "..arg10.." at "..arg7.." ("..arg12..")", "RAID");
    --            end
    --        end
    --    end
    --    
    --    -- Haescher Aufladungen (erste)
    --    if (arg2=="SPELL_AURA_APPLIED") then
    --        if(arg9 == 41033) then
    --            if(IsRaidLeader() or IsRaidOfficer())then
    --                SendChatMessage("Chaotic Charge (1)!", "RAID_WARNING");
    --            else
    --                SendChatMessage("Chaotic Charge (1)!", "RAID");
    --            end
    --        end
    --    end
    --    
    --    -- Haescher Aufladungen (n-te)
    --    if (arg2=="SPELL_AURA_APPLIED_DOSE") then
    --        if(arg9 == 41033) then
    --            if(IsRaidLeader() or IsRaidOfficer())then
    --                SendChatMessage("Chaotic Charge ("..arg13..")!", "RAID_WARNING");
    --            else
    --                SendChatMessage("Chaotic Charge ("..arg13..")!", "RAID");
    --            end
    --        end
    --    end
    --    
    --    -- Fluch der Heilung
    --    if (arg2=="SPELL_AURA_APPLIED") then
    --        if(arg9 == 39647) then
    --            if(IsRaidLeader() or IsRaidOfficer())then
    --                SendChatMessage("Curse of Mending: "..arg7.."!", "RAID_WARNING");
    --            else
    --                SendChatMessage("Curse of Mending: "..arg7.."!", "RAID");
    --            end
    --        end
    --    end
    --    
    --    -- Gottesschild
    --    if (arg2=="SPELL_AURA_APPLIED") then
    --        if(arg9 == 41367) then
    --            if(IsRaidLeader() or IsRaidOfficer())then
    --                SendChatMessage("Massdispell (Divine Shield)!", "RAID_WARNING");
    --            else
    --                SendChatMessage("Massdispell (Divine Shield)!", "RAID");
    --            end
    --        end
    --    end
    --    
    --    -- Arkane Aufladung
    --    if (arg2 == "SPELL_CAST_START") then
    --        if(arg9 == 41360) then
    --        
    --            -- Zauber wird nicht auf Ziel gewirkt, Target von Spieler und Mob holen
    --            playertarget = GetUnitName("playertarget")
    --            playertargettarget = GetUnitName("playertargettarget")
    --            addInfo = ""
    --            
    --            -- Irgendwas war ungueltig, dann nichts machen
    --            if(playertarget ~= nil and playertarget~= "" and playertargettarget ~= nil and playertargettarget~= "") then
    --                -- Spielertarget war castender mob?
    --                if(playertarget == arg4) then
    --                    -- aktuelles target vom mob auslesen und dazu schreiben
    --                    addInfo = "("..playertargettarget..")"
    --                end
    --            end
    --        
    --            if(IsRaidLeader() or IsRaidOfficer())then
    --                SendChatMessage("Arcane Charge "..addInfo.."!", "RAID_WARNING");
    --            else
    --                SendChatMessage("Arcane Charge "..addInfo.."!", "RAID");
    --            end
    --        end
    --    end
    --    
    --    -- Banish
    --    if (arg2 == "SPELL_AURA_APPLIED") then
    --        if(arg9 == 39674) then
    --            if(IsRaidLeader() or IsRaidOfficer())then
    --                SendChatMessage("Massdispell! "..arg7.." banished!", "RAID_WARNING");
    --            else
    --                SendChatMessage("Massdispell! "..arg7.." banished!", "RAID");
    --            end
    --        end
    --    end
    --    
    --    -- falling
    --    if(arg2 == "ENVIRONMENTAL_DAMAGE") then
    --        if(arg9 == "FALLING") then
    --            if( UnitHealth(arg7) <= arg10) then
    --                _, class = UnitClass(arg7)
    --                SendChatMessage("Tear fail ("..arg7.. ") " ..class.. " Soul charge!", "RAID");
    --            end
    --        end
    --    end
    --end


    --DEFAULT_CHAT_FRAME:AddMessage("Not IF")


    -- infight check
    if (event == "PLAYER_REGEN_ENABLED") then
        isInfight = false;
        --datLastOutfight = GetTime()

        -- leaving combat
        --DEFAULT_CHAT_FRAME:AddMessage("Infight since: " ..(GetTime() - datLastInfight))

        --raidstats_raid["TIME_INCOMBAT"] = raidstats_raid["TIME_INCOMBAT"] + (GetTime() - datLastInfight)
    elseif (event == "PLAYER_REGEN_DISABLED") then


        --datLastInfight = GetTime()

        -- entering combat
        --DEFAULT_CHAT_FRAME:AddMessage("Outfight since: " ..(GetTime() - datLastOutfight))

        --raidstats_raid["TIME_OUTCOMBAT"] = raidstats_raid["TIME_OUTCOMBAT"] + (GetTime() - datLastOutfight)

        isInfight = true;
        raidstats_raid["PLAYER_REGEN_DISABLED"] = raidstats_raid["PLAYER_REGEN_DISABLED"] + 1
        -- DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[RRS]|r Combats started: " ..raidstats_raid["PLAYER_REGEN_DISABLED"]);
        --SendChatMessage("[RRS] Combats started: " ..raidstats_raid["PLAYER_REGEN_DISABLED"], "SAY");
    end

    ---- Kette check
    --if (event == "UPDATE_MOUSEOVER_UNIT") then
    --    classification = UnitClassification("mouseover");
    --    name = GetUnitName("mouseover")
    --    if (classification == "worldboss") then
    --        slotId, textureName = GetInventorySlotInfo("NECKSLOT")
    --
    --        if (slotId ~= nil) then
    --            neckID = tonumber((GetInventoryItemLink("player", slotId) or ""):match(".-item:(%d+):.*"))
    --        end
    --
    --        if (neckID == 32757 and not isInfight) then
    --            -- DEFAULT_CHAT_FRAME:AddMessage("Zieh die resi Kette aus!");
    --            DEFAULT_CHAT_FRAME:AddMessage("|cFF9b060dZieh die Schattenresikette aus!|r");
    --        end 
    --    end
    --end
end