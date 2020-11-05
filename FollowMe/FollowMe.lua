--Main Frame
local FollowMeFrame = CreateFrame("Frame")


--Slash command: /fme
--Opens config panel
SLASH_FOLLOWME1 = "/fme"
SlashCmdList["FOLLOWME"] = function()

end


local function handleChatMsg(msg, strPlayer)

	-- Thanks blizzard for adding the realname here...
	-- strPlayer = player:match("^(.+)-(.+)$")
	
	if(string.upper(msg) == 'FME' and strPlayer ~= UnitName("player")) then
		FollowUnit(strPlayer);
        SendChatMessage(".mount", "SAY", nil, nil)
	end
end

--Handle events
local function EventHandler(self, event, arg1, arg2, ...)

	if(event == 'CHAT_MSG_PARTY' or event == 'CHAT_MSG_PARTY_LEADER') then
		handleChatMsg(arg1, arg2);
	elseif(event == 'CHAT_MSG_RAID' or event == 'CHAT_MSG_RAID_LEADER') then
		handleChatMsg(arg1, arg2);
	elseif(event == 'CHAT_MSG_SAY') then
		handleChatMsg(arg1, arg2);
	end
end 

local function LoginEvent(self, event, ...)

	FollowMeFrame:UnregisterEvent("PLAYER_LOGIN")
	
	FollowMeFrame:SetScript("OnEvent", EventHandler)
	FollowMeFrame:RegisterEvent("CHAT_MSG_PARTY")	
	FollowMeFrame:RegisterEvent("CHAT_MSG_PARTY_LEADER")
	FollowMeFrame:RegisterEvent("CHAT_MSG_RAID")
	FollowMeFrame:RegisterEvent("CHAT_MSG_RAID_LEADER")
	--FollowMeFrame:RegisterEvent("CHAT_MSG_SAY")

end

FollowMeFrame:SetScript("OnEvent", LoginEvent)
FollowMeFrame:RegisterEvent("PLAYER_LOGIN")

--local orig_ChatFrame_OnEvent = ChatFrame_OnEvent;
--function ChatFrame_OnEvent(event)
--    if(strsub(event,1,9)=="CHAT_MSG_" and type(arg2)=="string") then
--        DEFAULT_CHAT_FRAME:AddMessage("Event: " ..event)
--        
--        --if(event=="CHAT_MSG_WHISPER_INFORM") then
--        --    arg1=arg1.."  (NOTE: You are ignoring this player!)";
--        --else
--        --    return;
--        --end
--    end
--    return orig_ChatFrame_OnEvent(event);
--end