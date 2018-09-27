------------------------------
--      Are you local?    --
------------------------------

local boss = BB["Anub'Rekhan"]
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
	cmd = "Anub'Rekhan",

    engage_trigger = "Es gibt kein Entkommen.",
    engage_trigger2 = "Nur einmal kosten...",
    engage_trigger3 = "Rennt! Das bringt das Blut in Wallung!",
    
    impale = "Impale",
    impale_desc = "warns about impale",
    impale_message = "Impale!",
    impale_bar = "Impale",
    impale_urgent = "Impale soon!",
    
    locust = "Locust",
    locust_desc = "warns about locust swarm",
    locust_message = "Locust swarm!",
    locust_bar = "Locust swarm",
    locust_ends = "Locust swarm ends",
    locust_urgent = "Locust swarm soon!",
} end )

L:RegisterTranslations("esES", function() return {
    engage_trigger = "Es gibt kein Entkommen.",
    engage_trigger2 = "Nur einmal kosten...",
    engage_trigger3 = "Rennt! Das bringt das Blut in Wallung!",

    impale = "Impale",
    impale_desc = "warns about impale",
    impale_message = "Impale!",
    impale_bar = "Impale",
    impale_urgent = "Impale soon!",
    
    locust = "Locust",
    locust_desc = "warns about locust swarm",
    locust_message = "Locust swarm!",
    locust_bar = "Locust swarm",
    locust_ends = "Locust swarm ends",
    locust_urgent = "Locust swarm soon!",
} end )

L:RegisterTranslations("deDE", function() return {
    engage_trigger = "Es gibt kein Entkommen.",
    engage_trigger2 = "Nur einmal kosten...",
    engage_trigger3 = "Rennt! Das bringt das Blut in Wallung!",

    impale = "Impale",
    impale_desc = "warns about impale",
    impale_message = "Impale!",
    impale_bar = "Impale",
    impale_urgent = "Impale soon!",
    
    locust = "Locust",
    locust_desc = "warns about locust swarm",
    locust_message = "Locust swarm!",
    locust_bar = "Locust swarm",
    locust_ends = "Locust swarm ends",
    locust_urgent = "Locust swarm soon!",
} end )

L:RegisterTranslations("koKR", function() return {
    engage_trigger = "Es gibt kein Entkommen.",
    engage_trigger2 = "Nur einmal kosten...",
    engage_trigger3 = "Rennt! Das bringt das Blut in Wallung!",
    
    impale = "Impale",
    impale_desc = "warns about impale",
    impale_message = "Impale!",
    impale_bar = "Impale",
    impale_urgent = "Impale soon!",
    
    locust = "Locust",
    locust_desc = "warns about locust swarm",
    locust_message = "Locust swarm!",
    locust_bar = "Locust swarm",
    locust_ends = "Locust swarm ends",
    locust_urgent = "Locust swarm soon!",
} end )

L:RegisterTranslations("frFR", function() return {
    engage_trigger = "Es gibt kein Entkommen.",
    engage_trigger2 = "Nur einmal kosten...",
    engage_trigger3 = "Rennt! Das bringt das Blut in Wallung!",

    impale = "Impale",
    impale_desc = "warns about impale",
    impale_message = "Impale!",
    impale_bar = "Impale",
    impale_urgent = "Impale soon!",
    
    locust = "Locust",
    locust_desc = "warns about locust swarm",
    locust_message = "Locust swarm!",
    locust_bar = "Locust swarm",
    locust_ends = "Locust swarm ends",
    locust_urgent = "Locust swarm soon!",
} end )

L:RegisterTranslations("zhTW", function() return {
    engage_trigger = "Es gibt kein Entkommen.",
    engage_trigger2 = "Nur einmal kosten...",
    engage_trigger3 = "Rennt! Das bringt das Blut in Wallung!",

    impale = "Impale",
    impale_desc = "warns about impale",
    impale_message = "Impale!",
    impale_bar = "Impale",
    impale_urgent = "Impale soon!",
    
    locust = "Locust",
    locust_desc = "warns about locust swarm",
    locust_message = "Locust swarm!",
    locust_bar = "Locust swarm",
    locust_ends = "Locust swarm ends",
    locust_urgent = "Locust swarm soon!",
} end )

L:RegisterTranslations("zhCN", function() return {
    engage_trigger = "Es gibt kein Entkommen.",
    engage_trigger2 = "Nur einmal kosten...",
    engage_trigger3 = "Rennt! Das bringt das Blut in Wallung!",

    impale = "Impale",
    impale_desc = "warns about impale",
    impale_message = "Impale!",
    impale_bar = "Impale",
    impale_urgent = "Impale soon!",
    
    locust = "Locust",
    locust_desc = "warns about locust swarm",
    locust_message = "Locust swarm!",
    locust_bar = "Locust swarm",
    locust_ends = "Locust swarm ends",
    locust_urgent = "Locust swarm soon!",
} end )

L:RegisterTranslations("ruRU", function() return {
    engage_trigger = "Es gibt kein Entkommen.",
    engage_trigger2 = "Nur einmal kosten...",
    engage_trigger3 = "Rennt! Das bringt das Blut in Wallung!",

    impale = "Impale",
    impale_desc = "warns about impale",
    impale_message = "Impale!",
    impale_bar = "Impale",
    impale_urgent = "Impale soon!",
    
    locust = "Locust",
    locust_desc = "warns about locust swarm",
    locust_message = "Locust swarm!",
    locust_bar = "Locust swarm",
    locust_ends = "Locust swarm ends",
    locust_urgent = "Locust swarm soon!",
} end )

----------------------------------
--    Module Declaration   --
----------------------------------

local mod = BigWigs:NewModule(boss)
mod.zonename = BZ["Naxxramas"]
mod.enabletrigger = boss
mod.guid = 15956
mod.toggleoptions = {"impale", "locust", "bosskill"}
mod.revision = tonumber(("$Revision: 80479 $"):sub(12, -3))

------------------------------
--      Initialization      --
------------------------------

function mod:OnEnable()
	self:AddCombatListener("UNIT_DIED", "BossDeath")
    self:AddCombatListener("SPELL_CAST_SUCCESS", "Impale", 28783)
    self:AddCombatListener("SPELL_CAST_SUCCESS", "Locust", 28785)
    


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
function mod:Impale(_, spellID)
    if db.impale then
        self:IfMessage(L["impale_message"], "Attention", spellID)
        self:Bar(L["impale_bar"], 15, spellID)
        self:DelayedMessage(12, L["impale_urgent"], "Attention")
    end
end

function mod:Locust(_, spellID)
    if db.locust then
        self:IfMessage(L["locust_message"], "Attention", spellID)
        self:Bar(L["locust_bar"], 90, spellID)
        self:DelayedMessage(87, L["locust_urgent"], "Attention")
        
        self:Bar(L["locust_ends"], 20, spellID)
    end
end


function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)

end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L["engage_trigger"] or msg == L["engage_trigger2"] or msg == L["engage_trigger3"] then
        self:Bar(L["impale_bar"], 15, 28783)
        self:DelayedMessage(12, L["impale_urgent"], "Attention")
        
        self:Bar("~" .. L["locust_bar"], 80, 28785)
        self:DelayedMessage(77, L["locust_urgent"], "Attention")
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

