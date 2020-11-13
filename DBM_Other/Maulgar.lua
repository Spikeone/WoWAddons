local Maulgar = DBM:NewBossMod("Maulgar", DBM_MAULGAR_NAME, DBM_MAULGAR_DESCRIPTION, DBM_GRUULS_LAIR, DBMGUI_TAB_OTHER_BC, 1);

Maulgar.Version			= "1.0";
Maulgar.Author			= "Tandanu";
Maulgar.LastSpellShield = 0;

Maulgar:RegisterCombat("COMBAT");

Maulgar:RegisterEvents(
	"CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS",
	"CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF",
	"CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE",
	"CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE",
	"CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE",
	"CHAT_MSG_SPELL_PERIODIC_PARTY_BUFFS",
	"CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS",
	"CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_BUFFS"
);

Maulgar:AddOption("WarnPWS",			true,	DBM_MAULGAR_OPTION_1);
Maulgar:AddOption("WarnSpellShield",	true,	DBM_MAULGAR_OPTION_2);
Maulgar:AddOption("WarnPoH",			false,	DBM_MAULGAR_OPTION_3);
Maulgar:AddOption("WarnHeal",			false,	DBM_MAULGAR_OPTION_4);
Maulgar:AddOption("WarnWW",				true,	DBM_MAULGAR_OPTION_5);
Maulgar:AddOption("WarnSmash",			false,	DBM_MAULGAR_OPTION_6);
Maulgar:AddOption("WarnFelhunter",		true,	DBM_MAULGAR_OPTION_7);

function Maulgar:OnCombatStart(delay)
	self:StartStatusBarTimer(58 - delay, "Next Whirlwind", "Interface\\Icons\\Ability_Whirlwind");
	self:ScheduleSelf(54 - delay, "WhirlwindWarning");
end

function Maulgar:OnEvent(event, arg1)
	if event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS" then
		if arg1 == DBM_MAULGAR_GPWS and self.Options.WarnPWS then
			self:Announce(DBM_MAULGAR_WARN_GPWS);
		elseif arg1 == DBM_MAULGAR_SPELLSHIELD then
			if self.Options.WarnSpellShield then
				self:Announce(DBM_MAULGAR_WARN_SHIELD);
			end
			
			self.LastSpellShield = GetTime();
			
		elseif arg1 == DBM_MAULGAR_WHIRLWIND then
			self:SendSync("WhirlWind")
		end
		
	elseif event == "WhirlwindWarning" then
		if self.Options.WarnWW then
			self:Announce(DBM_MAULGAR_WARN_WW_SOON);
		end
		
	elseif event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF" then
		if string.find(arg1, DBM_MAULGAR_POH) then
			if self.Options.WarnPoH then
				self:Announce(DBM_MAULGAR_WARN_POH);
			end
			self:StartStatusBarTimer(4, "Prayer of Healing", "Interface\\Icons\\Spell_Holy_PrayerOfHealing02");
		elseif string.find(arg1, DBM_MAULGAR_HEAL) then
			if self.Options.WarnHeal then
				self:Announce(DBM_MAULGAR_WARN_HEAL);
			end
			self:StartStatusBarTimer(2, "Heal", "Interface\\Icons\\Spell_Holy_Heal");
		elseif arg1 == DBM_MAULGAR_FELHUNTER then
			self:SendSync("Felhunter");
		end
	
	elseif event == "CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE" 
	or event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"
	or event == "CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE" then
		if string.find(arg1, DBM_MAULGAR_ARCING_SMASH) then
			local target, damage;
			
			_, _, target, damage = string.find(arg1, DBM_MAULGAR_SMASH_HIT);				
			if target and damage and target ~= string.lower(DBM_YOU) then
				self:SendSync("Arcing "..target.." "..damage);				
			end
			
			if GetLocale() == "deDE" then
				_, _, target, damage = string.find(arg1, DBM_MAULGAR_SMASH_MISS);
			else
				_, _, damage, target = string.find(arg1, DBM_MAULGAR_SMASH_MISS);
			end
			if target and damage then
				if damage == DBM_MAULGAR_DODGED then
					damage = "dodge";
				elseif damage == DBM_MAULGAR_PARRIED then
					damage = "parry";
				elseif damage == DBM_MAULGAR_MISSED then
					damage = "miss";
				end
				self:SendSync("Arcing "..target.." "..damage);
			else
				_, _, damage = string.find(arg1, DBM_MAULGAR_SMASH_YOU_HIT);
				if damage then
					self:SendSync("Arcing "..UnitName('player').." "..damage);
				elseif arg1 == DBM_MAULGAR_SMASH_YOU_MISS then
					self:SendSync("Arcing "..UnitName('player').." miss");
				elseif arg1 == DBM_MAULGAR_SMASH_YOU_DODGE then
					self:SendSync("Arcing "..UnitName('player').." dodge");
				elseif arg1 == DBM_MAULGAR_SMASH_YOU_PARRY then
					self:SendSync("Arcing "..UnitName('player').." parry");
				elseif GetLocale() == "deDE" then
					_, _, target, damage = string.find(arg1, DBM_MAULGAR_SMASH_MISS_2);
					if target and damage then
						if damage == DBM_MAULGAR_DODGED then
							damage = "dodge";
						elseif damage == DBM_MAULGAR_PARRIED then
							damage = "parry";
						elseif damage == DBM_MAULGAR_MISSED then
							damage = "miss";
						end
						self:SendSync("Arcing "..target.." "..damage);
					else
						_, _, damage, target = string.find(arg1, DBM_MAULGAR_SMASH_MISS_3);
						if target and damage then
							self:SendSync("Arcing "..target.." miss");
						end
					end
				end
			end
		end
	elseif event == "CHAT_MSG_SPELL_PERIODIC_PARTY_BUFFS" or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_BUFFS" then
		if string.find(arg1, DBM_MAULGAR_SHIELD_STOLEN) then
			local _, _, playerName = string.find(arg1, DBM_MAULGAR_SHIELD_STOLEN);
			local buffTimer = 30 - (GetTime() - self.LastSpellShield);
			if buffTimer < 35 and buffTimer > 1 then
				self:StartStatusBarTimer(buffTimer, "Spell Shield: "..playerName, "Interface\\Icons\\Spell_Arcane_ArcaneResilience");
			end
		end
	elseif event == "CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS" then
		if string.find(arg1, DBM_MAULGAR_SHIELD_STOLEN2) then
			local buffTimer = 30 - (GetTime() - self.LastSpellShield);
			if buffTimer < 35 and buffTimer > 1 then
				self:StartStatusBarTimer(buffTimer, "Spell Shield: "..UnitName("player"), "Interface\\Icons\\Spell_Arcane_ArcaneResilience");
			end
		end
	end
end

function Maulgar:OnSync(msg)
	if msg == "WhirlWind" then
		if self.Options.WarnWW then
			self:Announce(DBM_MAULGAR_WARN_WHIRLWIND);
		end
		self:StartStatusBarTimer(55, "Next Whirlwind", "Interface\\Icons\\Ability_Whirlwind");
		self:StartStatusBarTimer(15.2, "Whirlwind", "Interface\\Icons\\Ability_Whirlwind");
		self:ScheduleSelf(51, "WhirlwindWarning");
	elseif msg == "Felhunter" then
		if self.Options.WarnFelhunter then
			self:Announce(DBM_MAULGAR_WARN_FELHUNTER);
		end
		self:StartStatusBarTimer(48.5, "Felhunter", "Interface\\Icons\\Spell_Shadow_SummonFelHunter");
	elseif string.sub(msg, 1, 6) == "Arcing" then
		if self.Options.WarnSmash then
			local _, _, target, damage = string.find(msg, "Arcing ([^%s]+) (%w+)");			
			if target and damage then
				if string.find(damage, "miss") then
					damage = DBM_MAULGAR_MISSED;
				elseif string.find(damage, "dodge") then
					damage = DBM_MAULGAR_DODGED;
				elseif string.find(damage, "par") then
					damage = DBM_MAULGAR_PARRIED;
				end
				self:Announce(string.format(DBM_MAULGAR_WARN_SMASH, target, damage));
			end			
		end
		
		self:StartStatusBarTimer(10, "Arcing Smash", "Interface\\Icons\\Ability_Warrior_Cleave");
	end
end