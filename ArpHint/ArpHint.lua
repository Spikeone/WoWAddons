function ArpHint_OnLoad()
    this:RegisterEvent('PLAYER_TARGET_CHANGED');
	this:RegisterEvent('COMBAT_LOG_EVENT_UNFILTERED');

    SLASH_ARPHINT1 = "/arphint";
    SlashCmdList["ARPHINT"] = function(msg)
        ArpHint_SlashCommandHandler(msg);
    end
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
	elseif (command == "hide") then
		getglobal("ArpHint_Frame"):Hide()
    end

end

function ArpHint_OnEvent(self, event, ...)
	local _, armor = UnitArmor("target")
	
	local armorPen = GetArmorPenetration()
	
	getglobal("ArpHint_ValueLabel"):SetText("" ..(armor - armorPen))
end