local dragon_hp = 0;
local deamon_hp = 0;

local NAME_DRAGON = "Kalecgos";
local NAME_DEAMON = "Sathrovarr";

local GUID_DRAGON = "0xF13000611200D61A";
local GUID_DEAMON = "0xF13000613C00D18D";

local HEALTH_DRAGON_DEFAULT = 5766500;
local HEALTH_DEAMON_DEFAULT = 5766500;

local isInfight = false;
local dragonSeen = false;

local SCAN_TIMER = 1;

function KalecgosDualHP_Onload()
    DEFAULT_CHAT_FRAME:AddMessage("KalecgosDualHP: Loaded!");

    this:RegisterEvent("CHAT_MSG_ADDON");
    this:RegisterEvent('VARIABLES_LOADED');
    this:RegisterEvent("PLAYER_REGEN_ENABLED");
    this:RegisterEvent("PLAYER_REGEN_DISABLED");
    this:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
    this:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, 
    TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);
    this:SetAlpha(0.7);
       
    SLASH_KALECGOSHP1 = "/kalecgoshp";
    SLASH_KALECGOSHP2 = "/khp";
    SlashCmdList["KALECGOSHP"] = function (msg)
        if(msg == "on" or msg == "show") then 
            addon_on();
        elseif(msg == "off" or msg == "hide") then 
            addon_off();
        elseif(msg == "toggle") then
            addon_toggle();
        elseif(msg == "scan") then
            scan_toggle();
        else
            DEFAULT_CHAT_FRAME:AddMessage("KHP: [on][show] => show bars");
            DEFAULT_CHAT_FRAME:AddMessage("KHP: [off][hide] => hide bars");
            DEFAULT_CHAT_FRAME:AddMessage("KHP: [toggle] => toggle bars");
            DEFAULT_CHAT_FRAME:AddMessage("KHP: [scan] => toggle scan");
        end
    end

    KalecgosFrame_dragonHPBar:SetMinMaxValues(0 ,100);
    KalecgosFrame_deamonHPBar:SetMinMaxValues(0 ,100);
    KalecgosFrame_dragonHPBar:SetValue(100);
    KalecgosFrame_deamonHPBar:SetValue(100);
end

local function HasDebuff(plrID)

    local i = 1
    while true do
        local name, rank, icon, count, dispelType, duration, timeLeft = UnitDebuff(("raid"..plrID), i)

        if (not name) then return false; end

        if(icon == "Interface\\Icons\\Spell_Shadow_Charm") then return true; end

        i = i + 1
    end

end

local function GetNumPhasePlayers()
    local num_dragon = 0;
    local num_deamon = 0;

    -- players are in dragon phase if: alive, no debuff
    -- players are in deamon phase if: debuff

   for i = 1, 40 do
        local name, _, subgroup, _, _, _, zone, online, dead = GetRaidRosterInfo(i);

        -- make sure to not count buff players
        if(name and online and not dead and subgroup > 0 and subgroup < 6) then
            if(HasDebuff(i)) then
                num_deamon = num_deamon + 1;
            elseif(not dead) then
                num_dragon = num_dragon + 1;
            end
        end

   end

   return num_dragon, num_deamon;
end

local function KalecgosDualHP_Scan()
    if(not (khp_vars.scan == "On")) then return; end

    local num_dragon = 0;
    local num_deamon = 0;

    num_dragon, num_deamon = GetNumPhasePlayers();

    KalecgosFrame_dragonHPBar_dragonName:SetText(NAME_DRAGON ..": "..num_dragon);
    KalecgosFrame_deamonHPBar_deamonName:SetText(NAME_DEAMON ..": "..num_deamon);
end

local function round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end

function KalecgosDualHP_OnUpdate(self, elapsed)
    if(not isInfight or not dragonSeen) then return end;

    if(GUID_DRAGON == UnitGUID("target")) then
        local dragon_hp_temp = round((UnitHealth("target") / HEALTH_DRAGON_DEFAULT * 100), 1);

        if(tonumber(dragon_hp - dragon_hp_temp) > 0.1 or tonumber(dragon_hp - dragon_hp_temp) < -0.1) then
            dragon_hp = dragon_hp_temp;
            SendAddonMessage("KHP_dragon", dragon_hp, "RAID" );
            KalecgosFrame_dragonHPBar:SetValue(dragon_hp);
            KalecgosFrame_dragonHPBar_dragonHPText:SetText(dragon_hp.."%");
        end
    end

    if(GUID_DEAMON == UnitGUID("target")) then
        local deamon_hp_temp = round((UnitHealth("target") / HEALTH_DEAMON_DEFAULT * 100), 1);

        if(tonumber(deamon_hp - deamon_hp_temp) > 0.1 or tonumber(deamon_hp - deamon_hp_temp) < -0.1) then
            deamon_hp = deamon_hp_temp;
            SendAddonMessage("KHP_deamon", deamon_hp, "RAID" );
            KalecgosFrame_deamonHPBar:SetValue(deamon_hp);
            KalecgosFrame_deamonHPBar_deamonHPText:SetText(deamon_hp.."%");
        end
    end

    if(SCAN_TIMER + elapsed > 1) then
        DEFAULT_CHAT_FRAME:AddMessage("Scan!")
        KalecgosDualHP_Scan();
        SCAN_TIMER = 0;
    else
        SCAN_TIMER = SCAN_TIMER + elapsed;
    end
end

function KalecgosDualHP_OnEvent(event)

    if (event == 'VARIABLES_LOADED') then
        if(not khp_vars) then               khp_vars ={}; end
        if(not khp_vars.point) then         khp_vars.point          = "CENTER"; end
        if(not khp_vars.relativePoint) then khp_vars.relativePoint  = "CENTER"; end
        if(not khp_vars.xOfs) then          khp_vars.xOfs           = 0; end
        if(not khp_vars.yOfs) then          khp_vars.yOfs           = 0; end
        if(not khp_vars.show_hide) then     khp_vars.show_hide      = "Show"; end
        if(not khp_vars.scan) then          khp_vars.scan           = "On"; end
        KalecgosFrame:SetPoint(khp_vars.point, "UIParent", khp_vars.relativePoint, khp_vars.xOfs , khp_vars.yOfs);

        if(khp_vars.show_hide == "Show") then
            addon_on();
        else
            addon_off();
        end
    elseif(event == 'CHAT_MSG_ADDON')then
        if(arg1 == "KHP_dragon") then
            dragon_hp = tonumber(arg2)
            KalecgosFrame_dragonHPBar:SetValue(arg2);
            KalecgosFrame_dragonHPBar_dragonHPText:SetText(arg2.."%");
        elseif(arg1 == "KHP_deamon") then
            deamon_hp = tonumber(arg2)
            KalecgosFrame_deamonHPBar:SetValue(arg2);
            KalecgosFrame_deamonHPBar_deamonHPText:SetText(arg2.."%");
        end
    end

    -- infight check
    if (event == "PLAYER_REGEN_ENABLED") then
        isInfight = false;
        dragonSeen = false;
        dragon_hp = 0;
        deamon_hp = 0;
        KalecgosFrame_dragonHPBar:SetValue(100);
        KalecgosFrame_dragonHPBar_dragonHPText:SetText("100%");

        KalecgosFrame_deamonHPBar:SetValue(100);
        KalecgosFrame_deamonHPBar_deamonHPText:SetText("100%");

        KalecgosFrame_dragonHPBar_dragonName:SetText(NAME_DRAGON);
        KalecgosFrame_deamonHPBar_deamonName:SetText(NAME_DEAMON);
    elseif (event == "PLAYER_REGEN_DISABLED") then
        isInfight = true;
        dragonSeen = false;
    end

    if (event == 'COMBAT_LOG_EVENT_UNFILTERED' and dragonSeen == false) then
        if(arg3 == GUID_DRAGON or arg3 == GUID_DEAMON) then
            dragonSeen = true;
        end
    end
end

function addon_on()
    khp_vars.show_hide = "Show";
    KalecgosFrame:Show();
end

function addon_off()
    khp_vars.show_hide = "Hide";
    KalecgosFrame:Hide();
end

function addon_toggle()
    if(khp_vars.show_hide == "Show") then
        KalecgosFrame:Hide();
    else
        KalecgosFrame:Show();
    end
end

function scan_toggle()
    if(khp_vars.scan == "On") then
        khp_vars.scan = "Off";
        KalecgosFrame_dragonHPBar_dragonName:SetText(NAME_DRAGON);
        KalecgosFrame_deamonHPBar_deamonName:SetText(NAME_DEAMON);
    else
        khp_vars.scan = "On";
    end

    DEFAULT_CHAT_FRAME:AddMessage("KalecgosDualHP: Scan is now " ..khp_vars.scan)
end

function save_position()
    khp_vars.point, _, khp_vars.relativePoint, khp_vars.xOfs, khp_vars.yOfs = KalecgosFrame:GetPoint();
end