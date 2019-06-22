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
    --talents.unit = "Player"

    if talents == nil then
        error("Error: No Talents")
    elseif (talents[1] == nil or talents[2] == nil or talents[3] == nil or talents.unit == nil or talents.class == nil) then
        error("Error: wrong Talent format or no unit or no class!")
    elseif not UnitExists(talents.unit) or not UnitIsPlayer(talents.unit) then
        error("Error: " .. tostring(talents.unit) .. " does not exist or is no player!")
    else
        DEFAULT_CHAT_FRAME:AddMessage("Talents Unit   : " .. talents.unit)
        DEFAULT_CHAT_FRAME:AddMessage("Talents UnitID : " .. talents.unitID)
        DEFAULT_CHAT_FRAME:AddMessage("Talents Class  : " .. talents.class)
        DEFAULT_CHAT_FRAME:AddMessage("Talents Tree 1 : " .. talents[1])
        DEFAULT_CHAT_FRAME:AddMessage("Talents Tree 2 : " .. talents[2])
        DEFAULT_CHAT_FRAME:AddMessage("Talents Tree 3 : " .. talents[3])

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
    if(talents.class == "PALADIN") then
        if(talents[1] > talents[2] and talents[1] > talents[3]) then
            talents.role = "PALADIN_HEAL"
        elseif(talents[2] > talents[1] and talents[2] > talents[3]) then
            talents.role = "PALADIN_TANK"
        elseif(talents[3] > talents[1] and talents[3] > talents[2]) then
            talents.role = "PALADIN_MELEE"
        else
            talents.role = "PALADIN_UNKNOWN"
        end
    elseif(talents.class == "DRUID") then
        if(talents[1] > talents[2] and talents[1] > talents[3]) then
            talents.role = "DRUID_CASTER"
        elseif(talents[2] > talents[1] and talents[2] > talents[3]) then
            talents.role = "DRUID_MELEE"

            -- TODO: Druid Off-/Tank/Melee Unterscheidung?
            local health = UnitHealthMax(talents.unitID)
            local stamina = UnitStat(talents.unitID, 3);
            local base, effectiveArmor, armor, posBuff, negBuff = UnitArmor(talents.unitID);
            local baseDefense, armorDefense = UnitDefense(talents.unitID);
            -- 0 = MANA (Normal), 1 = WUT/RAGE (Tank), 3 = ENERGIE/ENERGY (Cat)
            local powerType = UnitPowerType(talents.unitID);

            if powerType == 1 then
                if health >= 10000 then
                    if effectiveArmor >= 20000 then
                        if (baseDefense + armorDefense) >= 380 then
                            talents.role = "DRUID_TANK"
                        else
                            talents.role = "DRUID_OFF_TANK"
                        end
                    else
                        talents.role = "DRUID_OFF_TANK"
                    end
                else
                    talents.role = "DRUID_OFF_TANK"
                end
            elseif powerType == 0 then
                -- Tank in Normalform
                if stamina >= 600 and effectiveArmor >= 6000 then
                    if (baseDefense + armorDefense) >= 380 then
                        talents.role = "DRUID_TANK"
                    else
                        talents.role = "DRUID_OFF_TANK"
                    end
                end
            elseif powerType == 3 then
                -- Tank in Katze
                if stamina >= 600 and effectiveArmor >= 6000 then
                    if (baseDefense + armorDefense) >= 380 then
                        talents.role = "DRUID_TANK"
                    else
                        talents.role = "DRUID_OFF_TANK"
                    end
                end
            end

        elseif(talents[3] > talents[1] and talents[3] > talents[2]) then
            talents.role = "DRUID_HEAL"
        else
            talents.role = "DRUID_UNKNOWN"
        end
    elseif(talents.class == "MAGE") then
    	talents.role = "MAGE_CASTER"
    elseif(talents.class == "WARLOCK") then
    	talents.role = "WARLOCK_CASTER"
    elseif(talents.class == "ROGUE") then
    	talents.role = "ROGUE_MELEE"
    elseif(talents.class == "PRIEST") then
    	if(talents[1] > talents[2] and talents[1] > talents[3]) then
            talents.role = "PRIEST_HEAL"
        elseif(talents[2] > talents[1] and talents[2] > talents[3]) then
            talents.role = "PRIEST_HEAL"
        elseif(talents[3] > talents[1] and talents[3] > talents[2]) then
            talents.role = "PRIEST_CASTER"
        else
            talents.role = "PRIEST_UNKNOWN"
        end
    elseif(talents.class == "HUNTER") then
    	talents.role = "HUNTER_MELEE"
    elseif(talents.class == "SHAMAN") then
        if(talents[1] > talents[2] and talents[1] > talents[3]) then
            talents.role = "SHAMAN_CASTER"
        elseif(talents[2] > talents[1] and talents[2] > talents[3]) then
            talents.role = "SHAMAN_MELEE"
        elseif(talents[3] > talents[1] and talents[3] > talents[2]) then
            talents.role = "SHAMAN_HEAL"
        else
            talents.role = "SHAMAN_UNKNOWN"
        end
    elseif(talents.class == "WARRIOR") then
        if(talents[1] > talents[2] and talents[1] > talents[3]) then
            talents.role = "WARRIOR_MELEE"
        elseif(talents[2] > talents[1] and talents[2] > talents[3]) then
            talents.role = "WARRIOR_MELEE"
        elseif(talents[3] > talents[1] and talents[3] > talents[2]) then
            talents.role = "WARRIOR_TANK"
        else
            talents.role = "WARRIOR_UNKNOWN"
        end
    else
        talents.role = "UNKNOWN"
    end

    self.events:Fire("TalentProcess_Ready", talents)
    self:Reset()
end

lib:Reset()
