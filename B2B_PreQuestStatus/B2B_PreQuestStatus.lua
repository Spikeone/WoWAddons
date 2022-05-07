-- TODO: Eine Liste mit allen Quests und den danach zu prüfenden Quests wäre schöner als das lange if/elseif
--Main Frame
local B2B_PreQuestStatus = CreateFrame("Frame")

local displayQuest = ""
local EventHandler

local function FormatMissingQuest(instance, questId)
    DEFAULT_CHAT_FRAME:AddMessage(instance .." benötigt noch: " .."|cffFFFF00|Hquest:"..questId..":70|h[Klick: Quest Info]|h|r".." - " .."|cff3366BB|Hitem:1:3:"..questId..":0:0:0:0:0|h[Klick: B2B Datenbank]|h|r")
end

local function LookupInCache(questId)
    local playerName = UnitName("player");

    if (not QuestStatusCache[playerName]) then QuestStatusCache[playerName] = {} end

    if (not QuestStatusCache[playerName][questId] or QuestStatusCache[playerName][questId] ~= "1") then
        SendChatMessage(".b2bapi getqueststatus " ..questId,"SAY" ,nil);
    else
        EventHandler(nil, "CHAT_MSG_ADDON", "B2BAPI", "getqueststatus;" ..questId.. ";1")
    end
end

local function UpdateInCache(questId, questStatus)
    local playerName = UnitName("player");

    if (not QuestStatusCache[playerName]) then QuestStatusCache[playerName] = {} end

    QuestStatusCache[playerName][questId] = questStatus;
end

EventHandler = function(self, event, arg1, arg2, ...)
    if( event ~= 'CHAT_MSG_ADDON') then return; end

    if (arg1 ~= "B2BAPI") then return; end

    local data = arg2;
    local apifunc, data = strsplit(";", data, 2);

    if (apifunc ~= "getqueststatus") then return; end

    local questId, questStatus = strsplit(";", data);

    -- Kara related
    if(questId == "9824") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("9825")
        else
            FormatMissingQuest("Karazhan", questId)
        end
    elseif(questId == "9825") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("9826")
        else
            FormatMissingQuest("Karazhan", questId)
        end
    elseif(questId == "9826") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("9829")
        else
            FormatMissingQuest("Karazhan", questId)
        end
    elseif(questId == "9829") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("9831")
        else
            FormatMissingQuest("Karazhan", questId)
        end
    elseif(questId == "9831") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("9832")
        else
            FormatMissingQuest("Karazhan", questId)
        end
    elseif(questId == "9832") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("9836")
        else
            FormatMissingQuest("Karazhan", questId)
        end
    elseif(questId == "9836") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("9837")
        else
            FormatMissingQuest("Karazhan", questId)
        end
    elseif(questId == "9837") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            DEFAULT_CHAT_FRAME:AddMessage("Karazhan: Abgeschlossen");
        else
            FormatMissingQuest("Karazhan", questId)
        end
    -- ssc related
    elseif(questId == "10901") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            DEFAULT_CHAT_FRAME:AddMessage("SSC: Abgeschlossen");
        else
            FormatMissingQuest("SSC", questId)
        end
    -- tk alliance related
    elseif(questId == "10680") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10458");
        else
            FormatMissingQuest("TK", questId)
        end
    -- tk horde related
    elseif(questId == "10681") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10458");
        else
            FormatMissingQuest("TK", questId)
        end
    -- tk both
    elseif(questId == "10458") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10480");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10480") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10481");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10481") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10513");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10513") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10514");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10514") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10515");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10515") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10519");
        else
            FormatMissingQuest("TK", questId)
        end
    -- tk oronok https://tbcdb.rising-gods.de/?quest=10521
    elseif(questId == "10519") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            --SendChatMessage(".b2bapi getqueststatus 10521" ,"SAY" ,nil);
            DEFAULT_CHAT_FRAME:AddMessage("TK: Part 1 erledigt, weiter mit /quest tk2!");
        else
            FormatMissingQuest("TK", questId)
        end
    -- tk part 2
    elseif(questId == "10521") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10522");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10522") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10523");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10523") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10527");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10527") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10528");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10528") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10537");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10537") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10540");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10540") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10541");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10541") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10546");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10546") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10547");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10547") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10550");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10550") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10570");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10570") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10576");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10576") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10577");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10577") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10578");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10578") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10579");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10579") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            --SendChatMessage(".b2bapi getqueststatus 10588" ,"SAY" ,nil);
            DEFAULT_CHAT_FRAME:AddMessage("TK: Part 1 erledigt, weiter mit /quest tk3!");
        else
            FormatMissingQuest("TK", questId)
        end
    -- https://tbcdb.rising-gods.de/?quest=10588
    elseif(questId == "10588") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10883");
        else
            FormatMissingQuest("TK", questId)
        end
    -- tk hc quests 
    elseif(questId == "10883") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10884");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10884") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10885");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10885") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10886");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10886") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10888");
        else
            FormatMissingQuest("TK", questId)
        end
    elseif(questId == "10888") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            DEFAULT_CHAT_FRAME:AddMessage("TK: Abgeschlossen");
        else
            FormatMissingQuest("TK", questId)
        end
    -- mh related
    elseif(questId == "10445") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            DEFAULT_CHAT_FRAME:AddMessage("MH: Abgeschlossen");
        else
            FormatMissingQuest("MH", questId)
        end
    -- bt aldor
    elseif(questId == "10568") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10571");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10571") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10574");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10574") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10575");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10575") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10622");
        else
            FormatMissingQuest("BT", questId)
        end
    -- bt scryer
    elseif(questId == "10683") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10684");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10684") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10685");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10685") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10686");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10686") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10622");
        else
            FormatMissingQuest("BT", questId)
        end
    -- bt both
    elseif(questId == "10622") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10628");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10628") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10705");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10705") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10706");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10706") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10707");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10707") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10708");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10708") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10944");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10944") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10946");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10946") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10947");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10947") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10948");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10948") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10949");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10949") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            LookupInCache("10985");
        else
            FormatMissingQuest("BT", questId)
        end
    elseif(questId == "10985") then
        UpdateInCache(questId, questStatus)
        if(questStatus == "1") then
            DEFAULT_CHAT_FRAME:AddMessage("BT: Abgeschlossen");
        else
            FormatMissingQuest("BT", questId)
        end
    end
end 

local function B2B_PreQuestStatus_SlashCommandHandler(msg)
    local a, b, command = string.find( msg, "(%w+)" );

    command = string.lower( msg );

    if(command == "kara") then
        LookupInCache("9824");
    elseif(command == "ssc") then
        LookupInCache("10901");
    elseif(command == "tk1") then
        local englishFaction, localizedFaction = UnitFactionGroup("player");
        
        if (englishFaction == "Alliance") then
            LookupInCache("10680");
        else
            LookupInCache("10681");
        end
    elseif(command == "tk2") then
        LookupInCache("10521");
    elseif(command == "tk3") then
        LookupInCache("10588");
    elseif(command == "mh") then
        LookupInCache("10445");
    elseif(command == "bt") then
        StaticPopup_Show("PREQ_FACTION")
    else
        DEFAULT_CHAT_FRAME:AddMessage("Kara: /quest kara");
        DEFAULT_CHAT_FRAME:AddMessage("SSC: /quest ssc");
        DEFAULT_CHAT_FRAME:AddMessage("TK: /quest tk1");
        DEFAULT_CHAT_FRAME:AddMessage("TK: /quest tk2");
        DEFAULT_CHAT_FRAME:AddMessage("TK: /quest tk3");
        DEFAULT_CHAT_FRAME:AddMessage("MH: /quest mh");
        DEFAULT_CHAT_FRAME:AddMessage("BT: /quest bt");
    end
end

local function LoginEvent(self, event, ...)
    DEFAULT_CHAT_FRAME:AddMessage("Login Event")
    B2B_PreQuestStatus:UnregisterEvent("VARIABLES_LOADED")

    if (not QuestStatusCache) then QuestStatusCache ={} end

    B2B_PreQuestStatus:SetScript("OnEvent", EventHandler)
    B2B_PreQuestStatus:RegisterEvent("CHAT_MSG_ADDON")

    SLASH_B2B_PREQUESTSTATUS1 = "/quest";
    SlashCmdList["B2B_PREQUESTSTATUS"] = function(msg)
        B2B_PreQuestStatus_SlashCommandHandler(msg);
    end

end

local origChatFrame_OnHyperlinkShow = ChatFrame_OnHyperlinkShow;
ChatFrame_OnHyperlinkShow = function(...)
    local chatFrame, link, text, button = ...;
    local r,g,b,itemID,linkType,questID,D,E,clVersion,G,targetbin,name = link:match("^|cff(%x%x)(%x%x)(%x%x)|Hitem:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(%-?%d+):(%d+)|h%[(.+)%]|h|r$")

    if(itemID == "1" and linkType == "3") then
        displayQuest = questID
        StaticPopup_Show("PREQ_DB_LINK")
        return;
    end
    
    return origChatFrame_OnHyperlinkShow(...);
end

StaticPopupDialogs["PREQ_DB_LINK"] = {
    text = "Link mit [STRG]-[C] kopieren!",
    button1 = "Schließen",
    hasEditBox = 1,
    hasWideEditBox = 1,
    button2 = "",

    OnShow = function()
        getglobal(this:GetName().."WideEditBox"):SetText("https://tbcdb.rising-gods.de/?quest=" ..displayQuest);
        getglobal(this:GetName().."WideEditBox"):SetFocus();
        getglobal(this:GetName().."WideEditBox"):HighlightText();
        getglobal(this:GetName().."Button2"):Hide();
        getglobal(this:GetName().."Button1"):ClearAllPoints();
        getglobal(this:GetName().."Button1"):SetPoint("TOP", getglobal(this:GetName().."WideEditBox"), "CENTER", 0, -20);
    end,
    OnHide = function()
    end,
    EditBoxOnEnterPressed = function()
        this:GetParent():Hide();
    end,
    EditBoxOnEscapePressed = function()
        this:GetParent():Hide();
    end,
    timeout = 0,
    exclusive = 1,
    whileDead = 1,
    hideOnEscape = 1
};

StaticPopupDialogs["PREQ_FACTION"] = {
    text = "Bist du ein Aldor oder ein Seher?",
    button1 = "Aldor",
    button2 = "Seher",
    button3 = "Ehm...",

    OnShow = function()
    end,
    OnAccept = function ()
        SendChatMessage(".b2bapi getqueststatus 10568" ,"SAY" ,nil);
    end,
    OnCancel = function()
        SendChatMessage(".b2bapi getqueststatus 10683" ,"SAY" ,nil);
    end,
    timeout = 0,
    exclusive = 1,
    whileDead = 1
};

B2B_PreQuestStatus:SetScript("OnEvent", LoginEvent)
B2B_PreQuestStatus:RegisterEvent("VARIABLES_LOADED")

