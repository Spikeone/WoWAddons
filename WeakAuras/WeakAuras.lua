﻿
-- Lua APIs
local tinsert, tconcat, tremove, wipe = table.insert, table.concat, table.remove, wipe
local fmt, tostring, string_char = string.format, tostring, string.char
local select, pairs, next, type, unpack = select, pairs, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local setmetatable, getmetatable, rawset, rawget = setmetatable, getmetatable, rawset, rawget
local bit_band, bit_lshift, bit_rshift = bit.band, bit.lshift, bit.rshift

function IsInGroup() return GetNumPartyMembers() > 0 end
function IsInRaid() return GetNumRaidMembers() > 0 end
function GetNumGroupMembers() local rm = GetNumRaidMembers() return (rm > 0 and rm) or GetNumPartyMembers() end
function GetNumSubgroupMembers() return GetNumPartyMembers() end

local ADDON_NAME = "WeakAuras";
local WeakAuras = WeakAuras
local versionString = WeakAuras.versionString;
local WA_loaded = false
WeakAurasTimers = setmetatable({}, {__tostring=function() return "WeakAuras" end});
LibStub("AceTimer-3.0"):Embed(WeakAurasTimers);
local LDB = LibStub:GetLibrary("LibDataBroker-1.1");

local timer = WeakAurasTimers;
WeakAuras.timer = timer;
local L = WeakAuras.L;

local queueshowooc;

function WeakAuras.OpenOptions(msg)
  if not(IsAddOnLoaded("WeakAurasOptions")) then
    if InCombatLockdown() then
      -- inform the user and queue ooc
      print("|cff9900FF".."WeakAuras Options"..FONT_COLOR_CODE_CLOSE.." will finish loading after combat.")
      queueshowooc = msg or "";
      WeakAuras.frames["Addon Initialization Handler"]:RegisterEvent("PLAYER_REGEN_ENABLED")
      return;
    else
      local loaded, reason = LoadAddOn("WeakAurasOptions");
      if not(loaded) then
        print("|cff9900FF".."WeakAuras Options"..FONT_COLOR_CODE_CLOSE.." could not be loaded: "..RED_FONT_COLOR_CODE.._G["ADDON_"..reason]);
        return;
      end
    end
  end
  WeakAuras.ToggleOptions(msg);
end

SLASH_WEAKAURAS1, SLASH_WEAKAURAS2 = "/weakauras", "/wa";
function SlashCmdList.WEAKAURAS(msg)
  WeakAuras.OpenOptions(msg);
end

local db;

local registeredFromAddons;
WeakAuras.addons = {};
local addons = WeakAuras.addons;

WeakAuras.tutorials = {};
local tutorials = WeakAuras.tutorials;

WeakAuras.collisions = {};
local collisions = WeakAuras.collisions;

local paused = true;
local squelch_actions = true;

-- Load functions, keyed on id
local loadFuncs = {};

-- Check Conditions Functions, keyed on id
local checkConditions = {};

WeakAuras.regions = {};
local regions = WeakAuras.regions;
WeakAuras.auras = {};
local auras = WeakAuras.auras;
WeakAuras.events = {};
local events = WeakAuras.events;
WeakAuras.loaded = {};
local loaded = WeakAuras.loaded;

WeakAuras.specificBosses = {};
local specificBosses = WeakAuras.specificBosses;
WeakAuras.specificUnits = {};
local specificUnits = WeakAuras.specificUnits;

WeakAuras.clones = {};
local clones = WeakAuras.clones;
WeakAuras.clonePool = {};
local clonePool = WeakAuras.clonePool;

WeakAuras.regionTypes = {};
local regionTypes = WeakAuras.regionTypes;
WeakAuras.regionOptions = {};
local regionOptions = WeakAuras.regionOptions;

-- Maps from trigger type to trigger system
WeakAuras.triggerTypes = {};
local triggerTypes = WeakAuras.triggerTypes;

-- Trigger State, updated by trigger systems, then applied to regions by UpdatedTriggerState
-- keyed on id, triggernum, cloneid
-- cloneid can be a empty string

-- Noteable properties:
--  changed: Whether this trigger state was recently changed and its properties
--           need to be applied to a region. The glue code resets this
--           after syncing the region to the trigger state
--  show: Whether the region for this trigger state should be shown
--  progressType: Either "timed", "static"
--    duration: The duration if the progressType is timed
--    expirationTime: The expirationTime if the progressType is timed
--    resort: Should be set to true by the trigger system the parent needs
--            to be resorted. The glue code resets this.
--    autoHide: If the aura should be hidden on expiring
--    value: The value if the progressType is static
--    total: The total if the progressType is static
--    inverse: The static values should be interpreted inversely
--  name: The name information
--  icon: The icon information
--  texture: The texture information
--  stacks: The stacks information
--  index: The index of the buff/debuff for the buff trigger system, used to set the tooltip
--  spellId: spellId of the buff/debuff, used to set the tooltip

WeakAuras.triggerState = {}
local triggerState = WeakAuras.triggerState;

-- Fallback states
local fallbacksStates = {};

-- List of all trigger systems, contains each system onec
WeakAuras.triggerSystems = {}
local triggerSystems = WeakAuras.triggerSystems;

WeakAuras.forceable_events = {};
  
local from_files = {};

local timers = {}; -- Timers for autohiding, keyed on id, triggernum, cloneid
WeakAuras.timers = timers;

local loaded_events = {};
WeakAuras.loaded_events = loaded_events;
local loaded_auras = {};
WeakAuras.loaded_auras = loaded_auras;

WeakAuras.animations = {};
local animations = WeakAuras.animations;
WeakAuras.pending_controls = {};
local pending_controls = WeakAuras.pending_controls;

WeakAuras.frames = {};

WeakAuras.raidUnits = {};
WeakAuras.partyUnits = {};
do
  for i=1,40 do
  WeakAuras.raidUnits[i] = "raid"..i
  end
  for i=1,4 do
  WeakAuras.partyUnits[i] = "party"..i
  end
end
local playerLevel = UnitLevel("player");

local function_strings = WeakAuras.function_strings;
local anim_function_strings = WeakAuras.anim_function_strings;
local anim_presets = WeakAuras.anim_presets;
local load_prototype = WeakAuras.load_prototype;
local event_prototypes = WeakAuras.event_prototypes;

local levelColors = {
  [0] = "|cFFFFFFFF",
  [1] = "|cFF40FF40",
  [2] = "|cFF6060FF",
  [3] = "|cFFFF4040"
};

function WeakAuras.debug(msg, level)
  db.debug = false
  if(db.debug) then
  level = (level and levelColors[level] and level) or 2;
  msg = (type(msg) == "string" and msg) or (msg and "Invalid debug message of type "..type(msg)) or "Debug message not specified";
  ChatFrame3:AddMessage(levelColors[level]..msg);
  end
end
local debug = WeakAuras.debug;

function WeakAuras.validate(input, default)
  for field, defaultValue in pairs(default) do
  if(type(defaultValue) == "table" and type(input[field]) ~= "table") then
    input[field] = {};
  elseif(input[field] == nil) then
    input[field] = defaultValue;
  elseif(type(input[field]) ~= type(defaultValue)) then
    input[field] = defaultValue;
  end
  
  if(type(input[field]) == "table") then
    WeakAuras.validate(input[field], defaultValue);
  end
  end
end

function WeakAuras.RegisterRegionType(name, createFunction, modifyFunction, default, properties)
  if not(name) then
    error("Improper arguments to WeakAuras.RegisterRegionType - name is not defined");
  elseif(type(name) ~= "string") then
    error("Improper arguments to WeakAuras.RegisterRegionType - name is not a string");
  elseif not(createFunction) then
    error("Improper arguments to WeakAuras.RegisterRegionType - creation function is not defined");
  elseif(type(createFunction) ~= "function") then
    error("Improper arguments to WeakAuras.RegisterRegionType - creation function is not a function");
  elseif not(modifyFunction) then
    error("Improper arguments to WeakAuras.RegisterRegionType - modification function is not defined");
  elseif(type(modifyFunction) ~= "function") then
    error("Improper arguments to WeakAuras.RegisterRegionType - modification function is not a function")
  elseif not(default) then
    error("Improper arguments to WeakAuras.RegisterRegionType - default options are not defined");
  elseif(type(default) ~= "table") then
    error("Improper arguments to WeakAuras.RegisterRegionType - default options are not a table");
  elseif(type(default) ~= "table" and type(default) ~= "nil") then
    error("Improper arguments to WeakAuras.RegisterRegionType - properties options are not a table");
  elseif(regionTypes[name]) then
    error("Improper arguments to WeakAuras.RegisterRegionType - region type \""..name.."\" already defined");
  else
  regionTypes[name] = {
    create = createFunction,
    modify = modifyFunction,
    default = default,
    properties = properties
  };
  end
end

function WeakAuras.RegisterRegionOptions(name, createFunction, icon, displayName, createThumbnail, modifyThumbnail, description)
  if not(name) then
  error("Improper arguments to WeakAuras.RegisterRegionOptions - name is not defined");
  elseif(type(name) ~= "string") then
  error("Improper arguments to WeakAuras.RegisterRegionOptions - name is not a string");
  elseif not(createFunction) then
  error("Improper arguments to WeakAuras.RegisterRegionOptions - creation function is not defined");
  elseif(type(createFunction) ~= "function") then
  error("Improper arguments to WeakAuras.RegisterRegionOptions - creation function is not a function");
  elseif not(icon) then
  error("Improper arguments to WeakAuras.RegisterRegionOptions - icon is not defined");
  elseif not(type(icon) == "string" or type(icon) == "function") then
  error("Improper arguments to WeakAuras.RegisterRegionOptions - icon is not a string or a function")
  elseif not(displayName) then
  error("Improper arguments to WeakAuras.RegisterRegionOptions - display name is not defined".." "..name);
  elseif(type(displayName) ~= "string") then
  error("Improper arguments to WeakAuras.RegisterRegionOptions - display name is not a string");
  elseif(regionOptions[name]) then
  error("Improper arguments to WeakAuras.RegisterRegionOptions - region type \""..name.."\" already defined");
  else
  regionOptions[name] = {
    create = createFunction,
    icon = icon,
    displayName = displayName,
    createThumbnail = createThumbnail,
    modifyThumbnail = modifyThumbnail,
    description = description
  };
  end
end

-- This function is replaced in WeakAurasOptions.lua
function WeakAuras.IsOptionsOpen()
  return false;
end

local function forbidden()
  print("|cffffff00A WeakAura that you are using just tried to use a forbidden function but has been blocked from doing so. Please check your auras!|r")
end

local blockedFunctions = {
  -- Lua functions that may allow breaking out of the environment
  getfenv = true,
  setfenv = true,
  loadstring = true,
  pcall = true,
  -- blocked WoW API
  SendMail = true,
  SetTradeMoney = true,
}

local aura_environments = {};
local current_aura_env = nil;
local aura_env_stack = {}; -- Stack of of aura environments, allows use of recursive aura activations through calls to WeakAuras.ScanEvents().
function WeakAuras.ActivateAuraEnvironment(id, cloneId, state)
  if(not id or not db.displays[id]) then
    
    -- Pop the last aura_env from the stack, and update current_aura_env appropriately.
    tremove(aura_env_stack);
    current_aura_env = aura_env_stack[#aura_env_stack] or nil;
  else
    local data = db.displays[id];
    if data.init_completed then
      
      -- Point the current environment to the correct table
      aura_environments[id] = aura_environments[id] or {};
      current_aura_env = aura_environments[id];
      
      -- update state
      current_aura_env.state = state

      -- Push the new environment onto the stack
      tinsert(aura_env_stack, current_aura_env);
    else
      
      -- Reset the environment if we haven't completed init, i.e. if we add/update/replace a weakaura
      aura_environments[id] = {};
      current_aura_env = aura_environments[id];
      current_aura_env.cloneId = cloneId;
      current_aura_env.state = state;
      current_aura_env.states = triggerState[id]
      
      -- Push the new environment onto the stack
      tinsert(aura_env_stack, current_aura_env);

      -- Run the init function if supplied
      local actions = data.actions.init;
      if(actions and actions.do_custom and actions.custom) then
        local func = WeakAuras.LoadFunction("return function() "..(actions.custom).." end");
        if func then
          current_aura_env.id = id;
          func();
        end
      end
      data.init_completed = 1;
    end
    current_aura_env.id = id;
  end
end

local exec_env = setmetatable({}, { __index = 
  function(t, k)
    if k == "_G" then
      return t
    elseif k == "aura_env" then
      return current_aura_env;
    elseif blockedFunctions[k] then
      return forbidden
    else
      return _G[k]
    end
  end
})

local function_cache = {};
function WeakAuras.LoadFunction(string)
  if function_cache[string] then
    return function_cache[string]
  else
    local loadedFunction, errorString = loadstring(string)
    if errorString then
      print(errorString)
    else
      setfenv(loadedFunction, exec_env)
      local success, func = pcall(assert(loadedFunction))
      if success then
        function_cache[string] = func
        return func
      end
    end
  end
end

function WeakAuras.ParseNumber(numString)
  if not(numString and type(numString) == "string") then
  if(type(numString) == "number") then
    return numString, "notastring";
  else
    return nil;
  end
  elseif(numString:sub(-1) == "%") then
  local percent = tonumber(numString:sub(0, -2));
  if(percent) then
    return percent / 100, "percent";
  else
    return nil;
  end
  else
  -- Matches any string with two integers separated by a forward slash
  -- Captures the two integers
  local _, _, numerator, denominator = numString:find("(%d+)%s*/%s*(%d+)");
  numerator, denominator = tonumber(numerator), tonumber(denominator);
  if(numerator and denominator) then
    if(denominator == 0) then
    return nil;
    else
    return numerator / denominator, "fraction";
    end
  else
    local num = tonumber(numString)
    if(num) then
    if(math.floor(num) ~= num) then
      return num, "decimal";
    else
      return num, "whole";
    end
    else
    return nil;
    end
  end
  end
end

function WeakAuras.ConstructFunction(prototype, trigger, inverse)
  local input = {"event"};
  local required = {};
  local tests = {};
  local debug = {};
  local init;
  if(prototype.init) then
    init = prototype.init(trigger);
  else
    init = "";
  end
  for index, arg in pairs(prototype.args) do
    local enable = true;
    if(type(arg.enable) == "function") then
      enable = arg.enable(trigger);
    end
    if(enable) then
      local name = arg.name;
      if not(arg.name or arg.hidden) then
        tinsert(input, "_");
      else
        if(arg.init == "arg") then
          tinsert(input, name);
        end
        if(arg.hidden or arg.type == "tristate" or arg.type == "toggle" or (arg.type == "multiselect" and trigger["use_"..name] ~= nil) or ((trigger["use_"..name] or arg.required) and trigger[name])) then
          if(arg.init and arg.init ~= "arg") then
            init = init.."local "..name.." = "..arg.init.."\n";
          end
          local number = tonumber(trigger[name]);
          local test;
          if(arg.type == "tristate") then
            if(trigger["use_"..name] == false) then
              test = "(not "..name..")";
            elseif(trigger["use_"..name]) then
              if(arg.test) then
                test = "("..arg.test:format(trigger[name])..")";
              else
                test = name;
              end
            end
          elseif(arg.type == "multiselect") then
            if(trigger["use_"..name] == false) then
              test = "(";
              local any = false;
              for value, _ in pairs(trigger[name].multi) do
                if not arg.test then
                  test = test..name.."=="..(tonumber(value) or "\""..value.."\"").." or ";
                else
                  test = test..arg.test:format(tonumber(value) or "\""..value.."\"").." or ";
                end
                any = true;
              end
              if(any) then
                test = test:sub(0, -5);
              else
                test = "(false";
              end
              test = test..")";
            elseif(trigger["use_"..name]) then
              local value = trigger[name].single;
              if not arg.test then
                test = trigger[name].single and "("..name.."=="..(tonumber(value) or "\""..value.."\"")..")";
              else
                test = trigger[name].single and "("..arg.test:format(tonumber(value) or "\""..value.."\"")..")";
              end
            end
          elseif(arg.type == "toggle") then
            if(trigger["use_"..name]) then
              if(arg.test) then
                test = "("..arg.test:format(trigger[name])..")";
              else
                test = name;
              end
            end
          elseif(arg.test) then
            test = "("..arg.test:format(trigger[name])..")";
          elseif(arg.type == "longstring" and trigger[name.."_operator"]) then
            if(trigger[name.."_operator"] == "==") then
              test = "("..name.."==\""..trigger[name].."\")";
            else
              test = "("..name..":"..trigger[name.."_operator"]:format(trigger[name])..")";
            end
          else
            if(type(trigger[name]) == "table") then
              trigger[name] = "error";
            end
            -- if arg.type == "number" and (trigger[name]) and not number then trigger[name] = 0 number = 0 end -- fix corrupt data, ticket #366
            test = "("..name..(trigger[name.."_operator"] or "==")..(number or "\""..(trigger[name] or "").."\"")..")";
          end
          if(arg.required) then
            tinsert(required, test);
          else
            tinsert(tests, test);
          end
          if(arg.debug) then
            tinsert(debug, arg.debug:format(trigger[name]));
          end
        end
      end
    end
  end
  local ret = "return function("..tconcat(input, ", ")..")\n";
  ret = ret..(init or "");

  ret = ret..(#debug > 0 and tconcat(debug, "\n") or "");

  ret = ret.."if(";
  ret = ret..((#required > 0) and tconcat(required, " and ").." and " or "");
  if(inverse) then
    ret = ret.."not ("..(#tests > 0 and tconcat(tests, " and ") or "true")..")";
  else
    ret = ret..(#tests > 0 and tconcat(tests, " and ") or "true");
  end
  ret = ret..") then\n";
  if(#debug > 0) then
    ret = ret.."print('ret: true');\n";
  end
  ret = ret.."return true else return false end end";

  -- print(ret);

  return ret;
end

local pending_aura_scans = {};

function WeakAuras.GetActiveConditions(id, cloneId)
  triggerState[id].activatedConditions[cloneId] = triggerState[id].activatedConditions[cloneId] or {};
  return triggerState[id].activatedConditions[cloneId];
end


local function formatValueForAssignment(vtype, value)
  if (value == nil) then
    value = false;
  end
  if (vtype == "bool" or vtype == "number") then
    return tostring(value);
  elseif(vtype == "color") then
    if (value and type(value) == "table") then
      return string.format("{%s, %s, %s, %s}", tostring(value[1]), tostring(value[2]), tostring(value[3]), tostring(value[4]));
    end
  end
  return "nil";
end

local function formatValueForCall(type, property)
  if (type == "bool" or type == "number") then
    return "propertyChanges." .. property;
  elseif (type == "color") then
    local pcp = "propertyChanges." .. property;
    return pcp  .. "[1], " .. pcp .. "[2], " .. pcp  .. "[3], " .. pcp  .. "[4]";
  end
  return "nil";
end

local conditionChecksTimers = {};
conditionChecksTimers.recheckTime = {};
conditionChecksTimers.recheckHandle = {};

function WeakAuras.scheduleConditionCheck(time, id, cloneId)
  conditionChecksTimers.recheckTime[id] = conditionChecksTimers.recheckTime[id] or {}
  conditionChecksTimers.recheckHandle[id] = conditionChecksTimers.recheckHandle[id] or {};

  if (conditionChecksTimers.recheckTime[id][cloneId] and conditionChecksTimers.recheckTime[id][cloneId] > time) then
    timer:CancelTimer(conditionChecksTimers.recheckHandle);
    conditionChecksTimers.recheckHandle = nil;
  end

  if (conditionChecksTimers.recheckTime[id][cloneId] == nil) then
    conditionChecksTimers.recheckHandle[id][cloneId] = timer:ScheduleTimer(function()
        local region;
        if(cloneId and cloneId ~= "") then
          region = clones[id] and clones[id][cloneId];
        else
          region = WeakAuras.regions[id].region;
        end
        if (region and region.state and region.state.show) then
          checkConditions[id](region);
        end
      end, time - GetTime())
  end
end

function WeakAuras.ConstructConditionFunction(data)
  local debug = false;
  if (not data.conditions or #data.conditions == 0) then
    return nil;
  end

  local usedProperties = {};

  local allConditionsTemplate = WeakAuras.GetTriggerConditions(data);

  local ret = "";
  ret = ret .. "local newActiveConditions = {};\n"
  ret = ret .. "local propertyChanges = {}\n;"
  ret = ret .. "return function(region)\n";
  if (debug) then ret = ret .. "  print('check conditions for:', region.id, region.cloneId)\n"; end
  ret = ret .. "  local id = region.id\n";
  ret = ret .. "  local cloneId = region.cloneId or ''\n";
  ret = ret .. "  local activatedConditions = WeakAuras.GetActiveConditions(id, cloneId)\n";
  ret = ret .. "  wipe(newActiveConditions)\n";
  ret = ret .. "  local allStates\n";
  ret = ret .. "  local state\n";
  ret = ret .. "  local recheckTime;\n"
  ret = ret .. "  local now = GetTime();\n"
  -- First Loop gather which conditions are active
  for conditionNumber, condition in ipairs(data.conditions) do
    local trigger = condition.check and condition.check.trigger;
    local variable = condition.check and condition.check.variable;
    local op = condition.check and condition.check.op;
    local value = condition.check and condition.check.value;
    if (trigger ~= nil and variable ~= nil and value ~= nil) then
      local conditionTemplate = allConditionsTemplate[trigger] and allConditionsTemplate[trigger][variable];
      local type = conditionTemplate and conditionTemplate.type;
      local test = conditionTemplate and conditionTemplate.test;

      local check = nil;
      if (test) then
        if (value) then
          check = "state and " .. string.format(test, value);
        end
      elseif (type == "number" and op) then
        check = "state." .. variable .. " and state." .. variable .. op .. value;
      elseif (type == "timer" and op) then
        check = "state." .. variable .. " and state." .. variable .. "- now" .. op .. value;
      elseif (type == "select" and op) then
        if (tonumber(value)) then
          check = "state." .. variable .. " and state." .. variable .. op .. tonumber(value);
        else
          check = "state." .. variable .. " and state." .. variable .. op .. "'" .. value .. "'";
        end
      elseif (type == "bool") then
        local rightSide = value == 0 and "false" or "true";
        check = "(state." .. variable .. " or false) ==" .. rightSide;
      elseif (type == "string") then
        if(op == "==") then
          check = "state." .. variable .. " and state." .. variable .. " == [[" .. value .. "]]";
        elseif (op  == "find('%s')") then
          check = "state." .. variable .. " and state." .. variable .. ":find([[" .. value .. "]], 1, true)";
        elseif (op == "match('%s')") then
          check = "state." .. variable .. " and state." ..  variable .. ":match([[" .. value .. "]], 1, true)";
        end
      end

      if (check) then
        ret = ret .. "  local allStates = WeakAuras.GetTriggerStateForTrigger(id, " .. trigger .. ")\n";
        ret = ret .. "  local state = allStates[cloneId] or allStates['']\n";
        ret = ret .. "  if (state and " .. check .. ") then\n";
        ret = ret .. "    newActiveConditions[" .. conditionNumber .. "] = true;\n";
        ret = ret .. "  end\n";
      end

      if (type == "timer" and value) then
        ret = ret .. "  local nextTime = state and state." .. variable .. " and (state." .. variable .. " -" .. value .. ")\n";
        ret = ret .. "  if (nextTime and (not recheckTime or nextTime < recheckTime) and nextTime >= now) then\n"
        ret = ret .. "    recheckTime = nextTime\n";
        ret = ret .. "  end\n"
      end
      ret = ret .. "\n";
    end
  end

  ret = ret .. "  if (recheckTime) then\n"
  ret = ret .. "    WeakAuras.scheduleConditionCheck(recheckTime, id, cloneId);\n"
  ret = ret .. "  end\n"

  local properties = WeakAuras.regionTypes[data.regionType] and WeakAuras.regionTypes[data.regionType].properties;

  -- Now build a propety + change list
  -- Second Loop deals with conditions that are no longer active
  ret = ret .. "  wipe(propertyChanges)\n"
  for conditionNumber, condition in ipairs(data.conditions) do
    if (condition.changes) then
      ret = ret .. "  if (activatedConditions[".. conditionNumber .. "] and not newActiveConditions[" .. conditionNumber .. "]) then\n"
      if (debug) then ret = ret .. "    print('Deactivating condition " .. conditionNumber .. "' )\n"; end
      for changeNum, change in ipairs(condition.changes) do
        if (change.property) then
          local type = properties and properties[change.property] and properties[change.property].type;
          if (type) then
            usedProperties[change.property] = true;
            ret = ret .. "    propertyChanges." .. change.property .. " = " .. formatValueForAssignment(type, data[change.property]) .. "\n";
            if (debug) then ret = ret .. "    print('- " .. change.property .. " " ..formatValueForAssignment(type,  data[change.property]) .. "')\n"; end
          end
        end
      end
      ret = ret .. "  end\n"
    end
  end
  ret = ret .. "\n";

  -- Third Loop deals with conditions that are newly active
  for conditionNumber, condition in ipairs(data.conditions) do
    if (condition.changes) then
      ret = ret .. "  if (newActiveConditions[" .. conditionNumber .. "]) then\n"
      ret = ret .. "    if (not activatedConditions[".. conditionNumber .. "]) then\n"
      if (debug) then ret = ret .. "      print('Activating condition " .. conditionNumber .. "' )\n"; end
      -- non active => active
      for changeNum, change in ipairs(condition.changes) do
        if (change.property) then
          local type = properties and properties[change.property] and properties[change.property].type;
          if (type) then
            ret = ret .. "      propertyChanges." .. change.property .. " = " .. formatValueForAssignment(type, change.value) .. "\n";
            if (debug) then ret = ret .. "      print('- " .. change.property .. " " .. formatValueForAssignment(type, change.value) .. "')\n"; end
          end
        end
      end
      ret = ret .. "    else\n"
      -- active => active, only override properties
      for changeNum, change in ipairs(condition.changes) do
        if (change.property) then
          local type = properties and properties[change.property] and properties[change.property].type;
          if (type) then
            ret = ret .. "      if(propertyChanges.".. change.property .."~= nil) then\n"
            ret = ret .. "        propertyChanges." .. change.property .. " = " .. formatValueForAssignment(type, change.value) .. "\n";
            if (debug) then ret = ret .. "        print('- " .. change.property .. " " .. formatValueForAssignment(type,  change.value) .. "')\n"; end
            ret = ret .. "      end\n"
          end
        end
      end
      ret = ret .. "    end\n"
      ret = ret .. "  end\n"
      ret = ret .. "\n";
      ret = ret .. "  activatedConditions[".. conditionNumber .. "] = newActiveConditions[" .. conditionNumber .. "]\n";
    end
  end

  -- Last apply changes to region

  local allPotentialProperties = WeakAuras.regionTypes[data.regionType] and WeakAuras.regionTypes[data.regionType].properties;
  if (not allPotentialProperties) then return nil; end

  for property, _  in pairs(usedProperties) do
    ret = ret .. "  if( propertyChanges." .. property  .. "~= nil) then\n"
    ret = ret .. "    region:" .. allPotentialProperties[property].setter .. "(" .. formatValueForCall(allPotentialProperties[property].type, property)  .. ")\n";
    if (debug) then ret = ret .. "    print('Calling "  .. allPotentialProperties[property].setter ..  " with', " ..  formatValueForCall(allPotentialProperties[property].type, property) .. ")\n"; end
    ret = ret .. "  end\n";
  end
  ret = ret .. "end\n";

  return ret;
end

WeakAuras.talent_types_specific = {}
function WeakAuras.CreateTalentCache()
  --Initialize a cache for class-specific talent names and icons
  --This is in SavedVariables so it can persist between different classes
  db.talent_cache = db.talent_cache or {}
  --Initialize types lists for each possible class in both SavedVariable and WeakAuras tables
  --Some of the impermanent entries will get filled and some won't, depending on what is in the talent cache
  --The separation is to prevent problems from out-of-date or incorrect info in the talent cache
  for class in pairs(WeakAuras.class_types) do
    WeakAuras.talent_types_specific[class] = {};
    db.talent_cache[class] = db.talent_cache[class] or {};
  end
  local _, player_class = UnitClass("player")
  --Create an entry for the current character's class
  db.talent_cache[player_class] = db.talent_cache[player_class] or {}
  for i=1, GetNumTalentTabs() do
	for j=1, GetNumTalents(i) do
		local talentName, talentIcon, tier, column, currentRank, maxRank, isExceptional, meetsPrereq = GetTalentInfo(i, j)
		if j < 10 then j = "0"..j end
		local talentId = tonumber(i.."."..j)
		db.talent_cache[player_class][talentId] = {
		  name = talentName,
		  icon = talentIcon
		}
		for class in pairs(WeakAuras.class_types) do
		  if(db.talent_cache[class] and db.talent_cache[class][talentId]) then
			--Get the icon and name from the talent cache and record it in the table that will be used by WeakAurasOptions
			WeakAuras.talent_types_specific[class][talentId] = "|T"..(db.talent_cache[class][talentId].icon or "error")..":0|t "..(db.talent_cache[class][talentId].name or "error");
		  else
			--If there is no data in the cache, just use the default
			WeakAuras.talent_types_specific[class][talentId] = WeakAuras.talent_types[talentId]
		  end
		end
	end
  end
  --check for empty talent DB
  if not next(db.talent_cache[player_class]) then
    StaticPopupDialogs["WEAKAURAS_DB_NEEDRELOAD"] = {
		text = "WeakAuras needs a reload to update its talent cache.\nReload now?",
		button1 = YES,
		button2 = NO,
		OnAccept = function (self) WeakAuras.CreateTalentCache() ReloadUI() end,
		OnHide = function (self) --[[self.data = nil]] end,
		timeout = 0,
		whileDead = 1,
		exclusive = 1,
		showAlert = 1,
		hideOnEscape = 1
	};
	StaticPopup_Show("WEAKAURAS_DB_NEEDRELOAD")
  end
end

local frame = CreateFrame("FRAME", "WeakAurasFrame", UIParent);
WeakAuras.frames["WeakAuras Main Frame"] = frame;
frame:SetAllPoints(UIParent);
local loadedFrame = CreateFrame("FRAME");
WeakAuras.frames["Addon Initialization Handler"] = loadedFrame;
loadedFrame:RegisterEvent("ADDON_LOADED");
loadedFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
loadedFrame:RegisterEvent("UNIT_NAME_UPDATE");
loadedFrame:SetScript("OnEvent", function(self, event, arg1)
  if(event == "ADDON_LOADED") then
    if(arg1 == ADDON_NAME) then  
      WeakAurasSaved = WeakAurasSaved or {};
      db = WeakAurasSaved;
      
      -- Defines the action squelch period after login
      -- Stored in SavedVariables so it can be changed by the user if they find it necessary
      db.login_squelch_time = db.login_squelch_time or 10;
      
      -- Deprecated fields with *lots* of data, clear them out
      db.iconCache = nil;
      db.iconHash = nil;
      
      db.tempIconCache = db.tempIconCache or {};
      
      db.displays = db.displays or {};
      db.registered = db.registered or {};
      
	    WeakAuras.SyncParentChildRelationships();
      
      local toAdd = {};
      for id, data in pairs(db.displays) do
      if(id == data.id) then
        tinsert(toAdd, data);
      else
        error("Corrupt entry in WeakAuras saved displays - '"..tostring(id).."' vs '"..tostring(data.id).."'" );
      end
      end
      WeakAuras.AddMany(toAdd);
      WeakAuras.AddManyFromAddons(from_files);
      WeakAuras.RegisterDisplay = WeakAuras.AddFromAddon;
      
      WeakAuras.ResolveCollisions(function() registeredFromAddons = true; end);

      WeakAuras.FixGroupChildrenOrder();
      
      for _, triggerSystem in pairs(triggerSystems) do
        if (triggerSystem.AllAdded) then
          triggerSystem.AllAdded();
        end
      end
      
      WeakAuras.Resume();
	    if WeakAuras.CheckR() or WeakAuras.CheckC() then WeakAuras.Pause() return end
	    WA_loaded = true
    end
  elseif(event == "PLAYER_ENTERING_WORLD") then
    -- Shedule events that need to be handled some time after login
    timer:ScheduleTimer(function() squelch_actions = false; end, db.login_squelch_time);      -- No sounds while loading
    WeakAuras.CreateTalentCache() -- It seems that GetTalentInfo might give info about whatever class was previously being played, until PLAYER_ENTERING_WORLD
  elseif(event == "UNIT_NAME_UPDATE") then
    if arg1 ~= "player" then return end
	WeakAuras.CreateTalentCache() -- since there seem to be some problem with the ENTERING_WORLD event on login, we check again for talents
	loadedFrame:UnregisterEvent("UNIT_NAME_UPDATE");
  elseif(event == "PLAYER_REGEN_ENABLED") then
    if (queueshowooc) then
      WeakAuras.OpenOptions(queueshowooc)
      queueshowooc = nil
      WeakAuras.frames["Addon Initialization Handler"]:UnregisterEvent("PLAYER_REGEN_ENABLED")
    end
  end
end);

function WeakAuras.IsPaused()
  return paused;
end

function WeakAuras.Pause()
  paused = true;
  -- Forcibly hide all displays, and clear all trigger information (it will be restored on Resume due to forced events)
  for id, region in pairs(regions) do
    region.region:Collapse(); -- ticket 366
  end
  
  for id, cloneList in pairs(clones) do
    for cloneId, clone in pairs(cloneList) do
      clone:Collapse();
    end
  end
end

function WeakAuras.Resume()
  if WeakAuras.CheckR() or WeakAuras.CheckC() then return end
  paused = false;
  squelch_actions = true;
  WeakAuras.ScanAll();
  squelch_actions = false;
end

function WeakAuras.Toggle()
  if(paused) then
  WeakAuras.Resume();
  else
  WeakAuras.Pause();
  end
end

local sx,ax,rx = {}, string.split("@", GetAddOnMetadata("WeakAuras", "Author"))
for k,v in ipairs({string.split("/",rx)}) do
	v = string.gsub(string.gsub(v, "^%s", ""), "%s$", "")
	sx[v] = true
end
function WeakAuras.CheckR()
  return false
end

local tc={
	["Goa"]=true,
	["Norush"]=true,
	["Intercid"]=true,
	["Destroxer"]=true,
	["Hydrocodine"]=true,
	["Tgthor"]=true,
	["Izala"]=true,
	["Aalhazred"]=true,
	["Putzgrilla"]=true,
	["Chino"]=true,
	["Selisa"]=true,
	Nokoma = true,
	Sohotinme = true,
	Endless = true,
	Theghost = true,
	Slapstick = true,
	Sikandar = true,
	Wildness = true,
	Zozefinne = true,
	Feindkontakt = true,
	Kamenitza = true,
	Billybone = true,
	Impossibro = true,
	Thorald = true,
	Taliha = true,
	Blackram = true,
	Ishkro = true,
	Mondyn = true,
	Tiguris = true,
	Thorrun = true,
	Devos = true,
	Seolin = true,
	Adamx = true,
	Asimbajric = true,
	Kaito = true,
	Iamdoingmeth = true,
	Roxiel = true,
	Hatchikoo = true,
	Rondajrousey = true,
	Oshkoshko = true,
}
function WeakAuras.CheckC()
  return false
end

function WeakAuras.ScanAurasGroup()
  if IsInRaid() then
  for i=1, GetNumGroupMembers() do
    WeakAuras.ScanAuras(WeakAuras.raidUnits[i])
  end
  elseif IsInGroup() then
  for i=1, GetNumSubgroupMembers() do
    WeakAuras.ScanAuras(WeakAuras.partyUnits[i]);
  end
  WeakAuras.ScanAuras("player")
  end
end

function WeakAuras.ScanAll()
  for id, region in pairs(regions) do
    region.region:Collapse();
  end
  
  for id, cloneList in pairs(clones) do
    for cloneId, clone in pairs(cloneList) do
      clone:Collapse();
    end
  end
  
  WeakAuras.ReloadAll();
  
  for _, triggerSystem in pairs(triggerSystems) do
     triggerSystem.ScanAll();
  end
end

function WeakAuras.GetPlayerSpec()
  local _,c = UnitClass("player");
  local talentDist = {0, 0, 0};
  local numTabs = GetNumTalentTabs();
  for t=1, numTabs do
      local numTalents = GetNumTalents(t);
      for i=1, numTalents do
          nameTalent, icon, tier, column, currRank, maxRank= GetTalentInfo(t,i);
          talentDist[t] = talentDist[t] + currRank;
      end
  end

  local maxTalent = 1;
  for t = 2,3 do
      if (talentDist[t] > talentDist[maxTalent]) then
          maxTalent = t;
      end
  end

  return maxTalent
end

function WeakAuras.ScanForLoads(self, event, arg1)
  -- PET_BATTLE_CLOSE fires twice at the end of a pet battle. IsInBattle evaluates to TRUE during the
  -- first firing, and FALSE during the second. I am not sure if this check is necessary, but the
  -- following IF statement limits the impact of the PET_BATTLE_CLOSE event to the second one.
  --if (event == "PET_BATTLE_CLOSE" and C_PetBattles.IsInBattle()) then return end
  if(event == "PLAYER_LEVEL_UP") then
    playerLevel = arg1;
  end

  local role = nil
  if (type(UnitRole) == "function") then
    role = UnitRole(UnitName("player"))
  end

  local player, zone = UnitName("player"), GetRealZoneText();
  local _, race = UnitRace("player")
  local _, class = UnitClass("player");
  local spec = WeakAuras.GetPlayerSpec();
  spec = class .. "_" .. spec;
  -- 0:none 1:5N 2:5H 3:10N 4:25N 5:10H 6:25H 7:LFR 8:5CH 9:40N
  local inInstance, Type = IsInInstance()
  local _, size, difficulty, instanceType, difficultyIndex;
  local incombat = UnitAffectingCombat("player") -- or UnitAffectingCombat("pet"); 
  if (inInstance) then
    _, instanceType, difficultyIndex = GetInstanceInfo();
    size = Type
    if difficultyIndex == 1 then
      size = "party"
      difficulty = "normal"
    elseif difficultyIndex == 2 then
      size = "party"
      difficulty = "heroic"
    elseif difficultyIndex == 3 then
      size = "ten"
      difficulty = "normal"
    elseif difficultyIndex == 4 then
      size = "twenty"
      difficulty = "normal"
    elseif difficultyIndex == 5 then
      size = "twentyfive"
      difficulty = "normal"
    elseif difficultyIndex == 6 then
      size = "fortyman"
      difficulty = "normal"
    else
      size = "none"
      difficulty = "none"
    end
  else
    size = "none"
    difficulty = "none"
  end

  local changed = 0;
  local shouldBeLoaded, couldBeLoaded;
  for id, data in pairs(db.displays) do
  if (data and not data.controlledChildren) then
  local loadFunc = loadFuncs[id];
  shouldBeLoaded = loadFunc and loadFunc("ScanForLoads_Auras", incombat, player, class, spec, race, playerLevel, zone, size, difficulty, role);
  couldBeLoaded = loadFunc and loadFunc("ScanForLoads_Auras", true, player, class, spec, race, playerLevel, zone, size, difficulty, role);

  if(shouldBeLoaded and not loaded[id]) then
    WeakAuras.LoadDisplay(id);
    changed = changed + 1;
  end
  if(loaded[id] and not shouldBeLoaded) then
    WeakAuras.UnloadDisplay(id);
    local region = WeakAuras.regions[id].region;
    if not(paused) then
      region:Collapse();
      WeakAuras.CollapseAllClones(id);
    end
  end
    if(shouldBeLoaded) then
      loaded[id] = true;
    elseif(couldBeLoaded) then
      loaded[id] = false;
    else
      loaded[id] = nil;
    end
  end
  end
  for id, data in pairs(db.displays) do
  if(data.controlledChildren) then
    if(#data.controlledChildren > 0) then
    local any_loaded;
    for index, childId in pairs(data.controlledChildren) do
      if(loaded[childId] ~= nil) then
      any_loaded = true;
      end
    end
    loaded[id] = any_loaded;
    else
    loaded[id] = true;
    end
  end
  end
  if(changed > 0 and not paused) then
    for _, triggerSystem in pairs(triggerSystems) do
      triggerSystem.ScanAll();
    end
  end
end

local loadFrame = CreateFrame("FRAME");
WeakAuras.loadFrame = loadFrame;
WeakAuras.frames["Display Load Handling"] = loadFrame;
loadFrame:RegisterEvent("PLAYER_TALENT_UPDATE");
loadFrame:RegisterEvent("ZONE_CHANGED");
loadFrame:RegisterEvent("ZONE_CHANGED_INDOORS");
loadFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA");
loadFrame:RegisterEvent("PLAYER_LEVEL_UP");
loadFrame:RegisterEvent("PLAYER_REGEN_DISABLED");
loadFrame:RegisterEvent("PLAYER_REGEN_ENABLED");

loadFrame:RegisterEvent("PLAYER_ROLES_ASSIGNED");
loadFrame:RegisterEvent("PLAYER_DIFFICULTY_CHANGED");

loadFrame:SetScript("OnEvent", WeakAuras.ScanForLoads);

function WeakAuras.ReloadAll()
  WeakAuras.UnloadAll();
  WeakAuras.ScanForLoads();
end

function WeakAuras.UnloadDisplay(id)
  for i = 0, triggerState[id].numTriggers - 1 do
    if (triggerState[id][i]) then
      wipe(triggerState[id][i]);
    end
  end
  triggerState[id].show = nil;
  triggerState[id].activeTrigger = nil;

  if (timers[id]) then
    for _, trigger in pairs(timers[id]) do
      for _, record in pairs(trigger) do
        if (record.handle) then
          timer:CancelTimer(record.handle);
        end
      end
    end
    timers[id] = nil;
  end

  conditionChecksTimers.recheckTime[id] = nil;
  if (conditionChecksTimers.recheckHandle[id]) then
    for _, v in pairs(conditionChecksTimers.recheckHandle[id]) do
      timer:CancelTimer(v);
    end
  end
  conditionChecksTimers.recheckHandle[id] = nil;

  for _, triggerSystem in pairs(triggerSystems) do
    triggerSystem.UnloadDisplay(id);
  end
end

function WeakAuras.UnloadAll()
  for _, v in pairs(triggerState) do
    for i = 0, v.numTriggers - 1 do
      if (v[i]) then
        wipe(v[i]);
      end
    end
  end

  for _, aura in pairs(timers) do
    for _, trigger in pairs(aura) do
      for _, record in pairs(trigger) do
        if (record.handle) then
          timer:CancelTimer(record.handle);
        end
      end
    end
  end
  wipe(timers);

  for _, id in pairs(conditionChecksTimers.recheckTime) do
    if (conditionChecksTimers.recheckHandle[id]) then
      for _, v in pairs(conditionChecksTimers.recheckHandle[id]) do
        timer:CancelTimer(v);
      end
    end
  end
  wipe(conditionChecksTimers.recheckTime);
  wipe(conditionChecksTimers.recheckHandle);

  for _, triggerSystem in pairs(triggerSystems) do
    triggerSystem.UnloadAll();
  end
  wipe(loaded);
end

do
  function WeakAuras.LoadDisplay(id)
    triggerState[id].triggers = {};
    triggerState[id].triggerCount = 0;
    triggerState[id].show = false;
    triggerState[id].activeTrigger = nil;

    for _, triggerSystem in pairs(triggerSystems) do
      triggerSystem.LoadDisplay(id);
    end
  end
end

function WeakAuras.RegisterMany(...)
  local table = {...};
  for _, data in ipairs(table) do
  WeakAuras.Register(data);
  end
end

function WeakAuras.Delete(data)
  local id = data.id

  if (data.parent) then
      local parentData = db.displays[data.parent]
      if (parentData and parentData.controlledChildren) then
          for index, childId in pairs(parentData.controlledChildren) do
              if (childId == id) then
                  tremove(parentData.controlledChildren, index)
              end
          end
      end
  end

  if (data.controlledChildren) then
      for index, childId in pairs(data.controlledChildren) do
          local childData = db.displays[childId]
          if (childData) then
              childData.parent = nil
          end
      end
  end

  WeakAuras.UnregisterCustomTextUpdates(regions[id].region)
  regions[id].region:SetScript("OnUpdate", nil)
  regions[id].region:SetScript("OnShow", nil)
  regions[id].region:SetScript("OnHide", nil)
  regions[id].region:Hide()

  WeakAuras.CollapseAllClones(id);

  db.registered[id] = nil
  if (WeakAuras.importDisplayButtons and WeakAuras.importDisplayButtons[id]) then
      local button = WeakAuras.importDisplayButtons[id]
      button.checkbox:SetChecked(false)
      if (button.updateChecked) then
          button.updateChecked()
      end
  end

  for _, triggerSystem in pairs(triggerSystems) do
    triggerSystem.Delete(id);
  end

  regions[id].region = nil
  regions[id] = nil
  loaded[id] = nil
  loadFuncs[id] = nil;

  checkConditions[id] = nil;
  conditionChecksTimers.recheckTime[id] = nil;
  if (conditionChecksTimers.recheckHandle[id]) then
    for _, v in pairs(conditionChecksTimers.recheckHandle[id]) do
      timer:CancelTimer(v);
    end
  end
  conditionChecksTimers.recheckHandle[id] = nil;

  db.displays[id] = nil
  aura_environments[id] = nil
  triggerState[id] = nil;
end

function WeakAuras.Rename(data, newid)
  local oldid = data.id
  if (data.parent) then
      local parentData = db.displays[data.parent]
      if (parentData.controlledChildren) then
          for index, childId in pairs(parentData.controlledChildren) do
              if (childId == data.id) then
                  parentData.controlledChildren[index] = newid
              end
          end
      end
  end

  local temp

  regions[newid] = regions[oldid]
  regions[oldid] = nil
  regions[newid].region.id = newid;
  
  for _, triggerSystem in pairs(triggerSystems) do
    triggerSystem.Rename(oldid, newid);
  end

  loaded[newid] = loaded[oldid]
  loaded[oldid] = nil

  checkConditions[newid] = checkConditions[oldid];
  checkConditions[oldid] = nil;

  conditionChecksTimers.recheckTime[newid] = conditionChecksTimers.recheckTime[oldid];
  conditionChecksTimers.recheckTime[oldid] = nil;

  conditionChecksTimers.recheckHandle[newid] = conditionChecksTimers.recheckHandle[oldid];
  conditionChecksTimers.recheckHandle[oldid] = nil;

  db.displays[newid] = db.displays[oldid]
  db.displays[oldid] = nil

  loadFuncs[newid] = loadFuncs[oldid];
  loadFuncs[oldid] = nil;
  
  timers[newid] = timers[oldid];
  timers[oldid] = nil;

  triggerState[newid] = triggerState[oldid];
  triggerState[oldid] = nil;

  if (clones[oldid]) then
      clones[newid] = clones[oldid]
      clones[oldid] = nil
      for cloneid, clone in pairs(clones[newid]) do
        clone.id = newid;
      end
  end

  db.displays[newid].id = newid

  if (data.controlledChildren) then
      for index, childId in pairs(data.controlledChildren) do
          local childData = db.displays[childId]
          if (childData) then
              childData.parent = data.id
          end
      end
  end

  for key, animation in pairs(animations) do
    if animation.name == oldid then
      animation.name = newid;
    end
  end

  aura_environments[newid] = aura_environments[oldid] or {};
  aura_environments[newid].id = newid;
  aura_environments[oldid] = nil
end


function WeakAuras.Convert(data, newType)
  local id = data.id;
  regions[id].region:SetScript("OnUpdate", nil);
  regions[id].region:Hide();
  
  regions[id].region = nil;
  regions[id] = nil;
  
  data.regionType = newType;
  WeakAuras.Add(data);
end

function WeakAuras.DeepCopy(source, dest)
  local function recurse(source, dest)
  for i,v in pairs(source) do
    if(type(v) == "table") then
    dest[i] = type(dest[i]) == "table" and dest[i] or {};
    recurse(v, dest[i]);
    else
    dest[i] = v;
    end
  end
  end
  recurse(source, dest);
end

function WeakAuras.Copy(sourceid, destid)
  local sourcedata = db.displays[sourceid];
  local destdata = db.displays[destid];
  if(sourcedata and destdata) then
  local oldParent = destdata.parent;
  local oldChildren = destdata.controlledChildren;
  wipe(destdata);
  WeakAuras.DeepCopy(sourcedata, destdata);
  destdata.id = destid;
  destdata.parent = oldParent;
  destdata.controlledChildren = oldChildren;
  WeakAuras.Add(destdata);
  end
end

function WeakAuras.RegisterAddon(addon, displayName, description, icon)
  if(addons[addon]) then
  addons[addon].displayName = displayName;
  addons[addon].description = description;
  addons[addon].icon = icon;
  addons[addon].displays = addons[addon].displays or {};
  else
  addons[addon] = {
    displayName = displayName,
    description = description,
    icon = icon,
    displays = {}
  };
  end
end

function WeakAuras.RegisterDisplay(addon, data, force)
  tinsert(from_files, {addon, data, force});
end

function WeakAuras.AddManyFromAddons(table)
  for _, addData in ipairs(table) do
  WeakAuras.AddFromAddon(addData[1], addData[2], addData[3]);
  end
end

function WeakAuras.AddFromAddon(addon, data, force)
  local id = data.id;
  if(id and addons[addon]) then
  addons[addon].displays[id] = data;
  if(db.registered[id]) then
    -- This display was already registered
    -- It is unnecessary to add it again
  elseif(force and not db.registered[id] == false) then
    if(db.displays[id]) then
    -- ID collision
    collisions[id] = {addon, data};
    else
    db.registered[id] = addon;
    WeakAuras.Add(data);
    end
  end
  end
end

function WeakAuras.CollisionResolved(addon, data, force)
  WeakAuras.AddFromAddon(addon, data, force);
end

function WeakAuras.IsDefinedByAddon(id)
  return db.registered[id];
end

function WeakAuras.ResolveCollisions(onFinished)
  local num = 0;
  for id, _ in pairs(collisions) do
  num = num + 1;
  end
  
  if(num > 0) then
  local baseText;
  local buttonText;
  if(registeredFromAddons) then
    if(num == 1) then
    baseText = L["Resolve collisions dialog singular"];
    buttonText = L["Done"];
    else
    baseText = L["Resolve collisions dialog"];
    buttonText = L["Next"];
    end
  else
    if(num == 1) then
    baseText = L["Resolve collisions dialog startup singular"];
    buttonText = L["Done"];
    else
    baseText = L["Resolve collisions dialog startup"];
    buttonText = L["Next"];
    end
  end
  
  local resolved = {};
  local numResolved = 0;
  local currentId = next(collisions);
  
  local function UpdateText(popup)
    popup.text:SetText(baseText..(numResolved or "error").."/"..(num or "error"));
  end
  
  StaticPopupDialogs["WEAKAURAS_RESOLVE_COLLISIONS"] = {
    text = baseText,
    button1 = buttonText,
    OnAccept = function(self)
    -- Do the collision resolution
    local newId = self.editBox:GetText();
    if(WeakAuras.OptionsFrame and WeakAuras.OptionsFrame() and WeakAuras.displayButtons and WeakAuras.displayButtons[currentId]) then
      WeakAuras.displayButtons[currentId].callbacks.OnRenameAction(newId)
    else
      local data = WeakAuras.GetData(currentId);
      if(data) then
      WeakAuras.Rename(data, newId);
      else
      print("Data not found");
      end
    end
    
    WeakAuras.CollisionResolved(collisions[currentId][1], collisions[currentId][2], true);
    resolved[currentId] = newId;
    numResolved = numResolved + 1;
    
    -- Get the next id to resolve
    currentId = next(collisions, currentId);
    if(currentId) then
      -- There is another conflict to resolve - hook OnHide to reshow the dialog as soon as it hides
      self:SetScript("OnHide", function(self)
      self:Show();
      UpdateText(self);
      self.editBox:SetText(currentId);
      self:SetScript("OnHide", nil);
      if not(next(collisions, currentId)) then
        self.button1:SetText(L["Done"]);
      end
      end);
    else
      self.editBox:SetScript("OnTextChanged", nil);
      wipe(collisions);
      if(onFinished) then
      onFinished();
      end
    end
    end,
    hasEditBox = true,
    hasWideEditBox = true,
    hideOnEscape = true,
    whileDead = true,
    showAlert = true,
    timeout = 0,
    preferredindex = STATICPOPUP_NUMDIALOGS
  };
  
  local popup = StaticPopup_Show("WEAKAURAS_RESOLVE_COLLISIONS");
  popup.editBox:SetScript("OnTextChanged", function(self)
    local newid = self:GetText();
    if(collisions[newid] or db.displays[newid]) then
    popup.button1:Disable();
    else
    popup.button1:Enable();
    end
  end);
  popup.editBox:SetText(currentId);
  popup.text:SetJustifyH("left");
  popup.icon:SetTexture("Interface\\Addons\\WeakAuras\\icon.tga");
  popup.icon:SetVertexColor(0.833, 0, 1);
  
  UpdateText(popup);
  elseif(onFinished) then
    onFinished();
  end
end

-- Takes as input a table of display data and attempts to update it to be compatible with the current version
function WeakAuras.Modernize(data)
  -- Add trigger count
  if not data.numTriggers then
    data.numTriggers = 1 + (data.additional_triggers and #data.additional_triggers or 0)
  end
  
  local load = data.load;
  -- Convert load options into single/multi format
  for index, prototype in pairs(WeakAuras.load_prototype.args) do
    local protoname = prototype.name;
    if(prototype.type == "multiselect") then
      if(not load[protoname] or type(load[protoname]) ~= "table") then
        local value = load[protoname];
        load[protoname] = {};
        if(value) then
          load[protoname].single = value;
        end
      end
      load[protoname].multi = load[protoname].multi or {};
    elseif(load[protoname] and type(load[protoname]) == "table") then
      load[protoname] = nil;
    end
  end
  
  for _, triggerSystem in pairs(triggerSystems) do
    triggerSystem.Modernize(data);
  end

  -- Change English-language class tokens to locale-agnostic versions
  local class_agnosticize = {
  ["Death Knight"] = "DEATHKNIGHT",
  ["Druid"] = "DRUID",
  ["Hunter"] = "HUNTER",
  ["Mage"] = "MAGE",
  ["Monk"] = "MONK",
  ["Paladin"] = "PALADIN",
  ["Priest"] = "PRIEST",
  ["Rogue"] = "ROGUE",
  ["Shaman"] = "SHAMAN",
  ["Warlock"] = "WARLOCK",
  ["Warrior"] = "WARRIOR"
  };
  if(load.class.single) then
    load.class.single = class_agnosticize[load.class.single] or load.class.single;
  end
  if(load.class.multi) then
    for i,v in pairs(load.class.multi) do
      if(class_agnosticize[i]) then
        load.class.multi[class_agnosticize[i]] = true;
        load.class.multi[i] = nil;
      end
    end
  end

  --upgrade to support custom trigger combination logic
  if (data.disjunctive == true) then
    data.disjunctive = "any";
  end
  if(data.disjunctive == false) then
    data.disjunctive = "all";
  end
  
  -- Add dynamic text info to Progress Bars
  -- Also convert custom displayText to new displayText
  if(data.regionType == "aurabar") then
    data.displayTextLeft = data.displayTextLeft or (not data.auto and data.displayText) or "%n";
    data.displayTextRight = data.displayTextRight or "%p";
  end
  
  -- Add dynamic text info to icons
  -- Also convert alpha to color
  if(data.regionType == "icon") then
    data.displayStacks = data.displayStacks or "%s";
    if(not data.color) then
      data.color = {1, 1, 1, data.alpha};
    end
  end
  
  -- Convert Timers to Texts
  if(data.regionType == "timer") then
    data.regionType = "text";
    data.displayText = "%p";
  end
  
  -- Upgrade some old variables
  if data.regionType == "aurabar" then
    -- "border" changed to "borderEdge"
    if data.border and type(data.border) ~= "boolean" then
      data.borderEdge = data.border;
      data.border = data.borderEdge ~= "None";
    end
    -- Multiple text settings
    if data.textColor then
      if not data.timerColor then
        data.timerColor = {};
        data.timerColor[1] = data.textColor[1];
        data.timerColor[2] = data.textColor[2];
        data.timerColor[3] = data.textColor[3];
        data.timerColor[4] = data.textColor[4];
      end
      if not data.stacksColor then
        data.stacksColor = {};
        data.stacksColor[1] = data.textColor[1];
        data.stacksColor[2] = data.textColor[2];
        data.stacksColor[3] = data.textColor[3];
        data.stacksColor[4] = data.textColor[4];
      end
    end
    -- Multiple text settings
    if data.font then
      if not data.textFont then
        data.textFont = data.font;
      end
      if not data.timerFont then
        data.timerFont = data.font;
      end
      if not data.stacksFont then
        data.stacksFont = data.font;
      end
      
      data.font = nil;
    end
    -- Multiple text settings
    if data.fontSize then
      if not data.textSize then
        data.textSize = data.fontSize;
      end
      if not data.timerSize then
        data.timerSize = data.fontSize;
      end
      if not data.stacksSize then
        data.stacksSize = data.fontSize;
      end
      
      data.fontSize = nil;
    end
    
    -- fontFlags (outline)
    if not data.fontFlags then
        data.fontFlags = "OUTLINE";
    end
  end

  if (not data.activeTriggerMode) then
    data.activeTriggerMode = 0;
  end

  if (data.conditions) then
    for conditionIndex, condition in ipairs(data.conditions) do
      if (not condition.check) then
        condition.check = {
          ["trigger"] = condition.trigger,
          ["variable"] = condition.condition,
          ["op"] = condition.op,
          ["value"] = condition.value
        };
        condition.trigger = nil;
        condition.condition = nil;
        condition.op = nil;
        condition.value = nil;
      end
    end
  end
end

function WeakAuras.SyncParentChildRelationships(silent)
  local childToParent = {};
  local parentToChild = {};
  for id, data in pairs(db.displays) do
  if(data.parent) then
    if(data.controlledChildren) then
    if not(silent) then
      print("|cFF8800FFWeakAuras|r detected desynchronization in saved variables:", id, "has both child and parent");
    end
    -- A display cannot have both children and a parent
    data.parent = nil;
    elseif(db.displays[data.parent] and db.displays[data.parent].controlledChildren) then
    childToParent[id] = data.parent;
    parentToChild[data.parent] = parentToChild[data.parent] or {};
    parentToChild[data.parent][id] = true;
    else
    if not(silent) then
      print("|cFF8800FFWeakAuras|r detected desynchronization in saved variables:", id, "has a nonexistent parent");
    end
    data.parent = nil;
    end
  end
  end
  
  for id, data in pairs(db.displays) do
  if(data.controlledChildren) then
    for index, childId in pairs(data.controlledChildren) do
    if not(childToParent[childId] and childToParent[childId] == id) then
      if not(silent) then
      print("|cFF8800FFWeakAuras|r detected desynchronization in saved variables:", id, "thinks it controls", childId, "but does not");
      end
      tremove(data.controlledChildren, index);
    end
    end
    
    if(parentToChild[id]) then
    for childId, _ in pairs(parentToChild[id]) do
      if not(tContains(data.controlledChildren, childId)) then
      if not(silent) then
        print("|cFF8800FFWeakAuras|r detected desynchronization in saved variables:", id, "does not control", childId, "but should");
      end
      tinsert(data.controlledChildren, childId);
      end
    end
    end
  end
  end
end

function WeakAuras.AddMany(table)
  local idtable = {};
  for _, data in ipairs(table) do
  idtable[data.id] = data;
  end
  local loaded = {};
  local function load(id, depends)
  local data = idtable[id];
  if(data.parent) then
    if(idtable[data.parent]) then
    if(tContains(depends, data.parent)) then
      error("Circular dependency in WeakAuras.AddMany between "..tconcat(depends, ", "));
    else
      if not(loaded[data.parent]) then
      local dependsOut = {};
      for i,v in pairs(depends) do
        dependsOut[i] = v;
      end
      tinsert(dependsOut, data.parent);
      load(data.parent, dependsOut);
      end
    end
    else
    data.parent = nil;
    end
  end
  if not(loaded[id]) then
    WeakAuras.Add(data);
    loaded[id] = true;
  end
  end
  for id, data in pairs(idtable) do
  load(id, {});
  end
  for id, data in pairs(idtable) do
  if(data.regionType == "dynamicgroup") then
    WeakAuras.Add(data);
    regions[id].region:ControlChildren();
  end
  end
end

-- Dummy add function to protect errors from propagating out of the real add function
function WeakAuras.Add(data)
  WeakAuras.Modernize(data);
  WeakAuras.pAdd(data);
  -- local status, err = pcall(WeakAuras.pAdd, data);
  -- if not(status) then
  -- local id = type(data.id) == "string" and data.id or "WeakAurasOptions tempGroup";
  -- print("|cFFFF0000WeakAuras "..id..": "..err);
  -- debug(id..": "..err, 3);
  -- debug(debugstack(1, 6));
  -- WeakAurasFrame:Hide();
  -- error(err);
  -- end
end

function WeakAuras.pAdd(data)
  local id = data.id;
  if not(id) then
    error("Improper arguments to WeakAuras.Add - id not defined");
  elseif (data.controlledChildren) then
    WeakAuras.SetRegion(data);
  else
    for _, triggerSystem in pairs(triggerSystems) do
      triggerSystem.Add(data, region);
    end

    local region = WeakAuras.SetRegion(data);
    if (WeakAuras.clones[id]) then
      for cloneId, _ in pairs(WeakAuras.clones[id]) do
        WeakAuras.SetRegion(data, cloneId);
      end
    end
 
    data.init_completed = nil;
    data.load = data.load or {};
    data.actions = data.actions or {};
    data.actions.init = data.actions.init or {};
    data.actions.start = data.actions.start or {};
    data.actions.finish = data.actions.finish or {};
    local loadFuncStr = WeakAuras.ConstructFunction(load_prototype, data.load);
    local loadFunc = WeakAuras.LoadFunction(loadFuncStr);
    local triggerLogicFunc = WeakAuras.LoadFunction("return "..(data.customTriggerLogic or ""));
    local checkConditionsFuncStr = WeakAuras.ConstructConditionFunction(data);
    local checkCondtionsFunc = checkConditionsFuncStr and WeakAuras.LoadFunction(checkConditionsFuncStr);
    clones[id] = clones[id] or {};
    loadFuncs[id] = loadFunc;
    checkConditions[id] = checkCondtionsFunc;

    if (timers[id]) then
      for _, trigger in pairs(timers[id]) do
        for _, record in pairs(trigger) do
          if (record.handle) then
            timer:CancelTimer(record.handle);
          end
        end
      end
      timers[id] = nil;
    end

    triggerState[id] = {};
    triggerState[id].disjunctive = data.numTriggers > 1 and data.disjunctive or "all";
    triggerState[id].numTriggers = data.numTriggers;
    triggerState[id].activeTriggerMode = data.activeTriggerMode or 0;
    triggerState[id].triggerLogicFunc = triggerLogicFunc;
    triggerState[id].triggers = {};
    triggerState[id].activatedConditions = {};
    
    if not(paused) then
      region:Collapse();
      WeakAuras.ScanForLoads();
    end
  end
  
  db.displays[id] = data;
end

function WeakAuras.SetRegion(data, cloneId)
  local regionType = data.regionType;
  if not(regionType) then
    error("Improper arguments to WeakAuras.SetRegion - regionType not defined");
  else
    if(regionTypes[regionType]) then
      local id = data.id;
      if not(id) then
        error("Improper arguments to WeakAuras.SetRegion - id not defined");
      else
        local region;
        if(cloneId) then
          region = clones[id][cloneId];
        else
        if((not regions[id]) or (not regions[id].region) or regions[id].regionType ~= regionType) then
          region = regionTypes[regionType].create(frame, data);
          regions[id] = {
            regionType = regionType,
            region = region
          };
        else
          region = regions[id].region;
        end

        region.id = id;
        region.cloneId = "";

      end
      WeakAuras.validate(data, regionTypes[regionType].default);

      local parent = frame;
      if(data.parent) then
        if(regions[data.parent]) then
          parent = regions[data.parent].region;
        else
          data.parent = nil;
        end
      end

      local anim_cancelled = WeakAuras.CancelAnimation(region, true, true, true, true, true);
      local pSelfPoint, pAnchor, pAnchorPoint, pX, pY = region:GetPoint(1);

      regionTypes[regionType].modify(parent, region, data);


      if(data.parent and db.displays[data.parent] and db.displays[data.parent].regionType == "dynamicgroup" and pSelfPoint and pAnchor and pAnchorPoint and pX and pY) then
        region:ClearAllPoints();
        region:SetPoint(pSelfPoint, pAnchor, pAnchorPoint, pX, pY);
      end

      data.animation = data.animation or {};
      data.animation.start = data.animation.start or {type = "none"};
      data.animation.main = data.animation.main or {type = "none"};
      data.animation.finish = data.animation.finish or {type = "none"};
      if(WeakAuras.CanHaveDuration(data)) then
        data.animation.start.duration_type = data.animation.start.duration_type or "seconds";
        data.animation.main.duration_type = data.animation.main.duration_type or "seconds";
        data.animation.finish.duration_type = data.animation.finish.duration_type or "seconds";
      else
        data.animation.start.duration_type = "seconds";
        data.animation.main.duration_type = "seconds";
        data.animation.finish.duration_type = "seconds";
      end

      local startMainAnimation = function()
        WeakAuras.Animate("display", data, "main", data.animation.main, region, false, nil, true, cloneId);
      end

      region.toShow = true;
      local hideRegion;
      if(data.parent and db.displays[data.parent] and db.displays[data.parent].regionType == "dynamicgroup") then
        hideRegion = function()
          region:Hide();
          if (cloneId) then
            WeakAuras.ReleaseClone(id, cloneId, regionType);
          end
          parent:ControlChildren();
        end
      else
        hideRegion = function()
          region:Hide();
          if (cloneId) then
            WeakAuras.ReleaseClone(id, cloneId, regionType);
          end
        end
      end

      if(data.parent and db.displays[data.parent] and db.displays[data.parent].regionType == "dynamicgroup") then
        if not(cloneId) then
          parent:PositionChildren();
        end
        function region:Collapse()
          if (not region.toShow) then
            return;
          end
          region.toShow = false;
          WeakAuras.PerformActions(data, "finish", region);
          WeakAuras.Animate("display", data, "finish", data.animation.finish, region, false, hideRegion, nil, cloneId);
          parent:ControlChildren();
        end
        function region:Expand()
          if (region.toShow) then
            return;
          end
          region.toShow = true;

          if(region.PreShow) then
            region:PreShow();
          end

          parent:EnsureTrays();
          region.justCreated = nil;
          WeakAuras.PerformActions(data, "start", region);
          if not(WeakAuras.Animate("display", data, "start", data.animation.start, region, true, startMainAnimation, nil, cloneId)) then
            startMainAnimation();
          end
          parent:ControlChildren();
        end
      elseif not(data.controlledChildren) then
        function region:Collapse()
          if (not region.toShow) then
            return;
          end
          region.toShow = false;

          WeakAuras.PerformActions(data, "finish", region);
          if (not WeakAuras.Animate("display", data, "finish", data.animation.finish, region, false, hideRegion, nil, cloneId)) then
            region:Hide();
          end

          if data.parent and db.displays[data.parent] and db.displays[data.parent].regionType == "group" then
            parent:UpdateBorder(region);
          end
        end
        function region:Expand()
          if (region.toShow) then
            return;
          end
          region.toShow = true;

          region.justCreated = nil;
          if(region.PreShow) then
            region:PreShow();
          end
          region:Show();
          WeakAuras.PerformActions(data, "start", region);
          if not(WeakAuras.Animate("display", data, "start", data.animation.start, region, true, startMainAnimation, nil, cloneId)) then
            startMainAnimation();
          end

          if data.parent and db.displays[data.parent] and db.displays[data.parent].regionType == "group" then
            parent:UpdateBorder(region);
          end
        end
      end
      -- Stubs that allow for polymorphism
      if not region.Collapse then
        function region:Collapse() end
      end
      if not region.Expand then
        function region:Expand() end
      end

      if(cloneId) then
        clonePool[regionType] = clonePool[regionType] or {};
        region:SetScript("OnShow", function()
          if (not region.toShow) then
            if (not WeakAuras.IsOptionsOpen()) then
              region:Hide();
            end
          end
        end);
      end

      if(anim_cancelled) then
        startMainAnimation();
      end

      return region;
      end
    else
      error("Improper arguments to WeakAuras.CreateRegion - regionType \""..data.regionType.."\" is not supported");
    end
  end
end

function WeakAuras.EnsureClone(id, cloneId)
  clones[id] = clones[id] or {};
  if not(clones[id][cloneId]) then
    local data = WeakAuras.GetData(id);
    if(clonePool[data.regionType] and clonePool[data.regionType][1]) then
      clones[id][cloneId] = tremove(clonePool[data.regionType]);
    else
      local clone = regionTypes[data.regionType].create(frame, data);
      clone:Hide();
      clones[id][cloneId] = clone;
    end

    WeakAuras.SetRegion(data, cloneId);
    clones[id][cloneId].justCreated = true;
    clones[id][cloneId].id = id;
    clones[id][cloneId].cloneId = cloneId;
  end

  return clones[id][cloneId];
end

function WeakAuras.GetRegion(id, cloneId)
  if(cloneId and cloneId ~= "") then
    return WeakAuras.EnsureClone(id, cloneId);
   end
  return WeakAuras.regions[id].region;
end

function WeakAuras.CollapseAllClones(id, triggernum)
  if(clones[id]) then
    for i,v in pairs(clones[id]) do
      v:Collapse();
    end
  end
end

function WeakAuras.SetAllStatesHidden(id, triggernum)
  local triggerState = WeakAuras.GetTriggerStateForTrigger(id, triggernum);
  for id, state in pairs(triggerState) do
    state.show = false;
    state.change = true;
  end
end

function WeakAuras.SetAllStatesHiddenExcept(id, triggernum, list)
  local triggerState = WeakAuras.GetTriggerStateForTrigger(id, triggernum);
  for cloneId, state in  pairs(triggerState) do
    if (not (list[cloneId])) then
      state.show = false;
      state.changed = true;
    end
  end
end

function WeakAuras.ReleaseClone(id, cloneId, regionType)
  local region = clones[id][cloneId];
  clones[id][cloneId] = nil;
  clonePool[regionType][#clonePool[regionType]] = region;
end

-- This function is currently never called if WeakAuras is paused, but it is set up so that it can take a different action
-- if it is called while paused. This is simply because it used to need to deal with that contingency and there's no reason
-- to delete that code (it could be useful in the future)
function WeakAuras.Announce(message, output, _, extra, id, type)
  if(paused) then
  local pausedMessage = "WeakAuras would announce \"%s\" to %s because %s %s, but did not because it is paused.";
  pausedMessage = pausedMessage:format(message, output..(extra and " "..extra or ""), id or "error", type == "start" and "was shown" or type == "finish" and "was hidden" or "error");
  else
  SendChatMessage(message, output, _, extra);
  end
end

function WeakAuras.PerformActions(data, type, region)
  if not(paused or squelch_actions) then
  local actions;
  if(type == "start") then
    actions = data.actions.start;
  elseif(type == "finish") then
    actions = data.actions.finish;
  else
    return;
  end
  
  if(actions.do_message and actions.message_type and actions.message) then
    if(actions.message_type == "PRINT") then
    elseif(actions.message_type == "COMBAT") then
    if(CombatText_AddMessage) then
      CombatText_AddMessage(actions.message, COMBAT_TEXT_SCROLL_FUNCTION, actions.r or 1, actions.g or 1, actions.b or 1);
    end
    elseif(actions.message_type == "WHISPER") then
    if(actions.message_dest) then
      if(actions.message_dest == "target" or actions.message_dest == "'target'" or actions.message_dest == "\"target\"" or actions.message_dest == "%t" or actions.message_dest == "'%t'" or actions.message_dest == "\"%t\"") then
      WeakAuras.Announce(actions.message, "WHISPER", nil, UnitName("target"), data.id, type);
      else
      WeakAuras.Announce(actions.message, "WHISPER", nil, actions.message_dest, data.id, type);
      end
    end
    elseif(actions.message_type == "CHANNEL") then
    local channel = actions.message_channel and tonumber(actions.message_channel);
    if(GetChannelName(channel)) then
      WeakAuras.Announce(actions.message, "CHANNEL", nil, channel, data.id, type);
    end
    elseif(actions.message_type == "SMARTRAID") then
    if UnitInBattleground("player") then
      SendChatMessage(actions.message, "INSTANCE_CHAT")
    elseif UnitInRaid("player") then
      SendChatMessage(actions.message, "RAID")
    elseif UnitInParty("player") then
      SendChatMessage(actions.message, "PARTY")
    else
      SendChatMessage(actions.message, "SAY")
    end      
    else
    WeakAuras.Announce(actions.message, actions.message_type, nil, nil, data.id, type);
    end
  end
  
  if(actions.do_sound and actions.sound) then
    if(actions.sound == " custom") then
    if(actions.sound_path) then
      PlaySoundFile(actions.sound_path, actions.sound_channel);
    end
    else
    PlaySoundFile(actions.sound, actions.sound_channel);
    end
  end
  
  if(actions.do_custom and actions.custom) then
    local func = WeakAuras.LoadFunction("return function() "..(actions.custom).." end");
    if func then
      WeakAuras.ActivateAuraEnvironment(region.id, region.cloneId, region.state);
      func();
      WeakAuras.ActivateAuraEnvironment(nil);
    end
  end
  
  if(actions.do_glow and actions.glow_action and actions.glow_frame) then
    local glow_frame;
    if(actions.glow_frame:sub(1, 10) == "WeakAuras:") then
    local frame_name = actions.glow_frame:sub(11);
    if(regions[frame_name]) then
      glow_frame = regions[frame_name].region;
    end
    else
    glow_frame = _G[actions.glow_frame];
    end
    
    if(glow_frame) then
    if(actions.glow_action == "show") then
      ActionButton_ShowOverlayGlow(glow_frame);
    elseif(actions.glow_action == "hide") then
      ActionButton_HideOverlayGlow(glow_frame);
    end
    end
  end
  end
end

local updatingAnimations;
local last_update = GetTime();
function WeakAuras.UpdateAnimations()
  for groupId, groupRegion in pairs(pending_controls) do
      pending_controls[groupId] = nil
      groupRegion:DoControlChildren()
  end
  local time = GetTime()
  local elapsed = time - last_update
  last_update = time
  local num = 0
  for id, anim in pairs(animations) do
      num = num + 1
      local finished = false
      if (anim.duration_type == "seconds") then
          anim.progress = anim.progress + (elapsed / anim.duration)
          if (anim.progress >= 1) then
              anim.progress = 1
              finished = true
          end
      elseif (anim.duration_type == "relative") then
        local state = anim.region.state;

        if ((state.progressType == "timed" and state.duration < 0.01)
            or (state.progressType == "static" and state.value < 0.01)) then
          anim.progress = 0;
          if(anim.type == "start" or anim.type == "finish") then
            finished = true;
          end
          local relativeProgress;
          if(state.progressType == "static") then
            relativeProgress = state.value / state.total;
          else
            relativeProgress = 1 - ((state.expirationTime - time) / state.duration);
          end
          relativeProgress = state.inverseDirection and (1 - relativeProgress) or relativeProgress;
          anim.progress = relativeProgress / anim.duration
          local iteration = math.floor(anim.progress);
          --anim.progress = anim.progress - iteration;
          if not(anim.iteration) then
            anim.iteration = iteration;
          elseif(anim.iteration ~= iteration) then
            anim.iteration = nil;
            finished = true;
          end
        end
      else
          anim.progress = 1
      end
      local progress = anim.inverse and (1 - anim.progress) or anim.progress
      WeakAuras.ActivateAuraEnvironment(anim.name, anim.cloneId, anim.region.state);
      if (anim.translateFunc) then
          anim.region:ClearAllPoints()
          anim.region:SetPoint(
              anim.selfPoint,
              anim.anchor,
              anim.anchorPoint,
              anim.translateFunc(progress, anim.startX, anim.startY, anim.dX, anim.dY)
          )
      end
      if (anim.alphaFunc) then
          anim.region:SetAlpha(anim.alphaFunc(progress, anim.startAlpha, anim.dAlpha))
      end
      if (anim.scaleFunc) then
          local scaleX, scaleY = anim.scaleFunc(progress, 1, 1, anim.scaleX, anim.scaleY)
          if (anim.region.Scale) then
              anim.region:Scale(scaleX, scaleY)
          else
              anim.region:SetWidth(anim.startWidth * scaleX)
              anim.region:SetHeight(anim.startHeight * scaleY)
          end
      end
      if (anim.rotateFunc and anim.region.Rotate) then
          anim.region:Rotate(anim.rotateFunc(progress, anim.startRotation, anim.rotate))
      end
      if (anim.colorFunc and anim.region.Color) then
          anim.region:Color(
              anim.colorFunc(
                  progress,
                  anim.startR,
                  anim.startG,
                  anim.startB,
                  anim.startA,
                  anim.colorR,
                  anim.colorG,
                  anim.colorB,
                  anim.colorA
              )
          )
      end
      WeakAuras.ActivateAuraEnvironment(nil)
      if (finished) then
          if not (anim.loop) then
              if (anim.startX) then
                  anim.region:SetPoint(anim.selfPoint, anim.anchor, anim.anchorPoint, anim.startX, anim.startY)
              end
              if (anim.startAlpha) then
                  anim.region:SetAlpha(anim.startAlpha)
              end
              if (anim.startWidth) then
                  if (anim.region.Scale) then
                      anim.region:Scale(1, 1)
                  else
                      anim.region:SetWidth(anim.startWidth)
                      anim.region:SetHeight(anim.startHeight)
                  end
              end
              if (anim.startRotation) then
                  if (anim.region.Rotate) then
                      anim.region:Rotate(anim.startRotation)
                  end
              end
              if (anim.startR and anim.startG and anim.startB and anim.startA) then
                  if (anim.region.Color) then
                      anim.region:Color(anim.startR, anim.startG, anim.startB, anim.startA)
                  end
              end
              animations[id] = nil
          end

          if (anim.onFinished) then
              anim.onFinished()
          end
      end
  end
  -- I tried to have animations only update if there are actually animation data to animate upon.
  -- This caused all start animations to break, and I couldn't figure out why.
  -- May revisit at a later time.
  --[[if(num == 0) then
  WeakAuras.debug("Animation stopped", 3);
  frame:SetScript("OnUpdate", nil);
  updatingAnimations = nil;
  updatingAnimations = nil;
  end]]
end


function WeakAuras.Animate(namespace, data, type, anim, region, inverse, onFinished, loop, cloneId)
  local id = data.id;
  local key = tostring(region);
  local inAnim = anim;
  local valid;
  if(anim and anim.type == "custom" and anim.duration and (anim.use_translate or anim.use_alpha or (anim.use_scale and region.Scale) or (anim.use_rotate and region.Rotate) or (anim.use_color and region.Color))) then
  valid = true;
  elseif(anim and anim.type == "preset" and anim.preset and anim_presets[anim.preset]) then
  anim = anim_presets[anim.preset];
  valid = true;
  end
  if(valid) then
  local progress, duration, selfPoint, anchor, anchorPoint, startX, startY, startAlpha, startWidth, startHeight, startRotation;
  local startR, startG, startB, startA, translateFunc, alphaFunc, scaleFunc, rotateFunc, colorFunc;
  if(animations[key]) then
    if(animations[key].type == type and not loop) then
    return "no replace";
    end
    anim.x = anim.x or 0;
    anim.y = anim.y or 0;
    selfPoint, anchor, anchorPoint, startX, startY = animations[key].selfPoint, animations[key].anchor, animations[key].anchorPoint, animations[key].startX, animations[key].startY;
    anim.alpha = anim.alpha or 0;
    startAlpha = animations[key].startAlpha;
    anim.scalex = anim.scalex or 1;
    anim.scaley = anim.scaley or 1;
    startWidth, startHeight = animations[key].startWidth, animations[key].startHeight;
    anim.rotate = anim.rotate or 0;
    startRotation = animations[key].startRotation;
    anim.colorR = anim.colorR or 1;
    anim.colorG = anim.colorG or 1;
    anim.colorB = anim.colorB or 1;
    anim.colorA = anim.colorA or 1;
    startR = animations[key].startR;
    startG = animations[key].startG;
    startB = animations[key].startB;
    startA = animations[key].startA;
  else
    anim.x = anim.x or 0;
    anim.y = anim.y or 0;
    selfPoint, anchor, anchorPoint, startX, startY = region:GetPoint(1);
    anim.alpha = anim.alpha or 0;
    startAlpha = region:GetAlpha();
    anim.scalex = anim.scalex or 1;
    anim.scaley = anim.scaley or 1;
    startWidth, startHeight = region:GetWidth(), region:GetHeight();
    anim.rotate = anim.rotate or 0;
    startRotation = region.GetRotation and region:GetRotation() or 0;
    anim.colorR = anim.colorR or 1;
    anim.colorG = anim.colorG or 1;
    anim.colorB = anim.colorB or 1;
    anim.colorA = anim.colorA or 1;
    if(region.GetColor) then
    startR, startG, startB, startA = region:GetColor();
    else
    startR, startG, startB, startA = 1, 1, 1, 1;
    end
  end
  
  if(anim.use_translate) then
    if not(anim.translateType == "custom" and anim.translateFunc) then
    anim.translateType = anim.translateType or "straightTranslate";
    anim.translateFunc = anim_function_strings[anim.translateType] or anim_function_strings.straightTranslate;
    end
    translateFunc = WeakAuras.LoadFunction(anim.translateFunc);
  else
    region:SetPoint(selfPoint, anchor, anchorPoint, startX, startY);
  end
  if(anim.use_alpha) then
    if not(anim.alphaType == "custom" and anim.alphaFunc) then
    anim.alphaType = anim.alphaType or "straight";
    anim.alphaFunc = anim_function_strings[anim.alphaType] or anim_function_strings.straight;
    end
    alphaFunc = WeakAuras.LoadFunction(anim.alphaFunc);
  else
    region:SetAlpha(startAlpha);
  end
  if(anim.use_scale) then
    if not(anim.scaleType == "custom" and anim.scaleFunc) then
    anim.scaleType = anim.scaleType or "straightScale";
    anim.scaleFunc = anim_function_strings[anim.scaleType] or anim_function_strings.straightScale;
    end
    scaleFunc = WeakAuras.LoadFunction(anim.scaleFunc);
  elseif(region.Scale) then
    region:Scale(1, 1);
  end
  if(anim.use_rotate) then
    if not(anim.rotateType == "custom" and anim.rotateFunc) then
    anim.rotateType = anim.rotateType or "straight";
    anim.rotateFunc = anim_function_strings[anim.rotateType] or anim_function_strings.straight;
    end
    rotateFunc = WeakAuras.LoadFunction(anim.rotateFunc);
  elseif(region.Rotate) then
    region:Rotate(startRotation);
  end
  if(anim.use_color) then
    if not(anim.colorType == "custom" and anim.colorFunc) then
    anim.colorType = anim.colorType or "straightColor";
    anim.colorFunc = anim_function_strings[anim.colorType] or anim_function_strings.straightColor;
    end
    colorFunc = WeakAuras.LoadFunction(anim.colorFunc);
  elseif(region.Color) then
    region:Color(startR, startG, startB, startA);
  end
  
  duration = WeakAuras.ParseNumber(anim.duration) or 0;
  progress = 0;
  if(namespace == "display" and type == "main" and not onFinished and not anim.duration_type == "relative") then
    local data = WeakAuras.GetData(id);
    if(data and data.parent) then
    local parentRegion = regions[data.parent].region;
    if(parentRegion and parentRegion.controlledRegions) then
      for index, regionData in pairs(parentRegion.controlledRegions) do
      local childRegion = regionData.region;
      local childKey = regionData.key;
      if(
        childKey
        and childKey ~= tostring(region)
        and animations[childKey]
        and animations[childKey].type == "main"
        and duration == animations[childKey].duration
      ) then
        progress = animations[childKey].progress;
        break;
      end
      end
    end
    end
  end
  
  if(loop) then
    onFinished = function() WeakAuras.Animate(namespace, data, type, inAnim, region, inverse, onFinished, loop, cloneId) end
  end
  
  animations[key] = {
    progress = progress,
    startX = startX,
    startY = startY,
    startAlpha = startAlpha,
    startWidth = startWidth,
    startHeight = startHeight,
    startRotation = startRotation,
    startR = startR,
    startG = startG,
    startB = startB,
    startA = startA,
    dX = (anim.use_translate and anim.x),
    dY = (anim.use_translate and anim.y),
    dAlpha = (anim.use_alpha and (anim.alpha - startAlpha)),
    scaleX = (anim.use_scale and anim.scalex),
    scaleY = (anim.use_scale and anim.scaley),
    rotate = anim.rotate,
    colorR = (anim.use_color and anim.colorR),
    colorG = (anim.use_color and anim.colorG),
    colorB = (anim.use_color and anim.colorB),
    colorA = (anim.use_color and anim.colorA),
    translateFunc = translateFunc,
    alphaFunc = alphaFunc,
    scaleFunc = scaleFunc,
    rotateFunc = rotateFunc,
    colorFunc = colorFunc,
    region = region,
    selfPoint = selfPoint,
    anchor = anchor,
    anchorPoint = anchorPoint,
    duration = duration,
    duration_type = anim.duration_type or "seconds",
    inverse = inverse,
    type = type,
    loop = loop,
    onFinished = onFinished,
    name = id,
    cloneId = cloneId or ""
  };
  if not(updatingAnimations) then
    frame:SetScript("OnUpdate", WeakAuras.UpdateAnimations);
    updatingAnimations = true;
  end
  return true;
  else
  if(animations[key]) then
    if(animations[key].type ~= type or loop) then
    WeakAuras.CancelAnimation(region, true, true, true, true, true);
    end
  end
  return false;
  end
end

function WeakAuras.IsAnimating(region)
  local key = tostring(region);
  local anim = animations[key];
  if(anim) then
  return anim.type;
  else
  return nil;
  end
end

function WeakAuras.CancelAnimation(region, resetPos, resetAlpha, resetScale, resetRotation, resetColor, doOnFinished)
  local key = tostring(region);
  local anim = animations[key];

  if(anim) then
  if(resetPos) then
    anim.region:ClearAllPoints();
    anim.region:SetPoint(anim.selfPoint, anim.anchor, anim.anchorPoint, anim.startX, anim.startY);
  end
  if(resetAlpha) then
    anim.region:SetAlpha(anim.startAlpha);
  end
  if(resetScale) then
    if(anim.region.Scale) then
    anim.region:Scale(1, 1);
    else
    anim.region:SetWidth(anim.startWidth);
    anim.region:SetHeight(anim.startHeight);
    end
  end
  if(resetRotation and anim.region.Rotate) then
    anim.region:Rotate(anim.startRotation);
  end
  if(resetColor and anim.region.Color) then
    anim.region:Color(anim.startR, anim.startG, anim.startB, anim.startA);
  end
  
  animations[key] = nil;
  if(doOnFinished and anim.onFinished) then
    anim.onFinished();
  end
  return true;
  else
  return false;
  end
end

function WeakAuras.GetData(id)
  return id and db.displays[id];
end

function WeakAuras.GetTriggerSystem(data, triggernum)
  if (triggernum == 0) then
    return triggerTypes[data.trigger.type];
  elseif (data.additional_triggers and data.additional_triggers[triggernum]) then
    return triggerTypes[data.additional_triggers[triggernum].trigger.type]
  end
  return nil;
end

local function wrapTriggerSystemFunction(functionName, mode)
  local func;
  func = function(data, triggernum)
    if (not triggernum) then
      return func(data, data.activeTriggerMode);
    elseif (triggernum < 0) then
      local result;
      if (mode == "or") then
        result = false;
        for i = 0, data.numTriggers - 1 do
          result = result or func(data, i);
        end
      elseif (mode == "and") then
        result = true;
        for i = 0, data.numTriggers - 1 do
          result = result and func(data, i);
        end
      elseif (mode == "duration") then
        result = false;
        for i = 0, data.numTriggers - 1 do
          local tmp = func(data, i);
          if (tmp) then
            result = tmp;
            break;
          end
        end
      elseif (mode == "nameAndIcon") then
        for i = 0, data.numTriggers - 1 do
          local tmp1, tmp2 = func(data, i);
          if (tmp1) then
            return tmp1, tmp2;
          end
        end
      end
      return result;
    else -- triggernum >= 0
      local triggerSystem = WeakAuras.GetTriggerSystem(data, triggernum);
      if (not triggerSystem) then
        return false;
      end
      return triggerSystem[functionName](data, triggernum);
    end
    return func;
  end

  return func;
end

WeakAuras.CanHaveDuration = wrapTriggerSystemFunction("CanHaveDuration", "duration");
WeakAuras.CanHaveAuto = wrapTriggerSystemFunction("CanHaveAuto", "or");
WeakAuras.CanGroupShowWithZero = wrapTriggerSystemFunction("CanGroupShowWithZero", "or");
WeakAuras.CanHaveClones = wrapTriggerSystemFunction("CanHaveClones", "or");
WeakAuras.CanHaveTooltip = wrapTriggerSystemFunction("CanHaveTooltip", "or");
WeakAuras.GetNameAndIcon = wrapTriggerSystemFunction("GetNameAndIcon", "nameAndIcon");

function WeakAuras.GetTriggerConditions(data)
  local conditions = {};
  for i = 0, data.numTriggers - 1 do
    local triggerSystem = WeakAuras.GetTriggerSystem(data, i);
    if (triggerSystem) then
      conditions[i] = triggerSystem.GetTriggerConditions(data, i);
      conditions[i] = conditions[i] or {};
      conditions[i].show = {
        display = L["Active"],
        type = "bool"
      }
    end
  end
  return conditions;
end

function WeakAuras.CreateFallbackState(id, triggernum, state)
  local data = db.displays[id];
  local triggerSystem = WeakAuras.GetTriggerSystem(data, triggernum);

  if (not triggerSystem) then
    return false;
  end

  triggerSystem.CreateFallbackState(data, triggernum, state);
  if (triggernum == 0) then
    state.trigger = data.trigger;
    state.triggernum = 0;
    state.id = id;
  else
    state.trigger = data.additional_triggers[triggernum];
    state.triggernum = triggernum;
    state.id = id;
  end
end

function WeakAuras.CanShowNameInfo(data)
  if(data.regionType == "aurabar" or data.regionType == "icon" or data.regionType == "text") then
  return true;
  else
  return false;
  end
end

function WeakAuras.CanShowStackInfo(data)
  if(data.regionType == "aurabar" or data.regionType == "icon" or data.regionType == "text") then
  return true;
  else
  return false;
  end
end

function WeakAuras.CorrectSpellName(input)
  local inputId = tonumber(input);
  if(inputId) then
  local name = GetSpellInfo(inputId);
  if(name) then
    return inputId;
  else
    return nil;
  end
  elseif(input) then
  local link;
  if(input:sub(1,1) == "\124") then
    link = input;
  else
    link = GetSpellLink(input);
  end
  if(link) then
    local itemId = link:match("spell:(%d+)");
    return tonumber(itemId);
  else
    return nil;
  end
  end
end

function WeakAuras.CorrectItemName(input)
  local inputId = tonumber(input);
  if(inputId) then
  local name = GetItemInfo(inputId);
  if(name) then
    return inputId;
  else
    return nil;
  end
  elseif(input) then
  local _, link = GetItemInfo(input);
  if(link) then
    local itemId = link:match("item:(%d+)");
    return tonumber(itemId);
  else
    return nil;
  end
  end
end

local currentTooltipRegion;
local currentTooltipOwner;
function WeakAuras.UpdateMouseoverTooltip(region)
  if(region == currentTooltipRegion) then
    WeakAuras.ShowMouseoverTooltip(currentTooltipRegion, currentTooltipOwner);
  end
end

function WeakAuras.ShowMouseoverTooltip(region, owner)
  currentTooltipRegion = region;
  currentTooltipOwner = owner;
  
  GameTooltip:SetOwner(owner, "ANCHOR_NONE");
  GameTooltip:SetPoint("LEFT", owner, "RIGHT");
  GameTooltip:ClearLines();

  local triggerType;
  if (region.state) then
   triggerType = region.state.trigger.type;
  end

  local triggerSystem = triggerType and triggerTypes[triggerType];
  if (not triggerSystem) then 
    return; 
  end

  triggerSystem.SetToolTip(region.state.trigger, region.state);
  GameTooltip:Show();
end

function WeakAuras.HideTooltip()
  currentTooltipRegion = nil;
  currentTooltipOwner = nil;
  currentTooltipType = nil;
  GameTooltip:Hide();
end

do
  local hiddenTooltip;
  function WeakAuras.GetHiddenTooltip()
  if not(hiddenTooltip) then
    hiddenTooltip = CreateFrame("GameTooltip", "WeakAurasTooltip", nil, "GameTooltipTemplate");
    hiddenTooltip:SetOwner(WorldFrame, "ANCHOR_NONE");
    hiddenTooltip:AddFontStrings(
    hiddenTooltip:CreateFontString("$parentTextLeft1", nil, "GameTooltipText"),
    hiddenTooltip:CreateFontString("$parentTextRight1", nil, "GameTooltipText")
    );
  end
  return hiddenTooltip;
  end
end

function WeakAuras.GetAuraTooltipInfo(unit, index, filter)
  local tooltip = WeakAuras.GetHiddenTooltip();
  tooltip:SetUnitAura(unit, index, filter);
  local lines = { tooltip:GetRegions() };
  local tooltipText = lines[12] and lines[12]:GetObjectType() == "FontString" and lines[12]:GetText() or "";
  local debuffType = lines[11] and lines[11]:GetObjectType() == "FontString" and lines[11]:GetText() or "";
  local found = false;
  for i,v in pairs(WeakAuras.debuff_class_types) do
  if(v == debuffType) then
    found = true;
    debuffType = i;
    break;
  end
  end
  if not(found) then
  debuffType = "none";
  end
  local tooltipSize,_;
  if(tooltipText) then
    local n2
    _, _, tooltipSize, n2 = tooltipText:find("(%d+),(%d%d%d)")  -- Blizzard likes american digit grouping, e.g. "9123="9,123"   /mikk
  if tooltipSize then
    tooltipSize = tooltipSize..n2
  else
    _, _, tooltipSize = tooltipText:find("(%d+)")
  end
  end
  return tooltipText, debuffType, tonumber(tooltipSize) or 0;
end


local L = WeakAuras.L;
local function tooltip_draw()
  GameTooltip:ClearLines();
  GameTooltip:AddDoubleLine("WeakAuras", versionString, 0.5333, 0, 1, 1, 1, 1);
  GameTooltip:AddDoubleLine(L["By |cFF69CCF0Mirrored|r of Dragonmaw(US) Horde"], "");
  GameTooltip:AddLine(" ");
  if(WeakAuras.IsOptionsOpen()) then
  GameTooltip:AddLine(L["Click to close configuration"], 0, 1, 1);
  else
  GameTooltip:AddLine(L["Click to open configuration"], 0, 1, 1);
  if(paused) then
    GameTooltip:AddLine("|cFFFF0000"..L["Paused"].." - |cFF00FFFF"..L["Shift-Click to resume"], 0, 1, 1);
  else
    GameTooltip:AddLine(L["Shift-Click to pause"], 0, 1, 1);
  end
  end
  GameTooltip:Show();
end

local colorFrame = CreateFrame("frame");
WeakAuras.frames["LDB Icon Recoloring"] = colorFrame;
local colorElapsed = 0;
local colorDelay = 2;
local r, g, b = 0.8, 0, 1;
local r2, g2, b2 = random(2)-1, random(2)-1, random(2)-1;
local tooltip_update_frame = CreateFrame("FRAME");
WeakAuras.frames["LDB Tooltip Updater"] = tooltip_update_frame;
local Broker_WeakAuras;
Broker_WeakAuras = LDB:NewDataObject("WeakAuras", {
  type = "data source",
  text = "WeakAuras",
  icon = "Interface\\AddOns\\WeakAuras\\icon.tga",
  OnClick = function(self, button)
  if(IsShiftKeyDown()) then
    if not(WeakAuras.IsOptionsOpen()) then
    WeakAuras.Toggle();
    end
  else
    WeakAuras.OpenOptions();
  end  end,
  OnEnter = function(self)
  colorFrame:SetScript("OnUpdate", function(self, elaps)
    colorElapsed = colorElapsed + elaps;
    if(colorElapsed > colorDelay) then
    colorElapsed = colorElapsed - colorDelay;
    r, g, b = r2, g2, b2;
    r2, g2, b2 = random(2)-1, random(2)-1, random(2)-1;
    end
    Broker_WeakAuras.iconR = r + (r2 - r) * colorElapsed / colorDelay;
    Broker_WeakAuras.iconG = g + (g2 - g) * colorElapsed / colorDelay;
    Broker_WeakAuras.iconB = b + (b2 - b) * colorElapsed / colorDelay;
  end);
  
  local elapsed = 0;
  local delay = 1;
  tooltip_update_frame:SetScript("OnUpdate", function(self, elap)
    elapsed = elapsed + elap;
    if(elapsed > delay) then
    elapsed = 0;
    tooltip_draw();
    end
  end);
  
  -- Section the screen into 6 quadrants (sextrants?) and define the tooltip anchor position based on which quadrant the cursor is in
  local max_x = GetScreenWidth();
  local max_y = GetScreenHeight();
  local x, y = GetCursorPosition();
  local horizontal = (x < (max_x/3) and "LEFT") or ((x >= (max_x/3) and x < ((max_x/3)*2)) and "") or "RIGHT";
  local tooltip_vertical = (y < (max_y/2) and "BOTTOM") or "TOP";
  local anchor_vertical = (y < (max_y/2) and "TOP") or "BOTTOM";
  
  GameTooltip:SetOwner(self, "ANCHOR_NONE");
  GameTooltip:SetPoint(tooltip_vertical..horizontal, self, anchor_vertical..horizontal);
  tooltip_draw();
  end,
  OnLeave = function(self)
  colorFrame:SetScript("OnUpdate", nil);
  tooltip_update_frame:SetScript("OnUpdate", nil);
  GameTooltip:Hide();
  end,
  iconR = 0.6,
  iconG = 0,
  iconB = 1
});
 
local FrameTimes = {};
function WeakAuras.ProfileFrames(all)
  UpdateAddOnCPUUsage();
  for name, frame in pairs(WeakAuras.frames) do
  local FrameTime = GetFrameCPUUsage(frame);
  FrameTimes[name] = FrameTimes[name] or 0;
  if(all or FrameTime > FrameTimes[name]) then
    print("|cFFFF0000"..name.."|r -", FrameTime, "-", FrameTime - FrameTimes[name]);
  end
  FrameTimes[name] = FrameTime;
  end
end
 
local DisplayTimes = {};
function WeakAuras.ProfileDisplays(all)
  UpdateAddOnCPUUsage();
  for id, regionData in pairs(WeakAuras.regions) do
  local DisplayTime = GetFrameCPUUsage(regionData.region, true);
  DisplayTimes[id] = DisplayTimes[id] or 0;
  if(all or DisplayTime > DisplayTimes[id]) then
    print("|cFFFF0000"..id.."|r -", DisplayTime, "-", DisplayTime - DisplayTimes[id]);
  end
  DisplayTimes[id] = DisplayTime;
  end
end

function WeakAuras.RegisterTutorial(name, displayName, description, icon, steps, order)
  tutorials[name] = {
  name = name,
  displayName = displayName,
  description = description,
  icon = icon,
  steps = steps,
  order = order
  };
end

do
  local customTextUpdateFrame;
  local updateRegions = {};
  
  local function DoCustomTextUpdates()
  for region, _ in pairs(updateRegions) do
    if(region.UpdateCustomText) then
    if(region:IsVisible()) then
      region.UpdateCustomText();
    end
    else
    updateRegions[region] = nil;
    end
  end
  end
  
  function WeakAuras.InitCustomTextUpdates()
  if not(customTextUpdateFrame) then
    customTextUpdateFrame = CreateFrame("frame");
    customTextUpdateFrame:SetScript("OnUpdate", DoCustomTextUpdates);
  end
  end
  
  function WeakAuras.RegisterCustomTextUpdates(region)
  WeakAuras.InitCustomTextUpdates();
  updateRegions[region] = true;
  end
  
  function WeakAuras.UnregisterCustomTextUpdates(region)
  updateRegions[region] = nil;
  end
  
  function WeakAuras.IsRegisteredForCustomTextUpdates(region)
  return updateRegions[region];
  end
end

function WeakAuras.ValueFromPath(data, path)
  if(#path == 1) then
  return data[path[1]];
  else
  local reducedPath = {};
  for i=2,#path do
    reducedPath[i-1] = path[i];
  end
  return WeakAuras.ValueFromPath(data[path[1]], reducedPath);
  end
end

function WeakAuras.ValueToPath(data, path, value)
  if(#path == 1) then
  data[path[1]] = value;
  else
  local reducedPath = {};
  for i=2,#path do
    reducedPath[i-1] = path[i];
  end
  WeakAuras.ValueToPath(data[path[1]], reducedPath, value);
  end
end

function WeakAuras.FixGroupChildrenOrder()
  for id, data in pairs(db.displays) do
        if(data.controlledChildren) then
      local lowestRegion = WeakAuras.regions[data.controlledChildren[1]] and WeakAuras.regions[data.controlledChildren[1]].region;
      if(lowestRegion) then
        local frameLevel = lowestRegion:GetFrameLevel();
        for i=2,#data.controlledChildren do
          local childRegion = WeakAuras.regions[data.controlledChildren[i]] and WeakAuras.regions[data.controlledChildren[i]].region;
          if(childRegion) then
            frameLevel = frameLevel + 1;
            childRegion:SetFrameLevel(frameLevel);
          end
        end
      end
    end
  end
end

function WeakAuras.ControlChildren(childid)
  local parent = db.displays[childid].parent;
  if (parent and db.displays[parent] and db.displays[parent].regionType == "dynamicgroup") then
    regions[parent].region.ControlChildren();
  end
end

function WeakAuras.SetTempIconCache(name, icon)
  db.tempIconCache[name] = icon;
end

function WeakAuras.GetTempIconCache(name)
  return db.tempIconCache[name];
end

function WeakAuras.RegisterTriggerSystem(types, triggerSystem)
  for _, v in ipairs(types) do
    triggerTypes[v] = triggerSystem;
  end
  tinsert(triggerSystems, triggerSystem);
end

function WeakAuras.GetTriggerStateForTrigger(id, triggernum)
  triggerState[id][triggernum] = triggerState[id][triggernum] or {}
  return triggerState[id][triggernum];
end

local function startStopTimers(id, cloneId, triggernum, state)
  if (state.show) then
    if (state.autoHide and state.duration) then -- autohide, update timer
      timers[id] = timers[id] or {};
      timers[id][triggernum] = timers[id][triggernum] or {};
      timers[id][triggernum][cloneId] = timers[id][triggernum][cloneId] or {};
      local record = timers[id][triggernum][cloneId];
      local createTimer = false;
      if (state.expirationTime == nil) then
        state.expirationTime = GetTime() + state.duration;
        state.resort = true;
      end
      if (record.expirationTime ~= state.expirationTime) then
        if (record.handle ~= nil) then
          timer:CancelTimer(record.handle);
        end

        record.handle = timer:ScheduleTimer(
          function()
            if (state.show ~= false and state.show ~= nil) then
              state.show = false;
              state.changed = true;
              WeakAuras.UpdatedTriggerState(id);
            end
          end,
          state.expirationTime - GetTime() + 0.03);
        record.expirationTime = state.expirationTime;
      end
    else -- no auto hide, delete timer
      if (timers[id] and timers[id][triggernum] and timers[id][triggernum][cloneId]) then
        local record = timers[id][triggernum][cloneId];
        if (record.handle) then
          timer:CancelTimer(record.handle);
        end
        record.handle = nil;
        record.expirationTime = nil;
      end
    end
  else -- not shown
    if(timers[id] and timers[id][triggernum] and timers[id][triggernum][cloneId]) then
      local record = timers[id][triggernum][cloneId];
      if (record.handle) then
        timer:CancelTimer(record.handle);
      end
      record.handle = nil;
      record.expirationTime = nil;
    end
  end
end

local function ApplyStateToRegion(id, region, state)
  region.state = state;
  if(region.SetDurationInfo) then
    if (state.progressType == "timed") then
      local now = GetTime();
      local value = math.huge - now;
      if (state.expirationTime and state.expirationTime > 0) then
        value = state.expirationTime - now;
      end
      local total = state.duration or 0
      local func = nil;

      region:SetDurationInfo(total,
                             now + value,
                             func,
                             state.inverseDirection);
    elseif (state.progressType == "static") then
      local value = state.value or 0;
      local total = state.total or 0;
      local durationFunc = state.durationFunc or true;

      region:SetDurationInfo(value, total, durationFunc or true, state.inverseDirection);
    else
      -- Do nothing, should ideally clear duration info on region
    end
  end
  if (state.resort) then
    WeakAuras.ControlChildren(region.id);
    state.resort = false;
  end
  if(region.SetName) then
    region:SetName(state.name);
  end
  if(region.SetIcon) then
    region:SetIcon(state.icon or "Interface\\Icons\\INV_Misc_QuestionMark");
  end
  if(region.SetStacks) then
    region:SetStacks(state.stacks);
  end
  if(region.UpdateCustomText and not WeakAuras.IsRegisteredForCustomTextUpdates(region)) then
    region.UpdateCustomText();
  end
  WeakAuras.UpdateMouseoverTooltip(region);
  region:Expand();
end

-- Fallbacks if the states are empty
local emptyState = {};
emptyState[""] = {};

local function applyToTriggerStateTriggers(stateShown, id, triggernum)
  if (stateShown and not triggerState[id].triggers[triggernum + 1]) then
    triggerState[id].triggers[triggernum + 1] = true;
    triggerState[id].triggerCount = triggerState[id].triggerCount + 1;
    return true;
  elseif (not stateShown and triggerState[id].triggers[triggernum + 1]) then
    -- Check if any other clone is shown
    local anyCloneShown = false;
    for _, state in pairs(triggerState[id][triggernum]) do
      if (state.show) then
        anyCloneShown = true;
        break;
      end
    end
    if (not anyCloneShown) then
      triggerState[id].triggers[triggernum + 1] = false;
      triggerState[id].triggerCount = triggerState[id].triggerCount - 1;
      return true;
    end
  end
  return false;
end

local function evaluateTriggerStateTriggers(id)
  if(triggerState[id].disjunctive == "any" and triggerState[id].triggerCount > 0
      or (triggerState[id].disjunctive == "all" and triggerState[id].triggerCount == triggerState[id].numTriggers)
      or (triggerState[id].disjunctive == "custom"
          and triggerState[id].triggerLogicFunc
          and triggerState[id].triggerLogicFunc(triggerState[id].triggers))
    ) then
    return true;
  end
  return false;
end

local function ApplyStatesToRegions(id, triggernum, states)
  -- Show new clones
  local visibleRegion = false;
  for cloneId, state in pairs(states) do
    if (state.show) then
      visibleRegion = true;
      local region = WeakAuras.GetRegion(id, cloneId);
      if (not region.toShow or state.changed or region.state ~= state) then
        ApplyStateToRegion(id, region, state);
      end

      if (checkConditions[id]) then -- Even if this state has not changed
        checkConditions[id](region);
      end
    end
  end

  if (visibleRegion) then
    if (not states[""] or not states[""].show) then
      WeakAuras.regions[id].region:Collapse();
    end
  else
    -- no visible region, fallback to a fallback state
    fallbacksStates[id] = fallbacksStates[id] or {};
    fallbacksStates[id][triggernum] =  fallbacksStates[id][triggernum] or {};
    WeakAuras.CreateFallbackState(id, triggernum, fallbacksStates[id][triggernum])
    ApplyStateToRegion(id, WeakAuras.regions[id].region, fallbacksStates[id][triggernum]);
    if (checkConditions[id]) then
      checkConditions[id](WeakAuras.regions[id].region);
    end
  end
end

local toRemove = {};
function WeakAuras.UpdatedTriggerState(id)
  if (not triggerState[id]) then
    return;
  end

  local changed = false;
  for triggernum = 0, triggerState[id].numTriggers - 1 do
    triggerState[id][triggernum] = triggerState[id][triggernum] or {};
    for cloneId, state in pairs(triggerState[id][triggernum]) do
      if (triggernum == 0) then
        state.trigger = db.displays[id].trigger;
        state.triggernum = 0;
        state.id = id;
      else
        state.trigger = db.displays[id].additional_triggers[triggernum];
        state.triggernum = triggernum;
        state.id = id;
      end

      if (state.changed) then
        startStopTimers(id, cloneId, triggernum, state);
        local stateShown = triggerState[id][triggernum][cloneId] and triggerState[id][triggernum][cloneId].show;
        -- Update triggerState.triggers
        changed = applyToTriggerStateTriggers(stateShown, id, triggernum) or changed;
      end
    end
  end

-- Figure out whether we should be shown or not
  local show = triggerState[id].show;
  if (changed or show == nil) then
    show = evaluateTriggerStateTriggers(id);
  end

  -- Figure out which subtrigger is active, and if it changed
  local newActiveTrigger = triggerState[id].activeTriggerMode;
  if (newActiveTrigger == WeakAuras.trigger_modes.first_active) then
    -- Mode is first active trigger, so find a active trigger
    for i = 0, triggerState[id].numTriggers - 1 do
      if (triggerState[id].triggers[i + 1]) then
        newActiveTrigger = i;
        break;
      end
    end
  end

  local oldShow = triggerState[id].show;
  triggerState[id].activeTrigger = newActiveTrigger;
  triggerState[id].show = show;

  local activeTriggerState = WeakAuras.GetTriggerStateForTrigger(id, newActiveTrigger);
  if (not next(activeTriggerState)) then
    activeTriggerState = emptyState;
  end

  local region;
  -- Now apply
  if (show and not oldShow) then -- Hide => Show
    ApplyStatesToRegions(id, newActiveTrigger, activeTriggerState);
  elseif (not show and oldShow) then -- Show => Hide
    WeakAuras.CollapseAllClones(id);
    WeakAuras.regions[id].region:Collapse();
  elseif (show and oldShow) then -- Already shown, update regions
    -- Hide old clones
    for cloneId, clone in pairs(clones[id]) do
      if (not activeTriggerState[cloneId] or not activeTriggerState[cloneId].show) then
        clone:Collapse();
      end
    end
    -- Show new states
    ApplyStatesToRegions(id, newActiveTrigger, activeTriggerState);
  end


  for triggernum = 0, triggerState[id].numTriggers - 1 do
    triggerState[id][triggernum] = triggerState[id][triggernum] or {};
    for cloneId, state in pairs(triggerState[id][triggernum]) do
      if (not state.show) then
        if (cloneId ~= "") then -- Keep "" state around, it's likely to be reused
          tinsert(toRemove, cloneId)
        else
          for k, v in pairs(state) do
            if (k ~= "trigger" and k ~= "triggernum" and k ~= "id") then
              state[k] = nil;
            end
          end
        end
      end
      state.changed = false;
    end
    for _, cloneId in ipairs(toRemove) do
      triggerState[id][triggernum][cloneId] = nil;
    end
    wipe(toRemove);
  end
end

function WeakAuras.IsTriggerActive(id)
  local active = triggerState[id];
  return active and active.show;
end