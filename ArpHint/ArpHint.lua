function ArpHint_OnLoad()
    this:RegisterEvent('PLAYER_TARGET_CHANGED');
    this:RegisterEvent('COMBAT_LOG_EVENT_UNFILTERED');

    SLASH_ARPHINT1 = "/arphint";
    SlashCmdList["ARPHINT"] = function(msg)
        ArpHint_SlashCommandHandler(msg);
    end
end

-- always 2 decimals
local function ArpHint_round(num)
  local mult = 10^2
  return math.floor(num * mult + 0.5) / mult
end

function ArpHint_SlashCommandHandler(msg)
    local a, b, command = string.find( msg, "(%w+)" );

    if( command == nil ) then
        return;
    else
        command = string.lower( msg );
    end

    if (command == "show") then
        getglobal("ArpHint_Frame"):Show()
        getglobal("ArpHint_FrameMH"):Show()
        getglobal("ArpHint_FrameOH"):Show()
    elseif (command == "hide") then
        getglobal("ArpHint_Frame"):Hide()
        getglobal("ArpHint_FrameMH"):Hide()
        getglobal("ArpHint_FrameOH"):Hide()
    end

end

function ArpHint_OnEvent(self, event, ...)
    local _, armor = UnitArmor("target")
    local mainSpeed, offSpeed = UnitAttackSpeed("player");
    
    if(mainSpeed == nil) then 
        mainSpeed = 0
    else
        mainSpeed = ArpHint_round(mainSpeed)
    end
    
    if(offSpeed == nil) then 
        offSpeed = 0
    else
        offSpeed = ArpHint_round(offSpeed)
    end

    local armorPen = GetArmorPenetration()

    getglobal("ArpHint_ValueLabel"):SetText("" ..(armor - armorPen))
    getglobal("ArpHint_ValueMHLabel"):SetText("" ..mainSpeed)
    getglobal("ArpHint_ValueOHLabel"):SetText("" ..offSpeed)
end