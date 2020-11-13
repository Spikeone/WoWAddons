local Mag = DBM:NewBossMod("Magtheridon", DBM_MAG_NAME, DBM_MAG_DESCRIPTION, DBM_MAGS_LAIR, DBMGUI_TAB_OTHER_BC, 3);

Mag.Version		= "1.0";
Mag.Author		= "Tandanu";

Mag:RegisterCombat("EMOTE", DBM_MAG_EMOTE_PULL);

Mag:RegisterEvents(
	"CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF",
	"CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE",
	"CHAT_MSG_MONSTER_YELL",
	"CHAT_MSG_RAID_BOSS_EMOTE"
)

Mag:AddOption("WarnInfernal", true, DBM_MAG_OPTION_1);
Mag:AddOption("WarnHeal", true, DBM_MAG_OPTION_2);
Mag:AddOption("WarnNova", true, DBM_MAG_OPTION_3);

function Mag:OnCombatStart(delay)
	self:StartStatusBarTimer(120 - delay, "Phase 2", "Interface\\Icons\\INV_Weapon_Halberd16");
	self:ScheduleSelf(60, "Phase2Warn", 60);
	self:ScheduleSelf(90, "Phase2Warn", 30);
	self:ScheduleSelf(110, "Phase2Warn", 10);
end

function Mag:OnEvent(event, arg1)
	if event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF" or event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE" then
		if arg1 == DBM_MAG_CAST_INFERNAL and self.Options.WarnInfernal then
			self:Announce(DBM_MAG_WARN_INFERNAL);
		elseif arg1 == DBM_MAG_CAST_HEAL then
			if self.Options.WarnHeal then
				self:Announce(DBM_MAG_WARN_HEAL);
			end
			self:StartStatusBarTimer(2, "Heal", "Interface\\Icons\\Spell_Shadow_ChillTouch");
		end
	elseif event == "CHAT_MSG_MONSTER_YELL" then
		if arg1 and string.find(arg1, DBM_MAG_YELL_PHASE2) then -- to support stupid german localization :(
			self:Announce(DBM_MAG_WARN_P2);
			self:StartStatusBarTimer(54, "Blast Nova", "Interface\\Icons\\Spell_Fire_SealOfFire");
			self:ScheduleSelf(48, "NovaWarn");
		end
	elseif event == "CHAT_MSG_RAID_BOSS_EMOTE" then
		if arg1 == DBM_MAG_EMOTE_NOVA then
			if self.Options.WarnNova then
				self:Announce(DBM_MAG_WARN_NOVA_NOW)
			end
			self:StartStatusBarTimer(54, "Blast Nova", "Interface\\Icons\\Spell_Fire_SealOfFire");
			self:ScheduleSelf(48, "NovaWarn");
		end
	elseif event == "Phase2Warn" and arg1 then
		self:Announce(string.format(DBM_MAG_PHASE2_WARN, arg1));
	elseif event == "NovaWarn" and self.Options.WarnNova then
		self:Announce(DBM_MAG_WARN_NOVA_SOON);
	end
end