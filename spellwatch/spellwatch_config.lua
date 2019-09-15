--------------------------------------------------------
-- Config menu related functions
--------------------------------------------------------

-- enable spellwatch
function SWConfigButtonEnable_OnShow()
    if ( SW_SETTINGS["GENERAL_ENABLE"] >= 1 ) then
        this:SetChecked(1);
    else
        this:SetChecked(0);
    end
end

function SWConfigButtonEnable_OnClick()
    if this:GetChecked() then
        SW_SETTINGS["GENERAL_ENABLE"] = 1;
        --SW_RegisterEvents()
    else
        SW_SETTINGS["GENERAL_ENABLE"] = 0;
        --SW_UnregisterEvents()
    end
end

-- enable sound
function SWConfigButtonEnableSound_OnShow()
    if ( SW_SETTINGS["GENERAL_SOUND"] >= 1 ) then
        this:SetChecked(1);
    else
        this:SetChecked(0);
    end
end

function SWConfigButtonEnableSound_OnClick()
    if this:GetChecked() then
        SW_SETTINGS["GENERAL_SOUND"] = 1;
    else
        SW_SETTINGS["GENERAL_SOUND"] = 0;
    end
end

-- enable max channel
function SWConfigButtonEnableMaxChannel_OnShow()
    if ( SW_SETTINGS["GENERAL_MAXCHANNEL"] >= 1 ) then
        this:SetChecked(1);
    else
        this:SetChecked(0);
    end
end

function SWConfigButtonEnableMaxChannel_OnClick()
    if this:GetChecked() then
        SW_SETTINGS["GENERAL_MAXCHANNEL"] = 1;
    else
        SW_SETTINGS["GENERAL_MAXCHANNEL"] = 0;
    end
end

-- only in instances
function SWConfigButtonOnlyInstances_OnShow()
    if ( SW_SETTINGS["GENERAL_INSTANCE"] >= 1 ) then
        this:SetChecked(1);
    else
        this:SetChecked(0);
    end
end

function SWConfigButtonOnlyInstances_OnClick()
    if this:GetChecked() then
        SW_SETTINGS["GENERAL_INSTANCE"] = 1;
    else
        SW_SETTINGS["GENERAL_INSTANCE"] = 0;
    end
end
-- close frame
function SWConfigButtonClose_OnClick()
    SWConfig:Hide();
end

-- modules enable
function SWConfigButtonEnableModule_OnShow(modulename)
    if(modulename ~= nil) then
        if ( SW_SETTINGS[modulename] >= 1 ) then
            this:SetChecked(1);
        else
            this:SetChecked(0);
        end
    end
end

function SWConfigButtonEnableModule_OnClick(modulename)
    if this:GetChecked() then
        SW_SETTINGS[modulename] = 1;
    else
        SW_SETTINGS[modulename] = 0;
    end
end

-- modules system
function SWConfigButtonModule_OnShow(modulename, type)
    if(type ~= nil and modulename ~= nil) then
        if ( SW_SETTINGS[(modulename .. "_" .. type)] >= 1 ) then
            this:SetChecked(1);
        else
            this:SetChecked(0);
        end
    end
end

function SWConfigButtonModule_OnClick(modulename, type)
    if(type ~= nil and modulename ~= nil) then
        if this:GetChecked() then
            SW_SETTINGS[(modulename .. "_" .. type)] = 1;
        else
            SW_SETTINGS[(modulename .. "_" .. type)] = 0;
        end
    end
end