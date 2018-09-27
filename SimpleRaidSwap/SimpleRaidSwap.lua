function SRS_OnLoad()
    -- listen to whispers, those might mean players should be switched
    this:RegisterEvent('CHAT_MSG_WHISPER');

    -- variables loaded, maybe they need to be defaulted
    this:RegisterEvent('VARIABLES_LOADED');

    -- check for ready check to answer ready
    this:RegisterEvent('READY_CHECK');

    -- /srs slash command routing
    SLASH_SRS1 = "/srs";
    SlashCmdList["SRS"] = function (msg)
    Router_SRS(msg);
    end
end

-- function handles slash commands
function Router_SRS(msg)

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
    
    -- command was info? display info (with some color)
    if(tmp1 == "info")then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131---------State of SimpleRaidSwap-----------|r");
        if(srs_vars.srs_state)then
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r State is |cFFC0C131[|r|cFF00FF00ON|r|cFFC0C131]|r");
        else
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r State is |cFFC0C131[|r|cFFFF0000OFF|r|cFFC0C131]|r");
        end
        if(srs_vars.srs_auth)then
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Auth use is |cFFC0C131[|r|cFF00FF00ON|r|cFFC0C131]|r");
        else
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Auth use is |cFFC0C131[|r|cFFFF0000OFF|r|cFFC0C131]|r");
        end
		if(srs_vars.srs_silent)then
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Silent is |cFFC0C131[|r|cFF00FF00ON|r|cFFC0C131]|r");
        else
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Silent use is |cFFC0C131[|r|cFFFF0000OFF|r|cFFC0C131]|r");
        end
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Authed player is: |cFF00FF00" ..srs_vars.srs_authplayer.. "|r");

    -- if command is auth and a parameter is given, a player is authed
    elseif(tmp1 == "auth" and nBeginn ~= nil and nEnde ~= nil) then
        srs_vars.srs_authplayer = tmp2;
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Player '|cFF00FF00" ..tmp2.. "|r' has been authorised to swap!");

    -- unauth, good for nothing as password support has been striped
    elseif(tmp1 == "unauth") then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Player '|cFFFF0000" ..srs_vars.srs_authplayer.. "|r' has been unauthorised!");
        srs_vars.srs_authplayer = "";

    -- command is auth, just toggle auth mode
    elseif(tmp1 == "auth") then
        srs_vars.srs_auth = not srs_vars.srs_auth;
        if(srs_vars.srs_auth)then
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Auth use toggled to |cFFC0C131[|r|cFF00FF00ON|r|cFFC0C131]|r");
        else
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Auth use toggled to |cFFC0C131[|r|cFFFF0000OFF|r|cFFC0C131]|r");
        end

    -- command is state, toggle state
    elseif(tmp1 == "state") then
        srs_vars.srs_state = not srs_vars.srs_state;
        if(srs_vars.srs_state)then
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r State toggled to |cFFC0C131[|r|cFF00FF00ON|r|cFFC0C131]|r");
        else
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r State toggled to |cFFC0C131[|r|cFFFF0000OFF|r|cFFC0C131]|r");
        end
		
	-- command is state, toggle state
    elseif(tmp1 == "silent") then
        srs_vars.srs_silent = not srs_vars.srs_silent;
        if(srs_vars.srs_silent)then
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Silent toggled to |cFFC0C131[|r|cFF00FF00ON|r|cFFC0C131]|r");
        else
            DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Silent toggled to |cFFC0C131[|r|cFFFF0000OFF|r|cFFC0C131]|r");
        end

    -- /srs help or /srs displays help
    elseif(tmp1 == "help" or tmp1 == "" or tmp1 == nil) then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131---------Commands for SimpleRaidSwap-----------|r");
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131/srs info|r -> shows current config|r");
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131/srs state|r -> toggle listening to whispers|r");
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131/srs auth|r -> toggle auth mode|r");
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131/srs silent|r -> toggle silent mode|r");
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131/srs auth 'Player'|r -> set authed player|r");
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131--------- Makro example -----------|r");
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r /w Spikeone Spiketwo-Spikethree|r");
        DEFAULT_CHAT_FRAME:AddMessage("Help needed? Feel free to ask Spikeone @ B2B");
    else

    -- other commands aren't known
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Unbekannter Befehl '|cFFFF0000" ..tmp1.. "|r'!");
    end
end
    
-- handle registered events
function SRS_OnEvent(self, event, ...)

    -- variables have been loaded, any missing?
    if event == 'VARIABLES_LOADED' then
        -- array for variables
        if(not srs_vars) then                srs_vars ={}; end

        -- state, default is off
        if(not srs_vars.srs_state) then      srs_vars.srs_state     = false; end

        -- auth use, default is on
        if(not srs_vars.srs_auth) then       srs_vars.srs_auth      = true; end
		
		-- silent mode, default is off
        if(not srs_vars.srs_silent) then     srs_vars.srs_silent      = false; end

        -- authed player, default is ""
        if(not srs_vars.srs_authplayer) then srs_vars.srs_authplayer = ""; end
		
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r Addon loaded!");

    -- whisper, we may need to switch players
    -- only if state is true
    -- only if its not the player himself
    -- only if player is in a raid
    -- only if a raidmember whispered
    -- only if not a SRS: prefixed message (two players with activated addon could get an infinite whisper loop)
    elseif(event == 'CHAT_MSG_WHISPER' and srs_vars.srs_state and arg2 ~= UnitName("player") and GetNumRaidMembers() > 1 and UserInraid(player) and string.sub(arg1,1,4) ~= "SRS:") then

        -- whisper message
        msgs = arg1;
        
        -- whispering player
        player = arg2;

        -- if not authed player and auth mode is on
        if (player ~= srs_vars.srs_authplayer and srs_vars.srs_auth and not srs_vars.srs_silent) then
            SendChatMessage("SRS: You are not authorised to swap!", "WHISPER", nil, player)

        -- if player is authed player or auth mode is off
        elseif (player == srs_vars.srs_authplayer or not srs_vars.auth) then
            -- where does player1 end and player2 start? (Player1-Player2)
            nBeginnPlayers, nEndePlayers = string.find(msgs, "-");

            -- if one value is nil, no '-' was provided, so a player is missing
            if(nBeginnPlayers ~= nil and nEndePlayers ~= nil)then
                pl1 = string.sub(msgs,1,nBeginnPlayers-1);
                pl2 = string.sub(msgs,nEndePlayers+1,string.len(msgs));

                swapPlayers(pl1, pl2, player);
            elseif(not srs_vars.srs_silent) then
                SendChatMessage("SRS: Players missing!", "WHISPER", nil, player)
            end
        end

    -- confirm ready checks
    elseif(event == 'READY_CHECK' and srs_vars.srs_state and GetNumRaidMembers() > 1) then
        ConfirmReadyCheck(1);
        DEFAULT_CHAT_FRAME:AddMessage("|cFFC0C131SRS:|r I confirmed a ready check!");
    end
end

-- get user id, used for switching with setraidsubgroup
function GetRaidId(user)
   for i = 1, 40 do
    -- name, _, subgroup, _, _,_, _, _, _, _, _ = GetRaidRosterInfo(i);
    name, bla, subgroup = GetRaidRosterInfo(i);
    if(name ==  user)then
      return i, subgroup;
    end
   end
end

-- is the player in my raid?
function UserInraid(user)
  for i = 1, 40 do
    -- name, _, _, _, _,_, _, _, _, _, _ = GetRaidRosterInfo(i);
    name = GetRaidRosterInfo(i);
    if(name ==  user)then
      return true;
    end
   end
end

-- swap players
function swapPlayers(tmp1, tmp2, player)

    -- am I leader or assistant?
    if(IsRaidLeader() or IsRaidOfficer())then
        
        -- both players in raid?
        if(UserInraid(tmp1) and UserInraid(tmp2))then

            -- save playerIDs and Subgroups
            playerID1, playerSG1 = GetRaidId(tmp1);
            playerID2, playerSG2 = GetRaidId(tmp2);

            -- are both players in the same group?
            if(playerSG1 ~= playerSG2)then
                -- move player 1 to group 8
                SetRaidSubgroup(playerID1, 8);

                -- ID of player 2 changed
                playerID2, _ = GetRaidId(tmp2);

                -- player 2 to player 1's original group
                SetRaidSubgroup(playerID2, playerSG1);

                -- ID of player 1 changed
                playerID1, _ = GetRaidId(tmp1);

                -- player 1 to player 2's original group
                SetRaidSubgroup(playerID1, playerSG2);

                -- tell whispering person, switch worked
                SendChatMessage("SRS: "..tmp1..' ->'..tmp2, "WHISPER", nil, player);

            -- both players were in the same group
            elseif(not srs_vars.srs_silent) then
                SendChatMessage("SRS: Players in same group, can't switch!", "WHISPER", nil, player);
            end
        
        -- one or both players aren't raidmember
        elseif(not srs_vars.srs_silent) then
            SendChatMessage("SRS: At least one player is not in your raid!", "WHISPER", nil, player);
        end

    -- not leader or assistant
    elseif(not srs_vars.srs_silent) then
        SendChatMessage("SRS: I need lead or assistant to swap players!", "WHISPER", nil, player);
    end
end