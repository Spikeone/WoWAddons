function ULGC_OnLoad()
    this:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
    this:RegisterEvent("PLAYER_TARGET_CHANGED")
    this:RegisterEvent("PLAYER_REGEN_ENABLED");
    this:RegisterEvent("PLAYER_REGEN_DISABLED");
    this:RegisterEvent('VARIABLES_LOADED');
    
    --SLASH_SPELLWATCH1 = "/sw";
    SLASH_ULGC1 = "/ulgc";
    SlashCmdList["ULGC"] = function(msg)
        ULGC_SlashCommandHandler(msg);
    end

    DEFAULT_CHAT_FRAME:AddMessage("Uralte Legend Gearcheck loaded!");

    ULGC_USERRULES = {}
end

isInfight = false;

function ULGC_SlashCommandHandler(msg)
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
        DEFAULT_CHAT_FRAME:AddMessage("no Command")
        ULGC_HandleCommands("help")
    else
        ULGC_HandleCommands(arrParams[0], arrParams, iParamCount)
    end
end

function ULGC_HandleCommands(strCommand, arrParams, iParamCount)
    if(strCommand == "help") then
    
    elseif(strCommand == "group") then
        ULGC_HandleGroupCommand(arrParams, iParamCount)
    elseif(strCommand == "allow" or strCommand == "forbid") then
        ULGC_HandleRuleCommand(arrParams, iParamCount)
    else
        DEFAULT_CHAT_FRAME:AddMessage("[ULGC]: Unknown command '".. strCommand .."'")
        DEFAULT_CHAT_FRAME:AddMessage("[ULGC]: type '/ulgc help' for help")
    end
end

function ULGC_HandleRuleCommand(arrParams, iParamCount)
    if(iParamCount == 1) then
        DEFAULT_CHAT_FRAME:AddMessage("[ULGC]: Error - the allow command needs an itemID or link")
        return
    end

    itemID = arrParams[1]:match("^(%d+)$")
    if(itemID == nil) then
        -- its possible, that the item link has been split
        strString = arrParams[1]
        for i = 2, (iParamCount - 1) do
            strString = strString .. " " .. arrParams[i]
        end

        local r,g,b,item,B,C,D,E,F,G,H,I = strString:match("^|cff(%x%x)(%x%x)(%x%x)|hitem:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(%-?%d+):(%d+)|h%[(.+)%]|h|r$")
        if(item) then
            itemID = item:match("^(%d+)$")
        end
    end

    if(itemID == nil) then
        DEFAULT_CHAT_FRAME:AddMessage("[ULGC]: Error - allow needs an itemID or link!")
        return
    end
    itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture = GetItemInfo(itemID)
    if(arrParams[0] == "allow") then
        ULGC_USERRULES[itemID] = true
        DEFAULT_CHAT_FRAME:AddMessage("[ULGC]: Allowed item: " ..itemLink)
    else
        ULGC_USERRULES[itemID] = false
        DEFAULT_CHAT_FRAME:AddMessage("[ULGC]: Forbidden item: " ..itemLink)
    end

    
    
    --DEFAULT_CHAT_FRAME:AddMessage("Param2: " ..itemID)
end

function ULGC_HandleGroupCommand(arrParams, iParamCount)
    -- get player group
    if(iParamCount == 1) then
        iSubgroup = ULGC_GetPlayerSubgroup()
    elseif(not arrParams[1]:match("^(%d+)$")) then
        DEFAULT_CHAT_FRAME:AddMessage("[ULGC]: Please provide a group number ranging from 1 to 8")
        return
    elseif(tonumber(arrParams[1]) < 1 or tonumber(arrParams[1]) > 8) then
        DEFAULT_CHAT_FRAME:AddMessage("[ULGC]: Please provide a group number ranging from 1 to 8")
        return
    else
        iSubgroup = tonumber(arrParams[1])
    end

    ULGC_CheckRaidGroup(iSubgroup)
end

function ULGC_OnEvent(self, event, ...)

    if (event == 'VARIABLES_LOADED') then
        --SEM_OnVariablesLoaded();
    end

    -- infight check
    if (event == "PLAYER_REGEN_ENABLED") then
        isInfight = false;
    elseif (event == "PLAYER_REGEN_DISABLED") then
        isInfight = true;
    end
end

--function SEM_SetTargetMark(strTarget, guid)
--    local mark = SEM_GetMarkForTarget(guid)
--
--    if (mark and mark > 0) then
--        SetRaidTarget(strTarget, mark);
--    end
--end

--function SEM_GetMarkForTarget(guid)
--
--    if(SEM_MARKS_LOCAL[guid]) then
--        return SEM_MARKS_LOCAL[guid]
--    end
--
--    if(SEM_MARKS_DEFAULT[guid]) then
--        return SEM_MARKS_DEFAULT[guid]
--    end
--
--    return 0
--end

function ULGC_OnVariablesLoaded()

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
end

function ULGC_GetPlayerSubgroup()
    strPlayerName = UnitName("player")

    for i = 1, 40 do
        local name, rank, subgroup = GetRaidRosterInfo(i);

        if(name == strPlayerName) then
            return subgroup
        end
    end
end

function ULGC_CheckRaidGroup(iSubgroup)
    DEFAULT_CHAT_FRAME:AddMessage("[ULGC]: Checking group " ..iSubgroup)

    for i = 1, 40 do
        local name, rank, subgroup = GetRaidRosterInfo(i);

        if(name ~= nil and subgroup == iSubgroup) then
            ULGC_CheckPlayer(i, name, subgroup)
        end
    end
end

function ULGC_CheckRaid()
    DEFAULT_CHAT_FRAME:AddMessage("ULGC_CheckRaid")

    for i = 1, 40 do
        local name, rank, subgroup = GetRaidRosterInfo(i);

        if(name ~= nil) then
            ULGC_CheckPlayer(i, name, subgroup)
        end
    end
end

function ULGC_CheckPlayer(iPlayerIndex, strPlayerName, iPlayerGroup)
    
    iBadItems = 0
    arrBadItems = {}

    strPlayerUnitID = ("raid" .. iPlayerIndex)
    NotifyInspect(strPlayerUnitID)

    -- see http://wowwiki.wikia.com/wiki/InventorySlotId
    -- Exclude:
    -- 0 = ammo
    -- 4 = shirt
    -- 19 = tabard
    for i = 1, 18 do
        if(i ~= 4) then
            item = GetInventoryItemLink(strPlayerUnitID, i)
            if(item) then
                itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture = GetItemInfo(item)
                local r,g,b,itemID,B,C,D,E,F,G,H,I = itemLink:match("^|cff(%x%x)(%x%x)(%x%x)|Hitem:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(%-?%d+):(%d+)|h%[(.+)%]|h|r$")

                if (itemLevel > 92 and ULGC_USERRULES[itemID] ~= true or ULGC_USERRULES[itemID] == false) then
                    iBadItems = iBadItems + 1
                    arrBadItems[itemName] = itemLink
                end
            end
        end
    end

    if (iBadItems ~= 0) then
        ULGC_OutputBadPlayerItems(iBadItems, arrBadItems, strPlayerName)
    end

    --DEFAULT_CHAT_FRAME:AddMessage("ULGC_CheckPlayer: " ..strUnit)
    --
    --
    --item = GetInventoryItemLink(strUnit, 1)
    --
    --if (item) then
    --    DEFAULT_CHAT_FRAME:AddMessage("Headslot: " ..item)
    --else
    --    DEFAULT_CHAT_FRAME:AddMessage("NoItem")
    --end
end

function ULGC_OutputBadPlayerItems(iBadItems, arrBadItems, strPlayerName)
    DEFAULT_CHAT_FRAME:AddMessage("Player '" .. strPlayerName .. "' wears " ..iBadItems.. " non classic items:")
    for key,value in pairs(arrBadItems) do
        DEFAULT_CHAT_FRAME:AddMessage(value)
    end
end

function ULGC_IsInRaid()
    for i = 1, 40 do
        local name, rank, subgroup = GetRaidRosterInfo(i);
        if (name ~=  nil) then
            -- GetRaidRosterInfo will return nil if not in a raid
            return true;
        end
    end

    return false
end

function ULGC_IsInGroup()
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

function ULGC_IsInInstance()
    local inInstance, instanceType = IsInInstance()
    if(inInstance) then
        return true
    else
        return false
    end
end