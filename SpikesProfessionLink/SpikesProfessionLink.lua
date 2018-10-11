
CRAFTS_DISPLAYED = 8;
MAX_CRAFT_REAGENTS = 8;
CRAFT_SKILL_HEIGHT = 16;

CraftTypeColor = { };
CraftTypeColor["optimal"]	= { r = 1.00, g = 0.50, b = 0.25 };
CraftTypeColor["medium"]	= { r = 1.00, g = 1.00, b = 0.00 };
CraftTypeColor["easy"]		= { r = 0.25, g = 0.75, b = 0.25 };
CraftTypeColor["trivial"]	= { r = 0.50, g = 0.50, b = 0.50 };
CraftTypeColor["used"]	= { r = 0.50, g = 0.50, b = 0.50 };
CraftTypeColor["header"]	= { r = 1.00, g = 0.82, b = 0 };
CraftTypeColor["none"]		= { r = 0.25, g = 0.75, b = 0.25 };

CraftSubTypeColor = { };
CraftSubTypeColor["optimal"]	= { r = 1.00, g = 0.50, b = 0.25 };
CraftSubTypeColor["medium"]	= { r = 1.00, g = 1.00, b = 0.00 };
CraftSubTypeColor["easy"]		= { r = 0.25, g = 0.75, b = 0.25 };
CraftSubTypeColor["trivial"]	= { r = 0.50, g = 0.50, b = 0.50 };
CraftSubTypeColor["used"]	= { r = 0.50, g = 0.50, b = 0.50 };
CraftSubTypeColor["header"]	= { r = 1.00, g = 0.82, b = 0 };
CraftSubTypeColor["none"]		= { r = 0, g = 0.45, b = 0 };

--UIPanelWindows["CraftFrame"] = { area = "left", pushable = 4 };

SPL_TRADESKILLTOSTRING = {}
SPL_TRADESKILLTOSTRING["Ingenieurskunst"] = "ENGINEERING"

local SPL_TradeSkills = {}

local SPL_ICONS = {}
SPL_ICONS["ENGINEERING"] = "Interface\\Icons\\Trade_Engineering"

local SPL_PLAYER_SPELLS = {}
SPL_PLAYER_SPELLS["ENGINEERING"] = {}

local SPL_PLAYER_SERIALIZED = {}


local SPL_KNOWNPLAYERS = {}
--function SPL_CraftFrame_Show()
--	ShowUIPanel(SPL_CraftFrame);
--	if ( not SPL_CraftFrame:IsVisible() ) then
--		CloseCraft();
--		return;
--	end
--
--	CraftCreateButton:Disable();	
--	if ( GetNumCrafts() > 0 ) then
--		-- Check to see if has headers, if so select the second slot if not select the first slot
--		local indexToSelect;
--		local craftName, craftSubSpellName, craftType, numAvailable, isExpanded = GetCraftInfo(1);
--		if ( craftType == "header" ) then
--			indexToSelect = 2;
--		else
--			indexToSelect = 1;
--		end
--		CraftFrame_SetSelection(indexToSelect);
--	end
--	FauxScrollFrame_SetOffset(CraftListScrollFrame, 0);
--	CraftListScrollFrameScrollBar:SetMinMaxValues(0, 0); 
--	CraftListScrollFrameScrollBar:SetValue(0);
--	CraftFrame_Update();
--end

local origChatFrame_OnHyperlinkShow = ChatFrame_OnHyperlinkShow;
ChatFrame_OnHyperlinkShow = function(...)
    local chatFrame, link, text, button = ...;

    local r,g,b,itemID,linkType,skillLevel,skillData,E,F,G,H,name = link:match("^|cff(%x%x)(%x%x)(%x%x)|Hitem:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(%-?%d+):(%d+)|h%[(.+)%]|h|r$")

    -- linkType = flag (1 = player)
    -- simpleData = Level, Race, Class etc.
    if(itemID == "1" and linkType == "2") then

        -- get professionname and player name
        professionName, playerName = name:match("^(%w*) %((%w*)%)$")

        DEFAULT_CHAT_FRAME:AddMessage("skillLevel: " ..skillLevel)
        DEFAULT_CHAT_FRAME:AddMessage("skillData: " ..skillData)
        DEFAULT_CHAT_FRAME:AddMessage("professionName: " ..professionName)
        DEFAULT_CHAT_FRAME:AddMessage("playerName: " ..playerName)

        SPL_ReadHyperlinkData(playerName, professionName, skillLevel, skillData)

        return;
    end
    
    return origChatFrame_OnHyperlinkShow(...);
end

function SPL_ReadHyperlinkData(strPlayer, strProfession, strSkillLevel, strData)

    -- it's a completly new player
    if (SPL_KNOWNPLAYERS[strPlayer] == nil) then
        SPL_KNOWNPLAYERS[strPlayer] = {}
    end

    if (SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]] == nil) then
        SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]] = {}
        SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["RANK"] = strSkillLevel
        SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["RAW"] = strData
        SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["SPELLS"] = {}
    end

    -- build array
    local tmpBuffer = {}

    for i = 1, 11 do
        tmpBuffer[i] = tonumber(SPL_LTrim(string.sub(strData, (i - 1) * 10 + 1, i * 10), "0"))
    end

    tmpBit = 0
    strLastCap = ""
    iCaps = 0
    iSpells = 0

    for i = 1, 242 do
        local indexValue = math.floor(tmpBit / 32) + 1

        if(bit.band(tmpBuffer[indexValue], bit.lshift(1, tmpBit % 32)) > 0) then


            -- check if we need to add a new cap
            strCurrentCap = SPL_GetCategoryByClass(SPELLDB[SPL_TRADESKILLTOSTRING[strProfession]][i].class, SPELLDB[SPL_TRADESKILLTOSTRING[strProfession]][i].subclass)

            if(strCurrentCap ~= strLastCap) then
                
                -- insert new cap
                SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["SPELLS"][iSpells + iCaps + 1] = strCurrentCap

                strLastCap = strCurrentCap
                iCaps = iCaps + 1
            end

            -- SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["SPELLS"][i]:match(^(%d*)$) = number
            SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["SPELLS"][iSpells + iCaps + 1] = i

            iSpells = iSpells +1
            SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["LISTCOUNT"] = iSpells + iCaps
        end

        tmpBit = tmpBit + 1
    end

    --DEFAULT_CHAT_FRAME:AddMessage("Output: ")

    --for j = 1, SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["LISTCOUNT"] do
    --    if(tostring(SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["SPELLS"][j]):match("^(%d*)$")) then
    --        local name, rank, icon, castTime, minRange, maxRange = GetSpellInfo(SPELLDB[SPL_TRADESKILLTOSTRING[strProfession]][SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["SPELLS"][j]].spell)
    --
    --        DEFAULT_CHAT_FRAME:AddMessage(name)
    --    else
    --        DEFAULT_CHAT_FRAME:AddMessage(SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["SPELLS"][j])
    --    end
    --end

    SPL_CraftFrameSetData(SPL_TRADESKILLTOSTRING[strProfession], SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["RANK"], strPlayer, SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["LISTCOUNT"])
    SPL_CraftFrame:Show()

end

function SPL_CraftFrame_Hide()
    HideUIPanel(SPL_CraftFrame);
end

function SPL_CraftFrame_OnLoad()
    this:RegisterEvent("CRAFT_SHOW")
    this:RegisterEvent("TRADE_SKILL_SHOW")
    FauxScrollFrame_SetOffset(SPL_CraftListScrollFrame, 0);

    SLASH_SPIKESPROFESSIONLINK1 = "/spl";
    SLASH_SPIKESPROFESSIONLINK2 = "/prof";
    SlashCmdList["SPIKESPROFESSIONLINK"] = function(msg)
        SPL_SlashCommandHandler(msg);
    end

    DEFAULT_CHAT_FRAME:AddMessage("OnLoad SPL")
end

function SPL_SlashCommandHandler(msg)
    local a, b, command = string.find( msg, "(%w+)" );

    if( command == nil ) then
        return;
    else
        command = string.lower( msg );
    end

    if (command == "show") then
        -- engineering will be extracted from the hyperlink
        -- Skill level will be extracted from the hyperlink
        -- Skill level will be extracted from the hyperlink
        SPL_CraftFrameSetData("ENGINEERING", "375", "Spikeone", 173)
        SPL_CraftFrame:Show()
    elseif(command == "hide") then
        SPL_CraftFrame:Hide()
    elseif(command == "info") then

    end
end

function SPL_ScanTradeskill()
    local numCrafts = GetNumTradeSkills()

    local tsName = GetTradeSkillLine()

    DEFAULT_CHAT_FRAME:AddMessage("tsName: " ..tsName)

    if(numCrafts and tsName) then
        SPL_ScanSpecificTradeskill(SPL_TRADESKILLTOSTRING[tsName], numCrafts)
    end
end

function SPL_ScanSpecificTradeskill(tsName, tsCount)

    if(tsName == nil) then
        return
    end
    
    if(SPL_TradeSkills[tsName]) then
        return -- tradeskill already scanned
    else
        SPL_TradeSkills[tsName] = {} --need to scan
        SetupTradeSkillButton() -- add link button
    end

    if(SPL_PLAYER_SPELLS[tsName] == nil) then
        SPL_PLAYER_SPELLS[tsName] = {}
    end

    local skillLineName, skillLineRank, skillLineMaxRank = GetTradeSkillLine();
    SPL_TradeSkills[tsName]["RANK"] = skillLineRank
    SPL_TradeSkills[tsName]["LNAME"] = skillLineName

    numKnown = 0
    numKnownNotDB = 0

    for i = 1, tsCount do
        local skillname, skilltype, numAvailable, isExpanded = GetTradeSkillInfo(i)

        if(skilltype ~= "header") then

            local recipelink = GetTradeSkillRecipeLink(i)
            local r,g,b,spellID,name,C,D,E,F,G,H,I = recipelink:match("^|cff(%x%x)(%x%x)(%x%x)|Henchant:(%d+)|h%[(.+)%]|h|r$")

            SPL_PLAYER_SPELLS[tsName][tonumber(spellID)] = "known"
            numKnown = numKnown + 1

        end
    end

    SPL_PLAYER_SERIALIZED[tsName] = SPL_SerializeKnownSpells(tsName)

end

function SPL_SerializeKnownSpells(strProfession)
    -- build array
    local tmpBuffer = {}
    for k = 1, 11 do
        tmpBuffer[k] = 0
    end

    local tmpBit = 0

    for i = 1, 242 do

        if(SPL_PLAYER_SPELLS[strProfession][SPELLDB[strProfession][i].spell]) then
            local indexValue = math.floor((tmpBit / 32) + 1)
            tmpBuffer[indexValue] = bit.bor(tmpBuffer[indexValue],(bit.lshift(1,(tmpBit % 32))))

            local name, rank, icon, castTime, minRange, maxRange = GetSpellInfo(SPELLDB[strProfession][i].spell)
            DEFAULT_CHAT_FRAME:AddMessage(name .. "(" .. SPELLDB[strProfession][i].spell .. ")")
        end
        tmpBit = tmpBit + 1
    end

    local strReturnString = ""
    for h = 1, SPL_tablelength(tmpBuffer) do
        strReturnString = strReturnString .. SPL_LPad(tmpBuffer[h], "0", 10)
    end

    return strReturnString
end

function SPL_tablelength(T)
    local count = 0
    for _ in pairs(T) do 
        count = count + 1 
    end
    return count
end

function SPL_CraftFrame_OnEvent()
    if( event == "CRAFT_SHOW") then -- enchanting is a craft
        DEFAULT_CHAT_FRAME:AddMessage("SPL Event: " ..event)
    elseif(event=="TRADE_SKILL_SHOW") then -- engineering/leatherworking are trades
        DEFAULT_CHAT_FRAME:AddMessage("SPL Event: " ..event)
        if(TradeSkillFrame:IsVisible()) then
            DEFAULT_CHAT_FRAME:AddMessage("TradeSkillFrame:IsVisible")
        end

        SPL_ScanTradeskill()
    end
end

function SetupTradeSkillButton()
        local button = CreateFrame("Button",nil,TradeSkillFrame)
        button.obj = self
        button:SetWidth(20)
        button:SetHeight(20)
        button:SetScript("OnEnter",function(this)
            GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
            GameTooltip:SetText("Link Profession", 1.0,1.0,1.0 )
        end)
        button:SetScript("OnLeave",function(this)
            GameTooltip:Hide()
        end)
        button:SetScript("OnClick",SPL_TradeskillButton_OnClick)
        button:SetNormalTexture("Interface\\Addons\\SpikesProfessionLink\\Media\\ICON_BUTTON_32x32")
        button:SetPushedTexture("Interface\\Addons\\SpikesProfessionLink\\Media\\ICON_BUTTON_32x32")
        button:SetDisabledTexture("Interface\\Addons\\SpikesProfessionLink\\Media\\ICON_BUTTON_32x32")
        button:SetHighlightTexture("Interface\\Addons\\SpikesProfessionLink\\Media\\ICON_BUTTON_32x32", "ADD")
        button:SetPoint("RIGHT",TradeSkillFrame,"RIGHT",-61,232)
end

function SPL_TradeskillButton_OnClick()
    SPL_AddProfessionLink()
end

function SPL_BuildProfessionLink(strProfession)
    local strPlayerItemString = "|cffffffff"

    -- "|Hitem:1:1:0:0:0:0:0:0|h[asdf]h|r"

    -- 1 = just an non existing item ID
    -- 2 = faketyp (1 = player, 2 = profession)
    strPlayerItemString = strPlayerItemString .. "|Hitem:1:2:"

    strPlayerItemString = strPlayerItemString .. SPL_TradeSkills[strProfession]["RANK"] -- SkillLevel
    
    strPlayerItemString = strPlayerItemString .. ":"
    
    strPlayerItemString = strPlayerItemString .. SPL_PLAYER_SERIALIZED[strProfession] -- Data

    strPlayerItemString = strPlayerItemString ..":"
    
    strPlayerItemString = strPlayerItemString .. "0"

    strPlayerItemString = strPlayerItemString .. ":0:0:0|h["

    strPlayerItemString = strPlayerItemString .. SPL_TradeSkills[strProfession]["LNAME"] .. " (" .. UnitName("player") .. ")"

    strPlayerItemString = strPlayerItemString .. "]|h|r"

    return strPlayerItemString
end

function SPL_AddProfessionLink()

    -- This is for WIM compatibility
    -- Step 1: Check if WIM is loaded
    if(IsAddOnLoaded("WIM")) then
        -- Step 2: iterate through all children of UI parent
        for i = 1, select('#', UIParent:GetChildren()) do
            -- Step 3: it might be a wim_window
            local wim_messageframe = select(i, UIParent:GetChildren())

            -- Step 3.1: has the frame a name?
            if(wim_messageframe:GetName()) then
                -- Step 3.2: Does the name start with "WIM_msgFrame"? (They are called WIM_msgFrame1, WIM_msgFrame2, etc.)
                if(string.sub(wim_messageframe:GetName(), 0,12) == "WIM_msgFrame") then

                    -- Step 4: iterate through all children of  the WIM_msgFrame
                    for j = 1, select('#', wim_messageframe:GetChildren()) do
                        -- Step 5: it might be a MsgBox (Input box)
                        local wim_messageframe_edit = select(j, wim_messageframe:GetChildren())
                        -- Step 5.1: Frame name contains MsgBox at the end?(They are called IM_msgFrame1MsgBox, WIM_msgFrame2MsgBox, etc) and the parent frame is shown?
                        if(string.sub(wim_messageframe_edit:GetName(), 14,19) == "MsgBox" and wim_messageframe:IsShown()) then

                            -- Step 5.2: the input box has focus?
                            if(wim_messageframe_edit:HasFocus()) then
                                -- Step 6: add message
                                if(wim_messageframe_edit:GetText() ~= "") then
                                    wim_messageframe_edit:SetText(wim_messageframe_edit:GetText() .. SPL_BuildProfessionLink("ENGINEERING") .. " ")
                                else
                                    wim_messageframe_edit:SetText(SPL_BuildProfessionLink("ENGINEERING") .. " ")
                                end

                                return
                            end

                        end
                    end
                end
            end
        end
    end

    -- this is called if no WIM window has been found
    chatFrame = DEFAULT_CHAT_FRAME;

    chatFrame.editBox:Show();
    chatFrame.editBox.setText = 1;

    if(chatFrame.editBox:GetText() ~= "") then
        chatFrame.editBox.text = chatFrame.editBox:GetText() .. " " .. SPL_BuildProfessionLink("ENGINEERING") .. " ";
    else
        chatFrame.editBox.text = SPL_BuildProfessionLink("ENGINEERING") .. " ";
    end
end

function SPL_LPad(strValue, strPadChar, iPadLength)

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

function SPL_LTrim(strString, strTrimchar)
    while string.sub(strString, 1, 1) == strTrimchar do
        strString = string.sub(strString, 2, string.len(strString))
    end

    if(strString == "" or strString == nil) then
        strString = strTrimchar
    end

    return strString
end

function SPL_CraftFrameSetData(strCraftName, strSkillLevel, strName, numCrafts)
    -- set title
    SPL_CraftFrameTitleText:SetText(strCraftName)
    -- set portrait
    SetPortraitToTexture(SPL_CraftFramePortrait, SPL_ICONS[strCraftName]);

    -- setup skillbar
    SPL_CraftRankFrameSkillName:SetText(strName .. ":");
    SPL_CraftRankFrame:SetStatusBarColor(0.0, 0.0, 1.0, 0.5);
    SPL_CraftRankFrameBackground:SetVertexColor(0.0, 0.0, 0.75, 0.5);
    SPL_CraftRankFrame:SetMinMaxValues(0, tonumber(strSkillLevel));
    SPL_CraftRankFrame:SetValue(tonumber(strSkillLevel));
    SPL_CraftRankFrameSkillRank:SetText(strSkillLevel.."/375");
    SPL_CraftRankFrame:Show();
    SPL_CraftSkillBorderLeft:Show();
    SPL_CraftSkillBorderRight:Show();

    for j = 1, 8 do
        DEFAULT_CHAT_FRAME:AddMessage("strName: " ..strName.. " strCraftName: " .. strCraftName)
        if(tostring(SPL_KNOWNPLAYERS[strName][strCraftName]["SPELLS"][j]):match("^(%d*)$")) then
            local name, rank, icon, castTime, minRange, maxRange = GetSpellInfo(SPELLDB[strCraftName][SPL_KNOWNPLAYERS[strName][strCraftName]["SPELLS"][j]].spell)
    
            SPL_SetCraftButton(j, name, false, false)
            --DEFAULT_CHAT_FRAME:AddMessage(name)
        else
            --DEFAULT_CHAT_FRAME:AddMessage(SPL_KNOWNPLAYERS[strPlayer][SPL_TRADESKILLTOSTRING[strProfession]]["SPELLS"][j])
            SPL_SetCraftButton(j, SPL_KNOWNPLAYERS[strName][strCraftName]["SPELLS"][j], true, true)
        end
    end


    --SPL_SetCraftButton(1, "Nummer 1", true, true)
    --SPL_SetCraftButton(2, "Nummer 2", true, false)
    --SPL_SetCraftButton(3, "Nummer 3", false, true)
    --SPL_SetCraftButton(4, "Nummer 4", false, false)

    -- used for setting the correct scrollbar (recipe list)
    FauxScrollFrame_Update(SPL_CraftListScrollFrame, numCrafts, CRAFTS_DISPLAYED, CRAFT_SKILL_HEIGHT, nil, nil, nil, SPL_CraftHighlightFrame, 293, 316 );
end

function SPL_SetCraftButton(iID, strText, isHeader, isExpanded)
    local tmpButton = getglobal("SPL_Craft" ..iID)

    if(isHeader) then
        -- set text
        tmpButton:SetText(strText)

        -- display + / - signs
        if ( isExpanded ) then
            tmpButton:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up");
        else
            tmpButton:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up");
        end

        -- highlighting 
        getglobal("SPL_Craft"..iID.."Highlight"):SetTexture("Interface\\Buttons\\UI-PlusButton-Hilight");
        getglobal("SPL_Craft"..iID):UnlockHighlight();

        -- set colors
        color = { r = 1.00, g = 0.82, b = 0 }

        tmpButton:SetTextColor(color.r, color.g, color.b);
        tmpButton.r = color.r;
        tmpButton.g = color.g;
        tmpButton.b = color.b
    else
        -- set text
        tmpButton:SetText(" " .. strText)

        -- remove any - / + signs
        tmpButton:SetNormalTexture("")

        -- remove highlight if not selected index
        getglobal("SPL_Craft"..iID.."Highlight"):SetTexture("");
        getglobal("SPL_Craft"..iID):UnlockHighlight();

        -- set colors
        color = { r = 0.50, g = 0.50, b = 0.50 }

        tmpButton:SetTextColor(color.r, color.g, color.b);
        tmpButton.r = color.r;
        tmpButton.g = color.g;
        tmpButton.b = color.b
    end

    tmpButton:Show()
end

function SPL_GetCategoryByClass(iClass, iSubclass)
    if(CATEGORYDB[tonumber(iClass)][tonumber(iSubclass)]) then
        return CATEGORYDB[tonumber(iClass)][tonumber(iSubclass)]
    end

    return "Unknown"
end

function SPL_CraftFrame_Update()
    -- spike: set title and portrait
    --SetPortraitTexture(CraftFramePortrait, "player");
    --CraftFrameTitleText:SetText(GetCraftName());

    -- spike: guess this is good for trainer as it just hides buttons
    --if ( CraftIsEnchanting() ) then
    --    CraftFrameFilterDropDown:Show();
    --    CraftFrameIsMakeableText:Show();
    --    CraftFrameAvailableFilterCheckButton:Show();
    --else
    --    CraftFrameFilterDropDown:Hide();
    --    CraftFrameIsMakeableText:Hide();
    --    CraftFrameAvailableFilterCheckButton:Hide();
    --end

	local numCrafts = GetNumCrafts();
	local craftOffset = FauxScrollFrame_GetOffset(CraftListScrollFrame);
	-- Set the action button text
	CraftCreateButton:SetText(getglobal(GetCraftButtonToken()));


    ---- Set the craft skill line status bar info
    --local name, rank, maxRank = GetCraftDisplaySkillLine();
    --if ( name ) then
    --	CraftRankFrameSkillName:SetText(name);
    --	CraftRankFrame:SetStatusBarColor(0.0, 0.0, 1.0, 0.5);
    --	CraftRankFrameBackground:SetVertexColor(0.0, 0.0, 0.75, 0.5);
    --	CraftRankFrame:SetMinMaxValues(0, maxRank);
    --	CraftRankFrame:SetValue(rank);
    --	CraftRankFrameSkillRank:SetText(rank.."/"..maxRank);
    --	CraftRankFrame:Show();
    --	CraftSkillBorderLeft:Show();
    --	CraftSkillBorderRight:Show();
    --else
    --	CraftRankFrame:Hide();
    --	CraftSkillBorderLeft:Hide();
    --	CraftSkillBorderRight:Hide();
    --end

	-- Hide the expand all button if less than 2 crafts learned	
	if ( numCrafts <=1 ) then
		CraftExpandButtonFrame:Hide();
	else
		CraftExpandButtonFrame:Show();
	end
	-- If no Crafts
	if ( numCrafts == 0 ) then
		CraftName:Hide();
		CraftRequirements:Hide();
		CraftIcon:Hide();
		CraftReagentLabel:Hide();
		CraftDescription:Hide();
		for i=1, MAX_CRAFT_REAGENTS, 1 do
			getglobal("CraftReagent"..i):Hide();
		end
		CraftDetailScrollFrameScrollBar:Hide();
		CraftDetailScrollFrameTop:Hide();
		CraftDetailScrollFrameBottom:Hide();
		SPL_CraftListScrollFrame:Hide();
		for i=1, CRAFTS_DISPLAYED, 1 do
			getglobal("Craft"..i):Hide();
		end
		CraftHighlightFrame:Hide();
		CraftRequirements:Hide();
		return;
	end
	
	-- If has crafts
	CraftName:Show();
	CraftRequirements:Show();
	CraftIcon:Show();
	CraftDescription:Show();
	CraftCollapseAllButton:Enable();
	
    -- ScrollFrame update
    --FauxScrollFrame_Update(SPL_CraftListScrollFrame, numCrafts, CRAFTS_DISPLAYED, CRAFT_SKILL_HEIGHT, nil, nil, nil, CraftHighlightFrame, 293, 316 );
	
	CraftHighlightFrame:Hide();
	
	local craftIndex, craftName, craftButton, craftButtonSubText, craftButtonCost, craftButtonText;
	for i=1, CRAFTS_DISPLAYED, 1 do
		craftIndex = i + craftOffset;
		craftName, craftSubSpellName, craftType, numAvailable, isExpanded, trainingPointCost, requiredLevel = GetCraftInfo(craftIndex);
		craftButton = getglobal("Craft"..i);
		craftButtonSubText = getglobal("Craft"..i.."SubText");
		craftButtonCost = getglobal("Craft"..i.."Cost");
		craftButtonText = getglobal("Craft"..i.."Text");
		if ( craftIndex <= numCrafts ) then	
			-- Set button widths if scrollbar is shown or hidden
			if ( SPL_CraftListScrollFrame:IsVisible() ) then
				craftButton:SetWidth(293);
				-- HACK to fix a bug with (Rank) rendering in Beast Training --
				if ( not trainingPointCost ) then
					craftButtonText:SetWidth(290);
				end
			else
				craftButton:SetWidth(323);
				-- HACK to fix a bug with (Rank) rendering in Beast Training --
				if ( not trainingPointCost ) then
					craftButtonText:SetWidth(320);
				end
			end
			local color = CraftTypeColor[craftType];
			local subColor = CraftSubTypeColor[craftType];
			craftButton:SetTextColor(color.r, color.g, color.b);
			craftButton.r = color.r;
			craftButton.g = color.g;
			craftButton.b = color.b;
			craftButtonCost:SetTextColor(color.r, color.g, color.b);
			craftButtonSubText:SetTextColor(color.r, color.g, color.b);
			craftButton:SetID(craftIndex);
			craftButton:Show();
			-- Handle headers
			if ( craftType == "header" ) then
				craftButton:SetText(craftName);
				craftButtonSubText:SetText("");
				if ( isExpanded ) then
					craftButton:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up");
				else
					craftButton:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up");
				end
				getglobal("Craft"..i.."Highlight"):SetTexture("Interface\\Buttons\\UI-PlusButton-Hilight");
				getglobal("Craft"..i):UnlockHighlight();
			else
				craftButton:SetNormalTexture("");
				getglobal("Craft"..i.."Highlight"):SetTexture("");
				if ( numAvailable == 0 ) then
					craftButton:SetText(" "..craftName);
				else
					craftButton:SetText(" "..craftName.." ["..numAvailable.."]");
				end
				if ( craftSubSpellName ~= "" ) then
					craftButtonSubText:SetText(format(TEXT(PARENS_TEMPLATE), craftSubSpellName));
				else 
					craftButtonSubText:SetText("");
				end
				if ( trainingPointCost > 0 ) then
					craftButtonCost:SetText(format(TRAINER_LIST_TP, trainingPointCost));
				else
					craftButtonCost:SetText("");
				end
				craftButtonSubText:SetPoint("LEFT", "Craft"..i.."Text", "RIGHT", 10, 0);
				-- Place the highlight and lock the highlight state
				if ( GetCraftSelectionIndex() == craftIndex ) then
					CraftHighlightFrame:SetPoint("TOPLEFT", "Craft"..i, "TOPLEFT", 0, 0);
					CraftHighlightFrame:Show();
					craftButtonSubText:SetTextColor(1.0, 1.0, 1.0);
					craftButtonCost:SetTextColor(1.0, 1.0, 1.0);
					getglobal("Craft"..i):LockHighlight();
				else
					getglobal("Craft"..i):UnlockHighlight();
				end
			end
			
		else
			craftButton:Hide();
		end
	end
	
    -- -- If player has training points show them here
    --Craft_UpdateTrainingPoints();

	-- Set the expand/collapse all button texture
	local numHeaders = 0;
	local notExpanded = 0;
	for i=1, numCrafts, 1 do
		local craftName, craftSubSpellName, craftType, numAvailable, isExpanded = GetCraftInfo(i);
		if ( craftName and craftType == "header" ) then
			numHeaders = numHeaders + 1;
			if ( not isExpanded ) then
				notExpanded = notExpanded + 1;
			end
		end
	end
	-- If all headers are not expanded then show collapse button, otherwise show the expand button
	if ( notExpanded ~= numHeaders ) then
		CraftCollapseAllButton.collapsed = nil;
		CraftCollapseAllButton:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up");
	else
		CraftCollapseAllButton.collapsed = 1;
		CraftCollapseAllButton:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up");
	end

	-- If has headers show the expand all button
	if ( numHeaders > 0 ) then
		-- If has headers then move all the names to the right
		for i=1, CRAFTS_DISPLAYED, 1 do
			getglobal("Craft"..i.."Text"):SetPoint("TOPLEFT", "Craft"..i, "TOPLEFT", 21, 0);
		end
		CraftExpandButtonFrame:Show();
	else
		-- If no headers then move all the names to the left
		for i=1, CRAFTS_DISPLAYED, 1 do
			getglobal("Craft"..i.."Text"):SetPoint("TOPLEFT", "Craft"..i, "TOPLEFT", 3, 0);
		end
		CraftExpandButtonFrame:Hide();
	end
end

function SPL_CraftFrame_SetSelection(id)
	if ( not id ) then
		return;
	end
	local craftName, craftSubSpellName, craftType, numAvailable, isExpanded, trainingPointCost, requiredLevel = GetCraftInfo(id);
	CraftHighlightFrame:Show();
	-- If the type of the selection is header, don't process all the craft details
	if ( craftType == "header" ) then
		CraftHighlightFrame:Hide();
		if ( isExpanded ) then
			CollapseCraftSkillLine(id);
		else
			ExpandCraftSkillLine(id);
		end
		return;
	end
	SelectCraft(id);
	if ( GetCraftSelectionIndex() > GetNumCrafts() ) then
		return;
	end
	local color = CraftTypeColor[craftType];
	CraftHighlight:SetVertexColor(color.r, color.g, color.b);

	-- General Info
	CraftName:SetText(craftName);

	-- Set cooldown data
	if ( GetCraftCooldown(id) ) then
		CraftCooldown:SetText(COOLDOWN_REMAINING.." "..SecondsToTime(GetCraftCooldown(id)));
	else
		CraftCooldown:SetText("");
	end
	
	-- Set Recipe Icon
	CraftIcon:SetNormalTexture(GetCraftIcon(id));
	
	-- Set number of items that are generated
	local minMade,maxMade = GetCraftNumMade(id);
	if ( maxMade > 1 ) then
		if ( minMade == maxMade ) then
			CraftIconCount:SetText(minMade);
		else
			CraftIconCount:SetText(minMade.."-"..maxMade);
		end
		if ( CraftIconCount:GetWidth() > 39 ) then
			CraftIconCount:SetText("~"..floor((minMade + maxMade)/2));
		end
	else
		CraftIconCount:SetText("");
	end

	if ( GetCraftDescription(id) ) then
		CraftDescription:SetText(GetCraftDescription(id));
		CraftReagentLabel:SetPoint("TOPLEFT", "CraftDescription", "BOTTOMLEFT", 0, -10);
	else
		CraftDescription:SetText(" ");
		CraftReagentLabel:SetPoint("TOPLEFT", "CraftDescription", "TOPLEFT", 0, 0);
	end
	
	-- Reagents
	local creatable = 1;
	local numReagents = GetCraftNumReagents(id);
	
	for i=1, numReagents, 1 do
		local reagentName, reagentTexture, reagentCount, playerReagentCount = GetCraftReagentInfo(id, i);
		local reagent = getglobal("CraftReagent"..i)
		local name = getglobal("CraftReagent"..i.."Name");
		local count = getglobal("CraftReagent"..i.."Count");
		if ( not reagentName or not reagentTexture ) then
			reagent:Hide();
		else
			reagent:Show();
			SetItemButtonTexture(reagent, reagentTexture);
			name:SetText(reagentName);
			-- Grayout items
			if ( playerReagentCount < reagentCount ) then
				SetItemButtonTextureVertexColor(reagent, GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
				name:SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
				creatable = nil;
			else
				SetItemButtonTextureVertexColor(reagent, 1.0, 1.0, 1.0);
				name:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
			end
			if ( playerReagentCount >= 100 ) then
				playerReagentCount = "*";
			end
			count:SetText(playerReagentCount.." /"..reagentCount);
		end
	end
	
	if ( numReagents > 0 ) then
		CraftReagentLabel:Show();
	else
		CraftReagentLabel:Hide();
	end
	for i=numReagents + 1, MAX_CRAFT_REAGENTS, 1 do
		getglobal("CraftReagent"..i):Hide();
	end

	local requiredTotems = BuildColoredListString(GetCraftSpellFocus(id));
	if ( requiredTotems ) then
		CraftRequirements:SetText(REQUIRES_LABEL.." "..requiredTotems);
	elseif ( requiredLevel and requiredLevel > 0 ) then
		if ( UnitLevel("pet") >= requiredLevel ) then
			CraftRequirements:SetText(REQUIRES_LABEL.." "..format(TRAINER_PET_LEVEL, requiredLevel));
		else
			CraftRequirements:SetText(REQUIRES_LABEL.." "..format(TRAINER_PET_LEVEL_RED, requiredLevel));
		end
	else
		CraftRequirements:SetText("");
	end

	if ( trainingPointCost > 0 ) then
		local totalPoints, spent = GetPetTrainingPoints();
		local usablePoints = totalPoints - spent;
		if ( usablePoints >= trainingPointCost ) then
			CraftCost:SetText(COSTS_LABEL.." "..trainingPointCost.." "..TRAINING_POINTS_LABEL);
		else
			CraftCost:SetText(COSTS_LABEL.." "..RED_FONT_COLOR_CODE..trainingPointCost..FONT_COLOR_CODE_CLOSE.." "..TRAINING_POINTS_LABEL);
		end
		
		CraftCost:Show();
	else
		CraftCost:Hide();
	end

	if ( craftType == "used" ) then
		creatable = nil;
	end

	if ( creatable ) then
		CraftCreateButton:Enable();
	else
		CraftCreateButton:Disable();
	end
	CraftDetailScrollFrame:UpdateScrollChildRect();
	-- Show or hide scrollbar
	if ((CraftDetailScrollFrameScrollBarScrollUpButton:IsEnabled() == 0) and (CraftDetailScrollFrameScrollBarScrollDownButton:IsEnabled() == 0) ) then
		CraftDetailScrollFrameScrollBar:Hide();
		CraftDetailScrollFrameTop:Hide();
		CraftDetailScrollFrameBottom:Hide();
	else
		CraftDetailScrollFrameScrollBar:Show();
		CraftDetailScrollFrameTop:Show();
		CraftDetailScrollFrameBottom:Show();
	end
end

function SPL_CraftButton_OnClick(button)
	if ( button == "LeftButton" ) then
		CraftFrame_SetSelection(this:GetID());
		CraftFrame_Update();
	end
end

function SPL_CraftCollapseAllButton_OnClick()
	if (this.collapsed) then
		this.collapsed = nil;
		ExpandCraftSkillLine(0);
	else
		this.collapsed = 1;
		CraftListScrollFrameScrollBar:SetValue(0);
		CollapseCraftSkillLine(0);
	end
end

function SPL_Craft_UpdateTrainingPoints()
	local totalPoints, spent = GetPetTrainingPoints();
	if ( totalPoints > 0 ) then
		CraftFramePointsLabel:Show();
		CraftFramePointsText:Show();
		CraftFramePointsText:SetText(totalPoints - spent);
	else
		CraftFramePointsLabel:Hide();
		CraftFramePointsText:Hide();
	end	
end

function SPL_CraftFrameFilterDropDown_OnLoad()
	UIDropDownMenu_Initialize(this, CraftFrameFilterDropDown_Initialize);
	UIDropDownMenu_SetWidth(120);
	UIDropDownMenu_SetSelectedID(CraftFrameFilterDropDown, 1);
end

function SPL_CraftFrameFilterDropDown_OnShow()
	-- Hack to quickly reset the ShowMakeable filter
	CraftOnlyShowMakeable(0);
	CraftFrameAvailableFilterCheckButton:SetChecked(0);
	UIDropDownMenu_Initialize(this, CraftFrameFilterDropDown_Initialize);
	if ( GetCraftFilter(0) ) then
		UIDropDownMenu_SetSelectedID(CraftFrameFilterDropDown, 1);
	end
end

function SPL_CraftFrameFilterDropDown_Initialize()
	CraftFrameFilterDropDown_LoadInvSlots(GetCraftSlots());
end

function SPL_CraftFrameFilterDropDown_LoadInvSlots(...)
	local allChecked = GetCraftFilter(0);
	local info = UIDropDownMenu_CreateInfo();
	if ( select("#", ...) > 1 ) then
		info.text = TEXT(ALL_INVENTORY_SLOTS);
		info.func = CraftFrameFilterDropDown_OnClick;
		info.checked = allChecked;
		UIDropDownMenu_AddButton(info);
	end
	
	local checked;
	for i=1, select("#", ...), 1 do
		if ( allChecked and select("#", ...) > 1 ) then
			checked = nil;
			UIDropDownMenu_SetText(TEXT(ALL_INVENTORY_SLOTS), CraftFrameFilterDropDown);
		else
			checked = GetCraftFilter(i);
			if ( checked ) then
				UIDropDownMenu_SetText(getglobal(select(i, ...)), CraftFrameFilterDropDown);
			end
		end
		info.text = getglobal(select(i, ...));
		info.func = CraftFrameFilterDropDown_OnClick;
		info.checked = checked;
		UIDropDownMenu_AddButton(info);
	end
end

function SPL_CraftFrameFilterDropDown_OnClick()
	UIDropDownMenu_SetSelectedID(CraftFrameFilterDropDown, this:GetID());
	SetCraftFilter(this:GetID());
end

function SPL_CraftFrameAvailableFilterCheckButton_OnClick()
	local checked = this:GetChecked();
	CraftOnlyShowMakeable(checked);
end