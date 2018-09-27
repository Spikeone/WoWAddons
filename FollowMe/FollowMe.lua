function SRS_OnLoad()
    -- listen to whispers, those might mean players should be switched
    this:RegisterEvent('CHAT_MSG_RAID');
	this:RegisterEvent('CHAT_MSG_PARTY');

    -- variables loaded, maybe they need to be defaulted
    this:RegisterEvent('VARIABLES_LOADED');

    -- check for ready check to answer ready
    this:RegisterEvent('READY_CHECK');

    -- /srs slash command routing
    -- SLASH_SRS1 = "/srs";
    -- SlashCmdList["SRS"] = function (msg)
    -- Router(msg);
    -- end
end

-- function handles slash commands
-- function Router(msg)
-- 
--     -- is this a two message command? e.g. auth player
--     nBeginn, nEnde = string.find(msg, " ");
-- 
--     -- yes, so save both strings
--     if(nBeginn ~= nil and nEnde ~= nil)then
--         tmp1 = string.sub(msg,1,nBeginn-1);
--         tmp2 = string.sub(msg,nEnde+1,string.len(msg));
-- 
--     -- nope, so thats it
--     else
--         tmp1 = msg;
--     end
--     
--     -- command was info? display info (with some color)
--     if(tmp1 == "info")then
--         DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131---------State of SimpleRaidSwap-----------|r");
--         if(srs_vars.srs_state)then
--             DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r State is |cFFC0C131[|r|cFF00FF00ON|r|cFFC0C131]|r");
--         else
--             DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r State is |cFFC0C131[|r|cFFFF0000OFF|r|cFFC0C131]|r");
--         end
--         if(srs_vars.srs_auth)then
--             DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Auth use is |cFFC0C131[|r|cFF00FF00ON|r|cFFC0C131]|r");
--         else
--             DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Auth use is |cFFC0C131[|r|cFFFF0000OFF|r|cFFC0C131]|r");
--         end
--         DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Authed player is: |cFF00FF00" ..srs_vars.srs_authplayer.. "|r");
-- 
--     -- if command is auth and a parameter is given, a player is authed
--     elseif(tmp1 == "auth" and nBeginn ~= nil and nEnde ~= nil) then
--         srs_vars.srs_authplayer = tmp2;
--         DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Player '|cFF00FF00" ..tmp2.. "|r' has been authorised to swap!");
-- 
--     -- unauth, good for nothing as password support has been striped
--     elseif(tmp1 == "unauth") then
--         DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Player '|cFFFF0000" ..srs_vars.srs_authplayer.. "|r' has been unauthorised!");
--         srs_vars.srs_authplayer = "";
-- 
--     -- command is auth, just toggle auth mode
--     elseif(tmp1 == "auth") then
--         srs_vars.srs_auth = not srs_vars.srs_auth;
--         if(srs_vars.srs_auth)then
--             DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Auth use toggled to |cFFC0C131[|r|cFF00FF00ON|r|cFFC0C131]|r");
--         else
--             DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Auth use toggled to |cFFC0C131[|r|cFFFF0000OFF|r|cFFC0C131]|r");
--         end
-- 
--     -- command is state, toggle state
--     elseif(tmp1 == "state") then
--         srs_vars.srs_state = not srs_vars.srs_state;
--         if(srs_vars.srs_state)then
--             DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r State toggled to |cFFC0C131[|r|cFF00FF00ON|r|cFFC0C131]|r");
--         else
--             DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r State toggled to |cFFC0C131[|r|cFFFF0000OFF|r|cFFC0C131]|r");
--         end
-- 
--     -- /srs help or /srs displays help
--     elseif(tmp1 == "help" or tmp1 == "" or tmp1 == nil) then
--         DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131---------Commands for SimpleRaidSwap-----------|r");
--         DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131/srs info|r -> shows current config|r");
--         DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131/srs state|r -> toggle listening to whispers|r");
--         DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131/srs auth|r -> toggle auth mode|r");
--         DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131/srs auth 'Player'|r -> set authed player|r");
--         DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131--------- Makro example -----------|r");
--         DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r /w Spikeone Spiketwo-Spikethree|r");
--         DEFAULT_CHAT_FRAME:AddMessage("Help needed? Feel free to ask Spikeone @ B2B");
--     else
-- 
--     -- other commands aren't known
--         DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Unbekannter Befehl '|cFFFF0000" ..tmp1.. "|r'!");
--     end
-- end
    
-- handle registered events
function SRS_OnEvent(self, event, ...)

	if(event == 'CHAT_MSG_RAID' or event == 'CHAT_MSG_PARTY') then
		handleChatMsg(arg1, arg2);
	--	DEFAULT_CHAT_FRAME:AddMessage("Event: " ..event);
	elseif(event == 'VARIABLES_LOADED') then
		DEFAULT_CHAT_FRAME:AddMessage("Addon loaded");
	else
--		DEFAULT_CHAT_FRAME:AddMessage("Event: " ..event);
	end

    -- variables have been loaded, any missing?
    -- if event == 'VARIABLES_LOADED' then
    --     -- array for variables
    --     if(not srs_vars) then                srs_vars ={}; end
    -- 
    --     -- state, default is off
    --     if(not srs_vars.srs_state) then      srs_vars.srs_state     = false; end
    -- 
    --     -- auth use, default is on
    --     if(not srs_vars.srs_auth) then       srs_vars.srs_auth      = true; end
    -- 
    --     -- authed player, default is ""
    --     if(not srs_vars.srs_authplayer) then srs_vars.srs_authplayer = ""; end
    --     DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Addon loaded!");
    -- 
    -- -- whisper, we may need to switch players
    -- -- only if state is true
    -- -- only if its not the player himself
    -- -- only if player is in a raid
    -- -- only if a raidmember whispered
    -- -- only if not a SRS: prefixed message (two players with activated addon could get an infinite whisper loop)
    -- elseif(event == 'CHAT_MSG_WHISPER' and srs_vars.srs_state and arg2 ~= UnitName("player") and GetNumRaidMembers() > 1 and UserInraid(player) and string.sub(arg1,1,4) ~= "SRS:") then
    -- 
    --     -- whisper message
    --     msgs = arg1;
    --     
    --     -- whispering player
    --     player = arg2;
    -- 
    --     -- if not authed player and auth mode is on
    --     if (player ~= srs_vars.srs_authplayer and srs_vars.srs_auth ) then
    --         SendChatMessage("SRS: You are not authorised to swap!", "WHISPER", nil, player)
    -- 
    --     -- if player is authed player or auth mode is off
    --     elseif (player == srs_vars.srs_authplayer or not srs_vars.auth) then
    --         -- where does player1 end and player2 start? (Player1-Player2)
    --         nBeginnPlayers, nEndePlayers = string.find(msgs, "-");
    -- 
    --         -- if one value is nil, no '-' was provided, so a player is missing
    --         if(nBeginnPlayers ~= nil and nEndePlayers ~= nil)then
    --             pl1 = string.sub(msgs,1,nBeginnPlayers-1);
    --             pl2 = string.sub(msgs,nEndePlayers+1,string.len(msgs));
    -- 
    --             swapPlayers(pl1, pl2, player);
    --         else
    --             SendChatMessage("SRS: Players missing!", "WHISPER", nil, player)
    --         end
    --     end
    -- 
    -- -- confirm ready checks
    -- elseif(event == 'READY_CHECK' and srs_vars.srs_state and GetNumRaidMembers() > 1) then
    --     ConfirmReadyCheck(1);
    --     DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r I confirmed a ready check!");
    -- end
end

function handleChatMsg(msg, player)
	if(string.upper(msg) == 'FME' and player ~= UnitName("player")) then
--		DEFAULT_CHAT_FRAME:AddMessage("received follow message");
		FollowUnit(player);
		-- UseContainerItem(0, 1, 1);
		-- UseInventoryItem(1);
		-- ItemLink = GetContainerItemLink(bagID, slotID)
		
	else
--		DEFAULT_CHAT_FRAME:AddMessage("MSG: " ..msg.. " Player: " ..player);
	end
end