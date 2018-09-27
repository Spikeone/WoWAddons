------------------------------
--      Are you local?    --
------------------------------

local boss = BB["Noth the Plaguebringer"]
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
	cmd = "Noth the Plaguebringer",

    engage_trigger = "Ehre unserem Meister!",
    engage_trigger2 = "Euer Leben ist verwirkt!",
    engage_trigger3 = "Sterbt, Eindringling!",
    
    curse = "curse",
    curse_desc = "warns about curse",
    curse_message = "Curse!",
    curse_bar = "Curse",
    curse_urgent = "Curse soon!",
} end )

L:RegisterTranslations("esES", function() return {
    engage_trigger = "Ehre unserem Meister!",
    engage_trigger2 = "Euer Leben ist verwirkt!",
    engage_trigger3 = "Sterbt, Eindringling!",
    
    curse = "curse",
    curse_desc = "warns about curse",
    curse_message = "Curse!",
    curse_bar = "Curse",
    curse_urgent = "Curse soon!",
} end )

L:RegisterTranslations("deDE", function() return {
    engage_trigger = "Ehre unserem Meister!",
    engage_trigger2 = "Euer Leben ist verwirkt!",
    engage_trigger3 = "Sterbt, Eindringling!",
    
    curse = "curse",
    curse_desc = "warns about curse",
    curse_message = "Curse!",
    curse_bar = "Curse",
    curse_urgent = "Curse soon!",
} end )

L:RegisterTranslations("koKR", function() return {
    engage_trigger = "Ehre unserem Meister!",
    engage_trigger2 = "Euer Leben ist verwirkt!",
    engage_trigger3 = "Sterbt, Eindringling!",
    
    curse = "curse",
    curse_desc = "warns about curse",
    curse_message = "Curse!",
    curse_bar = "Curse",
    curse_urgent = "Curse soon!",
} end )

L:RegisterTranslations("frFR", function() return {
    engage_trigger = "Ehre unserem Meister!",
    engage_trigger2 = "Euer Leben ist verwirkt!",
    engage_trigger3 = "Sterbt, Eindringling!",
    
    curse = "curse",
    curse_desc = "warns about curse",
    curse_message = "Curse!",
    curse_bar = "Curse",
    curse_urgent = "Curse soon!",
} end )

L:RegisterTranslations("zhTW", function() return {
    engage_trigger = "Ehre unserem Meister!",
    engage_trigger2 = "Euer Leben ist verwirkt!",
    engage_trigger3 = "Sterbt, Eindringling!",
    
    curse = "curse",
    curse_desc = "warns about curse",
    curse_message = "Curse!",
    curse_bar = "Curse",
    curse_urgent = "Curse soon!",
} end )

L:RegisterTranslations("zhCN", function() return {
    engage_trigger = "Ehre unserem Meister!",
    engage_trigger2 = "Euer Leben ist verwirkt!",
    engage_trigger3 = "Sterbt, Eindringling!",
    
    curse = "curse",
    curse_desc = "warns about curse",
    curse_message = "Curse!",
    curse_bar = "Curse",
    curse_urgent = "Curse soon!",
} end )

L:RegisterTranslations("ruRU", function() return {
    engage_trigger = "Ehre unserem Meister!",
    engage_trigger2 = "Euer Leben ist verwirkt!",
    engage_trigger3 = "Sterbt, Eindringling!",
    
    curse = "curse",
    curse_desc = "warns about curse",
    curse_message = "Curse!",
    curse_bar = "Curse",
    curse_urgent = "Curse soon!",
} end )

----------------------------------
--    Module Declaration   --
----------------------------------

local mod = BigWigs:NewModule(boss)
mod.zonename = BZ["Naxxramas"]
mod.enabletrigger = boss
mod.guid = 15954
mod.toggleoptions = {"curse", "bosskill"}
mod.revision = tonumber(("$Revision: 80479 $"):sub(12, -3))

------------------------------
--      Initialization      --
------------------------------

function mod:OnEnable()
	self:AddCombatListener("UNIT_DIED", "BossDeath")
    self:AddCombatListener("SPELL_CAST_SUCCESS", "curse", 29213)
    
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
function mod:curse(_, spellID)
    if db.curse then
        self:IfMessage(L["curse_message"], "Attention", spellID)
        self:Bar(L["curse_bar"], 28, spellID)
        self:DelayedMessage(25, L["curse_urgent"], "Attention")
    end
end


function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)

end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L["engage_trigger"] or msg == L["engage_trigger2"] or msg == L["engage_trigger3"] then
        self:Bar(L["curse_bar"], 4, 29213)
        self:DelayedMessage(1, L["curse_urgent"], "Attention")
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

