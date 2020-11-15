-- Lua APIs
local tinsert, tconcat, tremove, wipe = table.insert, table.concat, table.remove, wipe
local fmt, tostring, string_char = string.format, tostring, string.char
local select, pairs, next, type, unpack = select, pairs, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local setmetatable, getmetatable, rawset, rawget = setmetatable, getmetatable, rawset, rawget
local bit_band, bit_lshift, bit_rshift = bit.band, bit.lshift, bit.rshift

local WeakAuras = WeakAuras;
local L = WeakAuras.L;

_G.LOCALIZED_CLASS_NAMES_MALE = {
  ["WARRIOR"] = L["Warrior"],
  ["PALADIN"] = L["Paladin"],
  ["HUNTER"] = L["Hunter"],
  ["ROGUE"] = L["Rogue"],
  ["PRIEST"] = L["Priest"],
  ["DEATHKNIGHT"] = L["Deathknight"],
  ["SHAMAN"] = L["Shaman"],
  ["MAGE"] = L["Mage"],
  ["WARLOCK"] = L["Warlock"],
  ["DRUID"] = L["Druid"],
}

_G.FONT_COLOR_CODE_CLOSE = "|r"


WeakAuras.function_strings = {
  count = [[
return function(count)
  if(count %s %s) then
    return true
  else
    return false
  end
end
]],
  count_fraction = [[
return function(count, max)
  local fraction = count/max
  if(fraction %s %s) then
    return true
  else
    return false
  end
end
]],
  always = [[
return function()
  return true
end
]]
};

WeakAuras.anim_function_strings = {
  straight = [[
return function(progress, start, delta)
  return start + (progress * delta)
end]],
  straightTranslate = [[
return function(progress, startX, startY, deltaX, deltaY)
  return startX + (progress * deltaX), startY + (progress * deltaY)
end
]],
  straightScale = [[
return function(progress, startX, startY, scaleX, scaleY)
  return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY))
end
]],
  straightColor = [[
return function(progress, r1, g1, b1, a1, r2, g2, b2, a2)
  return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))
end
]],
  circle = [[
return function(progress, startX, startY, deltaX, deltaY)
  local angle = progress * 2 * math.pi
  return startX + (deltaX * math.cos(angle)), startY + (deltaY * math.sin(angle))
end
]],
  circle2 = [[
return function(progress, startX, startY, deltaX, deltaY)
  local angle = progress * 2 * math.pi
  return startX + (deltaX * math.sin(angle)), startY + (deltaY * math.cos(angle))
end
]],
  spiral = [[
return function(progress, startX, startY, deltaX, deltaY)
  local angle = progress * 2 * math.pi
  return startX + (progress * deltaX * math.cos(angle)), startY + (progress * deltaY * math.sin(angle))
end
]],
  spiralandpulse = [[
return function(progress, startX, startY, deltaX, deltaY)
  local angle = (progress + 0.25) * 2 * math.pi
  return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))
end
]],
  shake = [[
return function(progress, startX, startY, deltaX, deltaY)
  local prog
  if(progress < 0.25) then
    prog = progress * 4
  elseif(progress < .75) then
    prog = 2 - (progress * 4)
  else
    prog = (progress - 1) * 4
  end
  return startX + (prog * deltaX), startY + (prog * deltaY)
end
]],
  bounceDecay = [[
return function(progress, startX, startY, deltaX, deltaY)
  local prog = (progress * 3.5) % 1
  local bounce = math.ceil(progress * 3.5)
  local bounceDistance = math.sin(prog * math.pi) * (bounce / 4)
  return startX + (progress * deltaX), startY + (bounceDistance * deltaY)
end
]],
  bounce = [[
return function(progress, startX, startY, deltaX, deltaY)
  local bounceDistance = math.sin(progress * math.pi)
  return startX + (progress * deltaX), startY + (bounceDistance * deltaY)
end
]],
  flash = [[
return function(progress, start, delta)
  local prog
  if(progress < 0.5) then
    prog = progress * 2
  else
    prog = (progress - 1) * 2
  end
  return start + (prog * delta)
end
]],
  pulse = [[
return function(progress, startX, startY, scaleX, scaleY)
  local angle = (progress * 2 * math.pi) - (math.pi / 2)
  return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))
end
]],
  alphaPulse = [[
return function(progress, start, delta)
  local angle = (progress * 2 * math.pi) - (math.pi / 2)
  return start + (((math.sin(angle) + 1)/2) * delta)
end
]],
  pulseColor = [[
return function(progress, r1, g1, b1, a1, r2, g2, b2, a2)
  local angle = (progress * 2 * math.pi) - (math.pi / 2)
  local newProgress = ((math.sin(angle) + 1)/2);
  return r1 + (newProgress * (r2 - r1)),
       g1 + (newProgress * (g2 - g1)),
       b1 + (newProgress * (b2 - b1)),
       a1 + (newProgress * (a2 - a1))
end
]],
  fauxspin = [[
return function(progress, startX, startY, scaleX, scaleY)
  local angle = progress * 2 * math.pi
  return math.cos(angle) * scaleX, startY + (progress * (scaleY - startY))
end
]],
  fauxflip = [[
return function(progress, startX, startY, scaleX, scaleY)
  local angle = progress * 2 * math.pi
  return startX + (progress * (scaleX - startX)), math.cos(angle) * scaleY
end
]],
  backandforth = [[
return function(progress, start, delta)
  local prog
  if(progress < 0.25) then
    prog = progress * 4
  elseif(progress < .75) then
    prog = 2 - (progress * 4)
  else
    prog = (progress - 1) * 4
  end
  return start + (prog * delta)
end
]],
  wobble = [[
return function(progress, start, delta)
  local angle = progress * 2 * math.pi
  return start + math.sin(angle) * delta
end
]],
  hide = [[
return function()
  return 0
end
]]
};

WeakAuras.anim_presets = {
  -- Start and Finish
  slidetop = {
    type = "custom",
    duration = 0.25,
    use_translate = true,
    x = 0, y = 50,
    use_alpha = true,
    alpha = 0
  },
  slideleft = {
    type = "custom",
    duration = 0.25,
    use_translate = true,
    x = -50,
    y = 0,
    use_alpha = true,
    alpha = 0
  },
  slideright = {
    type = "custom",
    duration = 0.25,
    use_translate = true,
    x = 50,
    y = 0,
    use_alpha = true,
    alpha = 0
  },
  slidebottom = {
    type = "custom",
    duration = 0.25,
    use_translate = true,
    x = 0,
    y = -50,
    use_alpha = true,
    alpha = 0
  },
  fade = {
    type = "custom",
    duration = 0.25,
    use_alpha = true,
    alpha = 0
  },
  grow = {
    type = "custom",
    duration = 0.25,
    use_scale = true,
    scalex = 2,
    scaley = 2,
    use_alpha = true,
    alpha = 0
  },
  shrink = {
    type = "custom",
    duration = 0.25,
    use_scale = true,
    scalex = 0,
    scaley = 0,
    use_alpha = true,
    alpha = 0
  },
  spiral = {
    type = "custom",
    duration = 0.5,
    use_translate = true,
    x = 100,
    y = 100,
    translateType = "spiral",
    use_alpha = true,
    alpha = 0
  },
  bounceDecay = {
    type = "custom",
    duration = 1.5,
    use_translate = true,
    x = 50,
    y = 50,
    translateType = "bounceDecay",
    use_alpha = true,
    alpha = 0
  },
  
  -- Main
  shake = {
    type = "custom",
    duration = 0.5,
    use_translate = true,
    x = 10,
    y = 0,
    translateType = "circle2"
  },
  spin = {
    type = "custom",
    duration = 1,
    use_scale = true,
    scalex = 1,
    scaley = 1,
    scaleType = "fauxspin"
  },
  flip = {
    type = "custom",
    duration = 1,
    use_scale = true,
    scalex = 1,
    scaley = 1,
    scaleType = "fauxflip"
  },
  wobble = {
    type = "custom",
    duration = 0.5,
    use_rotate = true,
    rotate = 3,
    rotateType = "wobble"
  },
  pulse = {
    type = "custom",
    duration = 0.75,
    use_scale = true,
    scalex = 1.05,
    scaley = 1.05,
    scaleType = "pulse"
  },
  alphaPulse = {
    type = "custom",
    duration = 0.5,
    use_alpha = true,
    alpha = 0.5,
    alphaType = "alphaPulse"
  },
  rotateClockwise = {
    type = "custom",
    duration = 4,
    use_rotate = true,
    rotate = -360
  },
  rotateCounterClockwise = {
    type = "custom",
    duration = 4,
    use_rotate = true,
    rotate = 360
  },
  spiralandpulse = {
    type = "custom",
    duration = 6,
    use_translate = true,
    x = 100,
    y = 100,
    translateType = "spiralandpulse"
  },
  circle = {
    type = "custom",
    duration = 4,
    use_translate = true,
    x = 100,
    y = 100,
    translateType = "circle"
  },
  orbit = {
    type = "custom",
    duration = 4,
    use_translate = true,
    x = 100,
    y = 100,
    translateType = "circle",
    use_rotate = true,
    rotate = 360
  },
  bounce = {
    type = "custom",
    duration = 0.6,
    use_translate = true,
    x = 0,
    y = 25,
    translateType = "bounce"
  }
};

local classIDs = {
	[1] = { LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] , "WARRIOR" },
	[2] = { LOCALIZED_CLASS_NAMES_MALE["PALADIN"] , "PALADIN" },
	[3] = { LOCALIZED_CLASS_NAMES_MALE["HUNTER"] , "HUNTER" },
	[4] = { LOCALIZED_CLASS_NAMES_MALE["ROGUE"] , "ROGUE" },
	[5] = { LOCALIZED_CLASS_NAMES_MALE["PRIEST"] , "PRIEST" },
	[6] = { LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] , "DEATHKNIGHT" },
	[7] = { LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] , "SHAMAN" },
	[8] = { LOCALIZED_CLASS_NAMES_MALE["MAGE"] , "MAGE" },
	[9] = { LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] , "WARLOCK" },
	[10] = { LOCALIZED_CLASS_NAMES_MALE["DRUID"] , "DRUID" },
}
local function GetClassInfo(id)
	local t = classIDs[id]
	if not t then return end
	return unpack(t)
end

WeakAuras.class_ids = {}
local classID = 1;
local _, classFileName;
while(GetClassInfo(classID)) do
  _, classFileName = GetClassInfo(classID)
  WeakAuras.class_ids[classFileName] = classID;
  classID = classID + 1;
end

function WeakAuras.CheckChargesDirection(direction, triggerDirection)
  return triggerDirection == "CHANGED"
     or (triggerDirection == "GAINED" and direction > 0)
     or (triggerDirection == "LOST" and direction < 0)
end

WeakAuras.load_prototype = {
  args = {
    {
      name = "combat",
      display = L["In Combat"],
      type = "tristate",
      width = "normal",
      init = "arg"
    },
    {
      name = "never",
      display = L["Never"],
      type = "toggle",
      width = "normal",
      init = "false"
    },
    {
      name = "name",
      display = L["Player Name"],
      type = "string",
      init = "arg"
    },
    {
      name = "class",
      display = L["Player Class"],
      type = "multiselect",
      values = "class_types",
      init = "arg"
    },
    {
      name = "spec",
      display = L["Talent Specialization"],
      type = "multiselect",
      values = function(trigger)
        return function()
          local single_class;
          local class_list = {}

          --First check to use if the Class load is on multi-select with only one class selected
          --Also check the number of specs for each class selected in the multi-select and keep track of the minimum
          --(i.e., 3 unless Druid is the only thing select, but this method is flexible in case another spec gets added to another class)
          if(trigger.use_class == false and trigger.class and trigger.class.multi) then
            local num_classes = 0;
            for class in pairs(trigger.class.multi) do
              single_class = class;
              num_classes = num_classes + 1;
              table.insert(class_list, class)
            end
            if(num_classes ~= 1) then
              single_class = nil;
            end
          end
          --If that is not the case, see if it is on single-select
          if((not single_class) and trigger.use_class and trigger.class and trigger.class.single) then
            single_class = trigger.class.single
          end
          --If a single specific class was found, load the specific list for it
          if(single_class) then
            local classData = WeakAuras.spec_types_specific[single_class];
            local result = {}
            if (type(classData[1]) == "table") then
              for i =1, #classData do
                result[single_class .. "_" .. tostring(i)] = "|T" .. classData[i][2] ..":0|t " .. classData[i][1]
              end
            end

            return result;
          else
            local result = {}
            local classData = WeakAuras.spec_types_specific;
            if #class_list ~= 0 then
              classData = {}
              for i,class in ipairs(class_list) do
                classData[class] = WeakAuras.spec_types_specific[class]
              end
            end

            for class,cData in pairs(classData) do
              for i = 1, #cData do
                result[class .. "_" .. i] = "|T" .. cData[i][2] ..":0|t " .. cData[i][1]
              end
            end

            return result
          end
        end
      end,
      init = "arg"
    },
    {
      name = "talent",
      display = L["Talent selected"],
      type = "select",
      values = function(trigger)
        return function()
          local single_class;
          --First check to use if the Class load is on multi-select with only one class selected
          if(trigger.use_class == false and trigger.class and trigger.class.multi) then
            local num_classes = 0;
            for class in pairs(trigger.class.multi) do
              single_class = class;
              num_classes = num_classes + 1;
            end
            if(num_classes ~= 1) then
              single_class = nil;
            end
          end
          --If that is not the case, see if it is on single-select
          if((not single_class) and trigger.use_class and trigger.class and trigger.class.single) then
            single_class = trigger.class.single
          end
          --If a single specific class was found, load the specific list for it
          if(single_class) then
            return WeakAuras.talent_types_specific[single_class];
          else
            return WeakAuras.talent_types;
          end
        end
      end,
      test = "select(5, GetTalentInfo(string.split(\".\",%f))) > 0"
    },
    {
      name = "race",
      display = L["Player Race"],
      type = "multiselect",
      values = "race_types",
      init = "arg"
    },
    {
      name = "level",
      display = L["Player Level"],
      type = "number",
      init = "arg"
    },
    {
      name = "zone",
      display = L["Zone"],
      type = "string",
      init = "arg"
    },
    {
      name = "size",
      display = L["Instance Type"],
      type = "multiselect",
      values = "group_types",
      init = "arg"
    },
    {
      name = "difficulty",
      display = L["Dungeon Difficulty"],
      type = "select",
      values = "difficulty_types",
      init = "arg"
    },
    {
      name = "role",
      display = L["Player Dungeon Role"],
      type = "multiselect",
      values = "role_types",
      init = "arg"
    },
  }
};

WeakAuras.event_prototypes = {
  ["Combo Points"] = {
    type = "status",
    events = {
      "UNIT_COMBO_POINTS",
      "PLAYER_TARGET_CHANGED",
      "PLAYER_FOCUS_CHANGED"
    },
    force_events = true,
    name = L["Combo Points"],
    args = {
      {
        name = "combopoints",
        display = L["Combo Points"],
        type = "number",
        init = "GetComboPoints('player', 'target')"
      }
    },
    durationFunc = function(trigger)
      return GetComboPoints('player', 'target'), 5, true;
    end,
    stacksFunc = function(trigger)
      return GetComboPoints('player', 'target');
    end,
    automatic = true
  },
  ["Unit Characteristics"] = {
    type = "status",
    events = {
      "PLAYER_TARGET_CHANGED",
      "PLAYER_FOCUS_CHANGED",
      "UNIT_LEVEL",
      "INSTANCE_ENCOUNTER_ENGAGE_UNIT"
    },
    force_events = true,
    name = L["Unit Characteristics"],
    init = function(trigger)
      trigger.unit = trigger.unit or "target";
       local ret = [[
    local unit = unit or '%s';
    local concernedUnit = '%s';
    ]];
    
    return ret:format(trigger.unit, trigger.unit);
    end,
    args = {
      {
        name = "unit",
        required = true,
        display = L["Unit"],
        type = "unit",
        init = "arg",
        values = "actual_unit_types_with_specific"
      },
      {
        name = "name",
        display = L["Name"],
        type = "string",
        init = "UnitName(unit)",
        store = true,
        conditionType = "string"
      },
      {
        name = "class",
        display = L["Class"],
        type = "select",
        init = "select(2, UnitClass(unit))",
        values = "class_types",
        store = true,
        conditionType = "select"
      },
      {
        name = "hostility",
        display = L["Hostility"],
        type = "select",
        init = "UnitIsEnemy('player', unit) and 'hostile' or 'friendly'",
        values = "hostility_types",
        store = true,
        conditionType = "select"
      },
      {
        name = "character",
        display = L["Character Type"],
        type = "select",
        init = "UnitIsPlayer(unit) and 'player' or 'npc'",
        values = "character_types",
        store = true,
        conditionType = "select"
      },
      {
        name = "level",
        display = L["Level"],
        type = "number",
        init = "UnitLevel(unit)",
        store = true,
        conditionType = "number"
      },
    {
        name = "attackable",
        display = L["Attackable"],
        type = "tristate",
        init = "UnitCanAttack('player', unit) and true or false",
        store = true,
        conditionType = "bool"
      },
      {
        hidden = true,
        test = "UnitExists(concernedUnit)"
      }
    },
    automatic = true
  },
  ["Health"] = {
    type = "status",
    events = {
      "UNIT_HEALTH",
      "PLAYER_TARGET_CHANGED",
      "PLAYER_FOCUS_CHANGED",
      "INSTANCE_ENCOUNTER_ENGAGE_UNIT"
    },
    force_events = {
      "player",
      "target",
      "focus",
      "pet"
    },
    name = L["Health"],
    init = function(trigger)
    trigger.unit = trigger.unit or "player";
      local ret = [[
    local unit = unit or '%s';
    local concernedUnit = '%s';
    ]];
    
    return ret:format(trigger.unit, trigger.unit);
    end,
    statesParameter = "one",
    args = {
      {
        name = "unit",
        required = true,
        display = L["Unit"],
        type = "unit",
        init = "arg",
        values = "actual_unit_types_with_specific"
      },
      {
        name = "health",
        display = L["Health"],
        type = "number",
        init = "UnitHealth(unit)",
        store = true,
        conditionType = "number"
      },
      {
        name = "percenthealth",
        display = L["Health (%)"],
        type = "number",
        init = "(UnitHealth(unit) / math.max(1, UnitHealthMax(unit))) * 100",
        store = true,
        conditionType = "number"
      },
      {
        hidden = true,
        test = "UnitExists(concernedUnit)"
      }
    },
    durationFunc = function(trigger)
      return UnitHealth(trigger.unit), UnitHealthMax(trigger.unit), true;
    end,
    nameFunc = function(trigger)
      return UnitName(trigger.unit);
    end,
    automatic = true
  },
  ["Power"] = {
    type = "status",
    events = {
    "UNIT_POWER", "UNIT_ENERGY", "UNIT_MANA", "UNIT_RAGE", "UNIT_FOCUS",
      "PLAYER_TARGET_CHANGED",
      "PLAYER_FOCUS_CHANGED",
      "INSTANCE_ENCOUNTER_ENGAGE_UNIT"
    },
    force_events = {
      "player",
      "target",
      "focus",
      "pet"
    },
    name = L["Power"],
    init = function(trigger)
      trigger.unit = trigger.unit or "player";
      local ret = [[
    local unit = unit or '%s';
    local concernedUnit = '%s';
    ]];
    
    return ret:format(trigger.unit, trigger.unit);
    end,
    statesParameter = "one",
    args = {
      {
        name = "unit",
        required = true,
        display = L["Unit"],
        type = "unit",
        init = "arg",
        values = "actual_unit_types_with_specific"
      },
      {
        name = "powertype",
        -- required = true,
        display = L["Power Type"],
        type = "select",
        values = "power_types",
        init = "UnitPowerType(unit)",
        store = true,
        conditionType = "select"
      },
      {
        name = "power",
        display = L["Power"],
        type = "number",
        init = "UnitMana(unit)",
        store = true,
        conditionType = "number"
      },
      {
        name = "percentpower",
        display = L["Power (%)"],
        type = "number",
        init = "(UnitMana(unit) / math.max(1, UnitManaMax(unit))) * 100;",
        store = true,
        conditionType = "number"
      },
      {
        hidden = true,
        test = "UnitExists(unit)"
      }
    },
    durationFunc = function(trigger)
      return UnitMana(trigger.unit), math.max(1, UnitManaMax(trigger.unit)), "fastUpdate";
    end,
    automatic = true
  },
  -- Todo: Give useful options to condition based on GUID and flag info
  -- Todo: Allow options to pass information from combat message to the display?
  ["Combat Log"] = {
    type = "event",
    events = {
      "COMBAT_LOG_EVENT_UNFILTERED"
    },
    name = L["Combat Log"],
    args = {
      {}, -- timestamp ignored with _ argument
      {}, -- messageType ignored with _ argument (it is checked before the dynamic function)
      {
        enable = function()
          local _, _, _, tocversion = GetBuildInfo()
          return tocversion > 40000
        end
      }, -- new Combat Log Event argument hideCaster added in 4.1 - ignore it with _ if the toc version is 4.1 or later
      {
        name = "sourceGUID",
        init = "arg",
        hidden = "true",
        test = "true",
        store = true
      },
      {
        name = "sourceunit",
        display = L["Source Unit"],
        type = "unit",
        test = "source and UnitIsUnit(source, '%s')",
        values = "actual_unit_types_with_specific",
        enable = function(trigger)
          return not (trigger.subeventPrefix == "ENVIRONMENTAL")
        end,
        store = true,
        conditionType = "string"
      },
      {
        name = "source",
        display = L["Source Name"],
        type = "string",
        init = "arg",
        store = true,
        conditionType = "string"
      },
      {}, -- sourceFlags ignored with _ argument
      {
        enable = function()
          local _, _, _, tocversion = GetBuildInfo()
          return tocversion > 40100
        end
      }, -- new Combat Log Event argument sourceRaidFlags added in 4.2 - ignore it with _ if the toc version is 4.2 or later
      {
        name = "destGUID",
        init = "arg",
        hidden = "true",
        test = "true"
      },
      {
        name = "destunit",
        display = L["Destination Unit"],
        type = "unit",
        test = "(destGUID or '') == (UnitGUID('%s') or '') and destGUID",
        values = "actual_unit_types_with_specific",
        store = true,
        conditionType = "string"
      },
      {
        name = "dest",
        display = L["Destination Name"],
        type = "string",
        init = "arg",
        enable = function(trigger)
          return not (trigger.subeventPrefix == "SPELL" and trigger.subeventSuffix == "_CAST_SUCCESS");
        end,
        store = true,
        conditionType = "string"
      },
      {
        enable = function(trigger)
          return (trigger.subeventPrefix == "SPELL" and trigger.subeventSuffix == "_CAST_SUCCESS");
        end
      },
      {}, -- destFlags ignored with _ argument
      {
        enable = function()
          local _, _, _, tocversion = GetBuildInfo()
          return tocversion > 40100
        end
      }, -- new Combat Log Event argument destRaidFlags added in 4.2 - ignore it with _ if the toc version is 4.2 or later
      {
        enable = function(trigger)
          return trigger.subeventPrefix and (trigger.subeventPrefix:find("SPELL") or trigger.subeventPrefix == "RANGE" or trigger.subeventPrefix:find("DAMAGE"))
        end
      }, -- spellId ignored with _ argument
      {
        name = "spellName",
        display = L["Spell Name"],
        type = "string",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventPrefix and (trigger.subeventPrefix:find("SPELL") or trigger.subeventPrefix == "RANGE" or trigger.subeventPrefix:find("DAMAGE"))
        end,
        store = true,
        conditionType = "string"
      },
      {
        enable = function(trigger)
          return trigger.subeventPrefix and (trigger.subeventPrefix:find("SPELL") or trigger.subeventPrefix == "RANGE" or trigger.subeventPrefix:find("DAMAGE"))
        end
      }, -- spellSchool ignored with _ argument
      {
        name = "environmentalType",
        display = L["Environment Type"],
        type = "select",
        init = "arg",
        values = "environmental_types",
        enable = function(trigger)
          return trigger.subeventPrefix == "ENVIRONMENTAL"
        end,
        store = true,
        conditionType = "select"
      },
      {
        name = "missType",
        display = L["Miss Type"],
        type = "select",
        init = "arg",
        values = "miss_types",
        enable = function(trigger)
          return trigger.subeventSuffix and trigger.subeventPrefix and (trigger.subeventSuffix == "_MISSED" or trigger.subeventPrefix == "DAMAGE_SHIELD_MISSED")
        end,
        conditionType = "select",
        store = true
      },
      {
        enable = function(trigger)
          return trigger.subeventSuffix and (trigger.subeventSuffix == "_INTERRUPT" or trigger.subeventSuffix == "_DISPEL" or trigger.subeventSuffix == "_DISPEL_FAILED" or trigger.subeventSuffix == "_STOLEN" or trigger.subeventSuffix == "_AURA_BROKEN_SPELL")
        end
      }, -- extraSpellId ignored with _ argument
      {
        name = "extraSpellName",
        display = L["Extra Spell Name"],
        type = "string",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventSuffix and (trigger.subeventSuffix == "_INTERRUPT" or trigger.subeventSuffix == "_DISPEL" or trigger.subeventSuffix == "_DISPEL_FAILED" or trigger.subeventSuffix == "_STOLEN" or trigger.subeventSuffix == "_AURA_BROKEN_SPELL")
        end
      },
      {
        enable = function(trigger)
          return trigger.subeventSuffix and (trigger.subeventSuffix == "_INTERRUPT" or trigger.subeventSuffix == "_DISPEL" or trigger.subeventSuffix == "_DISPEL_FAILED" or trigger.subeventSuffix == "_STOLEN" or trigger.subeventSuffix == "_AURA_BROKEN_SPELL")
        end
      }, -- extraSchool ignored with _ argument
      {
        name = "auraType",
        display = L["Aura Type"],
        type = "select",
        init = "arg",
        values = "aura_types",
        enable = function(trigger)
          return trigger.subeventSuffix and (trigger.subeventSuffix:find("AURA") or trigger.subeventSuffix == "_DISPEL" or trigger.subeventSuffix == "_STOLEN")
        end,
        conditionType = "select",
        store = "true"
      },
      {
        name = "amount",
        display = L["Amount"],
        type = "number",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventSuffix and trigger.subeventPrefix and (trigger.subeventSuffix == "_DAMAGE" or trigger.subeventSuffix == "_MISSED" or trigger.subeventSuffix == "_HEAL" or trigger.subeventSuffix == "_ENERGIZE" or trigger.subeventSuffix == "_DRAIN" or trigger.subeventSuffix == "_LEECH" or trigger.subeventPrefix:find("DAMAGE"))
        end,
        store = true,
        conditionType = "number"
      },
      {
        name = "overkill",
        display = L["Overkill"],
        type = "number",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventSuffix and trigger.subeventPrefix and (trigger.subeventSuffix == "_DAMAGE" or trigger.subeventPrefix == "DAMAGE_SHIELD" or trigger.subeventPrefix == "DAMAGE_SPLIT")
        end,
        store = true,
        conditionType = "number"
      },
      {
        name = "overhealing",
        display = L["Overhealing"],
        type = "number",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventSuffix and trigger.subeventSuffix == "_HEAL"
        end,
        store = true,
        conditionType = "number"
      },
      {
        enable = function(trigger)
          return trigger.subeventSuffix and trigger.subeventPrefix and (trigger.subeventSuffix == "_DAMAGE" or trigger.subeventPrefix == "DAMAGE_SHIELD" or trigger.subeventPrefix == "DAMAGE_SPLIT")
        end
      }, -- damage school ignored with _ argument
      {
        name = "resisted",
        display = L["Resisted"],
        type = "number",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventSuffix and trigger.subeventPrefix and (trigger.subeventSuffix == "_DAMAGE" or trigger.subeventPrefix == "DAMAGE_SHIELD" or trigger.subeventPrefix == "DAMAGE_SPLIT")
        end,
        store = true,
        conditionType = "number"
      },
      {
        name = "blocked",
        display = L["Blocked"],
        type = "number",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventSuffix and trigger.subeventPrefix and (trigger.subeventSuffix == "_DAMAGE" or trigger.subeventPrefix == "DAMAGE_SHIELD" or trigger.subeventPrefix == "DAMAGE_SPLIT")
        end,
        store = true,
        conditionType = "number"
      },
      {
        name = "absorbed",
        display = L["Absorbed"],
        type = "number",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventSuffix and trigger.subeventPrefix and (trigger.subeventSuffix == "_DAMAGE" or trigger.subeventPrefix == "DAMAGE_SHIELD" or trigger.subeventPrefix == "DAMAGE_SPLIT" or trigger.subeventSuffix == "_HEAL")
        end,
        store = true,
        conditionType = "number"
      },
      {
        name = "critical",
        display = L["Critical"],
        type = "tristate",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventSuffix and trigger.subeventPrefix and (trigger.subeventSuffix == "_DAMAGE" or trigger.subeventPrefix == "DAMAGE_SHIELD" or trigger.subeventPrefix == "DAMAGE_SPLIT" or trigger.subeventSuffix == "_HEAL")
        end,
        store = true,
        conditionType = "bool"
      },
      {
        name = "glancing",
        display = L["Glancing"],
        type = "tristate",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventSuffix and trigger.subeventPrefix and (trigger.subeventSuffix == "_DAMAGE" or trigger.subeventPrefix == "DAMAGE_SHIELD" or trigger.subeventPrefix == "DAMAGE_SPLIT")
        end,
        store = true,
        conditionType = "bool"
      },
      {
        name = "crushing",
        display = L["Crushing"],
        type = "tristate",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventSuffix and trigger.subeventPrefix and (trigger.subeventSuffix == "_DAMAGE" or trigger.subeventPrefix == "DAMAGE_SHIELD" or trigger.subeventPrefix == "DAMAGE_SPLIT")
        end,
        store = true,
        conditionType = "bool"
      },
      {
        name = "number",
        display = L["Number"],
        type = "number",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventSuffix and (trigger.subeventSuffix == "_EXTRA_ATTACKS" or trigger.subeventSuffix:find("DOSE"))
        end,
        store = true,
        conditionType = "number"
      },
      {
        name = "powerType",
        display = L["Power Type"],
        type = "select", init = "arg",
        values = "power_types",
        enable = function(trigger)
          return trigger.subeventSuffix and (trigger.subeventSuffix == "_ENERGIZE" or trigger.subeventSuffix == "_DRAIN" or trigger.subeventSuffix == "_LEECH")
        end
      },
      {
        name = "extraAmount",
        display = L["Extra Amount"],
        type = "number",
        init = "arg",
        enable = function(trigger)
          return trigger.subeventSuffix and (trigger.subeventSuffix == "_ENERGIZE" or trigger.subeventSuffix == "_DRAIN" or trigger.subeventSuffix == "_LEECH")
        end,
        store = true,
        conditionType = "number"
      },
      {
        enable = function(trigger)
          return trigger.subeventSuffix == "_CAST_FAILED"
        end
      } -- failedType ignored with _ argument - theoretically this is not necessary because it is the last argument in the event, but it is added here for completeness
    }
  },
  ["Cooldown Progress (Spell)"] = {
    type = "status",
    events = {
      "SPELL_COOLDOWN_READY",
      "SPELL_COOLDOWN_CHANGED",
      "SPELL_COOLDOWN_STARTED",
      "COOLDOWN_REMAINING_CHECK"
    },
    force_events = "SPELL_COOLDOWN_FORCE",
    name = L["Cooldown Progress (Spell)"],
    init = function(trigger)
--     trigger.spellName = WeakAuras.CorrectSpellName(trigger.spellName) or 0;
      trigger.spellName = trigger.spellName or 0;
      local spellName = (type(trigger.spellName) == "number" and trigger.spellName or "'"..trigger.spellName.."'");
      WeakAuras.WatchSpellCooldown(trigger.spellName);
      local ret = [[
        local spellname = %s
        local startTime, duration = WeakAuras.GetSpellCooldown(spellname);
        local showOn = %s;
      ]];
      if(trigger.use_remaining and trigger.showOn == "showOnCooldown") then
        local ret2 = [[
          local expirationTime = startTime + duration
          local remaining = expirationTime - GetTime();
          local remainingCheck = %s;
          if(remaining > remainingCheck) then
            WeakAuras.ScheduleCooldownScan(expirationTime - remainingCheck);
          end
        ]];
        ret = ret..ret2:format(tonumber(trigger.remaining or 0) or 0);
      end 
      return ret:format(spellName, "\"" .. (trigger.showOn or "") .. "\"");
    end,
    args = {
      {
      }, -- Ignore first argument (id)
      {
        name = "spellName",
        required = true,
        display = L["Spell"],
        type = "spell",
        test = "true"
      },
      {
        name = "remaining",
        display = L["Remaining Time"],
        type = "number",
        enable = function(trigger) return (trigger.showOn == "showOnCooldown") end
      },
      {
        name = "showOn",
        display =  L["Show"],
        type = "select",
        values = "cooldown_progress_behavior_types",
        test = "true",
        required = true,
      },
      {
        hidden = true,
        test = "(showOn == \"showOnReady\" and startTime == 0) " ..
               "or (showOn == \"showOnCooldown\" and startTime > 0) " ..
               "or (showOn == \"showAlways\")"
      }
    },
    durationFunc = function(trigger)
      local startTime, duration;
      if not(trigger.use_inverse) then
        startTime, duration = WeakAuras.GetSpellCooldown(trigger.spellName or 0);
      end
      startTime = startTime or 0;
      duration = duration or 0;
      return duration, startTime + duration;
    end,
    nameFunc = function(trigger)
      local name = GetSpellInfo(trigger.spellName or 0);
      if(name) then
        return name;
      else
        return "Invalid";
      end
    end,
    iconFunc = function(trigger)
      local _, _, icon = GetSpellInfo(trigger.spellName or 0);
      return icon;
    end,
    hasSpellID = true,
    automaticrequired = true
  },
  ["Cooldown Ready (Spell)"] = {
    type = "event",
    events = {
      "SPELL_COOLDOWN_READY",
    },
    name = L["Cooldown Ready (Spell)"],
    init = function(trigger)
--     trigger.spellName = WeakAuras.CorrectSpellName(trigger.spellName) or 0;
    trigger.spellName = trigger.spellName or 0;
      WeakAuras.WatchSpellCooldown(trigger.spellName or 0);
    end,
    args = {
      {
        name = "spellName",
        required = true,
        display = L["Spell"],
        type = "spell",
        init = "arg"
      }
    },
    nameFunc = function(trigger)
      local name = GetSpellInfo(trigger.spellName or 0);
      if(name) then
        return name;
      else
        return "Invalid";
      end
    end,
    iconFunc = function(trigger)
      local _, _, icon = GetSpellInfo(trigger.spellName or 0);
      return icon;
    end,
    hasSpellID = true
  },
  ["Cooldown Progress (Item)"] = {
    type = "status",
    events = {
      "ITEM_COOLDOWN_READY",
      "ITEM_COOLDOWN_CHANGED",
      "ITEM_COOLDOWN_STARTED",
      "COOLDOWN_REMAINING_CHECK"
    },
    force_events = "ITEM_COOLDOWN_FORCE",
    name = L["Cooldown Progress (Item)"],
    init = function(trigger)
--     trigger.itemName = WeakAuras.CorrectItemName(trigger.itemName) or 0;
      trigger.itemName = trigger.itemName or 0;
      local itemName = type(trigger.itemName) == "number" and trigger.itemName or "'"..trigger.itemName.."'";
      WeakAuras.WatchItemCooldown(trigger.itemName);
      local ret = [[
        local startTime, duration = WeakAuras.GetItemCooldown(%s);
        local inverse = %s;
      ]];
      if(trigger.use_remaining and not trigger.use_inverse) then
        local ret2 = [[
          local expirationTime = startTime + duration
          local remaining = expirationTime - GetTime();
          local remainingCheck = %s;
        if(remaining > remainingCheck) then
          WeakAuras.ScheduleCooldownScan(expirationTime - remainingCheck);
        end
        ]];
        ret = ret..ret2:format(tonumber(trigger.remaining or 0) or 0);
      end
      return ret:format(itemName, (trigger.use_inverse and "true" or "false"));
    end,
    args = {
      {
        name = "itemName",
        required = true,
        display = L["Item"],
        type = "item",
        test = "true"
      },
      {
        name = "remaining",
        display = L["Remaining Time"],
        type = "number",
        enable = function(trigger) return not(trigger.use_inverse) end,
        init = "remaining"
      },
      {
        name = "inverse",
        display = L["Inverse"],
        type = "toggle",
        test = "true"
      },
      {
        hidden = true,
        test = "(inverse and startTime == 0) or (not inverse and startTime > 0)"
      }
    },
    durationFunc = function(trigger)
      local startTime, duration = WeakAuras.GetItemCooldown(type(trigger.itemName) == "number" and trigger.itemName or 0);
      startTime = startTime or 0;
      duration = duration or 0;
      return duration, startTime + duration;
    end,
    nameFunc = function(trigger)
      local name = GetItemInfo(trigger.itemName or 0);
      if(name) then
        return name;
      else
        return "Invalid";
      end
    end,
    iconFunc = function(trigger)
      local _, _, _, _, _, _, _, _, _, icon = GetItemInfo(trigger.itemName or 0);
      return icon;
    end,
    hasItemID = true,
    automaticrequired = true
  },
  ["Cooldown Ready (Item)"] = {
    type = "event",
    events = {
      "ITEM_COOLDOWN_READY"
    },
    name = L["Cooldown Ready (Item)"],
    init = function(trigger)
--     trigger.itemName = WeakAuras.CorrectItemName(trigger.itemName) or 0;
      trigger.itemName = trigger.itemName or 0;
      WeakAuras.WatchItemCooldown(trigger.itemName);
    end,
    args = {
      {
        name = "itemName",
        required = true,
        display = L["Item"],
        type = "item",
        init = "arg"
      }
    },
    nameFunc = function(trigger)
      local name = GetItemInfo(trigger.itemName or 0);
      if(name) then
        return name;
      else
        return "Invalid";
      end
    end,
    iconFunc = function(trigger)
      local _, _, _, _, _, _, _, _, _, icon = GetItemInfo(trigger.itemName or 0);
      return icon;
    end,
    hasItemID = true
  },
  ["GTFO"] = {
    type = "event",
    events = {
      "GTFO_DISPLAY"
    },
    name = L["GTFO Alert"],
    statesParameter = "one",
    args = {
      {
        name = "alertType",
        display = "Alert Type",
        type = "select",
        init = "arg",
        values = "gtfo_types",
        store = true,
        conditionType = "select"
      },
    },
  },
    -- DBM events
    ["DBM Announce"] = {
      type = "event",
      events = {
        "DBM_Announce"
      },
      name = L["DBM Announce"],
      init = function(trigger)
        WeakAuras.RegisterDBMCallback("DBM_Announce");
        return "";
      end,
      args = {
        {
          name = "message",
          init = "arg",
          display = L["Message"],
          type = "longstring",
          store = true,
          conditionType = "string"
        }
      }
    },
    ["DBM Timer"] = {
      type = "status",
      events = {
        "DBM_TimerUpdate"
      },
      force_events = "DBM_TimerUpdate",
      name = L["DBM Timer"],
      canHaveDuration = "timed",
      canHaveAuto = true,
      init = function(trigger)
        WeakAuras.RegisterDBMCallback("DBM_TimerStart");
        WeakAuras.RegisterDBMCallback("DBM_TimerStop");
        WeakAuras.RegisterDBMCallback("wipe");
        WeakAuras.RegisterDBMCallback("kill");
  
        local ret = "";
  
        if (trigger.use_id) then
          ret = "local triggerId = \"" .. trigger.id .. "\"\n";
        else
          ret = "local triggerId = nil\n";
        end
  
        local test;
        if (trigger.use_message) then
          local ret2 = [[
            local triggerMessage = "%s"
            local triggerOperator = "%s"
          ]]
          ret = ret .. ret2:format(trigger.message or "", trigger.message_operator  or "")
        else
          ret = ret .. [[
            local triggerMessage = nil;
            local triggerOperator = nil;
          ]]
          test = "true";
        end
  
        ret = ret .. [[
          local duration, expirationTime = WeakAuras.GetDbmTimer(triggerId, triggerMessage, triggerOperator);
        ]]
  
        if (trigger.use_remaining) then
          local ret2 = [[
            local remainingCheck = %s;
            local remaining = expirationTime - GetTime();
            if (remaining > remainingCheck) then
              WeakAuras.ScheduleDbmCheck(expirationTime - remainingCheck);
            end
          ]]
          ret = ret .. ret2:format(tonumber(trigger.remaining) or 0);
        end
        --print (ret);
        return ret;
      end,
      durationFunc = function(trigger)
        local duration, expirationTime = WeakAuras.GetDbmTimer(trigger.id, trigger.message, trigger.message_operator);
        return duration, expirationTime;
      end,
      args = {
        {
          name = "id", -- TODO Is there ever anything useful in ID?
          display = L["Id"],
          type = "string",
          test = "true"
        },
        {
          name = "message",
          display = L["Message"],
          type = "longstring",
          test = "true",
          store = true,
          conditionType = "string"
        },
        {
          name = "remaining",
          display = L["Remaining Time"],
          type = "number",
          init = "remaining"
        },
        {
          hidden = true,
          test = "duration > 0"
        }
      },
      automaticrequired = true
    },
  ["Global Cooldown"] = {
    type = "status",
    events = {
      "GCD_START",
      "GCD_CHANGE",
      "GCD_END"
    },
    name = L["Global Cooldown"],
    init = function(trigger)
--     trigger.spellName = WeakAuras.CorrectSpellName(trigger.spellName) or 0;
      trigger.spellName = trigger.spellName or 0;
      WeakAuras.WatchGCD(trigger.spellName);
      local ret = [[
    local inverse = %s;
    local onGCD = WeakAuras.GetGCDInfo();
    ]];
      return ret:format(trigger.use_inverse and "true" or "false");
    end,
    args = {
      {
        name = "spellName",
        required = true,
        display = L["Reference Spell"],
        type = "spell",
        test = "true"
      },
      {
        name = "inverse",
        display = L["Inverse"],
        type = "toggle",
        test = "true"
      },
      {
        hidden = true,
        test = "(inverse and onGCD == 0) or (not inverse and onGCD > 0)"
      }
    },
    durationFunc = function(trigger)
      local duration, expirationTime = WeakAuras.GetGCDInfo();
      return duration, expirationTime;
    end,
    nameFunc = function(trigger)
      local _, _, name = WeakAuras.GetGCDInfo();
      return name;
    end,
    iconFunc = function(trigger)
      local _, _, _, icon = WeakAuras.GetGCDInfo();
      return icon;
    end,
    hasSpellID = true,
    automaticrequired = true
  },
  ["Swing Timer"] = {
    type = "status",
    events = {
      "SWING_TIMER_START",
      "SWING_TIMER_CHANGE",
      "SWING_TIMER_END"
    },
    name = L["Swing Timer"],
    init = function(trigger)
      trigger.hand = trigger.hand or "main";
      WeakAuras.InitSwingTimer();
      local ret = [[
    local inverse = %s;
    local hand = "%s";
    local duration, expirationTime = WeakAuras.GetSwingTimerInfo(hand);
    ]];
      return ret:format((trigger.use_inverse and "true" or "false"), trigger.hand);
    end,
    args = {
      {
        name = "hand",
        required = true,
        display = L["Weapon"],
        type = "select",
        values = "swing_types",
        test = "true"
      },
      {
        name = "inverse",
        display = L["Inverse"],
        type = "toggle",
        test = "true"
      },
      {
        hidden = true,
        test = "(inverse and duration == 0) or (not inverse and duration > 0)"
      }
    },
    durationFunc = function(trigger)
      local duration, expirationTime = WeakAuras.GetSwingTimerInfo(trigger.hand);
      return duration, expirationTime;
    end,
    nameFunc = function(trigger)
      local _, _, name = WeakAuras.GetSwingTimerInfo(trigger.hand);
      return name;
    end,
    iconFunc = function(trigger)
      local _, _, _, icon = WeakAuras.GetSwingTimerInfo(trigger.hand);
      return icon;
    end,
    automaticrequired = true
  },
  ["Action Usable"] = {
    type = "status",
    events = {
      "SPELL_COOLDOWN_READY",
      "SPELL_COOLDOWN_CHANGED",
      "SPELL_COOLDOWN_STARTED",
      "SPELL_UPDATE_USABLE",
      "PLAYER_TARGET_CHANGED",
      "UNIT_POWER", "UNIT_ENERGY", "UNIT_MANA", "UNIT_RAGE"
    },
    force_events = true,
    name = L["Action Usable"],
    init = function(trigger)
--     trigger.spellName = WeakAuras.CorrectSpellName(trigger.spellName) or 0;
      trigger.spellName = trigger.spellName or 0;
      local spellName = type(trigger.spellName) == "number" and trigger.spellName or "'"..trigger.spellName.."'";
      WeakAuras.WatchSpellCooldown(spellName);
      local ret = [[
    local spell = %s;
    local spellName = GetSpellInfo(spell);
    local startTime, duration = WeakAuras.GetSpellCooldown(spell);
    startTime = startTime or 0;
    duration = duration or 0;
    local onCooldown = duration > 1.51;
    local active = IsUsableSpell(spellName) and not onCooldown
    ]]
      if(trigger.use_targetRequired) then
        ret = ret.."active = active and IsSpellInRange(spellName or '')\n";
      end
      if(trigger.use_inverse) then
        ret = ret.."active = not active\n";
      end
      
      return ret:format(spellName);
    end,
    args = {
      {
        name = "spellName",
        display = L["Spell"],
        required = true,
        type = "spell",
        test = "true"
      },
      -- This parameter uses the IsSpellInRange API function, but it does not check spell range at all
      -- IsSpellInRange returns nil for invalid targets, 0 for out of range, 1 for in range (0 and 1 are both "positive" values)
      {
        name = "targetRequired",
        display = L["Require Valid Target"],
        type = "toggle",
        test = "true"
      },
      {
        name = "inverse",
        display = L["Inverse"],
        type = "toggle",
        test = "true"
      },
      {
        hidden = true,
        test = "active"
      }
    },
    nameFunc = function(trigger)
      local name = GetSpellInfo(trigger.spellName or 0);
      if(name) then
        return name;
      else
        return "Invalid";
      end
    end,
    iconFunc = function(trigger)
      local _, _, icon = GetSpellInfo(trigger.spellName or 0);
      return icon;
    end,
    hasSpellID = true,
    automaticrequired = true
  },
  ["Totem"] = {
    type = "status",
    events = {
      "PLAYER_TOTEM_UPDATE"
    },
    force_events = true,
    name = L["Totem"],
    canHaveAuto = true,
    canHaveDuration = "timed",
    init = function(trigger)
--     trigger.totemName = WeakAuras.CorrectSpellName(trigger.totemName) or 0;
      trigger.totemType = trigger.totemType or 1;
    
      local ret = [[
    local totemType = %i;
    local _, totemName, startTime, duration = GetTotemInfo(totemType);
    
    local active = (startTime ~= 0);
    ]];
    ret = ret:format(trigger.totemType);
    if trigger.use_totemName then
    trigger.totemName = trigger.totemName or 0;
    local totemName = type(trigger.totemName) == "number" and trigger.totemName or "'"..trigger.totemName.."'";
    
    ret = ret .. [[
      active = active and (]] .. totemName .. [[ == totemName);
    ]];
    end
    if trigger.use_inverse then
    ret = ret .. [[
      active = not active;
    ]];
    end
    
    return ret;
    end,
    args = {
      {
        name = "totemType",
        display = L["Totem Type"],
        required = true,
        type = "select",
        values = "totem_types"
      },
      {
        name = "totemName",
        display = L["Totem Name"],
        type = "string",
        test = "true",
        conditionType = "string",
        store = true
      },
      {
        name = "inverse",
        display = L["Inverse"],
        type = "toggle",
        test = "true"
      },
      {
        hidden = true,
        test = "active"
      }
    },
    durationFunc = function(trigger)
      local _, _, startTime, duration = GetTotemInfo(trigger.totemType);
      return duration, startTime + duration;
    end,
    nameFunc = function(trigger)
      local _, totemName = GetTotemInfo(trigger.totemType);
      return totemName;
    end,
    iconFunc = function(trigger)
      local icon = select(5, GetTotemInfo(trigger.totemType))
      if(icon) then
        return icon;
      else
        local totemIcons = {
          [1] = "Interface\\Icons\\spell_fire_sealoffire",
          [2] = "Interface\\Icons\\inv_elemental_primal_earth",
          [3] = "Interface\\Icons\\spell_frost_summonwaterelemental",
          [4] = "Interface\\Icons\\spell_nature_earthbind"
        };
        return totemIcons[trigger.totemType];
      end
    end,
    automaticrequired = true
  },
  ["Item Count"] = {
    type = "status",
    events = {
      "BAG_UPDATE",
      "ITEM_COUNT_UPDATE",
      "PLAYER_ENTERING_WORLD"
    },
    force_events = true,
    name = L["Item Count"],
    init = function(trigger)
      if(trigger.use_includeCharges) then
        WeakAuras.RegisterItemCountWatch();
      end
--     trigger.itemName = WeakAuras.CorrectItemName(trigger.itemName) or 0;
      trigger.itemName = trigger.itemName or 0;
      local itemName = type(trigger.itemName) == "number" and trigger.itemName or "'"..trigger.itemName.."'";
    local ret = [[
    local count = GetItemCount(%s, %s, %s);
    ]];
    return ret:format(itemName, trigger.use_includeBank and "true" or "nil", trigger.use_includeCharges and "true" or "nil");
    end,
    args = {
      {
        name = "itemName",
        required = true,
        display = L["Item"],
        type = "item",
        test = "true"
      },
      {
        name = "includeBank",
        display = L["Include Bank"],
        type = "toggle",
        test = "true"
      },
      {
        name = "includeCharges",
        display = L["Include Charges"],
        type = "toggle",
        test = "true"
      },
      {
        name = "count",
        display = L["Item Count"],
        type = "number"
      }
    },
    durationFunc = function(trigger)
      local count = GetItemCount(trigger.itemName, trigger.use_includeBank, trigger.use_includeCharges);
      return count, 0, true;
    end,
    nameFunc = function(trigger)
      return trigger.itemName;
    end,
    iconFunc = function(trigger)
      return GetItemIcon(trigger.itemName);
    end,
    hasItemID = true,
    automaticrequired = true
  },
  ["Stance/Form/Aura"] = {
    type = "status",
    events = {
      "UPDATE_SHAPESHIFT_FORM",
      "WA_DELAYED_PLAYER_ENTERING_WORLD"
    },
    force_events = true,
    name = L["Stance/Form/Aura"],
    init = function(trigger)
    local ret = [[
    local form = GetShapeshiftForm();
    local _, class = UnitClass('player');
    local form_ = %s;
    local inverse = %s;
    ]];
    
    return ret:format(trigger.form or 0, trigger.use_inverse and "true" or "false");
    end,
    statesParameter = "one",
    args = {
      {
        name = "form",
        required = true,
        display = L["Form"],
        type = "select",
        values = "form_types",
        test = "inverse == (form ~= %s)",
        store = true,
        conditionType = "select"
      },
      {
        name = "inverse",
        display = L["Inverse"],
        type = "toggle",
        test = "true",
        enable = function(trigger) return trigger.use_form end
      }
    },
    nameFunc = function(trigger)
      local _, class = UnitClass("player");
      if(class == trigger.class) then
        local form = GetShapeshiftForm();
        local _, name = form > 0 and GetShapeshiftFormInfo(form) or "Humanoid";
        return name;
      else
        local types = WeakAuras[class:lower().."_form_types"];
        if(types) then
          return types[GetShapeshiftForm()];
        end
      end
    end,
    iconFunc = function(trigger)
      local _, class = UnitClass("player");
      if(class == trigger.class) then
        local form = GetShapeshiftForm();
        local icon = form > 0 and GetShapeshiftFormInfo(form) or "Interface\\Icons\\Achievement_Character_Human_Male";
        return icon;
      else
        return nil;
      end
    end,
    automaticrequired = true
  },
  ["Weapon Enchant"] = {
    type = "status",
    events = {
      "MAINHAND_TENCH_UPDATE",
      "OFFHAND_TENCH_UPDATE"
    },
    force_events = true,
    name = L["Weapon Enchant"],
    init = function(trigger)
      WeakAuras.TenchInit();
      local ret = [[
    local exists, _, name
    local inverse
    ]];
      if(trigger.weapon == "main") then
        ret = ret .. [[
      exists, _, name = WeakAuras.GetMHTenchInfo()
    ]];
      elseif(trigger.weapon == "off") then
        ret = ret .. [[
      exists, _, name = WeakAuras.GetOHTenchInfo()
    ]];
      end
      
      if(trigger.use_inverse) then
        ret = ret..[[
      inverse = true;
    ]];
      end
      
      if(trigger.use_enchant and trigger.enchant and trigger.enchant ~= "") then
        ret = ret .. [[
      exists = name == ']] .. trigger.enchant .. [[';
    ]]
      end
      return ret;
    end,
    args = {
      {
        name = "weapon",
        display = L["Weapon"],
        type = "select",
        values = "weapon_types",
        test = "(inverse and not exists) or (not inverse and exists)"
      },
      {
        name = "enchant",
        display = L["Weapon Enchant"],
        type = "string",
        test = "true"
      },
      {
        name = "inverse",
        display = L["Inverse"],
        type = "toggle",
        test = "true"
      }
    },
    durationFunc = function(trigger)
      local expirationTime, duration;
      if(trigger.weapon == "main") then
        expirationTime, duration = WeakAuras.GetMHTenchInfo();
      elseif(trigger.weapon == "off") then
        expirationTime, duration = WeakAuras.GetOHTenchInfo();
      end
      if(expirationTime) then
        return duration, expirationTime;
      else
        return 0, math.huge;
      end
    end,
    nameFunc = function(trigger)
      local _, name;
      if(trigger.weapon == "main") then
        _, _, name = WeakAuras.GetMHTenchInfo();
      elseif(trigger.weapon == "off") then
        _, _, name = WeakAuras.GetOHTenchInfo();
      end
      return name;
    end,
    iconFunc = function(trigger)
      local _, icon;
      if(trigger.weapon == "main") then
        _, _, _, icon = WeakAuras.GetMHTenchInfo();
      elseif(trigger.weapon == "off") then
        _, _, _, icon = WeakAuras.GetOHTenchInfo();
      end
      return icon;
    end,
    automaticrequired = true
  },
  ["Chat Message"] = {
    type = "event",
    events = {
      "CHAT_MSG_INSTANCE_CHAT",
      "CHAT_MSG_INSTANCE_CHAT_LEADER",
      "CHAT_MSG_BG_SYSTEM_ALLIANCE",
      "CHAT_MSG_BG_SYSTEM_HORDE",
      "CHAT_MSG_BG_SYSTEM_NEUTRAL",
      "CHAT_MSG_BN_WHISPER",
      "CHAT_MSG_CHANNEL",
      "CHAT_MSG_EMOTE",
      "CHAT_MSG_GUILD",
      "CHAT_MSG_MONSTER_YELL",
      "CHAT_MSG_OFFICER",
      "CHAT_MSG_PARTY",
      "CHAT_MSG_PARTY_LEADER",
      "CHAT_MSG_RAID",
      "CHAT_MSG_RAID_LEADER",
      "CHAT_MSG_RAID_BOSS_EMOTE",
      "CHAT_MSG_RAID_WARNING",
      "CHAT_MSG_SAY",
      "CHAT_MSG_WHISPER",
      "CHAT_MSG_YELL"
    },
    name = L["Chat Message"],
    init = function(trigger)
      return [[
    if (event:find('LEADER')) then 
      event = event:sub(0, -8);
    end
    if (event == 'CHAT_MSG_TEXT_EMOTE') then 
      event = 'CHAT_MSG_EMOTE';
    end
    ]];
    end,
    args = {
      {
        name = "messageType",
        display = L["Message Type"],
        type = "select",
        values = "chat_message_types",
        test = "event=='%s'"
      },
      {
        name = "message",
        display = L["Message"],
        init = "arg",
        type = "longstring",
        store = true,
        conditionType = "string",
      },
      {
        name = "sourceName",
        display = L["Source Name"],
        init = "arg",
        type = "string",
        store = true,
        conditionType = "string",
      }
    }
  },
  ["Item Equipped"] = {
    type = "status",
    events = {
      "UNIT_INVENTORY_CHANGED",
      "WA_DELAYED_PLAYER_ENTERING_WORLD"
    },
    force_events = true,
    name = L["Item Equipped"],
    init = function(trigger)
--     trigger.itemName = WeakAuras.CorrectItemName(trigger.itemName) or 0;
    trigger.itemName = trigger.itemName or 0;
    local itemName = type(trigger.itemName) == "number" and trigger.itemName or "'" .. trigger.itemName .. "'";
    
      local ret = [[
    local inverse = %s;
    local equipped = IsEquippedItem(%s);
    ]];
    
    return ret:format(trigger.use_inverse and "true" or "false", itemName);
    end,
    args = {
      {
        name = "itemName",
        display = L["Item"],
        type = "item",
    required = true,
        test = "true"
      },
      {
        name = "inverse",
        display = L["Inverse"],
        type = "toggle",
        test = "true"
      },
      {
        hidden = true,
        test = "(inverse and not equipped) or (equipped and not inverse)"
      }
    },
  nameFunc = function(trigger)
    if not trigger.use_inverse then
    local name = GetItemInfo(trigger.itemName);
    return name;
    else
    return nil;
    end
    end,
    iconFunc = function(trigger)
    if not trigger.use_inverse then
    local texture = select(10, GetItemInfo(trigger.itemName));
    return texture;
    else
    return nil;
    end
    end,
    hasItemID = true,
--    automaticrequired = true
  },  
  ["Threat Situation"] = {
    type = "status",
    events = {
      "UNIT_THREAT_SITUATION_UPDATE",
      "PLAYER_TARGET_CHANGED"
    },
    force_events = true,
    name = L["Threat Situation"],
    init = function(trigger)
      local ret = [[
    local status = UnitThreatSituation('player', %s) or -1;
    ]];
    
    return ret:format(trigger.threatUnit and trigger.threatUnit ~= "none" and "'"..trigger.threatUnit.."'" or "nil");
    end,
    args = {
      {
        name = "threatUnit",
        display = L["Unit"],
        required = true,
        type = "select",
        values = "threat_unit_types",
        test = "true"
      },
      {
        name = "status",
        display = L["Status"],
        type = "select",
        values = "unit_threat_situation_types"
      }
    },
    automatic = true
  },
  ["Crowd Controlled"] = {
    type = "status",
    events = {
      "UNIT_AURA"
    },
    force_events = true,
    name = L["Crowd Controlled"],
    args = {
      {
        name = "controlled",
        display = L["Crowd Controlled"],
        type = "tristate",
        init = "not HasFullControl()"
      }
    },
    automaticrequired = true
  },
  ["Cast"] = {
    type = "status",
    events = {
      "UNIT_SPELLCAST_CHANNEL_START",
      "UNIT_SPELLCAST_CHANNEL_STOP",
      "UNIT_SPELLCAST_CHANNEL_UPDATE",
      "UNIT_SPELLCAST_START",
      "UNIT_SPELLCAST_STOP",
      "UNIT_SPELLCAST_DELAYED",
      "UNIT_SPELLCAST_INTERRUPTIBLE",
      "UNIT_SPELLCAST_NOT_INTERRUPTIBLE",
      "PLAYER_TARGET_CHANGED",
      "PLAYER_FOCUS_CHANGED"
    },
    force_events = true,
    name = L["Cast"],
    init = function(trigger)
      trigger.unit = trigger.unit or "";
      local ret = [[
    local unit = "%s"
    local spell, interruptible, _;
    local castType;
    spell, _, _, _, _, _, _, _, interruptible = UnitCastingInfo(unit)
    if(spell) then
      castType = "cast"
    else
      spell, _, _, _, _, _, _, interruptible = UnitChannelInfo(unit)
      if(spell) then
      castType = "channel"
      end
    end
    interruptible = not interruptible;
    ]];
      return ret:format(trigger.unit);
    end,
    args = {
      {
        name = "unit",
        display = L["Unit"],
        type = "unit",
        init = "arg",
        values = "actual_unit_types_with_specific",
        required = true
      },
      {
        name = "spell",
        display = L["Spell Name"],
        type = "string",
        store = true,
        conditionType = "string",
      },
      {
        name = "castType",
        display = L["Cast Type"],
        type = "select",
        values = "cast_types",
        store = true,
        conditionType = "select"
      },
      {
        name = "interruptible",
        display = L["Interruptible"],
        type = "tristate",
        store = true,
        conditionType = "bool"
      },
      {
        hidden = true,
        test = "UnitExists(unit) and spell"
      }
    },
    durationFunc = function(trigger)
      local _, _, _, _, startTime, endTime = UnitCastingInfo(trigger.unit);
      if not(startTime) then
        local _, _, _, _, startTime, endTime = UnitChannelInfo(trigger.unit);
        if not(startTime) then
          return 0, math.huge;
        else
          return (endTime - startTime)/1000, endTime/1000;
        end
      else
        return (endTime - startTime)/1000, endTime/1000, nil, true;
      end
    end,
    nameFunc = function(trigger)
      local name = UnitCastingInfo(trigger.unit);
      if not(name) then
        local name = UnitChannelInfo(trigger.unit);
        if not(name) then
          return trigger.spell or L["Spell Name"];
        else
          return name;
        end
      else
        return name;
      end
    end,
    iconFunc = function(trigger)
      local _, _, _, icon = UnitCastingInfo(trigger.unit);
      if not(icon) then
        local _, _, _, icon = UnitChannelInfo(trigger.unit);
        if not(icon) then
          return "Interface\\AddOns\\WeakAuras\\icon";
        else
          return icon;
        end
      else
        return icon;
      end
    end,
    automaticrequired = true
  },
  ["Conditions"] = {
    type = "status",
    events = {
      "PLAYER_REGEN_ENABLED",
      "PLAYER_REGEN_DISABLED",
      "PLAYER_FLAGS_CHANGED",
      "PLAYER_DEAD",
      "PLAYER_ALIVE",
      "PLAYER_UNGHOST",
      "UNIT_PET",
      "PLAYER_UPDATE_RESTING",
      "MOUNTED_UPDATE",
      "CONDITIONS_CHECK"
    },
    force_events = "CONDITIONS_CHECK",
    name = L["Conditions"],
    init = function(trigger)
      if(trigger.use_mounted ~= nil) then
        WeakAuras.WatchForMounts();
      end
      return "";
    end,
    args = {
      {
        name = "pvpflagged",
        display = L["PvP Flagged"],
        type = "tristate",
        init = "UnitIsPVP('player')"
      },
      {
        name = "alive",
        display = L["Alive"],
        type = "tristate",
        init = "not UnitIsDeadOrGhost('player')"
      },
      {
        name = "vehicle",
        display = L["In Vehicle"],
        type = "tristate",
        init = "false"
      },
      {
        name = "resting",
        display = L["Resting"],
        type = "tristate",
        init = "IsResting()"
      },
      {
        name = "mounted",
        display = L["Mounted"],
        type = "tristate",
        init = "IsMounted()"
      },
      {
        name = "HasPet",
        display = L["HasPet"],
        type = "tristate",
        init = "UnitExists('pet')"
      }
    },
    automaticrequired = true
  },
  ["Pet Behavior"] = {
    type = "status",
    events = {
      "PET_BAR_UPDATE",
      "UNIT_PET"
    },
    force_events = true,
    name = L["Pet Behavior"],
    init = function(trigger)
      local ret = [[
      local inverse = %s
      local check_behavior = "%s"
      local name,_,_,_,active,_,_,exists
      local behavior
      local index = 1
      repeat
        name,_,_,_,active,_,_,exists = GetPetActionInfo(index);
        index = index + 1
        if(name == "PET_MODE_ASSIST" and active == 1) then
          behavior = "assist"
        elseif(name == "PET_MODE_DEFENSIVE" and active == 1) then
          behavior = "defensive"
        elseif(name == "PET_MODE_PASSIVE" and active == 1) then
          behavior = "passive"
        end
      until not exists
      ]]
      return ret:format(trigger.use_inverse and "true" or "false", trigger.behavior or "");
    end,
    args = {
      {
        name = "behavior",
        display = L["Pet Behavior"],
        required = true,
        type = "select",
        values = "pet_behavior_types",
        test = "true"
      },
      {
        name = "inverse",
        display = L["Inverse"],
        type = "toggle",
        test = "true"
      },
      {
        hidden = true,
        test = "UnitExists('pet') and ((inverse and check_behavior ~= behavior) or (not inverse and check_behavior == behavior))"
      }
    },
    automaticrequired = true
  }
};

WeakAuras.dynamic_texts = {
  ["%%p"] = {
    unescaped = "%p",
    name = L["Progress"],
    value = "progress",
    static = "8.0"
  },
  ["%%t"] = {
    unescaped = "%t",
    name = L["Total"],
    value = "duration",
    static = "12.0"
  },
  ["%%n"] = {
    unescaped = "%n",
    name = L["Name"],
    value = "name"
  },
  ["%%i"] = {
    unescaped = "%i",
    name = L["Icon"],
    value = "icon"
  },
  ["%%s"] = {
    unescaped = "%s",
    name = L["Stacks"],
    value = "stacks",
    static = 1
  },
  ["%%c"] = {
    unescaped = "%c",
    name = L["Custom"],
    value = "custom",
    static = L["Custom"]
  }
};