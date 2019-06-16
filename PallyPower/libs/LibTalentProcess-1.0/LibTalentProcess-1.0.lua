local MAJOR, MINOR = "LibTalentProcess-1.0", 90000 + tonumber(("$Rev: 1 $"):match("(%d+)"))

local lib = LibStub:NewLibrary(MAJOR, MINOR)
if not lib then
    return
end

if not lib.events then
    lib.events = LibStub("CallbackHandler-1.0"):New(lib)
end

-- Query
function lib:Query(talents)
    -- talents.unit = "Player"
    -- talents[1] = 0
    -- talents[2] = 1
    -- talents[3] = 59
    
    if (not talents) then
        error("Error: No Talents")
    elseif not (talents[1] ~= nil and talents[2] ~= nil and talents[3] ~= nil and talents.unit ~= nil) then
        error("Error: wrong Talent format or no unit!")
    elseif not UnitExists(talents.unit) or not UnitIsPlayer(talents.unit) then
        error("Error: " .. tostring(talents.unit) .. " does not exist or is no player!")
    else
        DEFAULT_CHAT_FRAME:AddMessage("Talents Unit" ..talents.unit)
        DEFAULT_CHAT_FRAME:AddMessage("Talents 1: " ..talents[1])
        DEFAULT_CHAT_FRAME:AddMessage("Talents 2: " ..talents[2])
        DEFAULT_CHAT_FRAME:AddMessage("Talents 3: " ..talents[3])

        self:ProcessTalents(talents)
       -- TODO: Do stuff
    end
end

-- Reset
function lib:Reset()
    -- currently do nothing
end

-- INSPECT_TALENT_READY
function lib:ProcessTalents(talents)
    talents.role = "ROLLE"
    self.events:Fire("TalentProcess_Ready", talents)
    self:Reset()
end

lib:Reset()
