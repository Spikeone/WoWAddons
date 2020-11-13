-- ------------------------------------------- --
--   Deadly Boss Mods - Chinese localization   --
--    by Diablohu<白银之手> @ 二区-轻风之语    --
--              www.dreamgen.cn                --
--                 6/28/2007                   --
-- ------------------------------------------- --

if (GetLocale() == "zhCN") then

-- LVOnyxia
	DBM_ONYXIA_NAME				= "奥妮克希亚";
	DBM_ONYXIA_INFO				= "警报深呼吸";
	DBM_ONYXIA_BREATH_EMOTE 	= "%s深深地吸了一口气……";
	DBM_ONYXIA_BREATH_ANNOUNCE	= "*** 深呼吸 ***"
	DBM_ONYXIA_PHASE2_YELL		= "这毫无意义的行动让我很厌烦。我会从上空把你们都烧成灰！";
	DBM_ONYXIA_PHASE2_ANNOUNCE	= "*** 第二阶段 ***"
	DBM_ONYXIA_PHASE3_YELL		= "看起来需要再给你一次教训，凡人！";
	DBM_ONYXIA_PHASE3_ANNOUNCE	= "*** 第三阶段 ***"


-- LVAzuregos
	DBM_AZUREGOS_NAME					= "艾索雷葛斯";
	DBM_AZUREGOS_INFO					= "警报传送和魔法反射";
	DBM_AZUREGOS_SHIELDUP_EXPR			= "艾索雷葛斯获得了反射的效果。";
	DBM_AZUREGOS_SHIELDUP_ANNOUNCE		= "*** 魔法反射 - 停止对其施法 ***";
	DBM_AZUREGOS_SHIELDDOWN_EXPR 		= "反射效果从艾索雷葛斯身上消失。";
	DBM_AZUREGOS_SHIELDDOWN_ANNOUNCE	= "*** 魔法反射消失 ***";
	DBM_AZUREGOS_PORT_EXPR 				= "来吧，小家伙们。面对我！"
	DBM_AZUREGOS_PORT_ANNOUNCE			= "*** 传送 ***";


--Outdoor Dragons
	DBM_OUTDOOR_NAME			= "梦魇巨龙";
	DBM_OUTDOOR_DESCRIPTION		= "警报毒性吐息和艾莫莉丝的快速传染";
	DBM_OUTDOOR_YSONDRE			= "伊森德雷";
	DBM_OUTDOOR_EMERISS			= "艾莫莉丝";
	DBM_OUTDOOR_TAERAR			= "泰拉尔";
	DBM_OUTDOOR_LETHON			= "莱索恩";
	
	DBM_OUTDOOR_BREATH_NOW		= "*** 毒性吐息 - 30秒后再次施放 ***";
	DBM_OUTDOOR_BREATH_WARNING	= "*** 毒性吐息 - %s秒后施放 ***";
	DBM_OUTDOOR_INFECT_WARN		= "*** %s受到了快速传染 ***";
	DBM_OUTDOOR_INFECT_SPECIAL	= "你受到了快速传染！";
	
	DBM_OUTDOOR_NOX_BREATH		= "([^%s]+)受([^%s]+)毒性吐息效果的影响。";
	DBM_OUTDOOR_NOX_RESIST		= "([^%s]+)毒性吐息被([^%s]+)抵抗了。";
	DBM_OUTDOOR_INFECTION		= "([^%s]+)受([^%s]+)快速传染效果的影响。";
	
	DBM_OUTDOOR_LOCATION_1		= DBM_DUSKWOOD;
	DBM_OUTDOOR_LOCATION_2		= DBM_ASHENVALE;
	DBM_OUTDOOR_LOCATION_3		= DBM_FERALAS;
	DBM_OUTDOOR_LOCATION_4		= DBM_HINTERLANDS;
	
	DBM_SBT["Noxious Breath"]	= "毒性吐息";


-- Dark Portal
	DBM_DP_NAME			= "黑色沼泽";
	DBM_DP_DESCRIPTION	= "黑暗之门任务进行中显示敌人到来计时";


-- Maulgar
	DBM_MAULGAR_NAME			= "莫加尔大王";
	DBM_MAULGAR_DESCRIPTION		= "警报治疗、圆弧斩、旋风斩以及地狱犬";
	DBM_MAULGAR_OPTION_1		= "警报强效真言术：盾";
	DBM_MAULGAR_OPTION_2		= "警报法术护盾";
	DBM_MAULGAR_OPTION_3		= "警报治疗祷言";
	DBM_MAULGAR_OPTION_4		= "警报治疗术";
	DBM_MAULGAR_OPTION_5		= "警报旋风斩";
	DBM_MAULGAR_OPTION_6		= "警报圆弧斩";
	DBM_MAULGAR_OPTION_7		= "警报地狱犬";

	DBM_MAULGAR_WARN_GPWS		= "*** 盲眼先知获得了强效真言术：盾的效果 ***";
	DBM_MAULGAR_WARN_SHIELD		= "*** 法术护盾获得了克洛什的效果 ***";
	DBM_MAULGAR_WARN_SMASH		= "圆弧斩 -> %s: %s";
	DBM_MAULGAR_WARN_POH		= "*** 盲眼先知开始施放治疗祷言 ***";
	DBM_MAULGAR_WARN_HEAL		= "*** 盲眼先知开始施放治疗术 ***";

	DBM_MAULGAR_WARN_WHIRLWIND	= "*** 旋风斩 ***";
	DBM_MAULGAR_WARN_WW_SOON	= "*** 旋风斩 - 即将施放 ***";
	DBM_MAULGAR_WARN_FELHUNTER	= "*** 地狱犬 ***";

	DBM_MAULGAR_GPWS			= "盲眼先知获得了强效真言术：盾的效果。";
	DBM_MAULGAR_SPELLSHIELD		= "克洛什·火拳获得了法术护盾的效果。";

	DBM_MAULGAR_POH				= "盲眼先知开始施放治疗祷言。";
	DBM_MAULGAR_HEAL			= "盲眼先知开始施放治疗术。";
	DBM_MAULGAR_FELHUNTER		= "召唤者沃尔姆施放了召唤地狱犬。";
	DBM_MAULGAR_SHIELD_STOLEN	= "([^%s]+)获得了法术护盾的效果。";
	DBM_MAULGAR_SHIELD_STOLEN2	= "你获得了法术护盾的效果。";

	DBM_MAULGAR_WHIRLWIND		= "莫加尔大王获得了旋风斩的效果。";
	DBM_MAULGAR_ARCING_SMASH	= "莫加尔大王的圆弧斩";
	DBM_MAULGAR_SMASH_HIT		= "莫加尔大王的圆弧斩击中([^%s]+)造成(%d+)点伤害。(.*)";
	DBM_MAULGAR_SMASH_MISS		= "莫加尔大王的圆弧斩没有击中([^%s]+)。";
	DBM_MAULGAR_SMASH_YOU_HIT	= "莫加尔大王的圆弧斩击中你造成(%d+)点伤害。(.*)";
	DBM_MAULGAR_SMASH_YOU_MISS	= "莫加尔大王的圆弧斩没有击中你。";
	DBM_MAULGAR_SMASH_YOU_DODGE	= "莫加尔大王的圆弧斩被躲闪过去。";
	DBM_MAULGAR_SMASH_YOU_PARRY	= "莫加尔大王的圆弧斩被招架了。";

	DBM_MAULGAR_DODGED	= "闪躲";
	DBM_MAULGAR_PARRIED	= "招架";
	DBM_MAULGAR_MISSED	= "未击中";
	
	DBM_SBT["Next Whirlwind"]		= "下一次旋风斩";
	DBM_SBT["Whirlwind"]			= "旋风斩";
	DBM_SBT["Prayer of Healing"]	= "治疗祷言";
	DBM_SBT["Heal"]					= "治疗术";
	DBM_SBT["Felhunter"]			= "地狱犬";
	DBM_SBT["Arcing Smash"]			= "圆弧斩";
	
	DBM_SBT["Maulgar"] = {
		  [1] = {"Spell Shield:", "法术护盾:"},
	}
	DBM_SBT["莫加尔大王"] = DBM_SBT["Maulgar"]


-- Gruul
	DBM_GRUUL_NAME				= "屠龙者格鲁尔";
	DBM_GRUUL_DESCRIPTION		= "|cFF999999(汉化不完全)|r 警报碎裂、成长、回响以及洞穴震颤。";

	DBM_GRUUL_RANGE_OPTION		= "显示距离框体";
	DBM_GRUUL_GROW_OPTION		= "警报成长";
	DBM_GRUUL_SHATTER_OPTION	= "警报碎裂";
	DBM_GRUUL_SILENCE_OPT		= "警报沉默";
	DBM_GRUUL_CAVE_OPTION		= "当洞穴震颤发动时显示特殊警报";

	DBM_GRUUL_SAY_PULL			= "来了……就得死。"
	DBM_GRUUL_GROW_EMOTE		= "%s grows in size!";
	DBM_GRUUL_EMOTE_SHATTER		= "%s roars!";
	DBM_GRUUL_CAVE_IN_YOU		= "你受到了洞穴震颤效果的影响。";
	DBM_GRUUL_SHATTER_CAST		= "屠龙者格鲁尔开始施放碎裂。";
	DBM_GRUUL_SLAM_CAST			= "屠龙者格鲁尔开始施放大地冲击。";
	DBM_GRUUL_SILENCE			= "回响";

	DBM_GRUUL_GROW_ANNOUNCE		= "*** 成长 #%s ***";
	DBM_GRUUL_SHATTER_WARN		= "*** 碎裂 ***";
	DBM_GRUUL_SHATTER_20WARN	= "*** 大地冲击 - 10秒后施放 ***";
	DBM_GRUUL_SHATTER_10WARN	= "*** 大地冲击 - 10秒后碎裂 ***";
	DBM_GRUUL_SHATTER_SOON		= "*** 碎裂 - 即将施放 ***";
	DBM_GRUUL_SILENCE_WARN		= "*** 沉默 ***";
	DBM_GRUUL_SILENCE_SOON_WARN	= "*** 沉默 - 即将施放 ***";
	DBM_GRUUL_CAVE_IN_WARN		= "洞穴震颤";
	
	DBM_SBT["Silence"]		= "沉默";
	DBM_SBT["Ground Slam"]	= "大地冲击";
	DBM_SBT["Shatter"]		= "碎裂";
	DBM_SBT["Grow #1"]		= "成长 #1";
	
	DBM_SBT["Gruul"] = {
		  [1] = {"Grow #", "成长 #"},
	}
	DBM_SBT["屠龙者格鲁尔"] = DBM_SBT["Gruul"]


-- LordKazzak
	DBM_KAZZAK_NAME				= "末日领主卡扎克";
	DBM_KAZZAK_DESCRIPTION		= "|cFF999999(汉化不完全)|r 警报激怒、卡扎克的印记以及扭曲反射";
	DBM_KAZZAK_OPTION_1			= "警报激怒";
	DBM_KAZZAK_OPTION_2			= "警报扭曲反射";
	DBM_KAZZAK_OPTION_3			= "警报卡扎克的印记";
	DBM_KAZZAK_OPTION_4			= "添加标注";
	DBM_KAZZAK_OPTION_5			= "密语玩家";

	DBM_KAZZAK_TWISTED			= "([^%s]+)受([^%s]+)扭曲反射效果的影响。";
	DBM_KAZZAK_MARK				= "([^%s]+)受([^%s]+)卡扎克的印记效果的影响。";
	DBM_KAZZAK_YELL_PULL		= "所有的凡人都将灭亡！";
	DBM_KAZZAK_YELL_PULL2		= "军团将会征服一切！";
	DBM_KAZZAK_EMOTE_ENRAGE		= "%s becomes enraged!";

	DBM_KAZZAK_SUP_SEC			= "*** %s秒后激怒 ***";
	DBM_KAZZAK_SUP_SOON			= "*** 即将激怒 ***";
	DBM_KAZZAK_TWISTED_WARN		= "*** 扭曲反射 -> %s ***";
	DBM_KAZZAK_MARK_WARN		= "*** 卡扎克的印记 -> %s ***";
	DBM_KAZZAK_WARN_ENRAGE		= "*** 激怒 ***";
	DBM_KAZZAK_MARK_SPEC_WARN	= "你变成了炸弹！";
	
	DBM_SBT["Enrage"]			= "激怒";
	DBM_SBT["Mark of Kazzak"]	= "卡扎克的印记";


-- Magtheridon
	DBM_MAG_NAME			= "玛瑟里顿";
	DBM_MAG_DESCRIPTION		= "|cFF999999(汉化不完全)|r 警报地狱火、黑暗治愈以及冲击新星";
	DBM_MAG_OPTION_1		= "警报地狱火";
	DBM_MAG_OPTION_2		= "警报黑暗治愈";
	DBM_MAG_OPTION_3		= "警报冲击新星";

	DBM_MAG_EMOTE_PULL		= "%s's bonds begin to weaken!";
	DBM_MAG_YELL_PHASE2		= "我……自由了！"
	DBM_MAG_EMOTE_NOVA		= "%s开始施放冲击新星！";
	DBM_MAG_CAST_INFERNAL	= "地狱火导魔者施放了深渊燃魔。";
	DBM_MAG_CAST_HEAL		= "地狱火导魔者开始施放黑暗治愈。";

	DBM_MAG_PHASE2_WARN		= "*** %s秒后进入第二阶段 ***";
	DBM_MAG_WARN_P2			= "*** 玛瑟里顿自由了！ ***";
	DBM_MAG_WARN_INFERNAL	= "*** 地狱火 ***";
	DBM_MAG_WARN_HEAL		= "*** 黑暗治愈 ***";
	DBM_MAG_WARN_NOVA_NOW	= "*** 冲击新星 ***";
	DBM_MAG_WARN_NOVA_SOON	= "*** 冲击新星 - 即将施放 ***";
	
	DBM_SBT["Phase 2"]		= "第二阶段";
	DBM_SBT["Heal"]			= "治疗";
	DBM_SBT["Blast Nova"]	= "冲击新星";


-- Doomwalker
	DBM_DOOMW_NAME			= "末日行者";
	DBM_DOOMW_DESCRIPTION	= "|cFF999999(汉化不完全)|r 警报地震术";
	DBM_DOOMW_OPTION_1		= "显示距离框体";
	DBM_DOOMW_OPTION_2		= "警报地震术";
	DBM_DOOMW_OPTION_3		= "警报泛滥";

	DBM_DOOMW_CAST_QUAKE	= "受到了地震术效果的影响";
	DBM_DOOMW_CAST_CHARGE	= "末日行者开始施放Overrun。";
	DBM_DOOMW_EMOTE_ENRAGE	= "%s becomes enraged!";

	DBM_DOOMW_QUAKE_WARN	= "*** 地震术 ***";
	DBM_DOOMW_QUAKE_SOON	= "*** 地震术 - 即将施放 ***";
	DBM_DOOMW_CHARGE		= "*** 泛滥 ***";
	DBM_DOOMW_CHARGE_SOON	= "*** 泛滥 - 即将施放 ***";
	DBM_DOOMW_WARN_ENRAGE	= "*** 激怒 ***";
	
	DBM_SBT["Overrun Cooldown"]		= "泛滥冷却";
	DBM_SBT["Earthquake Cooldown"]	= "地震术冷却";
	DBM_SBT["Earthquake"]			= "地震术";
	

end
