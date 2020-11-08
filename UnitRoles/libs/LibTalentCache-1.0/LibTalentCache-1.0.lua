local MAJOR, MINOR = "LibTalentCache-1.0", 1
local LibTalentCache = LibStub:NewLibrary(MAJOR, MINOR)
if not LibTalentCache then return end

local TalentQuery = LibStub:GetLibrary("LibTalentQuery-1.0")
LibStub("AceEvent-2.0"):embed(LibTalentCache)
local roster = AceLibrary("Roster-2.1")
local Timer = setmetatable({}, {__tostring=function() return "LibTalentCache" end});
local aceTimer = LibStub("AceTimer-3.0")
local compress = LibStub("LibCompress")


if (aceTimer ~= nil) then
    aceTimer:Embed(Timer)
else
    Timer = nil
end

local events = setmetatable({}, {__tostring=function() return "LibTalentCache" end});
LibStub("AceEvent-3.0"):Embed(events)
LibStub("AceComm-3.0"):Embed(LibTalentCache)
LibStub("AceSerializer-3.0"):Embed(LibTalentCache)

local RepeatedRosterTimer = nil
local CommPrefix = "LTC"

SpecCache = {}
local ClassRoles = {
    WARRIOR = {"MELEE", "MELEE", "TANK"},
    PALADIN = {"HEAL", "TANK", "MELEE"},
    ROGUE   = {"MELEE", "MELEE", "MELEE"},
    MAGE    = {"CASTER", "CASTER", "CASTER"},
    DRUID   = {"CASTER", "TANK", "HEAL"},
    SHAMAN  = {"CASTER", "MELEE", "HEAL"},
    PRIEST  = {"HEAL", "HEAL", "CASTER"},
    HUNTER  = {"MELEE", "MELEE", "MELEE"},
    WARLOCK = {"CASTER", "CASTER", "CASTER"}
};

local Roles = {
    "TANK",
    "HEAL",
    "MELEE",
    "CASTER"
}

local REQUEST_ROLE_CHANGED = "RoleChanged"
local REQUEST_TALENTS_CHANGED = "TalentsChanged"
local frame = LibTalentCache.frame
if not frame then
	frame = CreateFrame("Frame", MAJOR .. "_Frame")
	LibTalentCache.frame = frame
end
frame:UnregisterAllEvents()
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("CHARACTER_POINTS_CHANGED")
frame:SetScript("OnEvent", function(this, event, ...)
    return LibTalentCache[event](LibTalentCache, ...)
end)

function LibTalentCache:RosterLib_UnitChanged(
    new_unitid,
    new_name, 
    new_class, 
    new_subgroup, 
    new_rank,
    old_name, 
    old_unitid, 
    old_class, 
    old_subgroup, 
    old_rank,
    new_role, 
    new_ML,
    old_role, 
    old_ML)

    LibTalentCache:ScanRoster()
    local isNewUnit = new_unitid and not old_unitid
    local unitUpdated = new_subgroup == old_subgroup
    if (isNewUnit or unitUpdated) then
        LibTalentCache:NotifyTalentsChanged(UnitName("player"), UnitRole("player"))
    end
end

function LibTalentCache:RosterLib_RosterUpdated()
    LibTalentCache:ScanRoster()
end

LibTalentCache:RegisterEvent("RosterLib_RosterUpdated", "RosterLib_RosterUpdated")
LibTalentCache:RegisterEvent("RosterLib_UnitChanged", "RosterLib_UnitChanged")

function LibTalentCache:PLAYER_ENTERING_WORLD()
    LibTalentCache:ScanRoster()
end

function LibTalentCache:PLAYER_LOGIN()
    TalentQuery.RegisterCallback(self, "TalentQuery_Ready")

    -- check every 60 seconds for roster updates
    if (Timer ~= nil and RepeatedRosterTimer == nil) then
        RepeatedRosterTimer = Timer:ScheduleRepeatingTimer(LibTalentCache.ScanRoster, 5)
    end
end

function LibTalentCache:CHARACTER_POINTS_CHANGED()
    local name = UnitName("player")
    LibTalentCache:NotifyTalentsChanged(name, UnitRole(name))
end

function LibTalentCache:TalentQuery_Ready(e, name)
    local isnotplayer = (name ~= UnitName("player"))
    if (type(SpecCache[name]) ~= "table") then
        SpecCache[name] = {
            TotalPointsSpend = 0,
            MainSpec = 1,
            TimeCached = GetTime(),
            TabInfo = {{}, {}, {}},
            Class = select(2, UnitClass(name)),
            IsInRaid = false,
            ForcedRole = nil
        }
    end

    -- reset talent spec and update cache time
    SpecCache[name].MainSpec = 1
    SpecCache[name].TimeCached = GetTime()
    for tab = 1, GetNumTalentTabs(isnotplayer) do
        local treename, icon, pointsspent = GetTalentTabInfo(tab, isnotplayer)
        SpecCache[name].TotalPointsSpend = SpecCache[name].TotalPointsSpend + pointsspent
        
        local tabInfo = SpecCache[name].TabInfo[tab]
        tabInfo.TreeName = treename
        tabInfo.PointsSpent = pointsspent
        tabInfo.Icon = icon
        tabInfo.Talents = {}
        tabInfo.NumTalents = GetNumTalents(tab, isnotplayer)

        if (tab > 1 and SpecCache[name].TabInfo[SpecCache[name].MainSpec].PointsSpent < pointsspent) then
            SpecCache[name].MainSpec = tab
        end

        for talent = 1, tabInfo.NumTalents do
            nameTalent, icon, tier, column, currRank, maxRank = GetTalentInfo(tab, talent, isnotplayer)
            tabInfo.Talents[talent] = {
                Name = nameTalent,
                Icon = icon,
                Tier = tier,
                Column = column,
                Rank = currRank,
                MaxRank = maxRank
            }
        end
    end

    events:SendMessage("TalentCache_NewTalentData", name, UnitRole(name))
end

function LibTalentCache:ScanRoster()

    for name, info in pairs(SpecCache) do
        info.IsInRaid = false
    end

    local time = GetTime()
    for unit in roster:IterateRoster(false) do
        -- recache every 5 minutes to account for any respecs
        if (SpecCache[unit.name] == nil or (time - SpecCache[unit.name].TimeCached) >= 300) then
            if (UnitName("player") == unit.name) then
                LibTalentCache:TalentQuery_Ready(nil, unit.name)
            else
                if (UnitExists(unit.unitid) and UnitIsPlayer(unit.unitid) and CanInspect(unit.unitid)) then
                    TalentQuery:Query(unit.unitid)
                end
            end
        end

        if (SpecCache[unit.name] ~= nil) then
            SpecCache[unit.name].IsInRaid = true
        end
    end

    for name, info in pairs(SpecCache) do
        if (not info.IsInRaid) then
            info.ForcedRole = nil
        end
    end
end

function LibTalentCache:NotifyRoleChanged(name, role, broadcast)
    -- local event layer
    events:SendMessage("TalentCache_RoleChanged", name, role)

    if (broadcast == false) then 
        return
    end

    -- broadcast to other members
    local request = {
        t = REQUEST_ROLE_CHANGED,
        d = {
            n = name,
            r = role
        }
    }

    local serialized = self:Serialize(request)
    local data = compress:Compress(serialized)
    self:SendCommMessage(CommPrefix, data, "RAID")
end

function LibTalentCache:NotifyTalentsChanged(name, role, broadcast)
        -- local event layer
        events:SendMessage("TalentCache_NewTalentData", name, role)

        if (broadcast == false or name ~= UnitName("player")) then 
            return
        end
        
        -- broadcast to other members, force talent cache update
        LibTalentCache:TalentQuery_Ready(nil, name)

        local forced = false
        local spec = SpecCache[name].MainSpec
        if (SpecCache[name].ForcedRole ~= nil) then
            spec = SpecCache[name].ForcedRole
            forced = true
        end

        local request = {
            t = REQUEST_TALENTS_CHANGED,
            d = {
                n = name,
                t = spec,
                f = forced
            }
        }
    
        local serialized = self:Serialize(request)
        local data = compress:Compress(serialized)
        self:SendCommMessage(CommPrefix, data, "RAID")
end

function LibTalentCache:OnRoleChanged(request, sender)
    UnitSetRole(request.n, request.r, false)
end

function LibTalentCache:OnTalentsChanged(request, sender)
    local name = request.n
    if (type(SpecCache[name]) ~= "table") then
        SpecCache[name] = {
            TotalPointsSpend = 0,
            MainSpec = 1,
            TimeCached = 0,
            TabInfo = {{}, {}, {}},
            Class = select(2, UnitClass(name)),
            IsInRaid = false,
            ForcedRole = nil
        }
    end

    if (request.f == false) then
        SpecCache[name].MainSpec = request.t
        SpecCache[name].ForcedRole = nil
    else
        SpecCache[name].ForcedRole = request.t
    end

    LibTalentCache:NotifyTalentsChanged(name, UnitRole(name), false)
end

-- keep logcial order
function LibTalentCache:OnCommReceived(prefix, text, dist, sender)
    if (sender == UnitName("player")) then
        return
    end

    local decompressedMessage = compress:Decompress(text)
    local success, request = self:Deserialize(decompressedMessage)
    if (success) then
        local handler = LibTalentCache["On" .. request.t]
        if (type(handler) ~= "function") then
            error("Missing handler method for OnCommReceived (On" .. tostring(t.request) .. ")")
        end

        handler(LibTalentCache, request.d, sender)
    else
    end
end

-- Public API
function UnitSetRole(name, role, broadcast)
    if type(name) ~= "string" then
        error(("Bad argument #1 to 'UnitNumTalentTabs'. Expected %q, received %q (%s)"):format("string", type(name), tostring(name)), 2)
    end

    if (type(role) ~= "string" and type(role) ~= "number") then
        error(("Bad argument #2 to 'UnitChangeRole'. Expected %q, received %q (%s)"):format("string or number", type(role), tostring(role)), 2)
    end

    if (SpecCache[name] == nil) then
        if (name  ~= UnitName("player")) then
            return nil
        end

        SpecCache[name] = {
            TotalPointsSpend = 0,
            MainSpec = 1,
            TimeCached = GetTime(),
            TabInfo = {{}, {}, {}},
            Class = select(2, UnitClass(name)),
            IsInRaid = true,
            ForcedRole = nil
        }
    end
    
    if (type(role) == "string") then
        for i = 1, #Roles do
            if (Roles[i] == role) then
                role = i
                break
            end
        end

        if (type(role) ~= "number") then
            return
        end
    end

    SpecCache[name].ForcedRole = role
    LibTalentCache:NotifyRoleChanged(name, Roles[SpecCache[name].ForcedRole], broadcast)
end

function UnitChangeRole(name, direction)
    if type(name) ~= "string" then
        error(("Bad argument #1 to 'UnitNumTalentTabs'. Expected %q, received %q (%s)"):format("string", type(name), tostring(name)), 2)
    end

    if (type(direction) ~= "string" and type(direction) ~= "number") then
        error(("Bad argument #2 to 'UnitChangeRole'. Expected %q, received %q (%s)"):format("string or number", type(direction), tostring(direction)), 2)
    end

    direction = direction * -1;

    if (SpecCache[name] == nil) then
        if (name  ~= UnitName("player")) then
            return nil
        end

        SpecCache[name] = {
            TotalPointsSpend = 0,
            MainSpec = 1,
            TimeCached = GetTime(),
            TabInfo = {{}, {}, {}},
            Class = select(2, UnitClass(name)),
            IsInRaid = true,
            ForcedRole = nil
        }
    end

    if (SpecCache[name].ForcedRole == nil) then
        SpecCache[name].ForcedRole = GetUnitRoleId(name)
    end

    SpecCache[name].ForcedRole = SpecCache[name].ForcedRole + direction
    if (SpecCache[name].ForcedRole == 0) then
        SpecCache[name].ForcedRole = 4
    end

    if (SpecCache[name].ForcedRole == 5) then
        SpecCache[name].ForcedRole = 1
    end

    LibTalentCache:NotifyRoleChanged(name, Roles[SpecCache[name].ForcedRole])
    return Roles[SpecCache[name].ForcedRole]
end

function GetUnitRoleId(name)
    if type(name) ~= "string" then
        error(("Bad argument #1 to 'UnitNumTalentTabs'. Expected %q, received %q (%s)"):format("string", type(name), tostring(name)), 2)
    end

    local role = UnitRole(name)
    if (role == nil) then
        return nil
    end

    for i, r in pairs(Roles) do
        if (r == role) then
            return i
        end
    end

    return nil
end

function UnitNumTalentTabs(name)
    if type(name) ~= "string" then
        error(("Bad argument #1 to 'UnitNumTalentTabs'. Expected %q, received %q (%s)"):format("string", type(name), tostring(name)), 2)
    end

    if (UnitName("player") == name) then
        return GetNumTalentTabs()
    end

    if (SpecCache[name] == nil) then
        return nil
    end

    return #SpecCache[name].TabInfo
end

function UnitRole(name)
    if type(name) ~= "string" then
        error(("Bad argument #1 to 'UnitRole'. Expected %q, received %q (%s)"):format("string", type(name), tostring(name)), 2)
    end

    if (UnitName("player") == name) then
        -- check if we got a forced role
        if (SpecCache[name] ~= nil and SpecCache[name].ForcedRole ~= nil) then
            return Roles[SpecCache[name].ForcedRole]
        end

        local class = select(2, UnitClass("player"))
        local maxTab, spent = 1, 0

        for i = 1, GetNumTalentTabs() do
            local _, _, pointsspent = GetTalentTabInfo(i)
            if (pointsspent > spent) then
                maxTab = i
                spent = pointsspent
            end
        end

        return ClassRoles[class][maxTab]
    end

    if (SpecCache[name] == nil) then
        return nil
    end

    if SpecCache[name].ForcedRole ~= nil then
        return Roles[SpecCache[name].ForcedRole]
    else
        return ClassRoles[SpecCache[name].Class][SpecCache[name].MainSpec]
    end
end

function UnitNumTalents(name, tab)
    if type(name) ~= "string" then
        error(("Bad argument #1 to 'UnitNumTalents'. Expected %q, received %q (%s)"):format("string", type(name), tostring(name)), 2)
    elseif type(tab) ~= "number" then
        error(("Bad argument #2 to 'UnitNumTalents'. Expected %q, received %q (%s)"):format("number", type(tab), tostring(tab)), 2)
    end

    if (UnitName("player") == name) then
        return GetNumTalents(tab)
    end

    if (SpecCache[name] == nil) then
        return nil
    end

    if (UnitNumTalentTabs(name) < tab) then
        return nil
    end

    return SpecCache[name].TabInfo[tab].NumTalents
end

function UnitTalentTabInfo(name, tab)
    if type(name) ~= "string" then
        error(("Bad argument #1 to 'UnitTalentTabInfo'. Expected %q, received %q (%s)"):format("string", type(name), tostring(name)), 2)
    elseif type(tab) ~= "number" then
        error(("Bad argument #2 to 'UnitTalentTabInfo'. Expected %q, received %q (%s)"):format("number", type(tab), tostring(tab)), 2)
    end

    if (UnitName("player") == name) then
        return GetTalentTabInfo(tab)
    end

    if (SpecCache[name] == nil) then
        return nil
    end

    if (UnitNumTalentTabs(name) < tab) then
        return nil
    end

    local tabInfo = SpecCache[name].TabInfo[tab]
    return tabInfo.TreeName, tabInfo.Icon, tabInfo.PointsSpent
end

function UnitTalentInfo(name, tab, talent)
    if type(name) ~= "string" then
        error(("Bad argument #1 to 'UnitTalentTabInfo'. Expected %q, received %q (%s)"):format("string", type(name), tostring(name)), 2)
    elseif type(tab) ~= "number" then
        error(("Bad argument #2 to 'UnitTalentTabInfo'. Expected %q, received %q (%s)"):format("number", type(tab), tostring(tab)), 2)
    elseif type(talent) ~= "number" then
        error(("Bad argument #3 to 'UnitTalentTabInfo'. Expected %q, received %q (%s)"):format("number", type(talent), tostring(talent)), 2)
    end

    if (UnitName("player") == name) then
        return GetTalentInfo(tab, talent)
    end

    if (SpecCache[name] == nil) then
        return nil
    end

    if (UnitNumTalentTabs(name) < tab) then
        return nil
    end

    if (UnitNumTalents(name, tab) > talent) then
        return nil
    end

    local talentInfo = SpecCache[name].TabInfo[tab].Talents[talent]
    return talentInfo.Name, talentInfo.Icon, talentInfo.Column, talentInfo.Rank, talentInfo.MaxRank
end

function RoleIdToRole(id)
    if type(id) ~= "number" then
        error(("Bad argument #1 to 'RoleIdToRole'. Expected %q, received %q (%s)"):format("number", type(id), tostring(id)), 2)
    end

    if id < 1 or id > #Roles then
        return nil
    end

    return Roles[id]
end

LibTalentCache:RegisterComm(CommPrefix)