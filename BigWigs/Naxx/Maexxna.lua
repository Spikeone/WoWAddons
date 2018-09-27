------------------------------
--      Are you local?    --
------------------------------

local boss = BB["Maexxna"]
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
	cmd = "Maexxna",
    
    webwrap = "Web wrap",
    webwrap_desc = "warns about web wrap",
    webwrap_message = "Web wrap!",
    webwrap_bar = "Web wrap",
    webwrap_urgent = "Web wrap soon!",
    
    webspray = "Webspray",
    webspray_desc = "warns about Webspray",
    webspray_message = "Webspray!",
    webspray_bar = "Webspray",
    webspray_urgent = "Webspray soon!",
    
    poisonshock = "Poisonshock",
    poisonshock_desc = "warns about Poisonshock",
    poisonshock_message = "Poisonshock!",
    poisonshock_bar = "Poisonshock",
    poisonshock_urgent = "Poisonshock soon!",
    
    necroticpoison = "Necrotic poison",
    necroticpoison_desc = "warns about Necrotic poison",
    necroticpoison_message = "Necrotic poison!",
    necroticpoison_bar = "Necrotic poison",
    necroticpoison_urgent = "Necrotic poison soon!",
} end )

L:RegisterTranslations("esES", function() return {
    webwrap = "Web wrap",
    webwrap_desc = "warns about web wrap",
    webwrap_message = "Web wrap!",
    webwrap_bar = "Web wrap",
    webwrap_urgent = "Web wrap soon!",
    
    webspray = "Webspray",
    webspray_desc = "warns about Webspray",
    webspray_message = "Webspray!",
    webspray_bar = "Webspray",
    webspray_urgent = "Webspray soon!",
    
    poisonshock = "Poisonshock",
    poisonshock_desc = "warns about Poisonshock",
    poisonshock_message = "Poisonshock!",
    poisonshock_bar = "Poisonshock",
    poisonshock_urgent = "Poisonshock soon!",
    
    necroticpoison = "Necrotic poison",
    necroticpoison_desc = "warns about Necrotic poison",
    necroticpoison_message = "Necrotic poison!",
    necroticpoison_bar = "Necrotic poison",
    necroticpoison_urgent = "Necrotic poison soon!",
} end )

L:RegisterTranslations("deDE", function() return {
    webwrap = "Web wrap",
    webwrap_desc = "warns about web wrap",
    webwrap_message = "Web wrap!",
    webwrap_bar = "Web wrap",
    webwrap_urgent = "Web wrap soon!",
    
    webspray = "Webspray",
    webspray_desc = "warns about Webspray",
    webspray_message = "Webspray!",
    webspray_bar = "Webspray",
    webspray_urgent = "Webspray soon!",
    
    poisonshock = "Poisonshock",
    poisonshock_desc = "warns about Poisonshock",
    poisonshock_message = "Poisonshock!",
    poisonshock_bar = "Poisonshock",
    poisonshock_urgent = "Poisonshock soon!",
    
    necroticpoison = "Necrotic poison",
    necroticpoison_desc = "warns about Necrotic poison",
    necroticpoison_message = "Necrotic poison!",
    necroticpoison_bar = "Necrotic poison",
    necroticpoison_urgent = "Necrotic poison soon!",
} end )

L:RegisterTranslations("koKR", function() return {
    webwrap = "Web wrap",
    webwrap_desc = "warns about web wrap",
    webwrap_message = "Web wrap!",
    webwrap_bar = "Web wrap",
    webwrap_urgent = "Web wrap soon!",
    
    webspray = "Webspray",
    webspray_desc = "warns about Webspray",
    webspray_message = "Webspray!",
    webspray_bar = "Webspray",
    webspray_urgent = "Webspray soon!",
    
    poisonshock = "Poisonshock",
    poisonshock_desc = "warns about Poisonshock",
    poisonshock_message = "Poisonshock!",
    poisonshock_bar = "Poisonshock",
    poisonshock_urgent = "Poisonshock soon!",
    
    necroticpoison = "Necrotic poison",
    necroticpoison_desc = "warns about Necrotic poison",
    necroticpoison_message = "Necrotic poison!",
    necroticpoison_bar = "Necrotic poison",
    necroticpoison_urgent = "Necrotic poison soon!",
} end )

L:RegisterTranslations("frFR", function() return {
    webwrap = "Web wrap",
    webwrap_desc = "warns about web wrap",
    webwrap_message = "Web wrap!",
    webwrap_bar = "Web wrap",
    webwrap_urgent = "Web wrap soon!",
    
    webspray = "Webspray",
    webspray_desc = "warns about Webspray",
    webspray_message = "Webspray!",
    webspray_bar = "Webspray",
    webspray_urgent = "Webspray soon!",
    
    poisonshock = "Poisonshock",
    poisonshock_desc = "warns about Poisonshock",
    poisonshock_message = "Poisonshock!",
    poisonshock_bar = "Poisonshock",
    poisonshock_urgent = "Poisonshock soon!",
    
    necroticpoison = "Necrotic poison",
    necroticpoison_desc = "warns about Necrotic poison",
    necroticpoison_message = "Necrotic poison!",
    necroticpoison_bar = "Necrotic poison",
    necroticpoison_urgent = "Necrotic poison soon!",
} end )

L:RegisterTranslations("zhTW", function() return {
    webwrap = "Web wrap",
    webwrap_desc = "warns about web wrap",
    webwrap_message = "Web wrap!",
    webwrap_bar = "Web wrap",
    webwrap_urgent = "Web wrap soon!",
    
    webspray = "Webspray",
    webspray_desc = "warns about Webspray",
    webspray_message = "Webspray!",
    webspray_bar = "Webspray",
    webspray_urgent = "Webspray soon!",
    
    poisonshock = "Poisonshock",
    poisonshock_desc = "warns about Poisonshock",
    poisonshock_message = "Poisonshock!",
    poisonshock_bar = "Poisonshock",
    poisonshock_urgent = "Poisonshock soon!",
    
    necroticpoison = "Necrotic poison",
    necroticpoison_desc = "warns about Necrotic poison",
    necroticpoison_message = "Necrotic poison!",
    necroticpoison_bar = "Necrotic poison",
    necroticpoison_urgent = "Necrotic poison soon!",
} end )

L:RegisterTranslations("zhCN", function() return {
    webwrap = "Web wrap",
    webwrap_desc = "warns about web wrap",
    webwrap_message = "Web wrap!",
    webwrap_bar = "Web wrap",
    webwrap_urgent = "Web wrap soon!",
    
    webspray = "Webspray",
    webspray_desc = "warns about Webspray",
    webspray_message = "Webspray!",
    webspray_bar = "Webspray",
    webspray_urgent = "Webspray soon!",
    
    poisonshock = "Poisonshock",
    poisonshock_desc = "warns about Poisonshock",
    poisonshock_message = "Poisonshock!",
    poisonshock_bar = "Poisonshock",
    poisonshock_urgent = "Poisonshock soon!",
    
    necroticpoison = "Necrotic poison",
    necroticpoison_desc = "warns about Necrotic poison",
    necroticpoison_message = "Necrotic poison!",
    necroticpoison_bar = "Necrotic poison",
    necroticpoison_urgent = "Necrotic poison soon!",
} end )

L:RegisterTranslations("ruRU", function() return {
    webwrap = "Web wrap",
    webwrap_desc = "warns about web wrap",
    webwrap_message = "Web wrap!",
    webwrap_bar = "Web wrap",
    webwrap_urgent = "Web wrap soon!",
    
    webspray = "Webspray",
    webspray_desc = "warns about Webspray",
    webspray_message = "Webspray!",
    webspray_bar = "Webspray",
    webspray_urgent = "Webspray soon!",
    
    poisonshock = "Poisonshock",
    poisonshock_desc = "warns about Poisonshock",
    poisonshock_message = "Poisonshock!",
    poisonshock_bar = "Poisonshock",
    poisonshock_urgent = "Poisonshock soon!",
    
    necroticpoison = "Necrotic poison",
    necroticpoison_desc = "warns about Necrotic poison",
    necroticpoison_message = "Necrotic poison!",
    necroticpoison_bar = "Necrotic poison",
    necroticpoison_urgent = "Necrotic poison soon!",
} end )

----------------------------------
--    Module Declaration   --
----------------------------------

local mod = BigWigs:NewModule(boss)
mod.zonename = BZ["Naxxramas"]
mod.enabletrigger = boss
mod.guid = 15952
mod.toggleoptions = {"Web wrap", "Webspray", "Poisonshock", "Necrotic poison", "bosskill"}
mod.revision = tonumber(("$Revision: 80479 $"):sub(12, -3))

------------------------------
--      Initialization      --
------------------------------

function mod:OnEnable()
	self:AddCombatListener("UNIT_DIED", "BossDeath")
    self:AddCombatListener("SPELL_CAST_SUCCESS", "webwrap", 28622)
    self:AddCombatListener("SPELL_CAST_SUCCESS", "webspray", 29484)
    self:AddCombatListener("SPELL_CAST_SUCCESS", "poisonshock", 28741)
    self:AddCombatListener("SPELL_CAST_SUCCESS", "necroticpoison", 28776)


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
function mod:webwrap(_, spellID)
    if db.webwrap then
        self:IfMessage(L["webwrap_message"], "Attention", spellID)
        self:Bar(L["webwrap_bar"], 40, spellID)
        self:DelayedMessage(37, L["webwrap_urgent"], "Attention")
    end
end

function mod:webspray(_, spellID)
    if db.webspray then
        self:IfMessage(L["webspray_message"], "Attention", spellID)
        self:Bar(L["webspray_bar"], 40, spellID)
        self:DelayedMessage(37, L["webspray_urgent"], "Attention")
    end
end

function mod:poisonshock(_, spellID)
    if db.poisonshock then
        self:IfMessage(L["poisonshock_message"], "Attention", spellID)
        self:Bar(L["poisonshock_bar"], 20, spellID)
        self:DelayedMessage(17, L["poisonshock_urgent"], "Attention")
    end
end

function mod:necroticpoison(_, spellID)
    if db.necroticpoison then
        self:IfMessage(L["necroticpoison_message"], "Attention", spellID)
        self:Bar(L["necroticpoison_bar"], 40, spellID)
        self:DelayedMessage(37, L["necroticpoison_urgent"], "Attention")
    end
end

function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)

end

function mod:CHAT_MSG_MONSTER_YELL(msg)

end

-- function mod:CheckForEngage()
--     self:Bar(L["webwrap_bar"], 20, 28622)
--     self:DelayedMessage(17, L["webwrap_urgent"], "Attention")
--     
--     self:Bar(L["webspray_bar"], 40, 29484)
--     self:DelayedMessage(37, L["webspray_urgent"], "Attention")
--     
--     self:Bar(L["poisonshock_bar"], 20, 28741)
--     self:DelayedMessage(17, L["poisonshock_urgent"], "Attention")
--     
--     self:Bar(L["necroticpoison_bar"], 30, 28776)
--     self:DelayedMessage(27, L["necroticpoison_urgent"], "Attention")
-- end

function mod:BigWigs_RecvSync(sync, rest, nick)
	if self:ValidateEngageSync(sync, rest) and not started then
		started = true
		if self:IsEventRegistered("PLAYER_REGEN_DISABLED") then
			self:UnregisterEvent("PLAYER_REGEN_DISABLED")
		end
        
        self:Bar(L["webwrap_bar"], 20, 28622)
        self:DelayedMessage(17, L["webwrap_urgent"], "Attention")
        
        self:Bar(L["webspray_bar"], 40, 29484)
        self:DelayedMessage(37, L["webspray_urgent"], "Attention")
        
        self:Bar(L["poisonshock_bar"], 20, 28741)
        self:DelayedMessage(17, L["poisonshock_urgent"], "Attention")
        
        self:Bar(L["necroticpoison_bar"], 30, 28776)
        self:DelayedMessage(27, L["necroticpoison_urgent"], "Attention")
	end
end

