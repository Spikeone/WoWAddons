local NAME_DRAGON = "Kalecgos";
local NAME_DEAMON = "Sathrovarr";
local NAME_HUMAN = NAME_DRAGON;

local GUID_DRAGON = "0xF13000611200D61A";
local GUID_DEAMON = "0xF13000613C00D18D";

local HEALTH_DRAGON_DEFAULT = 5766500;
local HEALTH_DEAMON_DEFAULT = 5766500;
local HEALTH_HUMAN_DEFAULT = 1305050;

local dragon_hp = HEALTH_DRAGON_DEFAULT;
local deamon_hp = HEALTH_DEAMON_DEFAULT;
local human_hp = HEALTH_HUMAN_DEFAULT;

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
        elseif(msg == "human") then
            human_toggle();
        elseif(msg == "formatv") then
            khp_vars.format = "v";
            KalecgosDualHP_UpdateVisuals("Dragon", dragon_hp);
            KalecgosDualHP_UpdateVisuals("Deamon", deamon_hp);
            KalecgosDualHP_UpdateVisuals("Human", human_hp);
        elseif(msg == "formatp") then
            khp_vars.format = "p";
            KalecgosDualHP_UpdateVisuals("Dragon", dragon_hp);
            KalecgosDualHP_UpdateVisuals("Deamon", deamon_hp);
            KalecgosDualHP_UpdateVisuals("Human", human_hp);
        elseif(msg == "formatvp") then
            khp_vars.format = "vp";
            KalecgosDualHP_UpdateVisuals("Dragon", dragon_hp);
            KalecgosDualHP_UpdateVisuals("Deamon", deamon_hp);
            KalecgosDualHP_UpdateVisuals("Human", human_hp);
        elseif(msg == "predict") then
            predict_toggle();
        else
            DEFAULT_CHAT_FRAME:AddMessage("KHP: [on][show] => show bars");
            DEFAULT_CHAT_FRAME:AddMessage("KHP: [off][hide] => hide bars");
            DEFAULT_CHAT_FRAME:AddMessage("KHP: [toggle] => toggle bars");
            DEFAULT_CHAT_FRAME:AddMessage("KHP: [scan] => toggle scan");
            DEFAULT_CHAT_FRAME:AddMessage("KHP: [human] => toggle human bar");
            DEFAULT_CHAT_FRAME:AddMessage("KHP: [predict] => predicts human HP (inaccurate)");
            DEFAULT_CHAT_FRAME:AddMessage("KHP: [formatv][formatp][formatp] => show hp as [v]alue, [p]ercent, [v]alue[p]ercent");

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

function KalecgosDualHP_FormatValue(iValue, fPercent)
    local strReturn = "";

    if(iValue == 1) then
        strReturn = "Banish"
    elseif(khp_vars.format == "vp") then
        strReturn = "" .. round((iValue / 1000), 0) .. "k (" .. round(fPercent, 2) .. "%)"
    elseif(khp_vars.format == "v") then
        strReturn = "" .. round((iValue / 1000), 0) .. "k"
    else
        strReturn = "" .. round(fPercent, 2) .. "%"
    end

    return strReturn;
end

function KalecgosDualHP_UpdateVisuals(strWho, iValue)
    local hpPercent = 100;

    if(strWho == "Dragon") then
        dragon_hp = iValue;
        hpPercent = round((iValue / HEALTH_DRAGON_DEFAULT * 100), 2);
        KalecgosFrame_dragonHPBar:SetValue(hpPercent);
        KalecgosFrame_dragonHPBar_dragonHPText:SetText(KalecgosDualHP_FormatValue(iValue, hpPercent));
    elseif(strWho == "Deamon") then
        deamon_hp = iValue;
        hpPercent = round((iValue / HEALTH_DEAMON_DEFAULT * 100), 2);
        KalecgosFrame_deamonHPBar:SetValue(hpPercent);
        KalecgosFrame_deamonHPBar_deamonHPText:SetText(KalecgosDualHP_FormatValue(iValue, hpPercent));
    else
        human_hp = iValue;
        hpPercent = round((iValue / HEALTH_HUMAN_DEFAULT * 100), 2);
        KalecgosFrame_humanHPBar:SetValue(hpPercent);
        KalecgosFrame_humanHPBar_humanHPText:SetText(KalecgosDualHP_FormatValue(iValue, hpPercent));
    end
end

function KalecgosDualHP_OnUpdate(self, elapsed)
    if(not isInfight or not dragonSeen) then return end;

    if(GUID_DRAGON == UnitGUID("target")) then
        local dragon_hp_temp = UnitHealth("target");
    
        if(tonumber(dragon_hp - dragon_hp_temp) > 5000 or tonumber(dragon_hp - dragon_hp_temp) < -5000 or (dragon_hp_temp == 1 and dragon_hp~= 1)) then
            KalecgosDualHP_UpdateVisuals("Dragon", dragon_hp_temp);
            SendAddonMessage("KHP_dragon", dragon_hp_temp, "RAID" );
        end
    end

    if(GUID_DEAMON == UnitGUID("target")) then
        local deamon_hp_temp = UnitHealth("target");
    
        if(tonumber(deamon_hp - deamon_hp_temp) > 5000 or tonumber(deamon_hp - deamon_hp_temp) < -5000 or (deamon_hp_temp == 1 and deamon_hp~= 1)) then
            KalecgosDualHP_UpdateVisuals("Deamon", deamon_hp_temp);
            SendAddonMessage("KHP_deamon", deamon_hp_temp, "RAID" );
        end
    end

    if(NAME_HUMAN == UnitName("target") and UnitIsFriend("player","target") and GUID_DRAGON ~= UnitGUID("target")) then
        local human_hp_temp = UnitHealth("target");
    
        if(tonumber(human_hp - human_hp_temp) > 5000 or tonumber(human_hp - human_hp_temp) < -5000) then
            KalecgosDualHP_UpdateVisuals("Human", human_hp_temp);
            SendAddonMessage("KHP_human", human_hp_temp, "RAID" );
        end
    end

    if(khp_vars.scan == "On") then
        if(SCAN_TIMER + elapsed > 1) then
            KalecgosDualHP_Scan();
            SCAN_TIMER = 0;
        else
            SCAN_TIMER = SCAN_TIMER + elapsed;
        end
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
        if(not khp_vars.human) then         khp_vars.human          = "Off"; end
        if(not khp_vars.predict) then       khp_vars.predict        = "Off"; end
        -- p = percent
        -- v = value (in k)
        -- vp = value(percent)
        if(not khp_vars.format) then        khp_vars.format         = "p"; end
        KalecgosFrame:SetPoint(khp_vars.point, "UIParent", khp_vars.relativePoint, khp_vars.xOfs , khp_vars.yOfs);

        human_handleVisible();

        if(khp_vars.show_hide == "Show") then
            addon_on();
        else
            addon_off();
        end

        KalecgosDualHP_UpdateVisuals("Dragon", dragon_hp);
        KalecgosDualHP_UpdateVisuals("Deamon", deamon_hp);
        KalecgosDualHP_UpdateVisuals("Human", human_hp);
    elseif(event == 'CHAT_MSG_ADDON')then
        if(arg1 == "KHP_dragon") then
            KalecgosDualHP_UpdateVisuals("Dragon", tonumber(arg2))
        elseif(arg1 == "KHP_deamon") then
            KalecgosDualHP_UpdateVisuals("Deamon", tonumber(arg2))
        elseif(arg1 == "KHP_human") then
            KalecgosDualHP_UpdateVisuals("Human", tonumber(arg2))
        end
    end

    -- infight check
    if (event == "PLAYER_REGEN_ENABLED") then
        isInfight = false;
        dragonSeen = false;
        dragon_hp = HEALTH_DRAGON_DEFAULT;
        deamon_hp = HEALTH_DEAMON_DEFAULT;
        human_hp = HEALTH_HUMAN_DEFAULT;

        KalecgosDualHP_UpdateVisuals("Dragon", dragon_hp);
        KalecgosDualHP_UpdateVisuals("Deamon", deamon_hp);
        KalecgosDualHP_UpdateVisuals("Human", human_hp);

        KalecgosFrame_dragonHPBar_dragonName:SetText(NAME_DRAGON);
        KalecgosFrame_deamonHPBar_deamonName:SetText(NAME_DEAMON);
    elseif (event == "PLAYER_REGEN_DISABLED") then
        isInfight = true;
        dragonSeen = false;
    end

    if (event == 'COMBAT_LOG_EVENT_UNFILTERED' and dragonSeen == false) then
        if(arg3 == GUID_DRAGON or arg3 == GUID_DEAMON or arg4 == NAME_DRAGON or arg6 == GUID_DRAGON or arg7 == NAME_DRAGON) then
            dragonSeen = true;
        end
    end

    if (event == 'COMBAT_LOG_EVENT_UNFILTERED' and khp_vars.predict == "On") then
        -- name must be kalecgos
        -- guid must not be dragon guid
        -- either damage or heal

        -- this is not broadcasted as one can't trust it
        if(arg6 ~= GUID_DRAGON and arg7 == NAME_HUMAN) then
            if(arg2 == "SPELL_HEAL" or arg2 == "SPELL_PERIODIC_HEAL") then
                KalecgosDualHP_UpdateVisuals("Human", human_hp + tonumber(arg12));
            elseif(arg2 == "SWING_DAMAGE") then
                KalecgosDualHP_UpdateVisuals("Human", human_hp - tonumber(arg9));
            elseif(arg2 == "SPELL_DAMAGE" or arg2 == "SPELL_PERIODIC_DAMAGE") then
                KalecgosDualHP_UpdateVisuals("Human", human_hp - tonumber(arg12));
            end
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

function human_handleVisible()
    if(khp_vars.human == "Off") then
        KalecgosFrame:SetHeight(76);
        KalecgosFrame_humanHPBar:Hide();
    else
        KalecgosFrame:SetHeight(114);
        KalecgosFrame_humanHPBar:Show();
    end
end

function human_toggle()
    if(khp_vars.human == "On") then
        khp_vars.human = "Off";
    else
        khp_vars.human = "On";
    end

    human_handleVisible();
    DEFAULT_CHAT_FRAME:AddMessage("KalecgosDualHP: Human Bar is now " ..khp_vars.human)
end

function predict_toggle()
    if(khp_vars.predict == "On") then
        khp_vars.predict = "Off";
    else
        khp_vars.predict = "On";
    end

    DEFAULT_CHAT_FRAME:AddMessage("KalecgosDualHP: Human Healthprediction is now " ..khp_vars.predict)
end

function save_position()
    khp_vars.point, _, khp_vars.relativePoint, khp_vars.xOfs, khp_vars.yOfs = KalecgosFrame:GetPoint();
end