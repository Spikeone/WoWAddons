function SAW_OnLoad()
    --this:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
    --this:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
    --this:RegisterEvent("PLAYER_REGEN_ENABLED");
    this:RegisterEvent("PLAYER_REGEN_DISABLED");
    this:RegisterEvent('VARIABLES_LOADED');
    DEFAULT_CHAT_FRAME:AddMessage("Spikes AuraWatch loaded!");

    SAW_TextFrame = CreateFrame("Frame");
    SAW_TextFrame:ClearAllPoints();
    SAW_TextFrame:SetHeight(300);
    SAW_TextFrame:SetWidth(600);
    SAW_TextFrame:SetScript("OnUpdate", SAW_TextFrame_OnUpdate);
    SAW_TextFrame:Hide();
    SAW_TextFrame.text = SAW_TextFrame:CreateFontString(nil, "BACKGROUND", "PVPInfoTextFont");
    SAW_TextFrame.text:SetAllPoints();
    SAW_TextFrame:SetPoint("CENTER", 0, 100);
    SAW_TextFrameTime = 0;

    --SLASH_SPELLWATCH1 = "/sw";
    SLASH_AURAWATCH1 = "/saw";
    SLASH_AURAWATCH2 = "/aurawatch";
    SlashCmdList["AURAWATCH"] = function(msg)
        SAW_SlashCommandHandler(msg);
    end

    SAW_IsInfight = false;
end

function SAW_SlashCommandHandler(msg)

    SAW_HasDebuff("asd")

    --SAW_CheckClass()

    local a, b, command = string.find( msg, "(%w+)" );

    if( command == nil ) then
        --SWConfig:Show();
        return;
    else
        command = string.lower( msg );
    end
end

function SAW_TextFrame_OnUpdate()
    if (SAW_TextFrameTime < GetTime() - 5) then
        local alpha = SAW_TextFrame:GetAlpha();
        if (alpha ~= 0) then SAW_TextFrame:SetAlpha(alpha - .05); end
        if (alpha == 0) then SAW_TextFrame:Hide(); end
    end
end
--
function SAW_TextMessage(message)
    SAW_TextFrame.text:SetTextColor(1, 0, 0, 1)
    SAW_TextFrame.text:SetText(message);
    SAW_TextFrame:SetAlpha(1);
    SAW_TextFrame:Show();
    SAW_TextFrameTime = GetTime();
    if (SAW_SETTINGS["GENERAL_SOUND"] ~= 0) then
        PlaySoundFile("Sound\\Interface\\AlarmClockWarning3.wav")
    end
end

function SAW_CheckClass()

    localizedClass, englishClass, classIndex = UnitClass("player");

    --DEFAULT_CHAT_FRAME:AddMessage(localizedClass);
    --DEFAULT_CHAT_FRAME:AddMessage(englishClass);
    --DEFAULT_CHAT_FRAME:AddMessage(classIndex);

    if (IsFlying()) then
        return;
    end

    if (IsMounted()) then
        return;
    end

    if (IsFalling()) then
        return;
    end

    if (IsOutOfBounds()) then
        return;
    end

    if (IsStealthed()) then
        return;
    end

    if (UnitIsDead("player")) then
        return;
    end

    if (UnitOnTaxi("player")) then
        return;
    end

    if(SAW_ClassHandler[englishClass] ~= nil) then
        SAW_ClassHandler[englishClass](arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15);
    else
        --DEFAULT_CHAT_FRAME:AddMessage("class has no handle");
    end

end

function SAW_OnEvent(self, event, ...)

    if (event == 'VARIABLES_LOADED') then
        SAW_OnVariablesLoaded();
    end

    -- infight check
    if (event == "PLAYER_REGEN_ENABLED") then
        isInfight = false;
    elseif (event == "PLAYER_REGEN_DISABLED") then
        isInfight = true;
    end
end

function SAW_IsHealGeared()

    bonusHeal = GetSpellBonusHealing();
    bonusSpell = 0;

    for i = 2, 7 do
        if(GetSpellBonusDamage(i) > bonusSpell) then
            bonusSpell = GetSpellBonusDamage(i);
        end
    end
    
    if(bonusHeal * 0.8 > bonusSpell) then
        return true;
    else
        return false;
    end

end

function SAW_HasDebuff(spell)
    for i = 1, 40 do
        name, rank, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId = UnitDebuff("player", i)

        --if (name ~= nil) then
        --    DEFAULT_CHAT_FRAME:AddMessage("Aura: " ..name);
        --end

        if (name ~= nil and string.find(name, spell)) then
            return 1
        end
    end

    return 0
end

function SAW_HasSpell(spell)

    for i = 1, 180 do 
        local spellName, spellRank = GetSpellName(i, BOOKTYPE_SPELL);
        if( spellName ) then
            --DEFAULT_CHAT_FRAME:AddMessage("Spellname: " ..spellName);

            if( string.find(spellName, spell)) then
                return 1;
            end

        end
    end

    return 0;

end

local function SAW_HasAura(spell)
    for i = 1, 40 do
        name, rank, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId = UnitBuff("player", i)

        --if (name ~= nil) then
        --    DEFAULT_CHAT_FRAME:AddMessage("Aura: " ..name);
        --end

        if (name ~= nil and string.find(name, spell)) then
            return 1
        end
    end

    return 0
end

SAW_ClassHandler = {}

-- class handler for druids
SAW_ClassHandler["DRUID"] = function()

    -- module enabled?
    if(SAW_SETTINGS["DRUID_ENABLE"] ~= 1) then
        return
    end

    -- only infight?
    if(SAW_SETTINGS["DRUID_ONLYCOMBAT"] == 1 and not SAW_IsInfight()) then
        return
    end

    -- only in instance?
    if(SAW_SETTINGS["DRUID_ONLYINSTANCE"] == 1 and not SAW_IsInInstance()) then
        return
    end

    -- only level?
    if(SAW_SETTINGS["DRUID_ONLYLEVEL"] == 1 and not (UnitLevel("player") >= 70)) then
        return
    end

    -- find out which role he plays
    HasSpell = SAW_HasSpell("Mondkingestalt")

    if (HasSpell ~= 0) then
        --DEFAULT_CHAT_FRAME:AddMessage("It's a moonkin");

        HasAura = SAW_HasAura("Mondkingestalt")

        if (HasAura ~= 1 and not SAW_IsHealGeared()) then
            SAW_TextMessage("Activate Moonkin Form!")
        end
    end
end

-- class handler for priests
SAW_ClassHandler["PRIEST"] = function()
    -- module enabled?
    if(SAW_SETTINGS["PRIEST_ENABLE"] ~= 1) then
        return
    end

    -- only infight?
    if(SAW_SETTINGS["PRIEST_ONLYCOMBAT"] == 1 and not SAW_IsInfight()) then
        return
    end

    -- only in instance?
    if(SAW_SETTINGS["PRIEST_ONLYINSTANCE"] == 1 and not SAW_IsInInstance()) then
        return
    end

    -- only level?
    if(SAW_SETTINGS["PRIEST_ONLYLEVEL"] == 1 and not (UnitLevel("player") >= 70)) then
        return
    end

    ---- find out which role he plays
    HasSpell = SAW_HasSpell("Schattengestalt")

    if (HasSpell ~= 0) then
        --DEFAULT_CHAT_FRAME:AddMessage("It's a moonkin");
    
        HasAura = SAW_HasAura("Schattengestalt")
    
        if (HasAura ~= 1 and not SAW_IsHealGeared()) then
            SAW_TextMessage("Activate Shadowform!")
        end
    end
end

-- class handler for paladin
SAW_ClassHandler["PALADIN"] = function()
    -- module enabled?
    if(SAW_SETTINGS["PALADIN_ENABLE"] ~= 1) then
        return
    end

    -- only infight?
    if(SAW_SETTINGS["PALADIN_ONLYCOMBAT"] == 1 and not SAW_IsInfight()) then
        return
    end

    -- only in instance?
    if(SAW_SETTINGS["PALADIN_ONLYINSTANCE"] == 1 and not SAW_IsInInstance()) then
        return
    end

    -- only level?
    if(SAW_SETTINGS["PALADIN_ONLYLEVEL"] == 1 and not (UnitLevel("player") >= 70)) then
        return
    end

    ---- find out which role he plays
    HasSpell = SAW_HasSpell("Segen des Refugiums")

    if (HasSpell ~= 0) then
        --DEFAULT_CHAT_FRAME:AddMessage("It's a Palatank");
    
        HasAura = SAW_HasAura("Zorn der Gerechtigkeit")
        
        if (HasAura ~= 1 and not SAW_IsHealGeared()) then
            SAW_TextMessage("Activate Righteous Fury!")
        end
    end
end

-- class handler for warlock
SAW_ClassHandler["WARLOCK"] = function()
    -- module enabled?
    if(SAW_SETTINGS["WARLOCK_ENABLE"] ~= 1) then
        return
    end

    -- only infight?
    if(SAW_SETTINGS["WARLOCK_ONLYCOMBAT"] == 1 and not SAW_IsInfight()) then
        return
    end

    -- only in instance?
    if(SAW_SETTINGS["WARLOCK_ONLYINSTANCE"] == 1 and not SAW_IsInInstance()) then
        return
    end

    -- only level?
    if(SAW_SETTINGS["WARLOCK_ONLYLEVEL"] == 1 and not (UnitLevel("player") >= 70)) then
        return
    end

    ---- find out which role he plays
    HasSpell = SAW_HasSpell("Teufelsrüstung")

    if (HasSpell ~= 0) then
        --DEFAULT_CHAT_FRAME:AddMessage("It's a Teufelsrüstung");
    
        HasAura = SAW_HasAura("Teufelsrüstung")
        
        if (HasAura ~= 1 and not SAW_IsHealGeared()) then
            SAW_TextMessage("Activate Fel Armor!")
        end
    end
end

-- class handler for mage
SAW_ClassHandler["MAGE"] = function()

    -- module enabled?
    if(SAW_SETTINGS["MAGE_ENABLE"] ~= 1) then
        return
    end

    -- only infight?
    if(SAW_SETTINGS["MAGE_ONLYCOMBAT"] == 1 and not SAW_IsInfight()) then
        return
    end

    -- only in instance?
    if(SAW_SETTINGS["MAGE_ONLYINSTANCE"] == 1 and not SAW_IsInInstance()) then
        return
    end

    -- only level?
    if(SAW_SETTINGS["MAGE_ONLYLEVEL"] == 1 and not (UnitLevel("player") >= 70)) then
        return
    end

    HasPyro = SAW_HasSpell("Pyroschlag")
    
    -- pyro controls if it's a frost or a fire mage
    if(SAW_SETTINGS["MAGE_FIRE"] == 1) then
        HasPyro = 1
    elseif(SAW_SETTINGS["MAGE_ARCANEFROST"] == 1) then
        HasPyro = 0
    end

    if(HasPyro ~= 0) then
        HasSpell = SAW_HasSpell("Glühende Rüstung")

        if (HasSpell ~= 0) then
        
            HasAura = SAW_HasAura("Glühende Rüstung")
            
            if (HasAura ~= 1) then
                SAW_TextMessage("Activate Molten Armor!")
            end
        end
    else
        HasSpell = SAW_HasSpell("Magische Rüstung")

        if (HasSpell ~= 0) then
        
            HasAura = SAW_HasAura("Magische Rüstung")
            
            if (HasAura ~= 1) then
                SAW_TextMessage("Activate Mage Armor!")
            end
        end
    end
end

function SAW_OnVariablesLoaded()

    -- general settings
    if (not SAW_SETTINGS)                           then SAW_SETTINGS ={} end
    if (not SAW_SETTINGS["GENERAL_ENABLE"])         then SAW_SETTINGS["GENERAL_ENABLE"] = 1 end
    if (not SAW_SETTINGS["GENERAL_ONLYINSTANCES"])  then SAW_SETTINGS["GENERAL_ONLYINSTANCES"] = 0 end
    if (not SAW_SETTINGS["GENERAL_TIMER"])          then SAW_SETTINGS["GENERAL_TIMER"] = 5 end

    -- general settings
    if (not SAW_SETTINGS["DRUID_ENABLE"])       then SAW_SETTINGS["DRUID_ENABLE"] = 1 end
    if (not SAW_SETTINGS["DRUID_ONLYCOMBAT"])   then SAW_SETTINGS["DRUID_ONLYCOMBAT"] = 0 end
    if (not SAW_SETTINGS["DRUID_ONLYRAID"])     then SAW_SETTINGS["DRUID_ONLYRAID"] = 0 end
    if (not SAW_SETTINGS["DRUID_ONLYINSTANCE"]) then SAW_SETTINGS["DRUID_ONLYINSTANCE"] = 0 end
    if (not SAW_SETTINGS["DRUID_ONLYLEVEL"])    then SAW_SETTINGS["DRUID_ONLYLEVEL"] = 1 end

    -- general settings
    if (not SAW_SETTINGS["PRIEST_ENABLE"])       then SAW_SETTINGS["PRIEST_ENABLE"] = 1 end
    if (not SAW_SETTINGS["PRIEST_ONLYCOMBAT"])   then SAW_SETTINGS["PRIEST_ONLYCOMBAT"] = 0 end
    if (not SAW_SETTINGS["PRIEST_ONLYRAID"])     then SAW_SETTINGS["PRIEST_ONLYRAID"] = 0 end
    if (not SAW_SETTINGS["PRIEST_ONLYINSTANCE"]) then SAW_SETTINGS["PRIEST_ONLYINSTANCE"] = 0 end
    if (not SAW_SETTINGS["PRIEST_ONLYLEVEL"])    then SAW_SETTINGS["PRIEST_ONLYLEVEL"] = 1 end

    -- general settings
    if (not SAW_SETTINGS["PALADIN_ENABLE"])       then SAW_SETTINGS["PALADIN_ENABLE"] = 1 end
    if (not SAW_SETTINGS["PALADIN_ONLYCOMBAT"])   then SAW_SETTINGS["PALADIN_ONLYCOMBAT"] = 0 end
    if (not SAW_SETTINGS["PALADIN_ONLYRAID"])     then SAW_SETTINGS["PALADIN_ONLYRAID"] = 0 end
    if (not SAW_SETTINGS["PALADIN_ONLYINSTANCE"]) then SAW_SETTINGS["PALADIN_ONLYINSTANCE"] = 0 end
    if (not SAW_SETTINGS["PALADIN_ONLYLEVEL"])    then SAW_SETTINGS["PALADIN_ONLYLEVEL"] = 1 end

    -- general settings
    if (not SAW_SETTINGS["WARLOCK_ENABLE"])       then SAW_SETTINGS["WARLOCK_ENABLE"] = 1 end
    if (not SAW_SETTINGS["WARLOCK_ONLYCOMBAT"])   then SAW_SETTINGS["WARLOCK_ONLYCOMBAT"] = 0 end
    if (not SAW_SETTINGS["WARLOCK_ONLYRAID"])     then SAW_SETTINGS["WARLOCK_ONLYRAID"] = 0 end
    if (not SAW_SETTINGS["WARLOCK_ONLYINSTANCE"]) then SAW_SETTINGS["WARLOCK_ONLYINSTANCE"] = 0 end
    if (not SAW_SETTINGS["WARLOCK_ONLYLEVEL"])    then SAW_SETTINGS["WARLOCK_ONLYLEVEL"] = 1 end

    -- general settings
    if (not SAW_SETTINGS["MAGE_ENABLE"])       then SAW_SETTINGS["MAGE_ENABLE"] = 1 end
    if (not SAW_SETTINGS["MAGE_ONLYCOMBAT"])   then SAW_SETTINGS["MAGE_ONLYCOMBAT"] = 0 end
    if (not SAW_SETTINGS["MAGE_ONLYRAID"])     then SAW_SETTINGS["MAGE_ONLYRAID"] = 0 end
    if (not SAW_SETTINGS["MAGE_ONLYINSTANCE"]) then SAW_SETTINGS["MAGE_ONLYINSTANCE"] = 0 end
    if (not SAW_SETTINGS["MAGE_ONLYLEVEL"])    then SAW_SETTINGS["MAGE_ONLYLEVEL"] = 1 end
    if (not SAW_SETTINGS["MAGE_ARCANEFROST"])  then SAW_SETTINGS["MAGE_ARCANEFROST"] = 0 end
    if (not SAW_SETTINGS["MAGE_FIRE"])         then SAW_SETTINGS["MAGE_FIRE"] = 0 end


    SAW_SETTINGS["GENERAL_CURRENT_TIMER"] = 0
end

function SAW_OnUpdate(self, elapsed)

    if(SAW_SETTINGS["GENERAL_ONLYINSTANCES"] == 1 and not SAW_IsInInstance()) then
        return;
    end

    if(SAW_SETTINGS["GENERAL_CURRENT_TIMER"] + elapsed > SAW_SETTINGS["GENERAL_TIMER"]) then
        SAW_SETTINGS["GENERAL_CURRENT_TIMER"] = 0
        SAW_CheckClass()
    else
        SAW_SETTINGS["GENERAL_CURRENT_TIMER"] = SAW_SETTINGS["GENERAL_CURRENT_TIMER"] + elapsed
    end
end

function SAW_IsInInstance()
    inInstance, instanceType = IsInInstance()
    if(inInstance) then
        return true
    else
        return false
    end
end