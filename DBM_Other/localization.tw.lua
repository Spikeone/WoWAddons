if (GetLocale() == "zhTW") then
--Chinese Translate by Nightkiller@日落沼澤(kc10577@巴哈;Azael)
-- LVOnyxia
DBM_ONYXIA_NAME            = "奧妮克希亞";
DBM_ONYXIA_INFO            = "深呼吸警報";
DBM_ONYXIA_BREATH_EMOTE    = "%s深深地吸了一口氣...";
DBM_ONYXIA_BREATH_ANNOUNCE = "*** 奧妮克希亞深呼吸即將出現，向邊緣散開！ ***";
DBM_ONYXIA_PHASE2_YELL     = "這毫無意義的行動讓我很厭煩。我會從上空把你們都燒成灰！";
DBM_ONYXIA_PHASE2_ANNOUNCE = "*** 奧妮克希亞進入第二階段 ***";
DBM_ONYXIA_PHASE3_YELL     = "看起來需要再給你一次教訓，凡人！";
DBM_ONYXIA_PHASE3_ANNOUNCE = "*** 奧妮克希亞進入第三階段 ***";


-- LVAzuregos
DBM_AZUREGOS_NAME                  = "艾索雷葛斯";
DBM_AZUREGOS_INFO                  = "艾索雷葛斯的傳送以及魔法護盾警告。";
DBM_AZUREGOS_SHIELDUP_EXPR         = "艾索雷葛斯獲得了反射的效果。";
DBM_AZUREGOS_SHIELDUP_ANNOUNCE     = "*** 魔法反射 - 所有法係停止攻擊 ***";
DBM_AZUREGOS_SHIELDDOWN_EXPR       = "反射效果從艾索雷葛斯身上消失。";
DBM_AZUREGOS_SHIELDDOWN_ANNOUNCE   = "*** 魔法反射消失 - 法係恢復施法攻擊 ***";
DBM_AZUREGOS_PORT_EXPR             = "來吧，小子。面對我！"
DBM_AZUREGOS_PORT_ANNOUNCE         = "*** 傳送 ***";

--Outdoor Dragons
DBM_OUTDOOR_NAME       = "雷索, 泰拉爾, 艾莫莉絲及伊索德雷";
DBM_OUTDOOR_DESCRIPTION    = "對毒性吐息以及艾莫莉絲的快速傳染發出警報.";
DBM_OUTDOOR_YSONDRE    = "伊索德雷";
DBM_OUTDOOR_EMERISS    = "艾莫莉絲";
DBM_OUTDOOR_TAERAR     = "泰拉爾";
DBM_OUTDOOR_LETHON     = "雷索";

DBM_OUTDOOR_BREATH_NOW     = "*** 毒性吐息 - 30 秒後再次發動 ***";
DBM_OUTDOOR_BREATH_WARNING = "*** %s 秒內發動毒性吐息 ***";
DBM_OUTDOOR_INFECT_WARN    = "*** %s 中了快速傳染 ***";
DBM_OUTDOOR_INFECT_SPECIAL = "你中了快速傳染！";

DBM_OUTDOOR_NOX_BREATH     = "(.+)受到(.*)毒性吐息";
DBM_OUTDOOR_NOX_RESIST     = "([^%s]+)的毒性吐息被([^%s]+)抵抗了。" ;
DBM_OUTDOOR_INFECTION      = "([^%s]+)受到(.*)快速傳染";

DBM_OUTDOOR_LOCATION_1     = DBM_DUSKWOOD;
DBM_OUTDOOR_LOCATION_2     = DBM_ASHENVALE;
DBM_OUTDOOR_LOCATION_3     = DBM_FERALAS;
DBM_OUTDOOR_LOCATION_4     = DBM_HINTERLANDS;

DBM_SBT["Noxious Breath"]  = "毒性吐息";

-- Dark Portal
DBM_DP_NAME			= "黑暗沼澤";
DBM_DP_DESCRIPTION	= "為黑暗之門任務的傳送門出現顯示一個計時條";


-- Maulgar
DBM_MAULGAR_NAME			= "大君王莫卡爾";
DBM_MAULGAR_DESCRIPTION		= "提示盾 ,補血和為旋風斬;圓弧斬;野生地獄行者出現提供計時";
DBM_MAULGAR_OPTION_1		= "提示強效真言術：盾";
DBM_MAULGAR_OPTION_2		= "提示法術護盾";
DBM_MAULGAR_OPTION_3		= "提示治療禱言";
DBM_MAULGAR_OPTION_4		= "提示補血";
DBM_MAULGAR_OPTION_5		= "提示旋風斬";
DBM_MAULGAR_OPTION_6		= "提示圓弧斬";
DBM_MAULGAR_OPTION_7		= "提示野生地獄行者";

DBM_MAULGAR_WARN_GPWS		= "*** 盾在盲眼身上 ***";
DBM_MAULGAR_WARN_SHIELD		= "*** 法術護盾在克羅斯身上 ***";
DBM_MAULGAR_WARN_SMASH		= "圓弧斬在 %s: %s";
DBM_MAULGAR_WARN_POH		= "*** 盲眼施放治療禱言 ***";
DBM_MAULGAR_WARN_HEAL		= "*** 盲眼施放治療術 ***";

DBM_MAULGAR_WARN_WHIRLWIND	= "*** 旋風斬 ***";
DBM_MAULGAR_WARN_WW_SOON	= "*** 旋風斬即將到來 ***";
DBM_MAULGAR_WARN_FELHUNTER	= "*** 野生地獄行者 ***";

DBM_MAULGAR_GPWS			= "先知盲眼獲得了強效真言術:盾的效果。";
DBM_MAULGAR_SPELLSHIELD		= "克羅斯·火手獲得了法術護盾的效果。";

DBM_MAULGAR_POH				= "先知盲眼開始施放治療禱言。";
DBM_MAULGAR_HEAL			= "先知盲眼開始施放治療術。";
DBM_MAULGAR_FELHUNTER		= "召喚者歐莫施放了召喚野生地獄獵犬。";
DBM_MAULGAR_SHIELD_STOLEN	= "(.+)獲得了法術護盾的效果。";
DBM_MAULGAR_SHIELD_STOLEN2	= "你獲得了法術護盾的效果。";

DBM_MAULGAR_WHIRLWIND		= "大君王莫卡爾獲得了旋風斬的效果。";
DBM_MAULGAR_ARCING_SMASH	= "大君王莫卡爾的圓弧斬";
DBM_MAULGAR_SMASH_HIT		= "大君王莫卡爾的圓弧斬擊中(.+)造成(%d+)點(.*)";
DBM_MAULGAR_SMASH_MISS		= "大君王莫卡爾的圓弧斬(.+)(.*)。"; --未完成
DBM_MAULGAR_SMASH_MISS_2	= "大君王莫卡爾的圓弧斬被(.+)(.*)。"; --未完成
DBM_MAULGAR_SMASH_MISS_3	= "大君王莫卡爾的圓弧斬(.*)(.+)。"; --未完成
DBM_MAULGAR_SMASH_YOU_HIT	= "大君王莫卡爾的圓弧斬擊中你造成(%d+)點(.*)";
DBM_MAULGAR_SMASH_YOU_MISS	= "大君王莫卡爾的圓弧斬沒有擊中你。";
DBM_MAULGAR_SMASH_YOU_DODGE	= "大君王莫卡爾的圓弧斬被閃躲過去。";
DBM_MAULGAR_SMASH_YOU_PARRY	= "大君王莫卡爾的圓弧斬被招架過去。";

DBM_MAULGAR_DODGED	= "閃躲過去";
DBM_MAULGAR_PARRIED	= "招架了";
DBM_MAULGAR_MISSED	= "沒有擊中";

DBM_SBT["Arcing Smash"]			= "圓弧斬";
DBM_SBT["Next Whirlwind"]		= "下一次旋風斬";
DBM_SBT["Whirlwind"]			= "旋風斬";
DBM_SBT["Prayer of Healing"]	= "治療禱言";
DBM_SBT["Heal"]					= "補血";
DBM_SBT["Felhunter"]			= "野生地獄行者";
DBM_SBT["Maulgar"]				= {
	[1]	= {
		[1]	= "法術護盾: (.+)",
		[2]	= "法術護盾: %1",
	},
};	


-- Gruul
DBM_GRUUL_NAME				= "弒龍者戈魯爾";
DBM_GRUUL_DESCRIPTION		= "提示破碎,成長,沉默,及塌下技能";

DBM_GRUUL_RANGE_OPTION		= "顯示距離框";
DBM_GRUUL_GROW_OPTION			= "提示成長";
DBM_GRUUL_SHATTER_OPTION		= "提示大地猛擊及破碎";
DBM_GRUUL_SILENCE_OPT			= "提示沉默";
DBM_GRUUL_CAVE_OPTION			= "提示塌下";

DBM_GRUUL_SAY_PULL			= "來……受死吧。"
DBM_GRUUL_GROW_EMOTE			= "%s變大了!";
DBM_GRUUL_EMOTE_SHATTER		= "%s吼叫!";
DBM_GRUUL_CAVE_IN_YOU			= "你受到了塌下效果的影響。"; --(.+)受到塌下的傷害。
DBM_GRUUL_SHATTER_CAST			= "弒龍者戈魯爾開始施放破碎。";
DBM_GRUUL_SLAM_CAST			= "弒龍者戈魯爾開始施放大地猛擊。";
DBM_GRUUL_SILENCE			= "迴響";

DBM_GRUUL_GROW_ANNOUNCE			= "*** 成長 #%s ***";
DBM_GRUUL_SHATTER_WARN			= "*** 破碎 ***";
DBM_GRUUL_SHATTER_20WARN	= "*** 10秒後發動大地猛擊 ***";
DBM_GRUUL_SHATTER_10WARN		= "*** 大地猛擊 - 10秒後發動破碎 ***";
DBM_GRUUL_SHATTER_SOON			= "*** 即將發動破碎 ***";
DBM_GRUUL_SILENCE_WARN			= "*** 沉默 ***";
DBM_GRUUL_SILENCE_SOON_WARN		= "*** 即將發動沉默 ***";
DBM_GRUUL_CAVE_IN_WARN			= "塌下";

DBM_SBT["Shatter"]			= "破碎";
DBM_SBT["Ground Slam"]			= "大地猛擊";
DBM_SBT["Grow #"]			= "成長 #";
DBM_SBT["Grow #1"]			= "成長 #1";
DBM_SBT["Silence"]			= "沉默";

-- LordKazzak
DBM_KAZZAK_NAME 			= "毀滅之王卡札克";
DBM_KAZZAK_DESCRIPTION 			= "提示狂怒，印記，反射警告";
DBM_KAZZAK_OPTION_1 			= "提示狂怒";
DBM_KAZZAK_OPTION_2 			= "提示反射";
DBM_KAZZAK_OPTION_3 			= "提示印記";
DBM_KAZZAK_OPTION_4 			= "設定圖示";
DBM_KAZZAK_OPTION_5 			= "傳送密語";


DBM_KAZZAK_TWISTED 			= "(.+)受到(.*)扭曲反射";
DBM_KAZZAK_MARK 			= "(.+)受到(.*)卡札克的印記";
DBM_KAZZAK_YELL_PULL1 			= "燃燒軍團將征服一切!";
DBM_KAZZAK_YELL_PULL2 			= "所有的凡人都將死亡!";
DBM_KAZZAK_EMOTE_ENRAGE 		= "%s變得憤怒了!";

DBM_KAZZAK_SUP_SEC 			= "*** %s秒後狂怒 ***";
DBM_KAZZAK_TWISTED_WARN 		= "*** %s中了反射！ ***";
DBM_KAZZAK_MARK_WARN 			= "*** %s中了印記！ ***";
DBM_KAZZAK_WARN_ENRAGE 			= "*** 狂怒！ ***";
DBM_KAZZAK_MARK_SPEC_WARN 		= "你是炸彈！";

DBM_SBT["Enrage"]			= "狂怒";
DBM_SBT["Mark of Kazzak"]			= "印記";

-- Magtheridon
DBM_MAG_NAME				= "瑪瑟里頓";
DBM_MAG_DESCRIPTION			= "提示地獄火及黑暗治療術,顯示階段計時條及衝擊新星警告";
DBM_MAG_OPTION_1			= "提示召喚地獄火";
DBM_MAG_OPTION_2			= "提示補血";
DBM_MAG_OPTION_3			= "提示衝擊新星";

DBM_MAG_EMOTE_PULL			= "%s的束縛開始變弱!";
DBM_MAG_YELL_PHASE2			= "我……被……釋放了!"
DBM_MAG_EMOTE_NOVA			= "%s開始施放衝擊新星!";
DBM_MAG_CAST_INFERNAL			= "地獄火導魔師施放了燃燒的深淵。";
DBM_MAG_CAST_HEAL			= "地獄火導魔師開始施放黑暗治療。";
DBM_MAG_CAST_CUT			= "別再來了!別再來了……";

DBM_MAG_PHASE2_WARN			= "*** %s 秒後開始第二階段 ***";
DBM_MAG_WARN_P2				= "*** 瑪瑟里頓獲得自由！ ***";
DBM_MAG_WARN_INFERNAL			= "*** 地獄火 ***";
DBM_MAG_WARN_HEAL			= "*** 治療術 ***";
DBM_MAG_WARN_NOVA_NOW			= "*** 衝擊新星 - 立即點盒子斷法！ ***";
DBM_MAG_WARN_30SEC_NOVA_SOON			= "*** 30秒後施放衝擊新星 - 人員就位準備！ ***";
DBM_MAG_WARN_NOVA_SOON			= "*** 即將施放衝擊新星！ ***";
DBM_MAG_WARN_CAST_CUT			= "*** 斷法成功 - 放開盒子！ ***";

DBM_SBT["Blast Nova"]			= "衝擊新星";
DBM_SBT["Phase 2"]			= "第二階段";

-- Doomwalker
DBM_DOOMW_NAME			= "厄運行者";
DBM_DOOMW_DESCRIPTION	= "為Earthquake顯示計時.";
DBM_DOOMW_OPTION_1		= "顯示距離框";
DBM_DOOMW_OPTION_2		= "提示Earthquake";
DBM_DOOMW_OPTION_3		= "提示Overrun";

DBM_DOOMW_CAST_QUAKE	= "受到Earthquake";
DBM_DOOMW_CAST_CHARGE	= "厄運行者開始施放Overrun。";
DBM_DOOMW_EMOTE_ENRAGE	= "%s變得憤怒了!";


DBM_DOOMW_QUAKE_WARN	= "*** Earthquake ***";
DBM_DOOMW_QUAKE_SOON	= "*** Earthquake soon ***";
DBM_DOOMW_CHARGE		= "*** Overrun ***";
DBM_DOOMW_CHARGE_SOON	= "*** Overrun soon ***";
DBM_DOOMW_WARN_ENRAGE	= "*** 狂怒! ***";

end
