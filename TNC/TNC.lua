function TNC_OnLoad()
    this:RegisterEvent("PLAYER_REGEN_ENABLED");
    this:RegisterEvent("PLAYER_REGEN_DISABLED");
    
    --SLASH_SPELLWATCH1 = "/sw";
    SLASH_TNC1 = "/tnc";
    SlashCmdList["TNC"] = function(msg)
        TNC_SlashCommandHandler(msg);
    end

    DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r Trinity Necklace Check loaded!");

    strFailPlayers = ""
    strUnknownPlayers = ""

end

local isInfight = false;

function TNC_SlashCommandHandler(msg)
    command = string.lower( msg );


    iParamCount = 0
    arrParams = {}

    if(command) then
        for i in string.gmatch(command, "%S+") do
            arrParams[iParamCount] = i
            iParamCount = iParamCount + 1
        end
    end

    if(iParamCount == 0) then
        TNC_HandleCommands("help")
    else
        TNC_HandleCommands(arrParams[0], arrParams, iParamCount)
    end
end

function TNC_HandleCommands(strCommand, arrParams, iParamCount)
    if(strCommand == "help") then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r '/tnc group <1-8>' e.g. '/tnc group 3'")
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r '/tnc raid'")
    elseif(strCommand == "group") then
        TNC_HandleGroupCommand(arrParams, iParamCount)
    elseif(strCommand == "raid") then
        TNC_CheckRaid()
    else
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r Unknown command '".. strCommand .."'")
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r type '/tnc help' for help")
    end
end

function TNC_HandleGroupCommand(arrParams, iParamCount)
    -- get player group
    if(iParamCount == 1) then
        iSubgroup = TNC_GetPlayerSubgroup()
    else
        strFailPlayers = ""
        strUnknownPlayers = ""
        strGroups = ""

        for i = 1, (iParamCount - 1) do
            if(not arrParams[i]:match("^(%d+)$")) then
                DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r Please provide a group number ranging from 1 to 8")
                return
            elseif(tonumber(arrParams[i]) < 1 or tonumber(arrParams[i]) > 8) then
                DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r Please provide a group number ranging from 1 to 8")
                return
            else
                iSubgroup = tonumber(arrParams[i])
            end

            if(strGroups ~= "") then
                strGroups = strGroups .. ", " ..iSubgroup
            else
                strGroups = iSubgroup
            end

            TNC_CheckRaidGroup(iSubgroup)
        end

        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r Checking group(s) " ..strGroups)
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r |cFFFF0000FAIL:|r " ..strFailPlayers)
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r |cFFFFBF00UNKNOWN:|r " ..strUnknownPlayers)
    end
end

function TNC_OnEvent(self, event, ...)

    -- infight check
    if (event == "PLAYER_REGEN_ENABLED") then
        isInfight = false;
    elseif (event == "PLAYER_REGEN_DISABLED") then
        isInfight = true;
    end
end

function TNC_OnVariablesLoaded()

end

function TNC_GetPlayerSubgroup()
    strPlayerName = UnitName("player")

    for i = 1, 40 do
        local name, rank, subgroup = GetRaidRosterInfo(i);

        if(name == strPlayerName) then
            return subgroup
        end
    end
end

function TNC_CheckRaidGroup(iSubgroup)
    for i = 1, 40 do
        local name, rank, subgroup = GetRaidRosterInfo(i);

        if(name ~= nil and subgroup == iSubgroup) then
            TNC_CheckPlayer(i, name, subgroup)
        end
    end
end

function TNC_CheckRaid()
    DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r Checking raid")
    strFailPlayers = ""
    strUnknownPlayers = ""

    for i = 1, 40 do
        local name, rank, subgroup = GetRaidRosterInfo(i);

        if(name ~= nil) then
            TNC_CheckPlayer(i, name, subgroup)
        end
    end

    DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r |cFFFF0000FAIL|r: " ..strFailPlayers)
    DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131[TNC]|r |cFFFFBF00UNKNOWN|r: " ..strUnknownPlayers)
end

function TNC_CheckPlayer(iPlayerIndex, strPlayerName, iPlayerGroup)
    
    strPlayerUnitID = ("raid" .. iPlayerIndex)
    NotifyInspect(strPlayerUnitID)

    item = GetInventoryItemLink(strPlayerUnitID, 2)
    if (item) then
        itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture = GetItemInfo(item)
        local r,g,b,itemID,B,C,D,E,F,G,H,I = itemLink:match("^|cff(%x%x)(%x%x)(%x%x)|Hitem:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(%-?%d+):(%d+)|h%[(.+)%]|h|r$")

        if (itemID == "32757") then
            if(strFailPlayers ~= "") then
                strFailPlayers = strFailPlayers .. ", " ..strPlayerName
            else
                strFailPlayers = strPlayerName
            end

            SendChatMessage("Du hast die Porthalskette noch an!", "WHISPER", nil, strPlayerName)
        end
    else
        if(strUnknownPlayers ~= "") then
            strUnknownPlayers = strUnknownPlayers .. ", " ..strPlayerName
        else
            strUnknownPlayers = strPlayerName
        end
    end
end

function TNC_IsInRaid()
    for i = 1, 40 do
        local name, rank, subgroup = GetRaidRosterInfo(i);
        if (name ~=  nil) then
            -- GetRaidRosterInfo will return nil if not in a raid
            return true;
        end
    end

    return false
end

function TNC_IsInGroup()
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

function TNC_IsInInstance()
    local inInstance, instanceType = IsInInstance()
    if(inInstance) then
        return true
    else
        return false
    end
end