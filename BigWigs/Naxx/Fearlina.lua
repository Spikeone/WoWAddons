------------------------------
--      Are you local?    --
------------------------------

local boss = BB["Grand Widow Faerlina"]
local L = AceLibrary("AceLocale-2.2"):new("BigWigs"..boss)

local started = nil
local pName = UnitName("player")
local db = nil
local previous = nil
local UnitName = UnitName
local fmt = string.format

----------------------------
--      Localization     --
----------------------------

L:RegisterTranslations("enUS", function() return {
	cmd = "Grand Widow Faerlina",

    engage_trigger = "Tötet sie im Namen des Meisters!",
    engage_trigger2 = "Ihr könnt euch nicht vor mir verstecken!",
    engage_trigger3 = "Kniet nieder, Wurm!",
    engage_trigger4 = "Flieht, solange ihr noch könnt!",
    
    poisonvolley = "Poisonbolt volley",
    poisonvolley_desc = "warns about poisonbolt volley",
    poisonvolley_message = "Poisonbolt volley!",
    poisonvolley_bar = "Poisonbolt volley",
    poisonvolley_urgent = "Poisonbolt volley soon!",
    
    enrage = "Enrage",
    enrage_desc = "warns about Enrage",
    enrage_message = "Enrage!",
    enrage_bar = "Enrage",
    enrage_urgent = "Enrage soon!",
    
    rainoffire = "Rain of fire",
    rainoffire_desc = "warns about Rain of fire",
    rainoffire_message = "Rain of fire!",
    rainoffire_bar = "Rain of fire",
    rainoffire_urgent = "Rain of fire soon!"
} end )

L:RegisterTranslations("esES", function() return {
    engage_trigger = "Tötet sie im Namen des Meisters!",
    engage_trigger2 = "Ihr könnt euch nicht vor mir verstecken!",
    engage_trigger3 = "Kniet nieder, Wurm!",
    engage_trigger4 = "Flieht, solange ihr noch könnt!",
    
    poisonvolley = "Poisonbolt volley",
    poisonvolley_desc = "warns about poisonbolt volley",
    poisonvolley_message = "Poisonbolt volley!",
    poisonvolley_bar = "Poisonbolt volley",
    poisonvolley_urgent = "Poisonbolt volley soon!",
    
    enrage = "Enrage",
    enrage_desc = "warns about Enrage",
    enrage_message = "Enrage!",
    enrage_bar = "Enrage",
    enrage_urgent = "Enrage soon!",
    
    rainoffire = "Rain of fire",
    rainoffire_desc = "warns about Rain of fire",
    rainoffire_message = "Rain of fire!",
    rainoffire_bar = "Rain of fire",
    rainoffire_urgent = "Rain of fire soon!"
} end )

L:RegisterTranslations("deDE", function() return {
    engage_trigger = "Tötet sie im Namen des Meisters!",
    engage_trigger2 = "Ihr könnt euch nicht vor mir verstecken!",
    engage_trigger3 = "Kniet nieder, Wurm!",
    engage_trigger4 = "Flieht, solange ihr noch könnt!",
    
    poisonvolley = "Poisonbolt volley",
    poisonvolley_desc = "warns about poisonbolt volley",
    poisonvolley_message = "Poisonbolt volley!",
    poisonvolley_bar = "Poisonbolt volley",
    poisonvolley_urgent = "Poisonbolt volley soon!",
    
    enrage = "Enrage",
    enrage_desc = "warns about Enrage",
    enrage_message = "Enrage!",
    enrage_bar = "Enrage",
    enrage_urgent = "Enrage soon!",
    
    rainoffire = "Rain of fire",
    rainoffire_desc = "warns about Rain of fire",
    rainoffire_message = "Rain of fire!",
    rainoffire_bar = "Rain of fire",
    rainoffire_urgent = "Rain of fire soon!"
} end )

L:RegisterTranslations("koKR", function() return {
    engage_trigger = "Tötet sie im Namen des Meisters!",
    engage_trigger2 = "Ihr könnt euch nicht vor mir verstecken!",
    engage_trigger3 = "Kniet nieder, Wurm!",
    engage_trigger4 = "Flieht, solange ihr noch könnt!",
    
    poisonvolley = "Poisonbolt volley",
    poisonvolley_desc = "warns about poisonbolt volley",
    poisonvolley_message = "Poisonbolt volley!",
    poisonvolley_bar = "Poisonbolt volley",
    poisonvolley_urgent = "Poisonbolt volley soon!",
    
    enrage = "Enrage",
    enrage_desc = "warns about Enrage",
    enrage_message = "Enrage!",
    enrage_bar = "Enrage",
    enrage_urgent = "Enrage soon!",
    
    rainoffire = "Rain of fire",
    rainoffire_desc = "warns about Rain of fire",
    rainoffire_message = "Rain of fire!",
    rainoffire_bar = "Rain of fire",
    rainoffire_urgent = "Rain of fire soon!"
} end )

L:RegisterTranslations("frFR", function() return {
    engage_trigger = "Tötet sie im Namen des Meisters!",
    engage_trigger2 = "Ihr könnt euch nicht vor mir verstecken!",
    engage_trigger3 = "Kniet nieder, Wurm!",
    engage_trigger4 = "Flieht, solange ihr noch könnt!",
    
    poisonvolley = "Poisonbolt volley",
    poisonvolley_desc = "warns about poisonbolt volley",
    poisonvolley_message = "Poisonbolt volley!",
    poisonvolley_bar = "Poisonbolt volley",
    poisonvolley_urgent = "Poisonbolt volley soon!",
    
    enrage = "Enrage",
    enrage_desc = "warns about Enrage",
    enrage_message = "Enrage!",
    enrage_bar = "Enrage",
    enrage_urgent = "Enrage soon!",
    
    rainoffire = "Rain of fire",
    rainoffire_desc = "warns about Rain of fire",
    rainoffire_message = "Rain of fire!",
    rainoffire_bar = "Rain of fire",
    rainoffire_urgent = "Rain of fire soon!"
} end )

L:RegisterTranslations("zhTW", function() return {
    engage_trigger = "Tötet sie im Namen des Meisters!",
    engage_trigger2 = "Ihr könnt euch nicht vor mir verstecken!",
    engage_trigger3 = "Kniet nieder, Wurm!",
    engage_trigger4 = "Flieht, solange ihr noch könnt!",
    
    poisonvolley = "Poisonbolt volley",
    poisonvolley_desc = "warns about poisonbolt volley",
    poisonvolley_message = "Poisonbolt volley!",
    poisonvolley_bar = "Poisonbolt volley",
    poisonvolley_urgent = "Poisonbolt volley soon!",
    
    enrage = "Enrage",
    enrage_desc = "warns about Enrage",
    enrage_message = "Enrage!",
    enrage_bar = "Enrage",
    enrage_urgent = "Enrage soon!",
    
    rainoffire = "Rain of fire",
    rainoffire_desc = "warns about Rain of fire",
    rainoffire_message = "Rain of fire!",
    rainoffire_bar = "Rain of fire",
    rainoffire_urgent = "Rain of fire soon!"
} end )

L:RegisterTranslations("zhCN", function() return {
    engage_trigger = "Tötet sie im Namen des Meisters!",
    engage_trigger2 = "Ihr könnt euch nicht vor mir verstecken!",
    engage_trigger3 = "Kniet nieder, Wurm!",
    engage_trigger4 = "Flieht, solange ihr noch könnt!",
    
    poisonvolley = "Poisonbolt volley",
    poisonvolley_desc = "warns about poisonbolt volley",
    poisonvolley_message = "Poisonbolt volley!",
    poisonvolley_bar = "Poisonbolt volley",
    poisonvolley_urgent = "Poisonbolt volley soon!",
    
    enrage = "Enrage",
    enrage_desc = "warns about Enrage",
    enrage_message = "Enrage!",
    enrage_bar = "Enrage",
    enrage_urgent = "Enrage soon!",
    
    rainoffire = "Rain of fire",
    rainoffire_desc = "warns about Rain of fire",
    rainoffire_message = "Rain of fire!",
    rainoffire_bar = "Rain of fire",
    rainoffire_urgent = "Rain of fire soon!"
} end )

L:RegisterTranslations("ruRU", function() return {
    engage_trigger = "Tötet sie im Namen des Meisters!",
    engage_trigger2 = "Ihr könnt euch nicht vor mir verstecken!",
    engage_trigger3 = "Kniet nieder, Wurm!",
    engage_trigger4 = "Flieht, solange ihr noch könnt!",
    
    poisonvolley = "Poisonbolt volley",
    poisonvolley_desc = "warns about poisonbolt volley",
    poisonvolley_message = "Poisonbolt volley!",
    poisonvolley_bar = "Poisonbolt volley",
    poisonvolley_urgent = "Poisonbolt volley soon!",
    
    enrage = "Enrage",
    enrage_desc = "warns about Enrage",
    enrage_message = "Enrage!",
    enrage_bar = "Enrage",
    enrage_urgent = "Enrage soon!",
    
    rainoffire = "Rain of fire",
    rainoffire_desc = "warns about Rain of fire",
    rainoffire_message = "Rain of fire!",
    rainoffire_bar = "Rain of fire",
    rainoffire_urgent = "Rain of fire soon!"
} end )

----------------------------------
--    Module Declaration   --
----------------------------------

local mod = BigWigs:NewModule(boss)
mod.zonename = BZ["Naxxramas"]
mod.enabletrigger = boss
mod.guid = 15953
mod.toggleoptions = {"poisonboltvolley", "enrage", "rainoffire", "bosskill"}
mod.revision = tonumber(("$Revision: 80479 $"):sub(12, -3))

------------------------------
--      Initialization      --
------------------------------

function mod:OnEnable()
	self:AddCombatListener("UNIT_DIED", "BossDeath")
    self:AddCombatListener("SPELL_CAST_SUCCESS", "poisonboltvolley", 28796)
    self:AddCombatListener("SPELL_CAST_SUCCESS", "enrage", 28798)
    self:AddCombatListener("SPELL_CAST_SUCCESS", "rainoffire", 28794)
    


	started = nil
	previous = nil

	self:RegisterEvent("CHAT_MSG_RAID_BOSS_EMOTE")

    self:RegisterEvent("CHAT_MSG_MONSTER_YELL")
    
	self:RegisterEvent("PLAYER_REGEN_DISABLED", "CheckForEngage")
	self:RegisterEvent("PLAYER_REGEN_ENABLED", "CheckForWipe")
	self:RegisterEvent("BigWigs_RecvSync")

	db = self.db.profile
end

------------------------------
--    Event Handlers     --
------------------------------
function mod:poisonboltvolley(_, spellID)
    if db.poisonboltvolley then
        self:IfMessage(L["poisonvolley_message"], "Attention", spellID)
        self:Bar(L["poisonvolley_bar"], 11, spellID)
        self:DelayedMessage(8, L["poisonvolley_urgent"], "Attention")
    end
end

function mod:enrage(_, spellID)
    if db.enrage then
        self:IfMessage(L["enrage_message"], "Attention", spellID)
        self:Bar(L["lenrage_bar"], 60, spellID)
        self:DelayedMessage(57, L["enrage_urgent"], "Attention")
    end
end

function mod:rainoffire(_, spellID)
    if db.rainoffire then
        self:IfMessage(L["rainoffire_message"], "Attention", spellID)
        self:Bar(L["rainoffire_bar"], 16, spellID)
        self:DelayedMessage(13, L["rainoffire_urgent"], "Attention")
    end
end

function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)

end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L["engage_trigger"] or msg == L["engage_trigger2"] or msg == L["engage_trigger3"] or msg == L["engage_trigger4"] then
        self:Bar(L["poisonvolley_bar"], 8, 28796)
        self:DelayedMessage(5, L["poisonvolley_urgent"], "Attention")
        
        self:Bar(L["enrage_bar"], 60, 28798)
        self:DelayedMessage(57, L["enrage_urgent"], "Attention")
        
        self:Bar(L["rainoffire_bar"], 16, 28794)
        self:DelayedMessage(13, L["rainoffire_urgent"], "Attention")
	end
end

function mod:BigWigs_RecvSync(sync, rest, nick)
	if self:ValidateEngageSync(sync, rest) and not started then
		started = true
		if self:IsEventRegistered("PLAYER_REGEN_DISABLED") then
			self:UnregisterEvent("PLAYER_REGEN_DISABLED")
		end
	end
end

