local UnitRoles = LibStub("AceAddon-3.0"):NewAddon("UnitRoles", "AceEvent-3.0")

-- setup localization
UnitRoles.L = LibStub("AceLocale-3.0"):GetLocale("UnitRoles")

local RaidRoleFrames = {}
local PopupButtons = {
    ["ROLE"] = { text = UnitRoles.L["Set role"], dist = 0, nested = 1},
    ["ROLE1"] = { text = UnitRoles.L["TANK"], dist = 0},
    ["ROLE2"] = { text = UnitRoles.L["HEAL"], dist = 0},
    ["ROLE3"] = { text = UnitRoles.L["MELEE"], dist = 0},
    ["ROLE4"] = { text = UnitRoles.L["CASTER"], dist = 0},
    ["ROLE1_RAID"] = { text = UnitRoles.L["Set role to Tank"], dist = 0},
    ["ROLE2_RAID"] = { text = UnitRoles.L["Set role to Heal"], dist = 0},
    ["ROLE3_RAID"] = { text = UnitRoles.L["Set role to Melee"], dist = 0},
    ["ROLE4_RAID"] = { text = UnitRoles.L["Set role to Caster"], dist = 0},
}

local PopupMenus = {
    ["ROLE"] = { "ROLE1", "ROLE2", "ROLE3", "ROLE4" },
}

local PopupMenuHooks = {
    { Menu = "SELF", HookPoint = "LEAVE", Button = "ROLE" },
    { Menu = "RAID_PLAYER", HookPoint = "RAID_LEADER", Button = "ROLE" },
    { Menu = "RAID", HookPoint = "LOOT_PROMOTE", Button = "ROLE1_RAID" },
    { Menu = "RAID", HookPoint = "LOOT_PROMOTE", Button = "ROLE2_RAID" },
    { Menu = "RAID", HookPoint = "LOOT_PROMOTE", Button = "ROLE3_RAID" },
    { Menu = "RAID", HookPoint = "LOOT_PROMOTE", Button = "ROLE4_RAID" },
    { Menu = "PARTY", HookPoint = "LOOT_PROMOTE", Button = "ROLE" },
}

-- save BlizzardUI Methods
local _UIDropDownMenu_AddButton = UIDropDownMenu_AddButton

function UnitRoles:OnInitialize()
	
end

function UnitRoles:OnEnable(first)
    self:InitPopupMenus()

    self:RegisterEvent("RAID_ROSTER_UPDATE", "UpdateRaidRoleFrames")
    self:RegisterMessage("TalentCache_NewTalentData", "UpdateRaidRoleFrames")
    self:RegisterMessage("TalentCache_RoleChanged", "UpdateRaidRoleFrames")
end

function UnitRoles:OnDisable()

end


-- Raid frame handling
function UnitRoles:UpdateRaidRoleFrames(event, name, role)

    local num = GetNumRaidMembers()
    for i = 1, num do
        if (RaidRoleFrames[i] == nil) then
            RaidRoleFrames[i] = self:CreateRaidRoleFrame(i)
        end
        if (RaidRoleFrames[i] ~= nil) then
            self:SetRoleTexture(RaidRoleFrames[i], UnitRole(UnitName("raid" .. i)))
        end
    end

    -- clear old unused frames
    for i = num + 1, #RaidRoleFrames do
        RaidRoleFrames[i] = nil
    end

    if (event == "TalentCache_RoleChanged") then
        if (name == UnitName("player")) then
            DEFAULT_CHAT_FRAME:AddMessage(self.L["ROLE_CHANGED_SELF"]:format(self.L[role], 1))
        else
            DEFAULT_CHAT_FRAME:AddMessage(self.L["ROLE_CHANGED"]:format(name, self.L[role], 2))
        end
    end
end

function UnitRoles:CreateRaidRoleFrame(index)
    local raidInfoFrame = getglobal("RaidGroupButton" .. index)
    if (raidInfoFrame == nil) then
        return
    end

    local button = getglobal("RaidGroupButton" .. index .. "UnitRole")
    if (button == nil) then
       button = CreateFrame("Button", "RaidGroupButton" .. index .. "UnitRole", raidInfoFrame)
    end

    button.texture = button:CreateTexture(button:GetName() .. "Texture")
    button:SetPoint("TOPLEFT", "RaidGroupButton" .. index, "TOPLEFT", 80, -3)
    button:SetWidth(8)
    button:SetHeight(8)
    button.texture:SetWidth(8)
    button.texture:SetHeight(8)
    button.texture:SetPoint("TOPLEFT", button:GetName(), "TOPLEFT", 0, 0)
    button.texture:SetTexture(nil)
    button:Show()
    button:SetScript("OnEnter", function(this)
        GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
        local text
        if (button.role) then
            text = UnitRoles.L[button.role]
        else
            text = UnitRoles.L["Unknown"]
        end

        GameTooltip:SetText(text, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
        GameTooltip:Show();
    end)
    button:SetScript("OnLeave", function(this)
        GameTooltip:Hide();
    end)
    button:SetScript("OnUpdate", function(this)
        if GameTooltip:GetOwner() == this then
            GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
            local text
            if (button.role) then
                text = UnitRoles.L[button.role]
            else
                text = UnitRoles.L["Unknown"]
            end

            GameTooltip:SetText(text, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
            GameTooltip:Show();
        end
    end)

    -- Prettyfiy raidframes
    raidInfoFrame.subframes.name:SetPoint("LEFT", 24, 0)
    raidInfoFrame.subframes.level:SetPoint("LEFT", 87, 0)

    return button
end

function UnitRoles:SetRoleTexture(button, role)
    if (role) then
        if (role == "TANK") then
            button.texture:SetTexture("Interface\\AddOns\\UnitRoles\\textures\\Tank_Icon")
        elseif (role == "MELEE") then
            button.texture:SetTexture("Interface\\AddOns\\UnitRoles\\textures\\Melee_Icon")
        elseif (role == "CASTER") then
            button.texture:SetTexture("Interface\\AddOns\\UnitRoles\\textures\\Caster_Icon")
        else
            button.texture:SetTexture("Interface\\AddOns\\UnitRoles\\textures\\Heal_Icon")
        end

        button.texture:Show()
    else
        button.texture:Hide()
    end

    button.role = role
end

-- Menu handling
function UnitRoles:InitPopupMenus()
    -- Add PopupMenu data
    for value, button in pairs(PopupButtons) do
        UnitPopupButtons[value] = button
    end

    for value, menu in pairs(PopupMenus) do
        UnitPopupMenus[value] = menu
    end

    -- Add Menu Hooks
    for _, hook in ipairs(PopupMenuHooks) do
        self:HookPopupMenu(hook.Menu, hook.HookPoint, hook.Button)
    end
end

function UnitRoles:HookPopupMenu(menu, addBeforeButton, myButton)
    local i = 0
    for index, value in ipairs(UnitPopupMenus[menu]) do
        if (value == addBeforeButton) then
            i = index
            break
        end
    end
    
    if (i > 0) then
        table.insert(UnitPopupMenus[menu], i, myButton)
    else
    end
end

function UnitRoles:OnPopupButtonClick()
    local dropdownFrame = getglobal(UIDROPDOWNMENU_INIT_MENU);
    local unit = dropdownFrame.unit;
    local name = dropdownFrame.name;
    local button = this.value:match("ROLE%d");

    if (button == "ROLE1") then
        UnitSetRole(name, "TANK")
    elseif (button == "ROLE2") then
        UnitSetRole(name, "HEAL")
    elseif (button == "ROLE3") then
        UnitSetRole(name, "MELEE")
    elseif (button == "ROLE4") then
        UnitSetRole(name, "CASTER")
    end
end

function UnitRoles:ShouldShowMenuButton(button, unit)
    local partyMember = GetNumPartyMembers()
    local raidMember = GetNumRaidMembers()

    if (partyMember == 0 and raidMember == 0) then
        return false
    end

    if (UnitIsUnit(unit, "player")) then
        return true
    end

    local isLeader = 0;
	if ( IsPartyLeader() ) then
		isLeader = 1;
	end

	local isAssistant = 0;
	if ( IsRaidOfficer() ) then
		isAssistant = 1;
    end
    
    if raidMember > 0 and (isLeader == 1 or isAssistant == 1) then
        return true
    end

    if partyMember > 0 and isLeader == 1 then
        return true
    end

    return false
end

function NewUIDropDownMenu_AddButton(info, level)
    if (info ~= nil) then
        local value = info.value
        local dropdownFrame = getglobal(UIDROPDOWNMENU_INIT_MENU);
        local name = dropdownFrame.name;
        local unit = dropdownFrame.unit;

        if (value and type(value) == "string" and value:match("ROLE") and not UnitRoles:ShouldShowMenuButton(value, unit)) then
            return
        end

        if (value and type(value) == "string" and value:match("ROLE%d")) then
            local roleId = tonumber(value:match("%d"))
            if (UnitRole(name) == RoleIdToRole(roleId) and not value:match("RAID")) then
                info.checked = 1
            end

            info.func = UnitRoles.OnPopupButtonClick
        end
    end

    _UIDropDownMenu_AddButton(info, level)
end

-- hook blizzard function
UIDropDownMenu_AddButton = NewUIDropDownMenu_AddButton