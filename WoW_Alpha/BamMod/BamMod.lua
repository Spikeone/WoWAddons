local BamModOptionKeys = {
    "PLAYER_WHITEHIT",
    "PLAYER_STYLEHIT",
    "PET_HIT",
    "CHANNEL_SELF",
    "CHANNEL_SAY",
    "CHANNEL_YELL",
    "CHANNEL_PARTY",
    "SOUND_PLAYER",
    "SOUND_PET",
}

-- TODO:
-- Load options via addon manager
-- give default options
-- add options to addon manager if given

-- can edit default settings if addon manager is not used
-- setting = 0 => disabled
-- setting = 1 => enabled
BamModOptionsCheckButtons = { };
BamModOptionsCheckButtons[BamModOptionKeys[1]] = { index = 1, setting = 1, text = "White hits" }; --done
BamModOptionsCheckButtons[BamModOptionKeys[2]] = { index = 2, setting = 1, text = "Style hits" }; --done
BamModOptionsCheckButtons[BamModOptionKeys[3]] = { index = 3, setting = 1, text = "Pet hits" }; --done
BamModOptionsCheckButtons[BamModOptionKeys[4]] = { index = 4, setting = 1, text = "Use channel: Self" };
BamModOptionsCheckButtons[BamModOptionKeys[5]] = { index = 5, setting = 0, text = "Use channel: Say" };
BamModOptionsCheckButtons[BamModOptionKeys[6]] = { index = 6, setting = 0, text = "Use channel: Yell" };
BamModOptionsCheckButtons[BamModOptionKeys[7]] = { index = 7, setting = 0, text = "Use channel: Party" };
BamModOptionsCheckButtons[BamModOptionKeys[8]] = { index = 8, setting = 1, text = "Sound: Player" }; --done
BamModOptionsCheckButtons[BamModOptionKeys[9]] = { index = 9, setting = 1, text = "Sound: Pet" }; --done



-- do NOT edit unless you know what you are doing
local SOUND_IDENTIFIER = "ADNSND0001";
local nextStaticPopup = nil;
local addonManager = nil;
local ADDON_IDENTIFIER = "BM";

local function DisplayBamMessage(damageSpell, damageValue, isPet)
    if((isPet and BamModOptionsCheckButtons["SOUND_PET"].setting == 1) or (not isPet and BamModOptionsCheckButtons["SOUND_PLAYER"].setting == 1)) then
        PlaySound(SOUND_IDENTIFIER);
    end

    local bamMessage = (isPet and "<PET> " or "").. "B\195\164M!! [ " ..damageSpell.. " - "..damageValue.." ]"

    if (BamModOptionsCheckButtons["CHANNEL_SELF"].setting == 1) then
        ChatFrame:AddMessage(bamMessage);
    end
    
    if (BamModOptionsCheckButtons["CHANNEL_SAY"].setting == 1) then
        SendChatMessage(bamMessage);
    end
    
    if (BamModOptionsCheckButtons["CHANNEL_YELL"].setting == 1) then
        SendChatMessage(bamMessage, "YELL");
    end
    
    if (BamModOptionsCheckButtons["CHANNEL_PARTY"].setting == 1 and UnitName("party1") ~= "") then
        SendChatMessage(bamMessage, "PARTY");
    end
    --ChatFrame:AddMessage((isPet and "<PET> " or "").. "B\195\164M!! [ " ..damageSpell.. " - "..damageValue.." ]");
end

function BamMod_OpenOptions()
    ChatFrame:AddMessage("BamMod_OpenOptions");
    PlaySound("igMainMenuOption");
    ShowUIPanel(BamModOptionsFrame);
end

SlashCmdList.BAMOPTIONS = function()
    BamMod_OpenOptions();
end
SLASH_BAMOPTIONS1 = "/bam"


function BamMod_InitOptions()
    for index, value in BamModOptionsCheckButtons do
        local button = getglobal("BamModOptionsCheckButton"..value.index);
        local buttonText = getglobal("BamModOptionsCheckButton"..value.index.."Text");
        button:SetChecked(value.setting);
        buttonText:SetText(value.text);

        if(value.setting == 1) then
            buttonText:SetTextColor(1.0, 0.82, 0);
        else
            buttonText:SetTextColor(0.5, 0.5, 0.5);
        end
    end
end

StaticPopupDialogs["BAMMOD_COPYSETUPLINK"] = {
    text = "Please follow the link below to install the 'Addon Manager' or sound for addons!\n\n[CTRL] + [A] and then [CTRL] + [C] to copy the link to the clipboard.",
    button1 = "Close",
    hasEditBox = 1,
    OnShow = function()
        getglobal(this:GetName().."EditBox"):Hide()

        local cancelButton = getglobal(this:GetName().."Button1")
        cancelButton:ClearAllPoints();
        cancelButton:SetPoint("TOP", this:GetName(), "CENTER", 0, -30);

        local wideEditTextBos = getglobal("BamModStaticPopupWideEditBox");
        wideEditTextBos:Show();
        wideEditTextBos:SetText("https://github.com/The-Alpha-Project/053-AddOns");
        wideEditTextBos:SetFocus();
        wideEditTextBos:ClearAllPoints();
        wideEditTextBos:SetPoint("CENTER", this:GetName(), "CENTER", 0, -10);
    end,
    OnHide = function()
        getglobal("BamModStaticPopupWideEditBox"):Hide()
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

StaticPopupDialogs["BAMMOD_TESTSOUND"] = {
    text = "Did you hear the 'BAM' sound?",
    button1 = "Yes",
    button2 = "No",
    OnCancel = function()
        nextStaticPopup = "BAMMOD_COPYSETUPLINK"
    end,
    timeout = 0,
    exclusive = 1
};

function BamMod_OnUpdate()
    if(nextStaticPopup ~= nil) then
    StaticPopup_Show("BAMMOD_COPYSETUPLINK");
        nextStaticPopup = nil
    end

    local editBox = getglobal("BamModStaticPopupWideEditBox");
    if(editBox ~= nil and editBox:IsVisible()) then
        local popup = getglobal("StaticPopup1")
        editBox:SetFrameLevel(popup:GetFrameLevel() + 1);
    end
end

function BamMod_TestSound()
    --ChatFrame:AddMessage("BamMod_TestSound");
    PlaySound(SOUND_IDENTIFIER);
    StaticPopup_Show("BAMMOD_TESTSOUND");
end

function BamModOptionsCheckButton_OnClick()
    ChatFrame:AddMessage("BamModOptionsCheckButton_OnClick");
    ChatFrame:AddMessage("BamModOptionsCheckButton_OnClick: " ..this:GetID());
    local buttonText = getglobal("BamModOptionsCheckButton"..this:GetID().."Text");
    if(this:GetChecked()) then
        buttonText:SetTextColor(1.0, 0.82, 0);
    else
        buttonText:SetTextColor(0.5, 0.5, 0.5);
    end
    BamModOptionsCheckButtons[BamModOptionKeys[this:GetID()]].setting = (this:GetChecked() and 1 or 0)
    if(addonManager ~= nil) then
        ChatFrame:AddMessage("Got addon Manager");
        AddonManagerApi:SetOption(ADDON_IDENTIFIER, this:GetID(), (this:GetChecked() and 1 or 0))
    end
end

function BamMod_OnEnable()
    --ChatFrame:AddMessage("SpikeTest_OnEnable");
    this:RegisterEvent("CHAT_MSG_COMBAT_LOG_SELF");
    this:RegisterEvent("CHAT_MSG_COMBAT_LOG_PARTY");
end

function BamMod_OnDisable()
    --ChatFrame:AddMessage("SpikeTest_OnDisable");
    this:UnregisterEvent("CHAT_MSG_COMBAT_LOG_SELF");
    this:UnregisterEvent("CHAT_MSG_COMBAT_LOG_PARTY");
end

function BamMod_OnLoad()
    --ChatFrame:AddMessage("SpikeTest_OnLoad");
    -- this:RegisterEvent("CHAT_MSG_COMBAT_LOG_SELF");
    -- this:RegisterEvent("CHAT_MSG_COMBAT_LOG_PARTY");

    local fontStringAddonManager = getglobal("BamModAddonManagerInfo");
    local helpButton = getglobal("BamModOptionsFrameHelp");
    local isEnabled = false;
    local savedOptions = 0;
    addonManager = getglobal("AddonManager");
    if (addonManager ~= nil) then
        isEnabled, savedOptions = AddonManagerApi:RegisterAddon("BamMod", "1.0", "Spikeone", ADDON_IDENTIFIER, "BamMod_OnEnable", "BamMod_OnDisable", 0, "BamMod_OpenOptions");
        if(isEnabled) then
            BamMod_OnEnable();
        end
        helpButton:Hide();
        fontStringAddonManager:SetTextColor(0.1, 1.0, 0.1);
        fontStringAddonManager:SetText("Addon Manager detected. Settings are saved persistently.");

        -- assing the options
        for index, value in BamModOptionsCheckButtons do
            ChatFrame:AddMessage("BamMod_OnLoad index: " ..value.index);
            ChatFrame:AddMessage("BamMod_OnLoad savedOptions: " ..savedOptions);
            value.setting = AddonManagerApi:GetOptionBit(savedOptions, value.index)
        end
    else
        helpButton:Show();
        fontStringAddonManager:SetTextColor(1.0, 0.1, 0.1);
        fontStringAddonManager:SetText("Addon Manager NOT detected! Settings are NOT saved persistently!\nClick the 'Help' button for more information.");
    end

    -- Your Nature's Wrath crits Rabbit for 60.
    -- local text = "Your Nature's Wrath crits Rabbit for 60."
    -- local iStart, iEnd, spell, damage = string.find(text, "^Your ([%w%s']*) crits .* (%d*).$");
    -- if(iStart ~= nil and iEnd ~= nil) then
    --     DisplayBamMessage(spell, damage);
    --     return;
    -- end
end

function BamMod_OnEvent(event)
    if(event == "CHAT_MSG_COMBAT_LOG_PARTY" and BamModOptionsCheckButtons["PET_HIT"].setting == 1) then
        local isHunter = UnitClass("player") == "Hunter"
        if (isHunter) then
            local petName = UnitName("pet")
            if (petName ~= nil and petName ~= "") then
                local iStart, iEnd, normalDamage = string.find(arg1, "^" ..petName.. " crits .* for (%d*).$");
                if(iStart ~= nil and iEnd ~= nil) then
                    DisplayBamMessage("Normal", normalDamage, true);
                    return;
                end
            end
        end
    else
        if (BamModOptionsCheckButtons["PLAYER_WHITEHIT"].setting == 1) then
            local iStart, iEnd, normalDamage = string.find(arg1, "^You crit .* for (%d*).$");
            if(iStart ~= nil and iEnd ~= nil) then
                DisplayBamMessage("Normal", normalDamage, false);
                return;
            end
        end

        if (BamModOptionsCheckButtons["PLAYER_STYLEHIT"].setting == 1) then
            local iStart, iEnd, spell, damage = string.find(arg1, "^Your ([%w%s']*) crits .* (%d*).$");
            if(iStart ~= nil and iEnd ~= nil) then
                DisplayBamMessage(spell, damage, false);
                return;
            end
        end
    end
end