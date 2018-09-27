function SDH_OnLoad()
    -- listen to whispers, those might mean players should be switched
    this:RegisterEvent('CHAT_MSG_WHISPER');

    -- variables loaded, maybe they need to be defaulted
    this:RegisterEvent('VARIABLES_LOADED');

    -- check for ready check to answer ready
    this:RegisterEvent('READY_CHECK');

    -- register Loot related messages
    this:RegisterEvent('CHAT_MSG_LOOT');
    this:RegisterEvent('CHAT_MSG_ADDON');
    
    -- variable containing versions
    local_version = 5;
    playerVersions = {};
    max_wait = 10;
    cur_wait = 0;
    checking = false;
    mode = "";
    
    -- /sdh slash command routing
    SLASH_SDH1 = "/sdh";
    SlashCmdList["SDH"] = function (msg)
    Router_SDH(msg);
    end
end

function MyAddon_OnUpdate(self, elapsed)
    
    if (checking) then
        cur_wait = cur_wait + elapsed;
        
        if (cur_wait >= max_wait) then
            cur_wait = 0;
            checking = false;
            
            max_version = getPlayerInfoMaxVersion();
            strOffline, strNoAddon, strOldAddon = showPlayerInfo(max_version);
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SDH: Latest found version is: " ..max_version.."|r");
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SDH: Offline Players: " ..strOffline.."|r");
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SDH: No Addon       : " ..strNoAddon.."|r");
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SDH: Old Addon      : " ..strOldAddon.."|r");
            
            if(mode == "vcr") then
                if(strNoAddon ~= "-") then
                    SendChatMessage("No Addon : " ..strNoAddon, "RAID_WARNING");
                end
                
                if(strOldAddon ~= "-") then
                    SendChatMessage("Old Addon: " ..strOldAddon, "RAID_WARNING");
                end
            end
            
        end
    end
end

-- get user id, used for switching with setraidsubgroup
function fillPlayers()
   for i = 1, 40 do
        name = GetRaidRosterInfo(i);

        if (name ~= nil) then
            playerVersions[name] = 0;
            
            if(not UnitIsConnected(name)) then
                playerVersions[name] = -1;
            end
            
            if(GetUnitName("player") == name) then
                playerVersions[name] = local_version;
            end
        end

    end
end

function showPlayerInfo(max_version)
    strOffline = "-";
    strNoAddon = "-";
    strOldAddon = "-";


    for k, v in pairs(playerVersions) do
        if (v == -1) then
            if (strOffline == "-") then
                strOffline = k;
            else
                strOffline = strOffline .. ", " .. k
            end
        elseif (v == 0) then
            if (strNoAddon == "-") then
                strNoAddon = k;
            else
                strNoAddon = strNoAddon .. ", " .. k
            end
            
            if(mode == "vcw") then
                SendChatMessage("Hallo " ..k.. "! Leider hast du nicht SpikesDordonHelper (Addon) installiert, bitte hole dies nach.", "WHISPER", nil, k)
            end
        elseif (v < max_version) then
            if (strOldAddon == "-") then
                strOldAddon = k;
            else
                strOldAddon = strOldAddon .. ", " .. k
            end
            
            if(mode == "vcw") then
                SendChatMessage("Hallo " ..k.. "! Deine Version des SpikesDordonHelper (Addon) ist veraltet (hast: " ..v.. " gibt: " ..max_version.. "), bitte aktualisiere diese.", "WHISPER", nil, k)
            end
        end
    end
    
    return strOffline, strNoAddon, strOldAddon;
end

function getPlayerInfoMaxVersion()
    max_version = -1;

    for k, v in pairs(playerVersions) do
        if(v > max_version) then
            max_version = tonumber(v);
        end
    end
    
    return max_version;
end

-- function handles slash commands
function Router_SDH(msg)

    
    -- is this a two message command? e.g. auth player
    nBeginn, nEnde = string.find(msg, " ");
    
    -- yes, so save both strings
    if(nBeginn ~= nil and nEnde ~= nil)then
        tmp1 = string.sub(msg,1,nBeginn-1);
        tmp2 = string.sub(msg,nEnde+1,string.len(msg));
    
    -- nope, so thats it
    else
        tmp1 = msg;
    end
    
    if (tmp1 == "vcw" or tmp1 == "vcq" or tmp1 == "vcr") then
        if(IsRaidLeader() or IsRaidOfficer())then
            mode = tmp1;
            playerVersions = {}
        
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SDH: Initializing version check, please wait...|r");
            fillPlayers();
            SendAddonMessage("SDHGV", "VERSION", "RAID");
            checking = true;
        else
           DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SDH: Missing rights, either leader or assistant|r"); 
        end
    else
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131---------Commands for SpikeDordonHelper-----------|r");
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131/sdh vcq|r -> reports version check to you|r");
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131/sdh vcr|r -> reports version check to you and raid|r");
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131/sdh vcw|r -> reports version check to you and whispers players|r");
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131Help needed? Feel free to ask Spikeone @ B2B|r");
    end
    
end
    
-- handle registered events
function SDH_OnEvent(self, event, ...)

    if (event == 'CHAT_MSG_LOOT') then
     
        -- nur wenn man es selbst ist
        if (GetLocale() == "deDE") then
            if (string.find(arg1, "Ihr")) then
                SendAddonMessage("SDH", UnitName("player") .."|".. arg1, "RAID");
            end
        else
            if (string.find(arg1, "You")) then
                SendAddonMessage("SDH", UnitName("player") .."|".. arg1, "RAID");
            end
        end
    end
    
    if (event == 'CHAT_MSG_ADDON' and arg1 == 'SDHGV') then
        SendAddonMessage("SDHSV", UnitName("player") .."|".. local_version, "RAID");
    end
    
    if (event == 'CHAT_MSG_ADDON' and arg1 == 'SDHSV') then
        
        nBeginn, nEnde = string.find(arg2, "|");
        -- yes, so save both strings
        if(nBeginn ~= nil and nEnde ~= nil)then
            strPlayer = string.sub(arg2,1,nBeginn-1);
            strVersion = string.sub(arg2,nEnde+1,string.len(arg2));
            
            playerVersions[strPlayer] = tonumber(strVersion);
        end
 
    end

end