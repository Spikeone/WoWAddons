--Main Frame
local B2B_Timerun = CreateFrame("Frame")

local B2BTR_OPTIONS = {}
-- disables the default CHAT_MSG_SYSTEM output
B2BTR_OPTIONS["DISABLE_MESSAGE"] = true
B2BTR_OPTIONS["DIFF_MIN"] = 10
B2BTR_OPTIONS["ANNOUNCE"] = true


-- internal, don't edit!
B2BTR_OPTIONS["LAST_INSTANCE"] = 0
B2BTR_OPTIONS["LAST_TIME"] = 0
B2BTR_OPTIONS["LAST_BEST"] = 0

----Slash command: /fme
----Opens config panel
SLASH_B2B_TIMERUN = "/B2BTR"
SlashCmdList["B2B_TIMERUN"] = function()

end

local function B2BTR_LPad(strValue, strPadChar, iPadLength)

    if (strValue == nil) then
        strValue = ""
    end
    
    if(string.len(strValue) >= iPadLength) then
        return strValue;
    end
    
    local strReturnString = ""
    
    for i = 0, (iPadLength - string.len(strValue) -1) do
        strReturnString = strReturnString .. strPadChar
    end
    
    strReturnString = strReturnString .. strValue

    return tostring(strReturnString)
end

local function B2BTR_formatTime(iSeconds)
    local iHours    = math.floor(iSeconds / 60 / 60)
    
    local iMinutes  = math.floor((iSeconds - iHours * 60 * 60) / 60)
    
    local iSecs     = math.floor((iSeconds - iHours * 60 * 60 - iMinutes * 60))
    
    return (B2BTR_LPad(iHours, "0", 2).. ":" ..B2BTR_LPad(iMinutes, "0", 2).. ":" ..B2BTR_LPad(iSecs, "0", 2))
end

local function B2BTR_handleTime(strTime, iTimeType)
    -- calculate time in seconds...
    -- hours
    local iSeconds = tonumber(strsub(strTime,1,2)) * 60 * 60
    -- minutes
    iSeconds = iSeconds + tonumber(strsub(strTime,4,5)) * 60
    -- seconds
    iSeconds = iSeconds + tonumber(strsub(strTime,7,8))
    
    if(iTimeType == 1) then
        B2BTR_OPTIONS["LAST_TIME"] = iSeconds
    elseif(iTimeType == 3) then
        B2BTR_OPTIONS["LAST_INSTANCE"] = iSeconds
    elseif(iTimeType == 2) then
        B2BTR_OPTIONS["LAST_BEST"] = iSeconds
        
        local diff = B2BTR_OPTIONS["LAST_TIME"] - B2BTR_OPTIONS["LAST_BEST"]
        local strMessage = "Boss Rekord: "
        
        if(B2BTR_OPTIONS["LAST_TIME"] == 0) then
            diff = B2BTR_OPTIONS["LAST_INSTANCE"] - B2BTR_OPTIONS["LAST_BEST"]
            strMessage = "Instanz Rekord: "
        end
        
        
        
        if(diff < B2BTR_OPTIONS["DIFF_MIN"]) then
            -- determin channel
            local strChannel = "SAY"
            
            if(IsRaidOfficer() or IsRaidLeader()) then
                strChannel = "RAID_WARNING"
            elseif(UnitInRaid("player"))then
                strChannel = "RAID"
            elseif(UnitInParty("player"))then
                strChannel = "PARTY"
            end
        
        
            if(diff < 0) then
                -- new record
                diff = diff * -1
                SendChatMessage(strMessage ..B2BTR_formatTime(B2BTR_OPTIONS["LAST_TIME"]).. " (-" ..B2BTR_formatTime(diff)..")", strChannel)
            else
                -- no record
                SendChatMessage("Kein " .. strMessage ..B2BTR_formatTime(B2BTR_OPTIONS["LAST_TIME"]).. " (+" ..B2BTR_formatTime(diff)..")", strChannel)
            end
        end
        
        B2BTR_OPTIONS["LAST_TIME"] = 0
        B2BTR_OPTIONS["LAST_BEST"] = 0
        B2BTR_OPTIONS["LAST_INSTANCE"] = 0
    end
end

local function B2BTR_handleMessageIfTimerun(strMessage)
    local isTimerunMsg = false
    
    if(strsub(strMessage,1,28) == "Bosskampf abgeschlossen in: ") then
        isTimerunMsg = true
        strTime = strsub(strMessage,29,36)
        B2BTR_handleTime(strTime, 1)
    elseif(strsub(strMessage,1,19) == "Beste Server Zeit: ") then
        isTimerunMsg = true
        strTime = strsub(strMessage,20,27)
        B2BTR_handleTime(strTime, 2)
    elseif(strsub(strMessage,1,26) == "Instanz abgeschlossen in: ") then
        isTimerunMsg = true
        strTime = strsub(strMessage,27,34)
        B2BTR_handleTime(strTime, 3)
    end

    return isTimerunMsg
end

local orig_ChatFrame_OnEvent = ChatFrame_OnEvent;
function ChatFrame_OnEvent(event, ...)
    local isTimerunMsg = false

    -- check if it's a timerun
    if(strsub(event,1,15)=="CHAT_MSG_SYSTEM" and type(arg1)=="string") then
        isTimerunMsg = B2BTR_handleMessageIfTimerun(arg1)
    end
    
    -- hide message if disabled
    if(isTimerunMsg and B2BTR_OPTIONS["DISABLE_MESSAGE"]) then
        return
    end
    
    return orig_ChatFrame_OnEvent(event);
end


