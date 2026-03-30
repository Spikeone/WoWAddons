local registeredAddons = {}
local knownAddonSettings = {}

local CONST_CVAR_IDENTIFIER = "ADNMGR"
local CONST_HEX_CHARS = "0123456789ABCDEF"

local CONST_ADDONINFO_NAME = 1
local CONST_ADDONINFO_VERSION = 2
local CONST_ADDONINFO_AUTHOR = 3
local CONST_ADDONINFO_IDENTIFIER = 4
local CONST_ADDONINFO_FUNCTION_ENABLE = 5
local CONST_ADDONINFO_FUNCTION_DISABLE = 6
local CONST_ADDONINFO_SETTINGS = 7
local CONST_ADDONINFO_FUNCTION_OPTIONS = 8

-- maybe this should be moved to a LibCom, maybe this can be kept here
AddonManagerApi = {}

local MAX_VALUE = 74805200
local MAX_BITS = 26

local function mod(a, b)
    return a - math.floor(a / b) * b
end

local function toChar(d)
    return string.char(d == 0 and 33 or d + 34)
end

local function toIdx(b)
    return b == 33 and 0 or b - 34
end

function numToStr(n)
    if n == nil or n < 0 or n > MAX_VALUE then
        ChatFrame:AddMessage("_AddonManager: numToStr invalid given number!");
        return nil
    end

    local d3 = mod(n, 93)
    n = math.floor(n / 93)
    local d2 = mod(n, 93)
    n = math.floor(n / 93)
    local d1 = mod(n, 93)
    n = math.floor(n / 93)
    local d0 = mod(n, 93)
    return toChar(d0) .. toChar(d1) .. toChar(d2) .. toChar(d3)
end

function strToNum(s)
    if s == nil or string.len(s) < 4 then
        ChatFrame:AddMessage("_AddonManager: strToNum invalid given string!");
        return nil
    end

    local d0 = toIdx(string.byte(s, 1))
    local d1 = toIdx(string.byte(s, 2))
    local d2 = toIdx(string.byte(s, 3))
    local d3 = toIdx(string.byte(s, 4))
    return ((d0 * 93 + d1) * 93 + d2) * 93 + d3
end

function readBits(n, startBit, numBits)
    ChatFrame:AddMessage("n:" ..n.. " startBit:"..startBit.." numBits:"..numBits);
    if startBit < 0 or numBits < 1 or (startBit + numBits) > MAX_BITS then
        ChatFrame:AddMessage("_AddonManager: readBits out of bounds!");
        return nil
    end

    return mod(math.floor(n / 2^startBit), 2^numBits)
end

function getBit(n, k)
    return readBits(n, k, 1)
end

function setBit(n, k)
    if k < 0 or k >= MAX_BITS then
        ChatFrame:AddMessage("_AddonManager: setBit out of bounds!");
        return nil
    end

    if getBit(n, k) == 0 then
        return n + 2^k
    end

    return n
end


function AddonManager_OnLoad()
    ChatFrame:AddMessage("_AddonManager_OnLoad");

    local frm = getglobal("GameMenuFrame");
    if(frm ~= nil) then
        frm:SetHeight(frm:GetHeight() + 40)
    end

    AddonManager_LoadAddonOptions()
end

function AddonManager_SaveAddonOptions()
    local numAddons = table.getn(registeredAddons)
    local cvarSaveString = ""
    for i = 1, numAddons do
        local addonSaveString = registeredAddons[i][CONST_ADDONINFO_IDENTIFIER]
        addonSaveString = addonSaveString .. numToStr(registeredAddons[i][CONST_ADDONINFO_SETTINGS])
        cvarSaveString = cvarSaveString .. addonSaveString
    end
    SetCVar(CONST_CVAR_IDENTIFIER, cvarSaveString);
end

function AddonManager_LoadAddonOptions()
    local savedAddonSettings = GetCVar(CONST_CVAR_IDENTIFIER);

    local i = 1
    while string.sub(savedAddonSettings, i, i + 5) ~= "" do
        local addonSetting = string.sub(savedAddonSettings, i, i + 5)
        if string.len(addonSetting) < 6 then
            break
        end

        local addonIdentifier = string.sub(addonSetting, 1, 2)
        local addonSettings = string.sub(addonSetting, 3, 6)
        knownAddonSettings[addonIdentifier] = strToNum(addonSettings)
        i = i + 6
    end
end

function AddonManagerApi:GetOptionBit(number, index)
    return getBit(number, index)
end

function AddonManagerApi:SetOption(addonIdentifier, index, value)
    ChatFrame:AddMessage("addonIdentifier " ..addonIdentifier.. " " ..index.. " " ..value);

    local numAddons = table.getn(registeredAddons)
    for i = 1, numAddons do
        if(registeredAddons[i][CONST_ADDONINFO_IDENTIFIER] == addonIdentifier) then
            ChatFrame:AddMessage("addonIdentifier " ..registeredAddons[i][CONST_ADDONINFO_SETTINGS]);
            registeredAddons[i][CONST_ADDONINFO_SETTINGS] = setBit(registeredAddons[i][CONST_ADDONINFO_SETTINGS], index, value)
            ChatFrame:AddMessage("addonIdentifier " ..registeredAddons[i][CONST_ADDONINFO_SETTINGS]);
            AddonManager_SaveAddonOptions();
            return;
        end
    end

    ChatFrame:AddMessage("Addon '" ..addonIdentifier.. "' tried to use change an option but is not registered");
end

function AddonManagerApi:RegisterAddon(addonName, addonVersion, addonAuthor, addonIdentifier, onEnableFunction, onDisableFunction, defaultSettings, optionsCallback)
    ChatFrame:AddMessage("addonName: " ..addonName.. " addonVersion: " ..addonVersion .. " addonAuthor: " ..addonAuthor.. " addonIdentifier: " ..addonIdentifier);

    -- Load known addon settings
    local addonSettings = 0
    if (knownAddonSettings[addonIdentifier] ~= nil) then
        ChatFrame:AddMessage("known addon");
        addonSettings = knownAddonSettings[addonIdentifier];
    else
        ChatFrame:AddMessage("unknown addon");
        if (defaultSettings ~= nil) then
            addonSettings = defaultSettings
        end
    end
    
    local addonInfo = { addonName,
                        addonVersion,
                        addonAuthor,
                        addonIdentifier,
                        onEnableFunction,
                        onDisableFunction,
                        addonSettings,
                        optionsCallback}

    table.insert(registeredAddons, addonInfo)

    return getBit(addonSettings, 0), addonSettings;
end

function AddonManagerCheckButton_OnClick()
    -- TODO: Offset for multipage
    local addonIndex = this:GetID();
    local isEnabled = this:GetChecked();
    if (isEnabled) then
        --registeredAddons[addonIndex][CONST_ADDONINFO_SETTINGS] = set_bit(registeredAddons[addonIndex][CONST_ADDONINFO_SETTINGS], 0, 1)
        registeredAddons[addonIndex][CONST_ADDONINFO_SETTINGS] = setBit(registeredAddons[addonIndex][CONST_ADDONINFO_SETTINGS], 0, 1)
        getglobal(registeredAddons[addonIndex][CONST_ADDONINFO_FUNCTION_ENABLE])();
    else
        --registeredAddons[addonIndex][CONST_ADDONINFO_SETTINGS] = set_bit(registeredAddons[addonIndex][CONST_ADDONINFO_SETTINGS], 0, 0)
        registeredAddons[addonIndex][CONST_ADDONINFO_SETTINGS] = setBit(registeredAddons[addonIndex][CONST_ADDONINFO_SETTINGS], 0, 0)
        getglobal(registeredAddons[addonIndex][CONST_ADDONINFO_FUNCTION_DISABLE])();
    end
    AddonManager_SaveAddonOptions();
end

function AddonManagerFrame_OnShow()
    local numAddons = table.getn(registeredAddons)
    --ChatFrame:AddMessage("number of addons: " ..numAddons);
    --ChatFrame:AddMessage("number of addons: " ..registeredAddons[1][1]);
    --ChatFrame:AddMessage("number of addons: " ..registeredAddons[1][3]);
    for i = 1, 3 do
        local btnIndex = i
        local button = getglobal("AddonManagerFrameCheckButton"..btnIndex);
        local textAddonName = getglobal("AddonManagerFrameCheckButton"..btnIndex.."AddonName");
        local textAddonVersion = getglobal("AddonManagerFrameCheckButton"..btnIndex.."AddonVersion");
        local textAddonAuthor = getglobal("AddonManagerFrameCheckButton"..btnIndex.."AddonAuthor");
        if (i <= numAddons) then
            textAddonName:SetText(registeredAddons[i][1]);
            textAddonVersion:SetText(registeredAddons[i][2]);
            textAddonAuthor:SetText(registeredAddons[i][3]);
            --local isEnabled = get_bit(registeredAddons[i][CONST_ADDONINFO_SETTINGS], 0);
            local isEnabled = getBit(registeredAddons[i][CONST_ADDONINFO_SETTINGS], 0);
            if (isEnabled) then
                ChatFrame:AddMessage("Addon enabled");
            else
                ChatFrame:AddMessage("Addon disabled");
            end
            button:SetChecked(isEnabled and 1 or 0);
        else
            button:Hide()
        end
    end
end