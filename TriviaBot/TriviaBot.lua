--[[
--
-- TriviaBot Version 
-- Compatible with WoW 2.4.0
--
--]]

-- Global Variables

-- Declared colour codes for console messages
local RED     = "|cffff0000";
local MAGENTA = "|cffff00ff";
local WHITE   = "|cffffffff";

TRIVIABOT_VERSION = "2.4.3" -- Version number

-- Run-time variables
TRIVIABOT_RUNNING = false;
TRIVIABOT_ACCEPT_ANSWERS = false;
TRIVIABOT_LOADED = false;
TRIVIABOT_ACTIVE_QUESTION = 0; -- The currently active question
TRIVIABOT_REPORT_COUNTER = 0;
TRIVIABOT_ROUND_COUNTER = 0; -- Count for which question we're on in a round
TRIVIABOT_QUESTION_ORDER = {}; -- An array to store in which order the questions will be asked
TRIVIABOT_QUESTION_STARTTIME = 0; -- When the question was started
TRIVIABOT_SCHEDULE = {}; -- The array used for scheduling events

-- Configuration Variables
TRIVIABOT_CONFIG = 
{
["settings"] = {}, -- Settings
["alltimescores"] = {},
["alltimequickest"] = {};
["gamescores"] = {},
["gamequickest"] = {};
};

TRIVIABOT_Questions = {};

----------------------------------------------------------------------------
-- Load event
----------------------------------------------------------------------------
function TriviaBot_OnLoad()
	 --Register Slash Command
    SLASH_TRIVIABOT1 = "/trivia";
	SLASH_TRIVIABOT2 = "/triviabot";
    SlashCmdList["TRIVIABOT"] = TriviaBot_Command;
    
    -- Register Events
	this:RegisterEvent("CHAT_MSG_CHANNEL");    
	this:RegisterEvent("CHAT_MSG_RAID");
	this:RegisterEvent("CHAT_MSG_RAID_LEADER");	
	this:RegisterEvent("CHAT_MSG_SAY");		
	this:RegisterEvent("CHAT_MSG_YELL");		
	this:RegisterEvent("CHAT_MSG_PARTY");		
	this:RegisterEvent("CHAT_MSG_GUILD");
	this:RegisterEvent("CHAT_MSG_SYSTEM");
	this:RegisterEvent("ADDON_LOADED");
end

----------------------------------------------------------------------------
-- Abort current question
----------------------------------------------------------------------------
function TriviaBot_AbortQuestion()
	if (TRIVIABOT_RUNNING) then
		TriviaBot_UnSchedule("all");
		TRIVIABOT_ACCEPT_ANSWERS = false;
	else
		TriviaBot_PrintError("No game running!");
	end
end

----------------------------------------------------------------------------
-- Ask a question
----------------------------------------------------------------------------
function TriviaBot_AskQuestion()

	TRIVIABOT_ACTIVE_QUESTION = TRIVIABOT_ACTIVE_QUESTION + 1;

	-- Check there is questions left
	if (TRIVIABOT_ACTIVE_QUESTION == # TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]['QUESTIONS'] + 1) then
		-- Reshuffle the order
		TriviaBot_Randomize();
		TRIVIABOT_ACTIVE_QUESTION = 1;
		TriviaBot_Send("Out of questions... Reshuffled and restarted.");
		TriviaBot_Print("Out of questions - Restarting");
	end
	
	local questionNumber = "";
	if (TRIVIABOT_CONFIG["settings"]["round_size"] + 1 ~= 1) then
		questionNumber = TRIVIABOT_ROUND_COUNTER + 1;
	end
	
	for ce in string.gmatch(TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]['QUESTIONS'][TRIVIABOT_QUESTION_ORDER[TRIVIABOT_ACTIVE_QUESTION]],"Quote") do
	    c = ce;
    end
    
    if c == 0 then
	    TriviaBot_Send("Q" .. questionNumber .. ": " .. TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]['QUESTIONS'][TRIVIABOT_QUESTION_ORDER[TRIVIABOT_ACTIVE_QUESTION]]);
	    c = 0;
	else
        TriviaBot_Send(TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]['QUESTIONS'][TRIVIABOT_QUESTION_ORDER[TRIVIABOT_ACTIVE_QUESTION]]);	
	end
    
	c = 0;
	TRIVIABOT_QUESTION_STARTTIME = GetTime();
	TRIVIABOT_ACCEPT_ANSWERS = true;
    TriviaBot_Schedule("QUESTION_TIMEOUT", TRIVIABOT_CONFIG["settings"]["question_timeout"]);
	TriviaBot_Schedule("QUESTION_WARN", TRIVIABOT_CONFIG["settings"]["question_timeout"] - TRIVIABOT_CONFIG["settings"]["question_timewarn"]);
end

----------------------------------------------------------------------------
-- Changes setting to value
----------------------------------------------------------------------------
function TriviaBot_ChangeSetting(setting, value)
	-- If setting is nil display the settings
	if(setting == nil) then
		TriviaBot_Print("TriviaBot settings");
		TriviaBot_Print("Warning! Be extremely careful when using this, unexpected input may cause MASSIVE errors, be prepared to use /trivia resetconfig.");
		TriviaBot_Print("--Printing All Settings--");
		
		for setting, value in pairs(TRIVIABOT_CONFIG["settings"]) do
			if(type(value) == "boolean") then
				if(value) then
					TriviaBot_Print(setting .. " = " .. "(bool)True");
				else
					TriviaBot_Print(setting .. " = " .. "(bool)False");
				end
			else
				TriviaBot_Print(setting .. " = " .. value);
			end
		end
		
    elseif(TRIVIABOT_CONFIG["settings"][setting] ~= nil) then
		if(type(TRIVIABOT_CONFIG["settings"][setting]) == "boolean") then
			if(string.lower(value) == "true") then
				TRIVIABOT_CONFIG["settings"][setting] = true;
			elseif(string.lower(value) == "false") then
				TRIVIABOT_CONFIG["settings"][setting] = false;
			else
				 TriviaBot_Print("Error in setting, setting is a boolean value, setting must be true/false.");
			end
		elseif(type(TRIVIABOT_CONFIG["settings"][setting]) == "number") then
			TRIVIABOT_CONFIG["settings"][setting] = tonumber(value);
		else
			TRIVIABOT_CONFIG["settings"][setting] = value;
		end
		
		TriviaBot_Print("Changed setting: " .. setting .. " to " .. value);
    else
        TriviaBot_Print("Setting not found");
    end
end

----------------------------------------------------------------------------
-- Compares user's answer to question
----------------------------------------------------------------------------
function TriviaBot_CheckAnswer(player, msg)
    -- For every answer in the list of answers
    for k, i in ipairs(TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]['ANSWERS'][TRIVIABOT_QUESTION_ORDER[TRIVIABOT_ACTIVE_QUESTION]]) do
        -- Check if answer is correct
        if ((string.lower(msg) == string.lower(i))) then
            -- Unschedule warnings and timeout
            TriviaBot_UnSchedule("all");
            
            -- Time the answer
            local timeTaken = GetTime() - TRIVIABOT_QUESTION_STARTTIME;
            timeTaken = math.floor(timeTaken  * 10^2 + 0.5) / 10^2;
            
            -- Tell player they don't suck as badly as they think they do.
            TriviaBot_Send("'".. msg .. "' is the correct answer, " .. player .. " in " .. timeTaken .. " seconds.");
            
            -- Announce if it was the all-time quickest
            if (TRIVIABOT_CONFIG["alltimequickest"]["time"] == nil or timeTaken < TRIVIABOT_CONFIG["alltimequickest"]["time"]) then
                TriviaBot_Send("---NEW ALL-TIME RECORD---");
                TRIVIABOT_CONFIG["alltimequickest"]["holder"] = player;
                TRIVIABOT_CONFIG["alltimequickest"]["time"] = timeTaken;
            end
            
            -- Announce if it was the game's quickest
            if (TRIVIABOT_CONFIG["gamequickest"]["time"] == nil or timeTaken < TRIVIABOT_CONFIG["gamequickest"]["time"]) then
                TriviaBot_Send("---NEW GAME RECORD---");
                TRIVIABOT_CONFIG["gamequickest"]["holder"] = player;
                TRIVIABOT_CONFIG["gamequickest"]["time"] = timeTaken;
            end
            
            -- Update their current game score
            local score = TRIVIABOT_CONFIG["gamescores"][player];
            if (score) then score = score + 1; else score = 1; end
            TRIVIABOT_CONFIG["gamescores"][player] = score;
           
            -- Update their overall score
            score = TRIVIABOT_CONFIG["alltimescores"][player];
            if (score) then score = score + 1; else score = 1; end
            TRIVIABOT_CONFIG["alltimescores"][player] = score;

            TriviaBot_EndQuestion(false);
        end
    end
end

----------------------------------------------------------------------------
-- Command handler
----------------------------------------------------------------------------
function TriviaBot_Command(cmd)
    -- Create variables
	local msgArgs = {};
	local numArgs = 0;
    
	-- Convert to lower case
	cmd = string.lower(cmd);
	
	-- Seperate our args
	for value in string.gmatch(cmd, "[^ ]+") do
		msgArgs[numArgs] = value;
		numArgs = numArgs + 1;
	end
	
	if (numArgs == 0) then
		-- Show the GUI
		if (not TRIVIABOT_CONFIG["settings"]["quienabled"]) then
			--TriviaBotGUI:Show();
			TRIVIABOT_CONFIG["settings"]["quienabled"] = true;
		else
			--TriviaBotGUI:Hide();
			TRIVIABOT_CONFIG["settings"]["quienabled"] = false;
		end
	end
    
    --We only support 1 argument at a time
    if (msgArgs[0] == "help") then
        TriviaBot_Print("---TriviaBot Help---");
        TriviaBot_Print("/trivia clear - Clear current game data");
        TriviaBot_Print("/trivia clearall - Clear current game and all time score data");
        TriviaBot_Print("/trivia help - Help on TriviaBot commands");
        TriviaBot_Print("/trivia load [ID#] - Load trivia via ID #");
        TriviaBot_Print("/trivia resetconfig - Reset configuration to defaults");
        TriviaBot_Print("/trivia scores [option] - Show score data (option = post to send over chat)");
        TriviaBot_Print("/trivia setting [name] [value] - Change setting 'name' to become 'value'");
        TriviaBot_Print("/trivia start - Start trivia");
        TriviaBot_Print("/trivia stop - Stop trivia");
    elseif(msgArgs[0] == "clear") then
        -- Clear current game scores
        TRIVIABOT_CONFIG["gamescores"] = {};
        TRIVIABOT_CONFIG["gamequickest"] = {};
        TriviaBot_Print("Game scores reset.");
    elseif(msgArgs[0] == "clearall") then
        -- Clear all scores
        TRIVIABOT_CONFIG["alltimescores"] = {};
        TRIVIABOT_CONFIG["alltimequickest"] = {};
        TRIVIABOT_CONFIG["gamescores"] = {};
        TRIVIABOT_CONFIG["gamequickest"] = {};
        TriviaBot_Print("All scores reset.");
    elseif(msgArgs[0] == "load") then
        if(msgArgs[1]) then
            TriviaBot_LoadTrivia(msgArgs[1]);
        else
            TriviaBot_PrintError("Trivia ID # must be supplied!");
        end
    elseif(msgArgs[0] == "resetconfig") then
        TriviaBot_NewConfig(true);
    elseif(msgArgs[0] == "setting") then
        TriviaBot_ChangeSetting(msgArgs[1], msgArgs[2]);
    elseif(msgArgs[0] == "scores") then
        TriviaBot_PrintScores(msgArgs[1]);
    elseif(msgArgs[0] == "start") then
        TriviaBot_Start();
    elseif(msgArgs[0] == "stop") then
        TriviaBot_Stop();
    else
        TriviaBot_PrintError("Invalid Command - Use '/trivia help' for more information on how to use TriviaBot.");
    end 
end

----------------------------------------------------------------------------
-- Do Scheduled events
----------------------------------------------------------------------------
function TriviaBot_DoSchedule()
	if (TRIVIABOT_SCHEDULE ~= nil) then
		for id, events in pairs(TRIVIABOT_SCHEDULE) do
			-- Get the time of each event
			-- If it should be run (i.e. equal or less than current time)
			if (events["time"] <= GetTime()) then
				TriviaBot_OnEvent(events["name"]);
				TriviaBot_UnSchedule(id);
			end
		end
	end
end


----------------------------------------------------------------------------
-- Called when a question is finished
----------------------------------------------------------------------------
function TriviaBot_EndQuestion(showAnswer)
    -- Prevent further answers
	TRIVIABOT_ACCEPT_ANSWERS = false;
	--TriviaBotGUISkipButton:Disable();

	-- Increment the counters
	TRIVIABOT_ROUND_COUNTER = TRIVIABOT_ROUND_COUNTER  + 1;
	
	local wait = 0;
	if (showAnswer) then
		wait = wait + 4;
		TriviaBot_Schedule("SHOW_ANSWER", wait);
	end
	
	-- See if we've reached the end of the round
	if (TRIVIABOT_ROUND_COUNTER + 1 == TRIVIABOT_CONFIG["settings"]["round_size"] + 1) then
		TriviaBot_Schedule("END_REPORT", wait + 4);
		TriviaBot_Schedule("STOP_GAME", wait + 8);
	else
		-- Count how long it's been since a question report
		if (TRIVIABOT_CONFIG["settings"]["show_reports"]) then
			TRIVIABOT_REPORT_COUNTER = TRIVIABOT_REPORT_COUNTER + 1;
			if (TRIVIABOT_REPORT_COUNTER == TRIVIABOT_CONFIG["settings"]["report_interval"]) then
				wait = wait + 4;
				TriviaBot_Schedule("REPORT_SCORERS", wait);
				TRIVIABOT_REPORT_COUNTER = 0;
			end
		end
		
		TriviaBot_Schedule("NEXT_QUESTION", TRIVIABOT_CONFIG["settings"]["interval"] + wait);
	end
	
end

----------------------------------------------------------------------------
-- Load trivia into trivia memory
----------------------------------------------------------------------------
function TriviaBot_LoadTrivia(id)
    -- If we're running we need to skip the current question before hopping databases.
    if(TRIVIABOT_RUNNING)then
            TriviaBot_AbortQuestion();
    end

    --See if question array exists
    id = tonumber(id);
    if(TRIVIABOT_Questions[id] and id > 0) then
        TRIVIABOT_CONFIG["settings"]['qlist'] = id;
        if(TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]['qlist']].QUESTIONS[1]) then
            TriviaBot_Print("Questions loaded sucessfully. Question count: " .. #TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]['QUESTIONS']);
            TriviaBot_Print("Database Name: " .. TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]['qlist']]['DESCRIPTION'] .. ". Author: " .. TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]["AUTHOR"]);
        end
        
        if(TRIVIABOT_RUNNING)then        
		    TriviaBot_Randomize();
            --If we're switching databases mid game, we should alert our players that the mode has changed
            TriviaBot_Send("Switching trivia database to: " .. TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]['qlist']]['DESCRIPTION'] .. ". Author: " .. TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]["AUTHOR"]);
            TriviaBot_Schedule("NEXT_QUESTION", 6);
        end
    else
        TriviaBot_Print("Question List ID: "..id.." does not exist");
            TriviaBot_Print("Available Libraries of Trivia:");
        for k,i in ipairs(TRIVIABOT_Questions) do
            TriviaBot_Print("ID: " .. k .. " - " .. i['DESCRIPTION']);
        end 
    end
end

----------------------------------------------------------------------------
-- Create new configuation
----------------------------------------------------------------------------
function TriviaBot_NewConfig(reset)
    if(reset) then
        TRIVIABOT_CONFIG["settings"] = {};
        TriviaBot_Print("Resetting configuration to default values");
    end
    
    if(not TRIVIABOT_CONFIG["alltimescores"]) then TRIVIABOT_CONFIG["alltimescores"] = {};end;
    if(not TRIVIABOT_CONFIG["alltimequickest"]) then TRIVIABOT_CONFIG["alltimequickest"] = {};end;
    if(not TRIVIABOT_CONFIG["gamescores"]) then TRIVIABOT_CONFIG["gamescores"] = {};end;
    if(not TRIVIABOT_CONFIG["gamequickest"]) then TRIVIABOT_CONFIG["gamequickest"] = {};end;
        
    -- The default private channel
	if (not TRIVIABOT_CONFIG["settings"]["channel"]) then TRIVIABOT_CONFIG["settings"]["channel"] = "guild";end
    
    -- Defaults to unlimited questions per round
	if (not TRIVIABOT_CONFIG["settings"]["round_size"]) then TRIVIABOT_CONFIG["settings"]["round_size"] = 0;end
    
	-- Default question list
	if (not TRIVIABOT_CONFIG["settings"]["qlist"]) then TRIVIABOT_CONFIG["settings"]["qlist"] = 1;end
    
	-- Default Update interval. Tweaking may increase performance.
	if (not TRIVIABOT_CONFIG["settings"]["update_interval"]) then TRIVIABOT_CONFIG["settings"]["update_interval"] = 0.5; end
    
	 -- Number of seconds between questions
	if (not TRIVIABOT_CONFIG["settings"]["interval"]) then TRIVIABOT_CONFIG["settings"]["interval"] = 30;end
    
	 -- Defaults to reporting scores every 5 answers
	if (not TRIVIABOT_CONFIG["settings"]["report_interval"]) then TRIVIABOT_CONFIG["settings"]["report_interval"] = 5;end
    
	 -- Show reports
	if (not TRIVIABOT_CONFIG["settings"]["show_reports"]) then TRIVIABOT_CONFIG["settings"]["show_reports"] = true;end
    
	 -- Show Answers
	if (not TRIVIABOT_CONFIG["settings"]["show_answers"]) then TRIVIABOT_CONFIG["settings"]["show_answers"] = true;end
    
	 -- Default question timeout
	if (not TRIVIABOT_CONFIG["settings"]["question_timeout"]) then TRIVIABOT_CONFIG["settings"]["question_timeout"] = 45;end
    
	 -- Default warning at 20 seconds.
	if (not TRIVIABOT_CONFIG["settings"]["question_timewarn"]) then TRIVIABOT_CONFIG["settings"]["question_timewarn"] = 20;end
    
	 -- GUI is on by default
	if (not TRIVIABOT_CONFIG["settings"]["quienabled"]) then TRIVIABOT_CONFIG["settings"]["quienabled"] = false;end
    
	-- Store the version
	TRIVIABOT_CONFIG.CONFIG_VERSION = TRIVIABOT_VERSION;
end

----------------------------------------------------------------------------
-- Event handler
----------------------------------------------------------------------------
function TriviaBot_OnEvent(event)
	if (event == "ADDON_LOADED") then
		if (not TRIVIABOT_LOADED) then
			-- Load the saved variables
			if (not TRIVIABOT_CONFIG.CONFIG_VERSION) then
                TriviaBot_Print("Creating new configuation.");
				TriviaBot_NewConfig();
			end
			if (TRIVIABOT_CONFIG.CONFIG_VERSION ~= TRIVIABOT_VERSION) then
				TriviaBot_Print("Old version detected, upgrading to new version.");
				TriviaBot_Print("Old: " .. TRIVIABOT_CONFIG.CONFIG_VERSION .. " New: " .. TRIVIABOT_VERSION);
				TriviaBot_NewConfig();
			end
			
			--Start in the 'off' state
			TRIVIABOT_ACCEPT_ANSWERS = false;
			
			-- Send a message
			TriviaBot_Print("Version " .. TRIVIABOT_VERSION .. " loaded.");
			
			-- Update the GUI with the current configuration
			--TriviaBot_GUIUpdate();
		
			-- Load the questions
			TriviaBot_LoadTrivia(TRIVIABOT_CONFIG["settings"]["qlist"]);
            			
			-- Initialise the record
			TRIVIABOT_TIME_RECORD = {["time"] = TRIVIABOT_CONFIG["settings"]["question_timeout"] + 1, ["holder"] = "noone"};
			
			-- Generate the question order.
			TriviaBot_Randomize();
			
			-- Set loaded state
			TRIVIABOT_LOADED = true;
		end
		
	elseif (event == "CHAT_MSG_CHANNEL") then
		local msg = arg1;
		local player = arg2;
        local channel = string.lower(arg9);

        if( (msg and msg ~= nil) and (player and player ~= nil) and (channel ~= nil) ) then
            if( channel == string.lower(TRIVIABOT_CONFIG["settings"]["channel"]) and TRIVIABOT_ACCEPT_ANSWERS ) then
				TriviaBot_CheckAnswer(player, msg);
            end
		end
    elseif(event == "CHAT_MSG_WHISPER") then
        local msg = arg1;
        local player = arg2;
        
	    if(string.lower(msg) == "!score")then
            TriviaBot_ReturnUserScore(player);
        end
	elseif ((event == "CHAT_MSG_SAY" or event == "CHAT_MSG_GUILD" or event == "CHAT_MSG_YELL" or event == "CHAT_MSG_RAID_LEADER"
		 or event == "CHAT_MSG_RAID" or event == "CHAT_MSG_PARTY") and TRIVIABOT_ACCEPT_ANSWERS) then
		
		-- Something was said, and the bot is on
		local msg = arg1;
		local player = arg2;

        if( (msg and msg ~= nil) and (player and player ~= nil)) then
			TriviaBot_CheckAnswer(player, msg);
		end
	elseif(event == "CHAT_MSG_SYSTEM" and (arg1 == ERR_TOO_MANY_CHAT_CHANNELS)) then
		TriviaBot_UnSchedule("all");
		TriviaBot_Print("Leave another channel before setting a new Private Channel");
	elseif (event == "RETRY_CHANNEL_CHANGE") then
		TriviaBot_ChangePrivateChannel();
	elseif (event == "NEXT_QUESTION") then
		TRIVIABOT_ACCEPT_ANSWERS = true;
		--TriviaBotGUISkipButton:Enable();
		TriviaBot_AskQuestion();
	elseif (event == "QUESTION_TIMEOUT") then TriviaBot_QuestionTimeout();
	elseif (event == "QUESTION_WARN") then TriviaBot_Send(TRIVIABOT_CONFIG["settings"]["question_timewarn"] .. " seconds left!");
	elseif (event == "REPORT_SCORERS") then TriviaBot_Report("gamereport");
	elseif (event == "END_REPORT") then TriviaBot_Report("endreport");
	elseif (event == "STOP_GAME") then TriviaBot_Stop();
	elseif (event == "SHOW_ANSWER") then
        local count = 0;
        local answers = "";
        for i = 1, #TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]['ANSWERS'][TRIVIABOT_QUESTION_ORDER[TRIVIABOT_ACTIVE_QUESTION]]do
            count = count + 1;
            if(TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]['ANSWERS'][TRIVIABOT_QUESTION_ORDER[TRIVIABOT_ACTIVE_QUESTION]][i + 1] ~= nil) then
                answers = answers .. TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]['ANSWERS'][TRIVIABOT_QUESTION_ORDER[TRIVIABOT_ACTIVE_QUESTION]][i] .. " & ";
            else
                answers = answers .. TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]['ANSWERS'][TRIVIABOT_QUESTION_ORDER[TRIVIABOT_ACTIVE_QUESTION]][i];
            end
        end
        if(count == 1) then
    	    TriviaBot_Send("The correct answer was: " .. answers);
        else
            TriviaBot_Send("The correct answers were: " .. answers);
        end
	end
end

----------------------------------------------------------------------------
-- OnUpdate event is run in cycles
----------------------------------------------------------------------------
function TriviaBot_OnUpdate(elapsed)
	-- OnUpdate
	this.TimeSinceLastUpdate = this.TimeSinceLastUpdate + elapsed; 	

	if (this.TimeSinceLastUpdate > TRIVIABOT_CONFIG["settings"]["update_interval"]) then
		TriviaBot_DoSchedule();
		this.TimeSinceLastUpdate = 0;
	end
end

----------------------------------------------------------------------------
-- Print information to chat box for player
----------------------------------------------------------------------------
function TriviaBot_Print(msg)
	-- Check the default frame exists
	if (DEFAULT_CHAT_FRAME) then
		-- Format the message
		msg = MAGENTA .. "[TriviaBot]: " .. WHITE .. msg;
		DEFAULT_CHAT_FRAME:AddMessage(msg);
	end
end

----------------------------------------------------------------------------
-- Print error information in chat box
----------------------------------------------------------------------------
function TriviaBot_PrintError(msg)
	-- Check the default frame exists
	if (DEFAULT_CHAT_FRAME) then
		-- Format the message
		msg = RED .. "--ERROR-- [TriviaBot]: " .. WHITE .. msg;
		DEFAULT_CHAT_FRAME:AddMessage(msg);
	end
end

----------------------------------------------------------------------------
-- Print current game and all time statistics
----------------------------------------------------------------------------
function TriviaBot_PrintScores(arg)
    local results = false;
    
    if(arg == "post") then
    	-- Print fastest times
		TriviaBot_Send("----All time fastest----");
		if(not TRIVIABOT_CONFIG["alltimequickest"]["holder"]) then
			TriviaBot_Send("No quickest time recorded.");
		else
			TriviaBot_Send(TRIVIABOT_CONFIG["alltimequickest"]["holder"] .. " in " .. TRIVIABOT_CONFIG["alltimequickest"]["time"] .. " sec");
		end
		TriviaBot_Send("----Current game fastest----");
		if(not TRIVIABOT_CONFIG["gamequickest"]["holder"]) then
			TriviaBot_Send("No quickest time recorded.");
		else
			TriviaBot_Send(TRIVIABOT_CONFIG["gamequickest"]["holder"] .. " in " .. TRIVIABOT_CONFIG["gamequickest"]["time"] .. " sec");
		end
	    
		-- Print all time scores
		TriviaBot_Send("----All time scores----");
		for player, score in pairs(TRIVIABOT_CONFIG["alltimescores"]) do
			results = true;
			TriviaBot_Send(player .. ": " .. score);
		end
		if(not results)then 
			TriviaBot_Send("No all-time player data found");
			results = false;
		end
	    
		-- Reset results
		results = false;
	    
		-- Print game scores
		TriviaBot_Send("----Current game scores----");
		for player, score in pairs(TRIVIABOT_CONFIG["gamescores"]) do
			results = true;
			TriviaBot_Send(player .. ": " .. score);    
		end 
		if(not results)then
			TriviaBot_Send("No current game player data found");
			results = false;
		end
    else
		-- Print fastest times
		TriviaBot_Print("----All time fastest----");
		if(not TRIVIABOT_CONFIG["alltimequickest"]["holder"]) then
			TriviaBot_Print("No quickest time recorded.");
		else
			TriviaBot_Print(TRIVIABOT_CONFIG["alltimequickest"]["holder"] .. " in " .. TRIVIABOT_CONFIG["alltimequickest"]["time"] .. " sec");
		end
		TriviaBot_Print("----Current game fastest----");
		if(not TRIVIABOT_CONFIG["gamequickest"]["holder"]) then
			TriviaBot_Print("No quickest time recorded.");
		else
			TriviaBot_Print(TRIVIABOT_CONFIG["gamequickest"]["holder"] .. " in " .. TRIVIABOT_CONFIG["gamequickest"]["time"] .. " sec");
		end
	    
		-- Print all time scores
		TriviaBot_Print("----All time scores----");
		for player, score in pairs(TRIVIABOT_CONFIG["alltimescores"]) do
			results = true;
			TriviaBot_Print(player .. ": " .. score);
		end
		if(not results)then 
			TriviaBot_Print("No all-time player data found");
			results = false;
		end
	    
		-- Reset results
		results = false;
	    
		-- Print game scores
		TriviaBot_Print("----Current game scores----");
		for player, score in pairs(TRIVIABOT_CONFIG["gamescores"]) do
			results = true;
			TriviaBot_Print(player .. ": " .. score);    
		end 
		if(not results)then
			TriviaBot_Print("No current game player data found");
			results = false;
		end
    end
end

----------------------------------------------------------------------------
-- Answers question and prepares next one
----------------------------------------------------------------------------
function TriviaBot_QuestionTimeout()
    TriviaBot_Send("Time is up! No correct answer was given.");
	
	TriviaBot_EndQuestion(TRIVIABOT_CONFIG["settings"]["show_answers"]);	
end

----------------------------------------------------------------------------
-- Randomize the trivia questions
----------------------------------------------------------------------------
function TriviaBot_Randomize()
    -- Randomise the order of the questions
	TRIVIABOT_QUESTION_ORDER = {};
	
  	-- Initialise the table
	local noOfQuestions = table.getn(TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]].QUESTIONS);
	local n = 1;
	
	while (n <= noOfQuestions) do
		TRIVIABOT_QUESTION_ORDER[n] = n;
		n = n + 1;
	end
	
	local tmp, random;
	local i;
	local j = 5;
	
	while (j > 0) do
		i = 1;
		-- Swap each element with a random element
		while (i <= noOfQuestions) do
			random = math.random(noOfQuestions);
			tmp = TRIVIABOT_QUESTION_ORDER[i];
			TRIVIABOT_QUESTION_ORDER[i] = TRIVIABOT_QUESTION_ORDER[random]
			TRIVIABOT_QUESTION_ORDER[random] = tmp;
			i = i + 1;
		end
		
		-- Decrement J
		j = j - 1
	end
end


----------------------------------------------------------------------------
-- Print report to the screen
----------------------------------------------------------------------------
function TriviaBot_Report(type)
		if (type == "gamereport") then
		-- Sort the table
		local TRIVIABOT_SORTED = {};
		
		local exists;
		for player, score in pairs(TRIVIABOT_CONFIG['gamescores']) do
			-- Add them to the sorting table
			exists = true;
			table.insert(TRIVIABOT_SORTED, {["player"] = player, ["score"] = score});
		end
		
		table.sort(TRIVIABOT_SORTED, function(v1, v2)
			return v1["score"] > v2["score"];
			end);
		
		if (exists) then
			TriviaBot_Send("Standing so far:");
		else
			TriviaBot_Send("Standing: No points earnt yet!");
		end
		
		-- Report the top 5 scorers
		for id, record in pairs(TRIVIABOT_SORTED) do
			if (id <= 5) then
				-- Report the top 3
				
				-- Ensure correct grammar.
				local ess = "s";
				if (record["score"] == 1) then
					ess = "";
				end
	
				TriviaBot_Send(id .. "]: " .. record["player"] .. " (" .. record["score"] .." point" .. ess .. ")");
				
			end
		end
		
		-- Speed record holder
		if (TRIVIABOT_CONFIG['gamequickest']["holder"] ~= "noone") then
			TriviaBot_Send("Speed Record: " .. TRIVIABOT_CONFIG['gamequickest']["holder"] .. " in " .. TRIVIABOT_CONFIG['gamequickest']["time"] .. " sec");
		end
	elseif(type == "endreport") then
		-- Show the winner
		-- Sort the table
		local TRIVIABOT_SORTED = {};
		
		local exists;
		for player, score in pairs(TRIVIABOT_CONFIG['gamescores']) do
			-- Add them to the sorting table
			exists = true;
			table.insert(TRIVIABOT_SORTED, {["player"] = player, ["score"] = score});
		end
		
		if (exists) then
			TriviaBot_SendMessage("GAME OVER! Final standings:");
		else
			TriviaBot_SendMessage("GAME OVER! Nobody scored!");
		end
		
		table.sort(TRIVIABOT_SORTED, function(v1, v2)
			return v1["score"] > v2["score"];
			end);
	
		-- Report the top 3 scorers
		for id, record in pairs(TRIVIABOT_SORTED) do
			if (id <= 2) then
				-- Report the winner and runner up
				
				-- Ensure correct grammar.
				local ess = "s";
				if (record["score"] == 1) then
					ess = "";
				end
				
				-- Announce standing
				local standing;
				if (id == 1) then
					standing = "WINNER";
				elseif (id == 2) then
					standing = "RUNNER UP"
				end
	
				TriviaBot_Send(standing .. ": " .. record["player"] .. " (" .. record["score"] .." point" .. ess .. ")");
				
			end
		end
		
		-- Speed record holder
		if (TRIVIABOT_CONFIG['gamequickest']["holder"] ~= "noone") then
			TriviaBot_Send("QUICKEST FINGERS: " .. TRIVIABOT_CONFIG['gamequickest']["holder"] .. " in " .. TRIVIABOT_CONFIG['gamequickest']["time"] .. " sec");
		end
	end
end

----------------------------------------------------------------------------
-- Gives user their point information.
----------------------------------------------------------------------------
function TriviaBot_ReturnUserScore(user)
    --TRIVIABOT_CONFIG['alltimescores'][player]

end

----------------------------------------------------------------------------
-- Schedule an event
----------------------------------------------------------------------------
function TriviaBot_Schedule(name, time)
	thisEvent = {["name"] = name, ["time"] = GetTime() + time};
	table.insert(TRIVIABOT_SCHEDULE, thisEvent);
end

----------------------------------------------------------------------------
-- Print trivia in primary box
----------------------------------------------------------------------------
function TriviaBot_Send(msg)
	-- Send a message to the trivia channel
	
	-- Prepend the trivia tag to each message 
	local triviaMsg;
	triviaMsg= "[TriviaBot]: " .. msg;
	
    
    if(TRIVIABOT_CONFIG["settings"]["channel"]) then
        --SendChatMessage(triviaMsg, TRIVIABOT_CONFIG["settings"]["channel"]);
		local index = GetChannelName(TRIVIABOT_CONFIG["settings"]["channel"]); --channel fix!
		if index ~=0 then
			SendChatMessage(triviaMsg, "CHANNEL", nil, index); --channel fix!
		else
			SendChatMessage(triviaMsg, TRIVIABOT_CONFIG["settings"]["channel"]);
		end
	else
		TriviaBot_PrintError("No valid channel type set!");
	end
end

----------------------------------------------------------------------------
-- Skip current question
----------------------------------------------------------------------------
function TriviaBot_SkipQuestion()
-- Skip a question
	if (TRIVIABOT_RUNNING) then
		TriviaBot_Send("Question was skipped.");
		TriviaBot_UnSchedule("all");
		TRIVIABOT_ACCEPT_ANSWERS = false;
			
		-- Show the answer anyway (for those that wanted to know)
		if (TRIVIABOT_CONFIG["settings"]["show_answers"]) then
			TriviaBot_Schedule("SHOW_ANSWER", 2);
		end
			
		-- Schedule the next question
		TriviaBot_Schedule("NEXT_QUESTION", 6);
		
		TriviaBot_Print("Question skipped");
	else
		TriviaBot_PrintError("No game running!");
	end
end


----------------------------------------------------------------------------
-- Start trivia session
----------------------------------------------------------------------------
function TriviaBot_Start()
    -- Set Running
	TRIVIABOT_RUNNING = true;
	
	-- Announce the start
    TriviaBot_Send("--World of Warcraft Trivia powered by TriviaBot--");
    TriviaBot_Send("Using Trivia from database: " .. TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]['DESCRIPTION'] .. " Author(s): " .. TRIVIABOT_Questions[TRIVIABOT_CONFIG["settings"]["qlist"]]["AUTHOR"]);
    --Privium_Print("Trivia started in " .. TRIVIA_CONFIG.CHANNEL .. " channel!")
			
	TriviaBot_Print("First question coming up!");
	
	-- Schedule start
	TriviaBot_Schedule("NEXT_QUESTION", 7);
	
	-- Clear scores
    TRIVIABOT_CONFIG["gamescores"] = {};
    TRIVIABOT_CONFIG["gamequickest"] = {};
	TRIVIABOT_REPORT_COUNTER = 0;
	
	-- Reset Round and Report Counters
	TRIVIABOT_REPORT_COUNTER = 0;
	TRIVIABOT_ROUND_COUNTER = 0;
	
	-- GUI Functions:
	--TriviaBotGUIStartStopButton:SetText("Stop Trivia");

end

----------------------------------------------------------------------------
-- Stop trivia session
----------------------------------------------------------------------------
function TriviaBot_Stop(supressMessage)
	-- Clear all scheduled events
    TriviaBot_UnSchedule("all");
    TRIVIABOT_ACCEPT_ANSWERS = false;
	TRIVIABOT_RUNNING = false;
	
	if (not supressMessage) then
		TriviaBot_Send("Trivia stopped.");
	end
	
	TriviaBot_Print("Trivia stopped.")
	
	-- GUI Updates
	--TriviaBotGUIStartStopButton:SetText("Start Trivia");
	--TriviaBotGUISkipButton:Disable();
end

----------------------------------------------------------------------------
-- Removes an event from the Scheduler
----------------------------------------------------------------------------
function TriviaBot_UnSchedule(id)
	-- Unschedule an event
	if (id == "all") then
		TRIVIABOT_SCHEDULE = {};
	else
		table.remove(TRIVIABOT_SCHEDULE, id);
	end
end

function TriviaBot_Shuffle()
	
end

function TriviaBot_QListSelect(input)
	
end

-- Channel Select
function TriviaBot_ChannelSelect(type, name)

end


-- Channel changer
function TriviaBot_ChangePrivateChannel()

end







function TriviaBot_ClearTells(player)
	
end


-- GUI FUNCTIONS

function TriviaBot_GUIUpdate()

end
		
		
		
-- ChatList
function TriviaBotGUIChatSelect_Initialize()

end

function TriviaBotGUIChatSelect_OnClick()

end

-- QuestionList
function TriviaBotGUIQListSelect_Initialize()

end

function TriviaBotGUIQListSelect_OnClick()

end
-- Round Size
function TriviaBotGUIRoundSizeSelect_Initialize()

	
end

function TriviaBotGUIRoundSizeSelect_OnClick()

	
end


-- Question Interval
function TriviaBotGUIIntervalSelect_Initialize()

end

function TriviaBotGUIIntervalSelect_OnClick()

end

-- Duration
function TriviaBotGUITimeoutSelect_Initialize()

end

function TriviaBotGUITimeoutSelect_OnClick()

end

function TriviaBotGUI_ChannelButton_OnClick()

	
end

function TriviaBotGUI_StartStopButton_OnClick()

end

function TriviaBotReportCheckBox_OnClick()
	
end

function TriviaBotShowAnswerCheckBox_OnClick()
end


function TriviaBotGUI_OnDragStart()		
end


function TriviaBotGUI_OnDragStop()
end





