local STA_VARIABLES = {}
STA_VARIABLES.MODE = 1
STA_VARIABLES.QUICKMODE = 1

local STA_LISTS = {}
STA_LISTS.TANKS = {}
STA_LISTS.SHEEP = {}
STA_LISTS.BANISH = {}

local STA_MODES = {}
STA_MODES[1] = "Tank"
STA_MODES[2] = "Sheep"
STA_MODES[3] = "Banish"

-- store index 1 for any mode (<none>)
local STA_ASSIGNMENTS = {}
for i = 1, getn(STA_MODES) do
	STA_ASSIGNMENTS[i] = {}
	
	for j = 1, 8 do
		STA_ASSIGNMENTS[i][j] = 1
	end
end

local STA_ICONS = {}
STA_ICONS[1] = "{rt8}" --tk
STA_ICONS[2] = "{rt7}" --kreuz
STA_ICONS[3] = "{rt6}" --vier
STA_ICONS[4] = "{rt4}" --drei
STA_ICONS[5] = "{rt2}" --sonne
STA_ICONS[6] = "{rt5}" --mond
STA_ICONS[7] = "{rt1}" --stern
STA_ICONS[8] = "{rt3}" --diamant

function STA_OnLoad()
    DEFAULT_CHAT_FRAME:AddMessage("SpikesTargetAnnouncer loaded!");
	
    SLASH_SPIKESTARGETANNOUNCER1 = "/sta";
    SlashCmdList["SPIKESTARGETANNOUNCER"] = function(msg)
        STA_SlashCommandHandler(msg);
    end
end

function STA_SlashCommandHandler(msg)

    local a, b, command = string.find( msg, "(%w+)" );

    if( command == nil ) then
        STAConfig:Show();
        return;
    else
		STAConfig:Hide();
        command = string.lower( msg );
    end
end

function STA_ModeConfigDropdown_OnLoad()
	UIDropDownMenu_SetWidth(100);
	UIDropDownMenu_SetButtonWidth(24);
	UIDropDownMenu_JustifyText("LEFT", STA_ModeConfigDropdown);
end

function STA_ModeConfigDropdown_InitializeOptions()
	local info;
	for i = 1, getn(STA_MODES), 1 do
		info = {
			text = STA_MODES[i];
			func = STA_ModeConfigDropdown_OnClick;
		};
		UIDropDownMenu_AddButton(info);
	end
end

function STA_ModeConfigDropdown_OnShow()
	UIDropDownMenu_Initialize(STA_ModeConfigDropdown, STA_ModeConfigDropdown_InitializeOptions);
	UIDropDownMenu_SetSelectedID(STA_ModeConfigDropdown, STA_VARIABLES.MODE );
	UIDropDownMenu_SetWidth(100);
end

function STA_ModeConfigDropdown_OnClick()
	local i = this:GetID();
	
	if(i==STA_VARIABLES.MODE) then
		return;
	end
	
	STA_VARIABLES.MODE = i;
	UIDropDownMenu_SetSelectedID(STA_ModeConfigDropdown, i);
	--DEFAULT_CHAT_FRAME:AddMessage("MODE: " ..STA_VARIABLES.MODE)
	
	STA_LoadAssignments()
end

function STA_LoadAssignments()
	for i = 1, 8 do
		local dropdown = getglobal("STA_TargetSettingsDropdown"..i)
		
		dropdown:Hide()
		dropdown:Show()
		
		UIDropDownMenu_SetSelectedID(dropdown, 2);
		
		STA_TargetSettingsDropdowns_InitializeOptionsForFrame(dropdown)
		
		local selIndex = STA_ASSIGNMENTS[STA_VARIABLES.MODE][i]
		
		UIDropDownMenu_SetSelectedID(dropdown, selIndex);
	end
end

function STA_QuickReport_ModeDropdown_InitializeOptions()
	local info;
	for i = 1, getn(STA_MODES), 1 do
		info = {
			text = STA_MODES[i];
			func = STA_QuickReport_ModeDropdown_OnClick;
		};
		UIDropDownMenu_AddButton(info);
	end
end

function STA_QuickReport_ModeDropdown_OnShow()
	UIDropDownMenu_Initialize(STA_QuickReport_ModeDropdown, STA_QuickReport_ModeDropdown_InitializeOptions);
	UIDropDownMenu_SetSelectedID(STA_QuickReport_ModeDropdown, STA_VARIABLES.QUICKMODE );
	UIDropDownMenu_SetWidth(100);
end

function STA_QuickReport_ModeDropdown_OnClick()
	local i = this:GetID();
	
	if(i == STA_VARIABLES.QUICKMODE) then
		return;
	end
	
	STA_VARIABLES.QUICKMODE = i;
	UIDropDownMenu_SetSelectedID(STA_QuickReport_ModeDropdown, i);
	--DEFAULT_CHAT_FRAME:AddMessage("QUICKMODE: " ..STA_VARIABLES.QUICKMODE)
end

function STA_TargetSettingsDropdowns_InitializeOptionsForFrame(objTargetFrame)
	-- depends on mode
	local info;
	info = {
		text = "<none>";
		func = 	function()
					STA_TargetSettingsDropdown_OnClick(objTargetFrame);
				end;
	};
	UIDropDownMenu_AddButton(info);
	
	if(STA_VARIABLES.MODE == 1) then
		for i = 1, getn(STA_LISTS.TANKS), 1 do
			info = {
				text = STA_LISTS.TANKS[i];
				func = function()
					STA_TargetSettingsDropdown_OnClick(objTargetFrame);
				end;
			};
			UIDropDownMenu_AddButton(info);
		end
	elseif(STA_VARIABLES.MODE == 2) then
		for i = 1, getn(STA_LISTS.SHEEP), 1 do
			info = {
				text = STA_LISTS.SHEEP[i];
				func = function()
					STA_TargetSettingsDropdown_OnClick(objTargetFrame);
				end;
			};
			UIDropDownMenu_AddButton(info);
		end
	elseif(STA_VARIABLES.MODE == 3) then
		for i = 1, getn(STA_LISTS.BANISH), 1 do
			info = {
				text = STA_LISTS.BANISH[i];
				func = function()
					STA_TargetSettingsDropdown_OnClick(objTargetFrame);
				end;
			};
			UIDropDownMenu_AddButton(info);
		end
	end
	
end


function STA_TargetSettingsDropdowns_InitializeOptions()

	local objTargetFrame = this;
	if(this:GetParent():GetName() ~= "STAConfig") then
		objTargetFrame = this:GetParent();
	end
	
	-- depends on mode
	local info;
	info = {
		text = "<none>";
		func = 	function()
					STA_TargetSettingsDropdown_OnClick(objTargetFrame);
				end;
	};
	UIDropDownMenu_AddButton(info);
	
	if(STA_VARIABLES.MODE == 1) then
		for i = 1, getn(STA_LISTS.TANKS), 1 do
			info = {
				text = STA_LISTS.TANKS[i];
				func = function()
					STA_TargetSettingsDropdown_OnClick(objTargetFrame);
				end;
			};
			UIDropDownMenu_AddButton(info);
		end
	elseif(STA_VARIABLES.MODE == 2) then
		for i = 1, getn(STA_LISTS.SHEEP), 1 do
			info = {
				text = STA_LISTS.SHEEP[i];
				func = function()
					STA_TargetSettingsDropdown_OnClick(objTargetFrame);
				end;
			};
			UIDropDownMenu_AddButton(info);
		end
	elseif(STA_VARIABLES.MODE == 3) then
		for i = 1, getn(STA_LISTS.BANISH), 1 do
			info = {
				text = STA_LISTS.BANISH[i];
				func = function()
					STA_TargetSettingsDropdown_OnClick(objTargetFrame);
				end;
			};
			UIDropDownMenu_AddButton(info);
		end
	end
end

function STA_TargetSettingsDropdown_OnClick(objFrame)
	local i = this:GetID();
	local index = tonumber(string.sub(objFrame:GetName(),27))
	UIDropDownMenu_SetSelectedID(objFrame, i);

	-- this saves the selected index for the selected mode
	STA_ASSIGNMENTS[STA_VARIABLES.MODE][index] = i;
end

function STA_TargetSettingsDropdowns_OnShow(theFrame)
	UIDropDownMenu_Initialize(this, STA_TargetSettingsDropdowns_InitializeOptions);
	UIDropDownMenu_SetSelectedID(this, 1);
end

function STA_OutputAssignmentsQuick()
	--:AddMessage("STA_OutputAssignmentsQuick()")
	STA_OutputAssignments(STA_VARIABLES.QUICKMODE)
end

function STA_OutputAssignmentsConfig()
	--DEFAULT_CHAT_FRAME:AddMessage("STA_OutputAssignmentsConfig()")
	STA_OutputAssignments(STA_VARIABLES.MODE)
end

function STA_OutputAssignments(iMode)
	--DEFAULT_CHAT_FRAME:AddMessage("STA_OutputAssignments(" ..iMode.. ")")

	for i = 1, 8, 1 do
		local dropdown = getglobal("STA_TargetSettingsDropdown"..i)
		--local index = UIDropDownMenu_GetSelectedID(dropdown) - 1;
		-- -1 as the selected index is saved, rather than the player index
		-- at pos 1 is always <none> 
		local index = STA_ASSIGNMENTS[STA_VARIABLES.MODE][i] - 1;
		
		-- 0 is always <none>, not assigned
		if(index ~= 0) then
			--DEFAULT_CHAT_FRAME:AddMessage("Index: " ..index)
		
			local msg = STA_MODES[iMode] .." ".. STA_ICONS[i] ..": ";
			
			if(iMode == 1) then
				msg = msg .. STA_LISTS.TANKS[index];
			elseif(iMode == 2) then
				msg = msg .. STA_LISTS.SHEEP[index];
			elseif(iMode == 3) then
				msg = msg .. STA_LISTS.BANISH[index];
			end
		
			--DEFAULT_CHAT_FRAME:AddMessage(msg)
			SendChatMessage(msg ,"RAID" ,nil ,nil)
		
		end
	end
end

function STA_isInList(objList, strName)
	for i = 1, getn(objList) do
		if(objList[i] == strName) then
			return true;
		end
	end
	
	return false;
end

function STA_ScanRaid()
	for i = 1, 40 do
		name, _, _, _, class = GetRaidRosterInfo(i);
		_, eClass = UnitClass("raid" ..i);
		if(name) then
			if(eClass == "WARRIOR" or eClass == "DRUID" or eClass == "PALADIN") then
				
				if(not STA_isInList(STA_LISTS.TANKS, name)) then
					local index = getn(STA_LISTS.TANKS)
					STA_LISTS.TANKS[index + 1] = name
				end
				
			elseif(eClass == "MAGE") then
				if(not STA_isInList(STA_LISTS.SHEEP, name)) then
					local index = getn(STA_LISTS.SHEEP)
					STA_LISTS.SHEEP[index + 1] = name
				end
				
			elseif(eClass == "WARLOCK") then
				if(not STA_isInList(STA_LISTS.BANISH, name)) then
					local index = getn(STA_LISTS.BANISH)
					STA_LISTS.BANISH[index + 1] = name
				end
			else
				--DEFAULT_CHAT_FRAME:AddMessage("Nothing:" ..name .. ": " ..class .. "(" ..eClass.. ")")
			end
		end
   end
end

