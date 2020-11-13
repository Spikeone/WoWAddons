local Gruul = DBM:NewBossMod("Gruul", DBM_GRUUL_NAME, DBM_GRUUL_DESCRIPTION, DBM_GRUULS_LAIR, DBMGUI_TAB_OTHER_BC, 2);

Gruul.Version	= "1.0";
Gruul.Author	= "Tandanu";
Gruul.Grows		= 0;

Gruul.MinVersionToSync = 2.70;

Gruul:RegisterEvents(
	"CHAT_MSG_MONSTER_EMOTE",
	"CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE",
	"CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE",
	"CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE",
	"CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"
);

Gruul:RegisterCombat("YELL", DBM_GRUUL_SAY_PULL);

Gruul:AddOption("RangeCheck", true, DBM_GRUUL_RANGE_OPTION);
Gruul:AddOption("GrowWarn", true, DBM_GRUUL_GROW_OPTION);
Gruul:AddOption("ShatterWarn", true, DBM_GRUUL_SHATTER_OPTION);
Gruul:AddOption("SilenceWarn", false, DBM_GRUUL_SILENCE_OPT);
Gruul:AddOption("SpecWarning", true, DBM_GRUUL_CAVE_OPTION);

function Gruul:OnCombatStart(delay)
	self.Grows = 0;
	
	self:ScheduleSelf(100 - delay, "SilenceSoon");
	self:StartStatusBarTimer(105 - delay, "Silence", "Interface\\Icons\\Spell_Holy_ImprovedResistanceAuras");
	
	self:ScheduleSelf(24 - delay, "SlamSoon");
	self:StartStatusBarTimer(34 - delay, "Ground Slam", "Interface\\Icons\\Spell_Nature_ThunderClap");
	self:StartStatusBarTimer(30 - delay, "Grow #1", "Interface\\Icons\\Spell_Nature_ShamanRage", true);

	if self.Options.RangeCheck then
		DBM_Gui_DistanceFrame_Show();
	end
	DBM_Gui_DistanceFrame_SetDistance(15);
end

function Gruul:OnCombatEnd()
	self.Grows = 0;
	if self.Options.RangeCheck then
		DBM_Gui_DistanceFrame_Hide();
	end
	DBM_Gui_DistanceFrame_SetDistance(10);
end

function Gruul:OnEvent(event, arg1)
	if event == "CHAT_MSG_MONSTER_EMOTE" then
		if arg1 == DBM_GRUUL_GROW_EMOTE then
			self.Grows = self.Grows + 1;
			if self.Options.GrowWarn then
				self:Announce(string.format(DBM_GRUUL_GROW_ANNOUNCE, self.Grows));
			end
			
			self:StartStatusBarTimer(30, "Grow #"..(self.Grows + 1), "Interface\\Icons\\Spell_Nature_ShamanRage", true); -- this bar won't be sync'd to avoid double bars with old versions
		elseif arg1 == DBM_GRUUL_EMOTE_SHATTER then
			if self.Options.ShatterWarn then
				self:Announce(DBM_GRUUL_SHATTER_WARN);
			end
			
			self:ScheduleSelf(60, "SlamSoon");
			self:EndStatusBarTimer("Ground Slam");
			self:StartStatusBarTimer(70, "Ground Slam", "Interface\\Icons\\Spell_Nature_ThunderClap");
		end
	elseif event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" 
	or event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"
	or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" then
		if string.find(arg1, DBM_GRUUL_CAVE_IN_YOU) and self.Options.SpecWarning then
			self:AddSpecialWarning(DBM_GRUUL_CAVE_IN_WARN)
		elseif string.find(arg1, DBM_GRUUL_SILENCE) then
			if self.Options.SilenceWarn then
				self:Announce(DBM_GRUUL_SILENCE_WARN)
			end
			
			self:UnScheduleSelf("SilenceSoon");
			self:ScheduleSelf(42, "SilenceSoon");
			self:EndStatusBarTimer("Silence");
			self:StartStatusBarTimer(45, "Silence", "Interface\\Icons\\Spell_Holy_ImprovedResistanceAuras");
		end
	elseif event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE" then
		if arg1 == DBM_GRUUL_SLAM_CAST then
			if self.Options.ShatterWarn then
				self:Announce(DBM_GRUUL_SHATTER_10WARN);
			end
			self:StartStatusBarTimer(10, "Shatter", "Interface\\Icons\\Spell_Nature_ThunderClap");
		end
	elseif event == "SlamSoon" then
		if self.Options.ShatterWarn then
			self:Announce(DBM_GRUUL_SHATTER_20WARN);
		end
	elseif event == "SilenceSoon" then
		if self.Options.SilenceWarn then
			self:Announce(DBM_GRUUL_SILENCE_SOON_WARN)
		end
	end
end