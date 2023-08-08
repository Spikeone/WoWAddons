-- Generated Data : Do Not Modify
if Talented_Data and GetLocale() == "zhTW" then
	local data, tree, talent
	local table_cache_1 = { left = "立即施法", right = "3分鐘冷卻時間" }
	local table_cache_2 = { left = "立即施法", right = "2分鐘冷卻時間" }
	local table_cache_3 = {3, 3}
	local table_cache_4 = {30, 30, 30}
	local table_cache_5 = {8, 8}
	local table_cache_6 = {5, 1}
	local table_cache_7 = {15, 6}
	local table_cache_8 = {15, 10}
	local table_cache_9 = {2, 4}
	local table_cache_10 = {20, 10}
	local table_cache_11 = {6, 2}
	local table_cache_12 = {4, 4}
	local table_cache_13 = {4, 2}
	local table_cache_14 = { left = "立即", right = "3分鐘冷卻時間" }
	local table_cache_15 = {9, 3}
	local table_cache_16 = { left = "立即施法", right = "30 秒冷卻時間" }
	local table_cache_17 = {12, 6}
	local table_cache_18 = { left = "變身可以解除施法者身上的所有變形和移動限制效果。" }
	local table_cache_19 = {10, 30}
	local table_cache_20 = { left = "立即" }
	local table_cache_21 = {10, 5}
	local table_cache_22 = {1, 5}
	local table_cache_23 = {3, 1}
	local table_cache_25 = {10, 20}
	local table_cache_26 = {4, 8}
	local table_cache_27 = {16, 8}
	local table_cache_28 = {20, 20}
	local table_cache_29 = {4, "秒"}
	local table_cache_30 = { left = "使術士和所召喚的惡魔均獲得一個特殊效果，只要該惡魔處於啟動狀態就不會消失。" }
	local table_cache_31 = {4, 6}
	local table_cache_32 = { left = "施法材料: 靈魂裂片" }
	local table_cache_33 = {3, 6}
	local table_cache_34 = { left = "需要遠程武器" }
	local table_cache_35 = {10, 40}
	local table_cache_36 = { left = "立即", right = "2 分鐘冷卻時間" }
	local table_cache_37 = {10, 4}
	local table_cache_38 = {10, 15}
	local table_cache_39 = {30, 20}
	local table_cache_40 = {16, 16}
	local table_cache_41 = {8, 12}
	local table_cache_42 = {15, 5}
	local table_cache_43 = {1, 10}
	local table_cache_44 = {1, 2}
	local table_cache_45 = { left = "立即施法" }
	local table_cache_46 = {6, 3}
	local table_cache_47 = {12, 4}
	local table_cache_48 = {2, 2}
	local table_cache_49 = {20, 2}
	local table_cache_50 = {15, 2}
	local table_cache_51 = {30, 4}
	local table_cache_52 = { left = "" }
	local table_cache_53 = {10, 10}
	local table_cache_54 = {100, 20}
	local table_cache_55 = {8, 4}
	local table_cache_56 = {2, 20}
	local table_cache_57 = { left = "立即", right = "6 秒冷卻時間" }
	local table_cache_58 = { left = "立即施法", right = "10秒冷卻時間" }
	local table_cache_59 = {15, 3}
	local table_cache_60 = {7, 4}
	local table_cache_61 = {5, 15}
	local table_cache_62 = {5, 10}
	local table_cache_63 = {10, 50}
	local table_cache_64 = { left = "30 怒氣", right = "近戰範圍" }
	local table_cache_65 = {2, 1}
	local table_cache_66 = {30, 30}
	local table_cache_67 = { left = "立即施法", right = "15秒冷卻時間" }
	local table_cache_68 = { left = "立即施法", right = "1分鐘冷卻時間" }
	local table_cache_69 = {6, 30}
	local table_cache_70 = {3, 15}
	local table_cache_71 = {12, 12}
	local table_cache_72 = {5, 5}
	local table_cache_73 = {10, 2}
	local table_cache_74 = {6, 6}
	local table_cache_75 = {5, 25}
	local table_cache_76 = {2, 10}
	local table_cache_77 = {1, 1}
	local table_cache_78 = { left = "立即", right = "5分鐘冷卻時間" }
	local table_cache_79 = { left = "需要近戰武器" }
	local table_cache_80 = {50, 10}
	local table_cache_81 = { left = "10 怒氣" }
	local table_cache_86 = { left = "立即", right = "3 分鐘冷卻時間" }
	local table_cache_94 = {1, 3}
	local table_cache_95 = {2, 3}
	local table_cache_96 = {2, 6}
	local table_cache_97 = {1, 25}
	local table_cache_103 = { left = "需要盾牌" }
	local table_cache_104 = {2, 50}
	local table_cache_105 = { left = " 下列為可訓練等級：" }
	local table_cache_106 = {15, 30}
	local table_cache_115 = {4, 20}
	data = Talented_Data.HUNTER
	-- data.name = "獵人"
	tree = data[1]
	tree.info.name = "野獸控制"
	talent = tree.talents[1].info
	talent.name = "強化雄鷹守護"
	talent.tips = {
		format = "你的雄鷹守護作用期間，所有普通的遠程攻擊會有10%%的機率使你的遠程攻擊速度提高%s%%，持續12秒。",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "耐久訓練"
	talent.tips = {
		format = "使你寵物的生命力提高%s%%和你的總生命力提高%s%%。",
		table_cache_65, -- 1
		table_cache_13, -- 2
		table_cache_46, -- 3
		table_cache_55, -- 4
		table_cache_21, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "專注攻擊"
	talent.tips = {
		format = "當你的寵物存在時,你所造成的所有傷害提高%s%%和你的擊殺命令技能造成致命一擊的機率提高%s%%。",
		table_cache_43, -- 1
		table_cache_56, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "強化靈猴守護"
	talent.tips = {
		format = "使你的靈猴守護提供%s%%的額外躲閃機率。",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "厚皮"
	talent.tips = {
		format = "使你寵物的護甲值提高%s%%和你從裝備上所獲得的護甲值提高%s%%。",
		table_cache_60, -- 1
		{14, 7}, -- 2
		table_cache_10, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "強化復活寵物"
	talent.tips = {
		format = "使你復活寵物法術的施法時間減少%s秒，法力消耗降低%s%%，寵物復活後的生命提高%s%%。",
		{3, 20, 15}, -- 1
		{6, 40, 30}, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "尋路"
	talent.tips = {
		format = "使你獵豹守護和豹群守護的速度加成效果提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[8].info
	talent.name = "野獸迅捷"
	talent.tips = {
		"使你寵物在戶外的移動速度提高30%。", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "狂怒釋放"
	talent.tips = {
		format = "使你寵物所造成的傷害提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[10].info
	talent.name = "強化治療寵物"
	talent.tips = {
		format = "使你治療寵物技能的法力消耗降低%s%%並且在每次作用時都有%s%%的機率移除寵物身上1個詛咒、疾病、魔法或中毒效果。",
		{10, 25}, -- 1
		{20, 50}, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "兇暴"
	talent.tips = {
		format = "使你寵物造成致命一擊的機率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "靈魂聯結"
	talent.tips = {
		format = "只要你的寵物仍可活動，你與你的寵物都會每10秒恢復%s%%的生命力。",
	}
	talent = tree.talents[13].info
	talent.name = "脅迫"
	talent.tips = {
		{ -- 1
			{ left = "202點法力", right = "100碼範圍" }, -- 1
			table_cache_68,
			{ left = "命令你的寵物在下次的近戰攻擊命中敵人時進行脅迫，造成大量的威脅值，並使目標昏迷3秒。" }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "野獸戒律"
	talent.tips = {
		format = "使你的寵物的集中值恢復速度提高%s%%。",
		multiplier = 50,
	}
	talent = tree.talents[15].info
	talent.name = "動物管理者"
	talent.tips = {
		format = "使你在坐騎上的移動速度提高%s%% 並使你寵物的攻擊命中率提高%s%%。此坐騎移動速度的提升無法與其他效果堆疊。",
		table_cache_13, -- 1
		table_cache_55, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "狂亂"
	talent.tips = {
		format = "使你的寵物有%s%%的機率在對敵人造成致命一擊後獲得攻擊速度提高30%%的效果，持續8秒。",
		multiplier = 20,
	}
	talent = tree.talents[17].info
	talent.name = "兇性鼓舞"
	talent.tips = {
		format = "當你的寵物造成致命一擊時，所有隊友所造成的所有傷害提高%s%%，持續10秒。",
	}
	talent = tree.talents[18].info
	talent.name = "狂野怒火"
	talent.tips = {
		{ -- 1
			{ left = "338法力", right = "100碼範圍" }, -- 1
			table_cache_2,
			{ left = "使你的寵物進入憤怒狀態，對目標造成的傷害提高50%，持續18秒。在這種狀態下，寵物不會有任何憐憫、自責或恐懼，也無法停止下來，除非被殺死。" }, -- 3
		},
	}
	talent = tree.talents[19].info
	talent.name = "靈敏反射"
	talent.tips = {
		format = "使你的閃躲機率提高%s%%，並使你的寵物的閃躲機率額外提高%s%%。",
		table_cache_94, -- 1
		table_cache_96, -- 2
		{3, 9}, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "毒蛇迅捷"
	talent.tips = {
		format = "使你的遠程攻擊速度提高%s%%，並使你的寵物的近戰攻擊速度提高%s%%。",
		table_cache_12, -- 1
		table_cache_5, -- 2
		table_cache_71, -- 3
		table_cache_40, -- 4
		table_cache_28, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "獸心"
	talent.tips = {
		"當你的寵物在進入狂野怒火狀態後，你也同時進入狂怒狀態並獲得10%額外的傷害加成，所有法術消耗的法力減少20%，持續18秒。在這種狀態下，你將不會有任何憐憫、自責或恐懼，也無法停止下來，除非被殺死。", -- 1
	}
	tree = data[2]
	tree.info.name = "射擊"
	talent = tree.talents[1].info
	talent.name = "強化震盪射擊"
	talent.tips = {
		format = "使你的震盪射擊有%s%%的機率令目標昏迷3秒。",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "奪命射擊"
	talent.tips = {
		format = "使你遠程武器造成致命一擊的機率提高%s%%。",
	}
	talent = tree.talents[3].info
	talent.name = "強化獵人印記"
	talent.tips = {
		format = "使獵人印記提高遠程攻擊強度的%s%%效果亦加諸於近戰攻擊強度。",
		multiplier = 20,
	}
	talent = tree.talents[4].info
	talent.name = "效率"
	talent.tips = {
		format = "使你施放射擊和釘刺技能所消耗的法力減少%s%%",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "穿喉"
	talent.tips = {
		format = "你的遠程攻擊造成致命一擊後使你的寵物產生%s點集中值。",
		multiplier = 25,
	}
	talent = tree.talents[6].info
	talent.name = "強化秘法射擊"
	talent.tips = {
		format = "使你的祕法射擊的冷卻時間減少%s秒。",
		0.2, -- 1
		0.4, -- 2
		0.6, -- 3
		0.8, -- 4
		1, -- 5
	}
	talent = tree.talents[7].info
	talent.name = "瞄準射擊"
	talent.tips = {
		{ -- 1
			{ left = "75法力", right = "5-35碼距離" }, -- 1
			{ left = "3秒施法時間", right = "6秒冷卻時間" }, -- 2
			table_cache_34,
			{ left = "一個瞄準目標的射擊，使遠程傷害提高70點，並使目標受到的治療效果降低50%，持續10秒。" }, -- 4
		},
	}
	talent = tree.talents[8].info
	talent.name = "急速殺戮"
	talent.tips = {
		format = "使你急速射擊技能的冷卻時間降低%s分鐘。另外，再你殺死一個敵人並得到經驗或榮譽值後，你的下一個瞄準射擊、祕法射擊、或自動射擊將造成%s%%額外的傷害。持續20秒。",
		table_cache_43, -- 1
		table_cache_56, -- 2
	}
	talent = tree.talents[9].info
	talent.name = "強化釘刺"
	talent.tips = {
		format = "使你毒蛇釘刺和翼龍釘刺所造成的傷害提高%s%%，並使你的蝮蛇釘刺抽取的法力增加%s%%。此外，使你的釘刺被驅散的機率降低%s%%。",
		{6, 6, 6}, -- 1
		{12, 12, 12}, -- 2
		{18, 18, 18}, -- 3
		{24, 24, 24}, -- 4
		table_cache_4, -- 5
	}
	talent = tree.talents[10].info
	talent.name = "致死射擊"
	talent.tips = {
		format = "使你的遠程武器致命一擊傷害提高%s%%。",
		multiplier = 6,
	}
	talent = tree.talents[11].info
	talent.name = "震盪狙擊"
	talent.tips = {
		format = "你的自動射擊攻擊成功後有%s%%的機會使目標眩暈4秒。",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "驅散射擊"
	talent.tips = {
		{ -- 1
			{ left = "202法力", right = "15碼距離" }, -- 1
			{ left = "立即施法", right = "30秒冷卻時間" }, -- 2
			table_cache_34,
			{ left = "短程射擊，對目標造成50%的武器傷害，並使其暈眩4秒。任何傷害都會打斷該效果。使用時會結束你的攻擊。" }, -- 4
		},
	}
	talent = tree.talents[13].info
	talent.name = "彈幕"
	talent.tips = {
		format = "使你%s多重射擊和亂射法術的傷害提高%s%%。",
		{"", 4}, -- 1
		{"的", 8}, -- 2
		{"的", 12}, -- 3
	}
	talent = tree.talents[14].info
	talent.name = "作戰經驗"
	talent.tips = {
		format = "使你的總敏捷提高%s%%，並使總智力提高%s%%。",
		table_cache_94, -- 1
		table_cache_96, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "遠程武器專精"
	talent.tips = {
		format = "使你的遠程武器造成的傷害提高%s%%。",
	}
	talent = tree.talents[16].info
	talent.name = "仔細瞄準"
	talent.tips = {
		format = "並使你的遠程攻擊強度提高相當於你總智力的%s%%。",
		multiplier = 15,
	}
	talent = tree.talents[17].info
	talent.name = "強擊光環"
	talent.tips = {
		{ -- 1
			{ left = "325點法力" }, -- 1
			table_cache_45,
			{ left = "使半徑45碼範圍內小隊成員的攻擊強度提高50點，直到取消為止。" }, -- 3
		},
	}
	talent = tree.talents[18].info
	talent.name = "強化彈幕"
	talent.tips = {
		format = "使你多重射擊造成致命一擊的機率提高%s%%，並使你有%s%%的機率在引導亂射時避免被中斷。",
		{4, 33}, -- 1
		{8, 66}, -- 2
		{12, 100}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "狙擊大師"
	talent.tips = {
		format = "使你的遠程攻擊強度提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "沉默射擊"
	talent.tips = {
		{ -- 1
			{ left = "202點法力", right = "5-35碼距離" }, -- 1
			{ left = "立即施法", right = "20秒冷卻時間" }, -- 2
			table_cache_34,
			{ left = "對目標造成50%的武器傷害並使目標沉默3秒。" }, -- 4
		},
	}
	tree = data[3]
	tree.info.name = "生存"
	talent = tree.talents[1].info
	talent.name = "怪物殺手"
	talent.tips = {
		format = "使你對野獸、巨人和龍類所造成的所有傷害提高%s%%，對野獸、巨人和龍類所造成的致命一擊傷害提高%s%%。",
		table_cache_77, -- 1
		table_cache_48, -- 2
		table_cache_3, -- 3
	}
	talent = tree.talents[2].info
	talent.name = "人型殺手"
	talent.tips = {
		format = "使你對人型生物所造成的所有傷害提高%s%%，對人型生物所造成的致命一擊傷害提高%s%%。",
		table_cache_77, -- 1
		table_cache_48, -- 2
		table_cache_3, -- 3
	}
	talent = tree.talents[3].info
	talent.name = "鷹眼"
	talent.tips = {
		format = "使你遠程武器的射程延長%s碼。",
		multiplier = 2,
	}
	talent = tree.talents[4].info
	talent.name = "猛烈強擊"
	talent.tips = {
		format = "使你猛禽一擊及貓鼬撕咬的致命一擊機率提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[5].info
	talent.name = "誘捕"
	talent.tips = {
		format = "使你的獻祭陷阱、冰霜陷阱和爆炸陷阱有%s%%的機率困住目標，令它們無法移動，持續4秒。",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "偏斜"
	talent.tips = {
		format = "使你的招架機率提高%s%%。",
	}
	talent = tree.talents[7].info
	talent.name = "強化摔絆"
	talent.tips = {
		format = "使你的摔絆技能有%s%%的機率令目標在5秒內無法移動。",
		7, -- 1
		14, -- 2
		20, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "靈巧陷阱"
	talent.tips = {
		format = "使你冰凍陷阱及冰霜陷阱的持續時間延長%s%%，並使獻祭陷阱和爆炸陷阱所造成的傷害提高%s%%，同時增加毒蛇陷阱召喚出來的毒蛇數量%s%%。",
		{15, 15, 15}, -- 1
		table_cache_4, -- 2
	}
	talent = tree.talents[9].info
	talent.name = "生存專家"
	talent.tips = {
		format = "使你的總生命力提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[10].info
	talent.name = "威懾"
	talent.tips = {
		{ -- 1
			table_cache_78,
			{ left = "啟動之後，使你的閃躲和招架機率提高25%，持續10秒。" }, -- 2
		},
	}
	talent = tree.talents[11].info
	talent.name = "精通陷阱"
	talent.tips = {
		format = "使敵人對陷阱效果的抵抗機率降低%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "穩固"
	talent.tips = {
		format = "使你的攻擊命中敵人的機率提高%s%%，並使你抵抗移動限制效果的機率提高%s%%。",
		table_cache_22, -- 1
		table_cache_76, -- 2
		table_cache_70, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "強化假死"
	talent.tips = {
		format = "使你假死技能被抵抗的機率降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "求生本能"
	talent.tips = {
		format = "使所有承受的傷害降低%s%%，同時提高攻擊強度%s%%。",
		table_cache_48, -- 1
		table_cache_12, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "殺戮本能"
	talent.tips = {
		format = "使你所有攻擊造成致命一擊的機率提高%s%%。",
	}
	talent = tree.talents[16].info
	talent.name = "反擊"
	talent.tips = {
		{ -- 1
			{ left = "45法力", right = "5碼距離" }, -- 1
			{ left = "立即施法", right = "5秒冷卻時間" }, -- 2
			{ left = "在招架敵人的攻擊之後可以使用的技能，對敵人造成40點傷害，並使其無法移動，持續5秒。反擊無法被格擋、閃躲或招架。" }, -- 3
		},
	}
	talent = tree.talents[17].info
	talent.name = "足智多謀"
	talent.tips = {
		format = "使所有陷阱和近戰攻擊技能的法力消耗降低%s%%並使所有陷阱的冷卻時間減少%s秒。",
		table_cache_49, -- 1
		{40, 4}, -- 2
		{60, 6}, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "閃電反射"
	talent.tips = {
		format = "使你的敏捷提高%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[19].info
	talent.name = "追獵回饋"
	talent.tips = {
		format = "當你的射擊技能造成致命一擊時，使你有%s%%的機率獲得該射擊技能40%%的法力。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "翼龍釘刺"
	talent.tips = {
		{ -- 1
			{ left = "115點法力", right = "5-35碼距離" }, -- 1
			table_cache_2,
			table_cache_34,
			{ left = "釘刺目標，使其沉睡12秒。任何傷害都會取消沉睡效果。當目標醒來時，釘刺會在12秒內對其造成300點自然傷害。每個獵人在同一時間內只能對一個目標使用一種釘刺。" }, -- 4
		},
	}
	talent = tree.talents[21].info
	talent.name = "弱點識破"
	talent.tips = {
		format = "你的遠程致命一擊有%s%%的機率對目標施加破甲虛弱效果。破甲虛弱提高所有對該目標攻擊者的攻擊強度，數值為你敏捷的25%%，持續7秒。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[22].info
	talent.name = "戰術大師"
	talent.tips = {
		format = "你的遠程攻擊成功擊中後有6%%的機率提高所有攻擊的致命一擊率%s%%，持續8秒。",
		multiplier = 2,
	}
	talent = tree.talents[23].info
	talent.name = "準備就緒"
	talent.tips = {
		{ -- 1
			table_cache_78,
			{ left = "啟動之後，這項技能立即結束你其他獵人技能的冷卻時間。" }, -- 2
		},
	}
	data = Talented_Data.WARRIOR
	-- data.name = "Warrior"
	tree = data[1]
	tree.info.name = "武器"
	talent = tree.talents[1].info
	talent.name = "強化英勇打擊"
	talent.tips = {
		format = "使你英勇打擊技能所消耗的怒氣降低%s點。",
	}
	talent = tree.talents[2].info
	talent.name = "偏斜"
	talent.tips = {
		format = "使你的招架機率提高%s%%。",
	}
	talent = tree.talents[3].info
	talent.name = "強化撕裂"
	talent.tips = {
		format = "使你撕裂技能的流血傷害效果提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[4].info
	talent.name = "強化衝鋒"
	talent.tips = {
		format = "使你衝鋒技能所產生的怒氣提高%s點。",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "鋼鐵意志"
	talent.tips = {
		format = "使你抵抗昏迷和魅惑效果的機率額外提高%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[6].info
	talent.name = "強化雷霆一擊"
	talent.tips = {
		format = "使你雷霆一擊技能所消耗的怒氣降低%s點，並使傷害提高%s%%和降低攻擊速度的效果額外提高%s%%。",
		{1, 40, 4}, -- 1
		{2, 70, 7}, -- 2
		{4, 100, 10}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "強化壓制"
	talent.tips = {
		format = "使你壓制技能造成致命一擊的機率提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "憤怒掌控"
	talent.tips = {
		"每3秒產生1點怒氣值。", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "重傷"
	talent.tips = {
		format = "你的致命一擊導致目標流血，在12秒內造成相當於你的武器平均傷害%s%%。",
		multiplier = 20,
	}
	talent = tree.talents[10].info
	talent.name = "雙手武器專精"
	talent.tips = {
		format = "使你雙手近戰武器所造成的傷害提高%s%%。",
	}
	talent = tree.talents[11].info
	talent.name = "刺穿"
	talent.tips = {
		format = "使你在戰鬥姿態、防禦姿態和狂暴姿態下的各種技能的致命一擊傷害加成提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[12].info
	talent.name = "長柄和斧專精"
	talent.tips = {
		format = "使你的斧類武器和長柄類武器造成致命一擊的機率提高%s%%。",
	}
	talent = tree.talents[13].info
	talent.name = "死亡之願"
	talent.tips = {
		{ -- 1
			table_cache_81,
			table_cache_86,
			{ left = "啟動之後，你的物理攻擊造成的傷害提高20%，並免疫恐懼效果，但是受到的所有傷害亦增加5%。持續30秒。" }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "錘類武器專精"
	talent.tips = {
		format = "使用錘類武器時，你的近戰攻擊有一定機率令目標昏迷3秒並產生6點怒氣。%s",
		"", -- 1
		"比等級1的錘類武器專精更有效。", -- 2
		"比等級2的錘類武器專精更有效。", -- 3
		"比等級3的錘類武器專精更有效。", -- 4
		"比等級4的錘類武器專精更有效。", -- 5
	}
	talent = tree.talents[15].info
	talent.name = "劍類武器專精"
	talent.tips = {
		format = "使你在用劍類武器擊中敵人後有%s%%的機率對同一個目標進行一次額外的攻擊。",
	}
	talent = tree.talents[16].info
	talent.name = "強化攔截"
	talent.tips = {
		format = "使你攔截技能的冷卻時間降低%s秒。",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "強化斷筋"
	talent.tips = {
		format = "使你的斷筋技能有%s%%的機率令目標無法移動，持續5秒。",
		multiplier = 5,
	}
	talent = tree.talents[18].info
	talent.name = "強化懲戒"
	talent.tips = {
		format = "使你反擊風暴、魯莽及盾牆技能的冷卻時間減少%s分鐘，並使其有效時間延長%s秒。",
		table_cache_13, -- 1
		table_cache_60, -- 2
		{10, 6}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "血之狂暴"
	talent.tips = {
		format = "你的撕裂及重傷技能同時讓目標受到的所有物理傷害增加%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "致死打擊"
	talent.tips = {
		{ -- 1
			table_cache_64,
			table_cache_57,
			table_cache_79,
			{ left = "一次猛烈的攻擊，對目標造成武器傷害外加85點傷害，並使任何形式的治療對其產生的效果降低50%，持續10秒。" }, -- 4
		},
	}
	talent = tree.talents[21].info
	talent.name = "復甦之風"
	talent.tips = {
		format = "當你被昏迷或癱瘓效果擊中，會在10秒內產生%s點怒氣並恢復%s%%的總生命力。",
		table_cache_21, -- 1
		table_cache_10, -- 2
	}
	talent = tree.talents[22].info
	talent.name = "強化致死打擊"
	talent.tips = {
		format = "使你致死打擊技能的冷卻時間降低%s秒和所造成的傷害提高%s%%。",
		{0.2, 1}, -- 1
		{0.4, 2}, -- 2
		{0.6, 3}, -- 3
		{0.8, 4}, -- 4
		table_cache_22, -- 5
	}
	talent = tree.talents[23].info
	talent.name = "無盡怒氣"
	talent.tips = {
		"使你在造成傷害時多產生25%的怒氣。", -- 1
	}
	tree = data[2]
	tree.info.name = "狂怒"
	talent = tree.talents[1].info
	talent.name = "震耳嗓音"
	talent.tips = {
		format = "使你戰鬥怒吼、挫志怒吼和命令之吼效果的作用範圍和持續時間提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[2].info
	talent.name = "殘忍"
	talent.tips = {
		format = "使你近戰武器對敵人造成致命一擊的機率提高%s%%。",
	}
	talent = tree.talents[3].info
	talent.name = "強化挫志怒吼"
	talent.tips = {
		format = "使你挫志怒吼技能降低敵人近戰攻擊強度的效果提高%s%%。",
		multiplier = 8,
	}
	talent = tree.talents[4].info
	talent.name = "怒不可遏"
	talent.tips = {
		format = "使你用武器對敵人造成近戰傷害之後有機會獲得1點額外的怒氣點數。%s",
		"", -- 1
		"此效果的發生機率比怒不可遏(等級1)還要高。", -- 2
		"此效果的發生機率比怒不可遏(等級2)還要高。", -- 3
		"此效果的發生機率比怒不可遏(等級3)還要高。", -- 4
		"此效果的發生機率比怒不可遏(等級4)還要高。", -- 5
	}
	talent = tree.talents[5].info
	talent.name = "強化順劈斬"
	talent.tips = {
		format = "使你順劈斬技能的傷害加成提高%s%%。",
		multiplier = 40,
	}
	talent = tree.talents[6].info
	talent.name = "刺耳怒吼"
	talent.tips = {
		{ -- 1
			table_cache_81,
			table_cache_20,
			{ left = "使附近10碼範圍內的所有敵人暈眩，並降低移動速度50%，持續5秒。" }, -- 3
		},
	}
	talent = tree.talents[7].info
	talent.name = "血之狂熱"
	talent.tips = {
		format = "在受到致命一擊之後，會在6秒內恢復總生命力的%s%%。",
	}
	talent = tree.talents[8].info
	talent.name = "命令風采"
	talent.tips = {
		format = "使你戰鬥怒吼所賦予的近戰攻擊強度加成和命令之吼所賦予的生命加成提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[9].info
	talent.name = "雙武器專精"
	talent.tips = {
		format = "使你副手武器所造成的傷害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[10].info
	talent.name = "強化斬殺"
	talent.tips = {
		format = "使你斬殺技能所消耗的怒氣消耗減少%s點。",
		2, -- 1
		5, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "狂怒"
	talent.tips = {
		format = "使你在遭到敵人的致命一擊之後所進行的最多12次近戰攻擊都獲得%s%%的額外傷害加值，效果持續12秒。",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "強化猛擊"
	talent.tips = {
		format = "使你猛擊技能的施放時間減少%s秒。",
		multiplier = 0.5,
	}
	talent = tree.talents[13].info
	talent.name = "橫掃攻擊"
	talent.tips = {
		{ -- 1
			{ left = "30 怒氣" }, -- 1
			{ left = "立即", right = "30 秒冷卻時間" }, -- 2
			{ left = "需要戰鬥姿勢，狂暴姿態" }, -- 3
			{ left = "你在接下來的10次近戰攻擊中可以攻擊附近一個額外的敵人。" }, -- 4
		},
	}
	talent = tree.talents[14].info
	talent.name = "精通武器"
	talent.tips = {
		format = "使你的攻擊被目標閃躲的機率降低%s%%，並使你受到的所有繳械效果持續時間縮短%s%%。此效果無法與其它縮短繳械持續時間的效果堆疊。",
		table_cache_97, -- 1
		table_cache_104, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "強化狂暴之怒"
	talent.tips = {
		format = "使用狂暴之怒技能之後獲得%s點怒氣。",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "亂舞"
	talent.tips = {
		format = "在你造成致命一擊之後，使你下3次近戰攻擊的速度提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "精準"
	talent.tips = {
		format = "使你近戰武器擊中目標的機率提高%s%%。",
	}
	talent = tree.talents[18].info
	talent.name = "嗜血"
	talent.tips = {
		{ -- 1
			table_cache_64,
			table_cache_57,
			{ left = "立即攻擊目標，對其造成217點的傷害。另外，你接下來5次成功的近戰攻擊每次都會令你恢復10點生命。效果持續8秒。所造成的傷害以你的攻擊強度決定。" }, -- 3
			table_cache_52,
			table_cache_105,
			{ left = "  等級2：13生命力" }, -- 6
			{ left = "  等級3：17生命力" }, -- 7
			{ left = "  等級4：20生命力" }, -- 8
			{ left = "  等級5：25生命力" }, -- 9
			{ left = "  等級6：30生命力" }, -- 10
		},
	}
	talent = tree.talents[19].info
	talent.name = "強化旋風斬"
	talent.tips = {
		format = "使你旋風斬技能的冷卻時間減少%s秒。",
	}
	talent = tree.talents[20].info
	talent.name = "強化狂暴姿態"
	talent.tips = {
		format = "當你處於狂暴姿態時，你的攻擊強度提高%s%%，並且威脅值降低%s%%。",
		table_cache_48, -- 1
		table_cache_12, -- 2
		table_cache_74, -- 3
		table_cache_5, -- 4
		table_cache_53, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "暴怒"
	talent.tips = {
		{ -- 1
			{ left = "20 點怒氣" }, -- 1
			table_cache_20,
			{ left = "戰士進入暴怒狀態，攻擊強度提高30點，並使大部分成功的近戰攻擊造成攻擊強度額外提高30點。此效果可疊加5次。持續30秒。此技能只能在造成致命一擊後使用。" }, -- 3
			table_cache_52,
			table_cache_105,
			{ left = "  等級2：+40攻擊強度" }, -- 6
			{ left = "  等級3：+50攻擊強度" }, -- 7
		},
	}
	tree = data[3]
	tree.info.name = "防護"
	talent = tree.talents[1].info
	talent.name = "強化血性狂暴"
	talent.tips = {
		format = "使你的血性狂暴技能所獲得的怒氣提高%s點。",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "精通戰術"
	talent.tips = {
		format = "在改變姿態的時候可以保留最多%s點怒氣。此外當你處於防禦姿態時，大幅提升嗜血和致死打擊所造成的威脅值。",
		multiplier = 5,
	}
	talent = tree.talents[3].info
	talent.name = "預知"
	talent.tips = {
		format = "使你的防禦技能提高%s點。",
		multiplier = 4,
	}
	talent = tree.talents[4].info
	talent.name = "盾牌專精"
	talent.tips = {
		format = "使你用盾牌格擋攻擊的機率提高%s%%，在成功格擋後有%s%%的機率得到1點怒氣。",
		{1, 20}, -- 1
		{2, 40}, -- 2
		{3, 60}, -- 3
		{4, 80}, -- 4
		{5, 100}, -- 5
	}
	talent = tree.talents[5].info
	talent.name = "堅韌"
	talent.tips = {
		format = "使你因裝備而獲得的護甲值提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "破釜沉舟"
	talent.tips = {
		{ -- 1
			{ left = "瞬發", right = "8 分鐘冷卻時間" }, -- 1
			{ left = "啟動之後，使你暫時獲得30%的生命力，持續20秒。在效果解除之後，這些生命力會被扣除。" }, -- 2
		},
	}
	talent = tree.talents[7].info
	talent.name = "強化盾牌格擋"
	talent.tips = {
		"使你的盾牌格擋技能可以額外格擋一次攻擊，並使其有效時間延長1秒。", -- 1
	}
	talent = tree.talents[8].info
	talent.name = "強化復仇"
	talent.tips = {
		format = "使你的復仇技能有%s%%的機率令目標昏迷3秒。",
		multiplier = 15,
	}
	talent = tree.talents[9].info
	talent.name = "挑釁"
	talent.tips = {
		format = "使你在防禦姿態下由於攻擊而造成的威脅值提高%s%%，並且提高%s點熟練技能。",
		{5, 2}, -- 1
		table_cache_37, -- 2
		table_cache_7, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "強化破甲攻擊"
	talent.tips = {
		format = "使你的破甲攻擊和挫敗所消耗的怒氣降低%s點。",
	}
	talent = tree.talents[11].info
	talent.name = "強化繳械"
	talent.tips = {
		format = "使你的繳械技能的效果持續時間延長%s秒。",
	}
	talent = tree.talents[12].info
	talent.name = "強化嘲諷"
	talent.tips = {
		format = "使你的嘲諷技能的冷卻時間減少%s秒。",
	}
	talent = tree.talents[13].info
	talent.name = "強化盾牆"
	talent.tips = {
		format = "使你的盾牆技能的有效時間延長%s秒。",
		3, -- 1
		5, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "震盪猛擊"
	talent.tips = {
		{ -- 1
			{ left = "15 怒氣", right = "5 碼距離範圍" }, -- 1
			{ left = "瞬發", right = "45 秒冷卻時間" }, -- 2
			{ left = "使目標昏迷5秒。" }, -- 3
		},
	}
	talent = tree.talents[15].info
	talent.name = "強化盾擊"
	talent.tips = {
		format = "使你的盾擊技能有%s%%的機率使目標沉默3秒。",
		multiplier = 50,
	}
	talent = tree.talents[16].info
	talent.name = "精通盾牌"
	talent.tips = {
		format = "使你的盾牌所能吸收的傷害提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[17].info
	talent.name = "單手武器專精"
	talent.tips = {
		format = "使你的單手近戰武器所能造成的傷害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "強化防禦姿態"
	talent.tips = {
		format = "使防禦姿態中所有受到的法術降低傷害%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[19].info
	talent.name = "盾牌猛擊"
	talent.tips = {
		{ -- 1
			{ left = "20 怒氣", right = "5 碼距離" }, -- 1
			table_cache_57,
			{ left = "|cffeb0504需要盾牌|r" }, -- 3
			{ left = "用盾牌猛擊目標，對其造成225到235點傷害，此傷害會從盾牌格擋值獲得加成，並且驅散目標身上的1個魔法效果，同時產生大量的威脅值。" }, -- 4
			table_cache_52,
			table_cache_105,
			{ left = "  等級2：264-276點傷害" }, -- 7
			{ left = "  等級3：303-317點傷害" }, -- 8
			{ left = "  等級4：342-358點傷害" }, -- 9
			{ left = "  等級5：410-430點傷害" }, -- 10
			{ left = "  等級6：478-502點傷害" }, -- 11
		},
	}
	talent = tree.talents[20].info
	talent.name = "專注之怒"
	talent.tips = {
		format = "使你所有的攻擊技能所消耗的怒氣減少%s點。",
	}
	talent = tree.talents[21].info
	talent.name = "活力"
	talent.tips = {
		format = "使你的總耐力提高%s%%，並使總力量提高%s%%。",
		table_cache_44, -- 1
		table_cache_9, -- 2
		table_cache_33, -- 3
		table_cache_26, -- 4
		table_cache_62, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "挫敗"
	talent.tips = {
		{ -- 1
			{ left = "15 怒氣", right = "5 碼距離" }, -- 1
			table_cache_20,
			{ left = "|cffeb0504需要單手近戰武器|r" }, -- 3
			{ left = "擊破目標的護甲，造成破甲攻擊的效果。此外，對其造成50%的武器傷害加上目標身上每個累加的破甲攻擊效果將附帶15點的傷害。此破甲攻擊的效果最高可堆疊5次。" }, -- 4
			table_cache_52,
			table_cache_105,
			{ left = "  等級2：+25傷害" }, -- 7
			{ left = "  等級3：+35傷害" }, -- 8
		},
	}
	data = Talented_Data.SHAMAN
	-- data.name = "薩滿"
	tree = data[1]
	tree.info.name = "元素"
	talent = tree.talents[1].info
	talent.name = "傳導"
	talent.tips = {
		format = "使你的震擊法術、閃電箭和閃電鏈所消耗的法力減少%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "震盪"
	talent.tips = {
		format = "使你的震擊法術、閃電箭和閃電鏈所能造成的傷害效果提高%s%%。",
	}
	talent = tree.talents[3].info
	talent.name = "大地之握"
	talent.tips = {
		format = "使你石爪圖騰的生命力提高%s%%和地縛圖騰的有效範圍提高%s%%。",
		{25, 10}, -- 1
		{50, 20}, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "元素結界"
	talent.tips = {
		format = "受到火焰、冰霜和自然傷害效果時所承受的傷害降低%s%%。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "烈焰呼喚"
	talent.tips = {
		format = "使你火焰圖騰所造成的傷害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "元素集中"
	talent.tips = {
		"使你火焰、冰霜或自然系的傷害法術造成致命一擊之後進入節能施法狀態。這個狀態可以使你的下2個傷害性法術所消耗的法力減少40%。", -- 1
	}
	talent = tree.talents[7].info
	talent.name = "迴響"
	talent.tips = {
		format = "使你震擊法術的冷卻時間減少%s秒。",
		0.2, -- 1
		0.4, -- 2
		0.6, -- 3
		0.8, -- 4
		1, -- 5
	}
	talent = tree.talents[8].info
	talent.name = "雷霆呼喚"
	talent.tips = {
		format = "使你閃電箭和閃電鏈造成致命一擊的機率額外提高%s%%。",
	}
	talent = tree.talents[9].info
	talent.name = "強化火焰新星圖騰"
	talent.tips = {
		format = "使你火焰新星圖騰啟動所需的延遲時間減少%s秒，並降低熔岩圖騰所產生的威脅值%s%%。",
		table_cache_97, -- 1
		table_cache_104, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "暴風之眼"
	talent.tips = {
		format = "使你有%s%%的機率在受到敵人的近戰或遠程致命一擊後獲得專注施法的效果，持續6秒。專注施法效果可防止因受到傷害而損失薩滿法術的施法時間。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "元素破壞"
	talent.tips = {
		format = "在你的攻擊法術造成致命一擊後使你的近戰攻擊造成致命一擊的機率提高%s%%，持續10秒。",
		multiplier = 3,
	}
	talent = tree.talents[12].info
	talent.name = "雷霆延伸"
	talent.tips = {
		format = "提高閃電箭和閃電鏈的施法距離%s碼。",
		multiplier = 3,
	}
	talent = tree.talents[13].info
	talent.name = "元素之怒"
	talent.tips = {
		"使你灼熱、熔岩和火焰新星圖騰以及火焰、冰霜和自然法術的致命一擊傷害加成提高100%。", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "無情的風暴"
	talent.tips = {
		format = "每5秒恢復相當於你智力%s%%的法力，此效果在施法時同樣有效。",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "元素準確"
	talent.tips = {
		format = "使你的火焰、冰霜和自然法術命中的機率提高%s%%，並使火焰，冰霜和自然法術所造成的威脅值降低%s%%。",
		table_cache_9, -- 1
		{4, 7}, -- 2
		{6, 10}, -- 3
	}
	talent = tree.talents[16].info
	talent.name = "精通閃電"
	talent.tips = {
		format = "使你閃電箭和閃電鏈的施法時間減少%s秒。",
		0.2, -- 1
		0.4, -- 2
		0.6, -- 3
		0.8, -- 4
		1, -- 5
	}
	talent = tree.talents[17].info
	talent.name = "精通元素"
	talent.tips = {
		{ -- 1
			table_cache_86,
			{ left = "啟動之後，你的下一個火焰、冰霜或自然法術有100%的機率造成致命一擊同時降低100%法力消耗。" }, -- 2
		},
	}
	talent = tree.talents[18].info
	talent.name = "元素之盾"
	talent.tips = {
		format = "使你被近戰和遠程攻擊造成致命一擊的機率降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[19].info
	talent.name = "閃電超載"
	talent.tips = {
		format = "使你閃電箭和閃電鏈有%s%%的機率對同一目標發射第二發同樣的法術，不消耗任何法力也不造成威脅值，但傷害值減半。",
		multiplier = 4,
	}
	talent = tree.talents[20].info
	talent.name = "憤怒圖騰"
	talent.tips = {
		{ -- 1
			{ left = "147 點法力" }, -- 1
			table_cache_45,
			{ left = "工具：火焰圖騰" }, -- 3
			{ left = "在施法者腳下召喚一根5點生命力的憤怒圖騰。此圖騰使範圍20碼內所有的隊伍成員命中和法術致命一擊的機率提高3%，持續2分鐘。" }, -- 4
		},
	}
	tree = data[2]
	tree.info.name = "增強"
	talent = tree.talents[1].info
	talent.name = "先祖知識"
	talent.tips = {
		format = "使你的法力上限提高%s%%。",
	}
	talent = tree.talents[2].info
	talent.name = "盾牌專精"
	talent.tips = {
		format = "使你用盾牌格擋攻擊的機率提高%s%%，並使盾牌格擋的減傷值提高%s%%。",
		table_cache_22, -- 1
		table_cache_76, -- 2
		table_cache_70, -- 3
		table_cache_115, -- 4
		table_cache_75, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "圖騰守護"
	talent.tips = {
		format = "使你石甲圖騰和風牆圖騰所能吸收的傷害提高%s%%，並使根基圖騰的冷卻時間減少%s秒。",
		{10, 1}, -- 1
		table_cache_49, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "雷鳴猛擊"
	talent.tips = {
		format = "使你武器造成致命一擊的機率提高%s%%。",
	}
	talent = tree.talents[5].info
	talent.name = "強化幽魂之狼"
	talent.tips = {
		format = "使你幽魂之狼法術的施法時間減少%s秒。",
	}
	talent = tree.talents[6].info
	talent.name = "強化閃電之盾"
	talent.tips = {
		format = "使你閃電之盾所造成的傷害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "圖騰增效"
	talent.tips = {
		format = "使你大地之力圖騰和風之優雅圖騰的加成效果提高%s%%。",
		8, -- 1
		15, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "薩滿之凝"
	talent.tips = {
		"使你的近戰攻擊造成致命一擊後進入凝聚狀態，此狀態可使你下一個震擊法術的法力消耗降低60%。", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "預知"
	talent.tips = {
		format = "使你的閃躲機率額外提高%s%%。",
	}
	talent = tree.talents[10].info
	talent.name = "亂舞"
	talent.tips = {
		format = "在你造成致命一擊之後，使你下3次近戰攻擊速度提高%s%%。",
		10, -- 1
		15, -- 2
		20, -- 3
		25, -- 4
		30, -- 5
	}
	talent = tree.talents[11].info
	talent.name = "堅韌"
	talent.tips = {
		format = "使你因裝備而獲得的護甲值提高%s%%，並使你受到降低移動速度效果的持續時間縮短%s%%。",
		table_cache_76, -- 1
		table_cache_115, -- 2
		table_cache_69, -- 3
		{8, 40}, -- 4
		table_cache_63, -- 5
	}
	talent = tree.talents[12].info
	talent.name = "強化武器系圖騰"
	talent.tips = {
		format = "使你風怒圖騰所賦予的近戰攻擊強度加成提高%s%%，並使火舌圖騰所造成的傷害提高%s%%。",
		table_cache_7, -- 1
		{30, 12}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "魂化武器"
	talent.tips = {
		"有一定機率招架敵人的近戰攻擊並使你因近戰攻擊而造成的威脅值降低30%。", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "元素武器"
	talent.tips = {
		format = "使你石化武器所造成的傷害提高%s%%，風怒武器的加成效果提高%s%%，並使火舌武器和冰封武器所造成的傷害提高%s%%。",
		{7, 13, 5}, -- 1
		{14, 27, 10}, -- 2
		{20, 40, 15}, -- 3
	}
	talent = tree.talents[15].info
	talent.name = "思想迅捷"
	talent.tips = {
		format = "使你的薩滿瞬發法術所消耗的法力降低%s%%，同時使你的法術傷害和治療效果提高相當於攻擊強度%s%%的數值。",
		table_cache_76, -- 1
		table_cache_115, -- 2
		table_cache_69, -- 3
	}
	talent = tree.talents[16].info
	talent.name = "精通武器"
	talent.tips = {
		format = "使你所有武器所造成的傷害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "雙武器專精"
	talent.tips = {
		format = "使你在手持雙武器攻擊時的命中率額外提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "雙武器"
	talent.tips = {
		"可以在副手上裝備單手和副手武器。", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "風暴打擊"
	talent.tips = {
		{ -- 1
			{ left = "236 點法力", right = "近戰範圍" }, -- 1
			table_cache_58,
			table_cache_79,
			{ left = "瞬間揮動主、副手武器攻擊敵人，另外，下2次對該敵人造成的自然傷害將提高20%，持續12秒。" }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "怒不可抑"
	talent.tips = {
		format = "當你的近戰攻擊造成致命一擊時，使半徑20碼內所有小隊成員的近戰攻擊強度提高%s%%，持續10秒。",
		multiplier = 2,
	}
	talent = tree.talents[21].info
	talent.name = "薩滿之怒"
	talent.tips = {
		{ -- 1
			table_cache_36,
			{ left = "使你受到的所有傷害降低30%並且在近戰攻擊命中目標後有一定機率恢復相當於你攻擊強度30%的法力。持續15秒。" }, -- 2
		},
	}
	tree = data[3]
	tree.info.name = "恢復"
	talent = tree.talents[1].info
	talent.name = "強化治療波"
	talent.tips = {
		format = "使你治療波的施法時間減少0.%s秒。",
	}
	talent = tree.talents[2].info
	talent.name = "潮汐集中"
	talent.tips = {
		format = "使你治療法術所消耗的法力減少%s%%。",
	}
	talent = tree.talents[3].info
	talent.name = "強化復生"
	talent.tips = {
		format = "使你復生法術的冷卻時間縮短%s分鐘，並使復生後獲得的生命力和法力提高%s%%。",
		table_cache_53, -- 1
		table_cache_28, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "先祖治療"
	talent.tips = {
		format = "在你的任何一個治療法術對目標造成極效治療效果後，使目標因裝備而獲得的護甲值提高%s%%，持續15秒。",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "圖騰集中"
	talent.tips = {
		format = "使你施放圖騰所消耗的法力減少%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "自然引導"
	talent.tips = {
		format = "使你的近戰和法術攻擊的命中機率提高%s%%。",
	}
	talent = tree.talents[7].info
	talent.name = "專注治療"
	talent.tips = {
		format = "使你在施放薩滿法術時有%s%%的機率避免因受到傷害而中斷施法。",
		multiplier = 14,
	}
	talent = tree.talents[8].info
	talent.name = "精通圖騰"
	talent.tips = {
		"使你圖騰影響友方目標的有效半徑延長為30碼。", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "治療恩典"
	talent.tips = {
		format = "使你的治療法術所產生的威脅值降低%s%%，並使你的法術被驅散的機率降低%s%%。",
		table_cache_62, -- 1
		table_cache_25, -- 2
		table_cache_106, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "強化恢復系圖騰"
	talent.tips = {
		format = "使你法力之泉圖騰和治療之泉圖騰的效果提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "潮汐精通"
	talent.tips = {
		format = "使你治療法術的極效治療和閃電法術的致命一擊機率提高%s%%。",
	}
	talent = tree.talents[12].info
	talent.name = "治療之路"
	talent.tips = {
		format = "你的治療波法術有%s%%的機率使目標從之後的治療波獲得額外6%%的治療效果，持續15秒。最多可堆疊3次。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "自然迅捷"
	talent.tips = {
		{ -- 1
			table_cache_86,
			{ left = "啟動之後，你的下一個施法時間低於10秒的自然法術會成為瞬發法術。" }, -- 2
		},
	}
	talent = tree.talents[14].info
	talent.name = "精神專注"
	talent.tips = {
		format = "使薩滿受到沉默和中斷施法技能的持續時間降低%s%%。此效果無法與其他同類的效果堆疊。",
		multiplier = 10,
	}
	talent = tree.talents[15].info
	talent.name = "淨化"
	talent.tips = {
		format = "使你治療法術的效果提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "法力之潮圖騰"
	talent.tips = {
		{ -- 1
			{ left = "66 點法力" }, -- 1
			{ left = "立即施法", right = "5 分鐘冷卻時間" }, -- 2
			{ left = "工具：水之圖騰" }, -- 3
			{ left = "在施法者身邊召喚一個生命力為5點的法力之潮圖騰，持續12秒。它可以為半徑20碼範圍內的小隊成員每3秒恢復總法力的6%。" }, -- 4
		},
	}
	talent = tree.talents[17].info
	talent.name = "自然守護者"
	talent.tips = {
		format = "當你因受到傷害而生命力降到30%%以下時，你有%s%%的機率恢復自己10%%的總生命力並降低你對該目標的威脅。5秒冷卻時間。",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "自然祝福"
	talent.tips = {
		format = "使你的法術傷害和治療效果提高相當於你總智力的%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[19].info
	talent.name = "強化治療鍊"
	talent.tips = {
		format = "使你治療鍊的治療效果提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[20].info
	talent.name = "大地之盾"
	talent.tips = {
		{ -- 1
			{ left = "300法力", right = "40 碼距離" }, -- 1
			table_cache_45,
			{ left = "以大地護盾保護一個目標，使被保護者有30%的機率在施法時不會因受到傷害而被打斷，並在受到近戰攻擊時恢復保護的目標150點生命力。此效果每幾秒只能發生一次。總共可使用6次。持續10分鐘。此護盾一次只能放在一個目標身上，而且一個目標一次只能被一種元素護盾所保護。" }, -- 3
		},
	}
	data = Talented_Data.MAGE
	-- data.name = "法師"
	tree = data[1]
	tree.info.name = "秘法"
	talent = tree.talents[1].info
	talent.name = "秘法精妙"
	talent.tips = {
		format = "使目標對你所有法術的抗性降低%s點，並使你的秘法法術產生的威脅值降低%s%%。",
		{5, 20}, -- 1
		table_cache_35, -- 2
	}
	talent = tree.talents[2].info
	talent.name = "秘法集中"
	talent.tips = {
		format = "使敵人抵抗你的秘法法術機率降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "強化秘法飛彈"
	talent.tips = {
		format = "使你有%s%%的機率在施放秘法飛彈時不會因為受到傷害而中斷施法。",
		multiplier = 20,
	}
	talent = tree.talents[4].info
	talent.name = "魔杖專精"
	talent.tips = {
		format = "使你魔杖造成的傷害提高%s%%。",
		13, -- 1
		25, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "魔法吸收"
	talent.tips = {
		format = "所有抗性提高%s點，使你在完全抵抗任何法術後可以恢復總法力的%s%%。1秒冷卻時間。",
		table_cache_65, -- 1
		table_cache_13, -- 2
		table_cache_46, -- 3
		table_cache_55, -- 4
		table_cache_21, -- 5
	}
	talent = tree.talents[6].info
	talent.name = "秘法專注"
	talent.tips = {
		format = "使你有%s%%的機率在傷害性法術擊中目標之後進入節能施法狀態。節能施法狀態可以使你的下一個傷害性法術所消耗的法力減少100%%。",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "魔法調和"
	talent.tips = {
		format = "使你魔法抑制和魔法增效的效果提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "秘法碰撞"
	talent.tips = {
		format = "使你魔爆術和秘法衝擊造成致命一擊的機率額外提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "秘法轉化"
	talent.tips = {
		"使你的護甲值提高相當於你智力的100%。", -- 1
	}
	talent = tree.talents[10].info
	talent.name = "強化法力護盾"
	talent.tips = {
		format = "當法力護盾生效時，承受每點傷害所耗損的法力降低%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "強化法術反制"
	talent.tips = {
		format = "使你法術反制有%s%%的機率使目標沉默4秒。",
		multiplier = 50,
	}
	talent = tree.talents[12].info
	talent.name = "秘法冥想"
	talent.tips = {
		format = "使你在施法時仍保持%s%%的法力恢復速度。",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "強化閃現術"
	talent.tips = {
		format = "使你施放閃現術後的%s秒內被所有攻擊和法術命中的機率降低25%%。",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "氣定神閒"
	talent.tips = {
		{ -- 1
			table_cache_86,
			{ left = "啟動之後，你的下一個施法時間低於10秒的法師法術會成為瞬發法術。" }, -- 2
		},
	}
	talent = tree.talents[15].info
	talent.name = "秘法心智"
	talent.tips = {
		format = "使你的總智力提高 %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[16].info
	talent.name = "稜彩庇護"
	talent.tips = {
		format = "使所有承受的傷害降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "秘法增效"
	talent.tips = {
		format = "使你的法術傷害和致命一擊機率提高 %s%%.",
	}
	talent = tree.talents[18].info
	talent.name = "秘法潛能"
	talent.tips = {
		format = "使你在節能施法時所施放的法術造成致命一擊的機率提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[19].info
	talent.name = "強化秘法飛彈"
	talent.tips = {
		format = "你的秘法飛彈從你的法術傷害加成獲得%s%%額外的法術傷害效果，但是所消耗的法力提高%s%%。",
		table_cache_50, -- 1
		table_cache_51, -- 2
		{45, 6}, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "秘法強化"
	talent.tips = {
		{ -- 1
			table_cache_86,
			{ left = "啟動之後，你的法術會造成30%的額外傷害，但同時也要消耗30%的額外法力才能施放。這個效果可以持續15秒。" }, -- 2
		},
	}
	talent = tree.talents[21].info
	talent.name = "法術能量"
	talent.tips = {
		format = "使你所有法術的致命一擊傷害加成提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[22].info
	talent.name = "精通心靈"
	talent.tips = {
		format = "使法術所造成的傷害提高相當於你總智力的%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[23].info
	talent.name = "減速術"
	talent.tips = {
		{ -- 1
			{ left = "627 法力", right = "30 碼距離" }, -- 1
			table_cache_45,
			{ left = "使目標移動速度降低50%，遠程攻擊間隔時間延長50%且施法時間延長50%，持續15秒。緩速術同時間只能影響一個目標。" }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "火焰"
	talent = tree.talents[1].info
	talent.name = "強化火球術"
	talent.tips = {
		format = "使你火球術的施法時間減少0.%s秒。",
	}
	talent = tree.talents[2].info
	talent.name = "衝擊"
	talent.tips = {
		format = "使你的火焰法術有%s%%的機率令目標昏迷2秒。",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "點燃"
	talent.tips = {
		format = "你的火焰法術在造成致命一擊後使目標燃燒，令其在4秒內承受相當於該法術傷害%s%%的額外傷害。",
		multiplier = 8,
	}
	talent = tree.talents[4].info
	talent.name = "烈焰投擲"
	talent.tips = {
		format = "使你的火焰法術射程增加%s碼。",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "強化火焰衝擊"
	talent.tips = {
		format = "使你火焰衝擊的冷卻時間減少%s秒。",
		multiplier = 0.5,
	}
	talent = tree.talents[6].info
	talent.name = "焚化"
	talent.tips = {
		format = "使你火焰衝擊和灼燒法術造成致命一擊的機率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "強化烈焰風暴"
	talent.tips = {
		format = "使你烈焰風暴造成致命一擊的機率提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "炎爆術"
	talent.tips = {
		{ -- 1
			{ left = "125 法力", right = "35 碼距離" }, -- 1
			{ left = "6 秒施法時間" }, -- 2
			{ left = "發射一枚巨大的火球，對目標造成148到195點火焰傷害，並在12秒內造成總計56點額外的火焰傷害。" }, -- 3
		},
	}
	talent = tree.talents[9].info
	talent.name = "燃燒之魂"
	talent.tips = {
		format = "使你的火燄魔法在施放時有%s%%的機率不會因為你受傷害而被干擾，並使你的火燄法術產生的威脅值減少%s%%。",
		{35, 5}, -- 1
		{70, 10}, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "強化灼燒"
	talent.tips = {
		format = "使你的灼燒法術有%s%%的機率令目標更易受到火焰傷害，在其受到火焰系攻擊時承受的傷害提高3%%，持續30秒。最多可累加5次。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "熔火護盾"
	talent.tips = {
		format = "使你的防護火焰結界啟動時有%s%%的機率反射受到的火焰系法術，並使你的熔火護甲有%s%%的機率作用於遠程和法術攻擊上。",
		table_cache_63, -- 1
		{20, 100}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "元素大師"
	talent.tips = {
		format = "你的火焰和冰霜法術在造成致命一擊後為施法者恢復該法術所消耗基礎法力的%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "玩火"
	talent.tips = {
		format = "使所有法術所造成的傷害提高%s%%和承受法術攻擊時所受到的傷害提高%s%%。",
		table_cache_77, -- 1
		table_cache_48, -- 2
		table_cache_3, -- 3
	}
	talent = tree.talents[14].info
	talent.name = "火焰重擊"
	talent.tips = {
		format = "使你火焰法術造成致命一擊的機率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "衝擊波"
	talent.tips = {
		{ -- 1
			{ left = "215 法力" }, -- 1
			table_cache_16,
			{ left = "施法者放出一道火焰衝擊波，所有被衝擊波觸及的敵人都會受到160到192點火焰傷害並暈眩6秒。" }, -- 3
		},
	}
	talent = tree.talents[16].info
	talent.name = "熾烈迅捷"
	talent.tips = {
		format = "使你被近戰或遠程攻擊擊中後有%s%%的機率使移動速度提升50%%同時移除所有限制移動的效果。此效果持續8秒。",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "火焰強化"
	talent.tips = {
		format = "使你火焰法術所造成的傷害提高%s%%.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "火焰狂熱"
	talent.tips = {
		format = "增加你所有火焰法術的致命一擊機率，並使所需要的法力降低額外的%s%%。",
	}
	talent = tree.talents[19].info
	talent.name = "燃燒"
	talent.tips = {
		{ -- 1
			table_cache_86,
			{ left = "啟動之後，你每一個擊中目標的火系傷害法術會增加你火系傷害法術10%的致命一擊機率。此效果會持續到你的火系法術造成3次致命一擊。" }, -- 2
		},
	}
	talent = tree.talents[20].info
	talent.name = "熔岩之怒"
	talent.tips = {
		format = "使你所有的法術對生命力低於20%%的目標所造成的傷害提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[21].info
	talent.name = "強力火球術"
	talent.tips = {
		format = "你的火球術從你的法術傷害加成獲得%s%%額外的法術傷害效果",
		multiplier = 3,
	}
	talent = tree.talents[22].info
	talent.name = "龍之吐息"
	talent.tips = {
		{ -- 1
			{ left = "475 法力" }, -- 1
			{ left = "立即施法", right = "20 冷卻時間" }, -- 2
			{ left = "施法者面前錐形範圍內的所有目標將受到382到442點火焰傷害同時困惑3秒。任何直接傷害將會使困惑中的目標甦醒。使用時會停止你的攻擊。" }, -- 3
		},
	}
	tree = data[3]
	tree.info.name = "冰霜"
	talent = tree.talents[1].info
	talent.name = "冰霜結界"
	talent.tips = {
		format = "使你霜甲術和冰甲術所提供的護甲值和抗性提高%s%%。另外，你的防護冰霜結界啟動時有%s%%的機率將冰霜系法術和魔法效果反射給施法者。",
		table_cache_8, -- 1
		table_cache_39, -- 2
	}
	talent = tree.talents[2].info
	talent.name = "強化寒冰箭"
	talent.tips = {
		format = "使你寒冰箭的施法時間減少0.%s秒。",
	}
	talent = tree.talents[3].info
	talent.name = "元素準確"
	talent.tips = {
		format = "使你火焰和冰霜法術所消耗的法力降低%s%%，並使目標抵抗你的火焰和冰霜法術的機率降低%s%%。",
		table_cache_77, -- 1
		table_cache_48, -- 2
		table_cache_3, -- 3
	}
	talent = tree.talents[4].info
	talent.name = "寒冰碎片"
	talent.tips = {
		format = "使你冰霜法術的致命一擊傷害加成提高%s%%。",
		multiplier = 20,
	}
	talent = tree.talents[5].info
	talent.name = "霜寒刺骨"
	talent.tips = {
		format = "使你的冰冷效果有%s%%的機率將目標冰凍5秒。",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "強化冰霜新星"
	talent.tips = {
		format = "使你冰霜新星的冷卻時間減少%s秒。",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "極寒冰霜"
	talent.tips = {
		format = "使你冰冷效果的持續時間延長%s秒;並使目標的移動速度額外降低%s%%。",
		{1, 4}, -- 1
		{2, 7}, -- 2
		{3, 10}, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "刺骨寒冰"
	talent.tips = {
		format = "使你冰霜法術所造成的傷害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "冰寒脈動"
	talent.tips = {
		{ -- 1
			{ left = "67 法力" }, -- 1
			table_cache_1,
			{ left = "加速你的施法，使施法速度提高20%，並且在施法時受到傷害而中斷施法的機率降低100%，持續20秒。" }, -- 3
		},
	}
	talent = tree.talents[10].info
	talent.name = "強化暴風雪"
	talent.tips = {
		format = "為你的暴風雪法術增加冰冷效果，使目標的移動速度降低%s%%。持續1.5秒。",
		30, -- 1
		50, -- 2
		65, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "極寒延伸"
	talent.tips = {
		format = "使你冰霜新星和冰錐術的有效半徑以及寒冰箭、冰霜長矛和暴風雪的射程提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[12].info
	talent.name = "冰霜導能"
	talent.tips = {
		format = "使你所有冰霜法術所消耗的法力減少%s%%，並使冰霜法術所產生的威脅值降低%s%%。",
		{5, 4}, -- 1
		{10, 7}, -- 2
		table_cache_8, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "碎冰"
	talent.tips = {
		format = "使你所有法術在擊中被冰凍的敵人時造成致命一擊的機率提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[14].info
	talent.name = "冰霜之心"
	talent.tips = {
		format = "使你受到冰霜和火焰效果法術所承受的傷害降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "急速冷卻"
	talent.tips = {
		{ -- 1
			{ left = "立即", right = "8分鐘冷卻時間" }, -- 1
			{ left = "啟動之後，使你的所有冰霜法術的冷卻時間結束。" }, -- 2
		},
	}
	talent = tree.talents[16].info
	talent.name = "強化冰錐術"
	talent.tips = {
		format = "使你冰錐術所造成的傷害提高%s%%。",
		15, -- 1
		25, -- 2
		35, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "浮冰"
	talent.tips = {
		format = "使你冰錐術、急速冷卻、寒冰護體和寒冰屏障的冷卻時間縮短%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "深冬之寒"
	talent.tips = {
		format = "使你冰霜法術在擊中敵人後有%s%%的機會附帶深冬之寒的效果，提升冰霜法術2%%致命一擊的機率，持續15秒。最多可累加5次。",
		multiplier = 20,
	}
	talent = tree.talents[19].info
	talent.name = "寒冰護體"
	talent.tips = {
		{ -- 1
			{ left = "305法力" }, -- 1
			table_cache_16,
			{ left = "立即為你加上魔法護盾，可吸收454點傷害，持續1分鐘。只要護盾存在，受保護者的施法就不會被打斷。" }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "極地之風"
	talent.tips = {
		format = "使你造成的所有冰霜傷害提高%s%%，同時近戰和遠程攻擊命中你的機率降低%s%%。",
		table_cache_77, -- 1
		table_cache_48, -- 2
		table_cache_3, -- 3
		table_cache_12, -- 4
		table_cache_72, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "強力寒冰箭"
	talent.tips = {
		format = "你的寒冰箭可從你的法術傷害加成獲得額外%s%%的法術傷害效果，並使致命一擊的機率增加%s%%。",
		table_cache_65, -- 1
		table_cache_13, -- 2
		table_cache_46, -- 3
		table_cache_55, -- 4
		table_cache_21, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "召喚水元素"
	talent.tips = {
		{ -- 1
			{ left = "358法力" }, -- 1
			table_cache_1,
			{ left = "召喚一隻水元素來替施法者作戰，持續45秒。" }, -- 3
		},
	}
	data = Talented_Data.PRIEST
	-- data.name = "牧師"
	tree = data[1]
	tree.info.name = "戒律"
	talent = tree.talents[1].info
	talent.name = "堅定意志"
	talent.tips = {
		format = "使你抵抗昏迷，恐懼和沉默效果的機率提高 %s%%。",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "魔杖專精"
	talent.tips = {
		format = "使你魔杖造成的傷害提高 %s%%。",
		multiplier = 5,
	}
	talent = tree.talents[3].info
	talent.name = "無聲消退"
	talent.tips = {
		format = "使你的神聖系和戒律系法術威脅值降低%s%%，同時使你的法術被驅散的機率降低%s%%。",
		table_cache_12, -- 1
		table_cache_5, -- 2
		table_cache_71, -- 3
		table_cache_40, -- 4
		table_cache_28, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "強化真言術：韌"
	talent.tips = {
		format = "使你真言術：韌的及堅韌禱言的效果提高 %s%%。",
		multiplier = 15,
	}
	talent = tree.talents[5].info
	talent.name = "強化真言術：盾"
	talent.tips = {
		format = "使你真言術：盾吸收的傷害總量提高 %s%%。",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "殉難"
	talent.tips = {
		format = "使你有%s%%的機率在受到敵人的近戰或遠程致命一擊後獲得專注施法的效果，持續6秒。專注施法的效果可防止因受到傷害而損失施放牧師法術的施法時間，並提高中斷效果的抗性%s%%。",
		table_cache_80, -- 1
		table_cache_54, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "赦免"
	talent.tips = {
		format = "使你驅散魔法，祛病術，驅除疾病和群體驅魔所消耗的法力降低 %s%%。",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "心靈專注"
	talent.tips = {
		{ -- 1
			table_cache_14,
			{ left = "啟動之後，使所消耗的法力減少100%，造成致命一擊的機率提高25%（如果有可能造成致命一擊）。" }, -- 2
		},
	}
	talent = tree.talents[9].info
	talent.name = "冥想"
	talent.tips = {
		format = "使你在施法時仍保持%s%%的法力恢復速度。",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "強化心靈之火"
	talent.tips = {
		format = "使你心靈之火的護甲值加成提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "精神敏銳"
	talent.tips = {
		format = "使你瞬發法術所消耗的法力降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "強化法力燃燒"
	talent.tips = {
		format = "使你法力燃燒的施法時間減少%s秒。",
		multiplier = 0.5,
	}
	talent = tree.talents[13].info
	talent.name = "心靈之力"
	talent.tips = {
		format = "使你的法力上限提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "神聖之靈"
	talent.tips = {
		{ -- 1
			{ left = "250點法力", right = "30碼距離" }, -- 1
			table_cache_45,
			{ left = "聖潔的能量充滿目標全身，令其精神提高17點，持續30分鐘。" }, -- 3
		},
	}
	talent = tree.talents[15].info
	talent.name = "強化神聖之靈"
	talent.tips = {
		format = "你的神聖之靈和精神禱言法術同時提升目標的法術傷害和治療效果，相當等於他們總精神的%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "能量專注"
	talent.tips = {
		format = "你的懲擊、心靈震爆以及群體驅魔有%s%%額外的命中機率。此外，你的群體驅魔施法時間降低%s秒。",
		{2, 0.5}, -- 1
		{4, 1}, -- 2
	}
	talent = tree.talents[17].info
	talent.name = "意志之力"
	talent.tips = {
		format = "使你的法術傷害提高%s%%，攻擊性法術的致命一擊機率提高%s%%。",
		table_cache_77, -- 1
		table_cache_48, -- 2
		table_cache_3, -- 3
		table_cache_12, -- 4
		table_cache_72, -- 5
	}
	talent = tree.talents[18].info
	talent.name = "意志專注"
	talent.tips = {
		format = "當你受到致命一擊時可獲得意志專注的效果，使你受到的所有傷害降低%s%%，並且受到的治療效果提高%s%%。此效果最多可堆疊3次，持續8秒。",
		table_cache_9, -- 1
		{3, 7}, -- 2
		{4, 10}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "注入能量"
	talent.tips = {
		{ -- 1
			{ left = "419點法力", right = "30碼距離" }, -- 1
			table_cache_1,
			{ left = "對目標注入能量，使其施法速度提高20%，施放所有法術的法力消耗降低20%。持續15秒。" }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "反射之盾"
	talent.tips = {
		format = "使你的真言術：盾所吸收的%s%%傷害反射給攻擊者。此反射傷害不會造成威脅值。",
		multiplier = 10,
	}
	talent = tree.talents[21].info
	talent.name = "啟蒙"
	talent.tips = {
		format = "使你的總耐力、智力、和精神都提高%s%%。",
	}
	talent = tree.talents[22].info
	talent.name = "痛苦鎮壓"
	talent.tips = {
		{ -- 1
			{ left = "209點法力" }, -- 1
			table_cache_2,
			{ left = "立即降低一名友方目標的威脅值5%，使其承受的所有傷害降低40%，同時提高對所有驅散效果的抗性65%，持續8秒。" }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "神聖"
	talent = tree.talents[1].info
	talent.name = "專注治療"
	talent.tips = {
		format = "使你有%s%%的機率在施放治療法術的時候不會因為受到傷害而中斷施法。",
		multiplier = 35,
	}
	talent = tree.talents[2].info
	talent.name = "強化恢復"
	talent.tips = {
		format = "使你恢復法術的治療效果提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[3].info
	talent.name = "神聖專精"
	talent.tips = {
		format = "使你神聖法術造成致命一擊的機率提高%s%%。",
	}
	talent = tree.talents[4].info
	talent.name = "法術護衛"
	talent.tips = {
		format = "使你受到的所有法術傷害降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "神聖之怒"
	talent.tips = {
		format = "使你懲擊和神聖之火、治療術、強效治療術的施法時間減少0.%s秒。",
	}
	talent = tree.talents[6].info
	talent.name = "神聖新星"
	talent.tips = {
		{ -- 1
			{ left = "185法力" }, -- 1
			table_cache_45,
			{ left = "在施法者身邊產生聖光爆炸，對10碼內所有敵人目標造成29到34點神聖傷害，並恢復10碼內所有隊友54到63點生命力。這些效果不會造成威脅。" }, -- 3
		},
	}
	talent = tree.talents[7].info
	talent.name = "祝福復元"
	talent.tips = {
		format = "受到近戰或遠程致命一擊後，在6秒內治療受到傷害的%s%%。",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "靈感"
	talent.tips = {
		format = "在你的快速治療、治療術、強效治療術、束縛治療、治療禱言或治療之環對目標造成極效治療效果後，使目標的護甲值提高%s%%，持續15秒。",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[9].info
	talent.name = "神聖延伸"
	talent.tips = {
		format = "使你懲擊與神聖之火法術的射程，以及治療禱言、神聖新星和治療之環法術的有效半徑提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "強化治療術"
	talent.tips = {
		format = "使你次級治療術、治療術和強效治療術的法力消耗降低%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "灼熱之光"
	talent.tips = {
		format = "使你懲擊法術和神聖之火的傷害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "強化治療禱言"
	talent.tips = {
		format = "使你的治療禱言和癒合禱言所消耗的法力減少%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "救贖之魂"
	talent.tips = {
		"使總精神提高5%，並使牧師在死亡時便為救贖之魂，持續15秒。救贖之魂無法移動、攻擊，且不受任何法術或效果攻擊或鎖定。進入此形態，牧師可不消耗法力施放任何治療法術。效果結束後，牧師就會死亡。", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "精神導引"
	talent.tips = {
		format = "使法術傷害和治療效果提高最多相當於你總精神值的%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[15].info
	talent.name = "光之澎湃"
	talent.tips = {
		format = "你的法術致命一擊有%s%%的機率使你的下一次懲擊法術成為瞬發法術，不消耗法力但無法造成致命一擊。效果持續10秒。",
		multiplier = 25,
	}
	talent = tree.talents[16].info
	talent.name = "精神治療"
	talent.tips = {
		format = "使你的治療法術的治療效果提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "神聖專注"
	talent.tips = {
		format = "使你有%s%%的機率在施放快速治療、束縛治療或強效治療術後進入節能施法狀態，使你下一個快速治療、束縛治療或強效治療術所消耗的法力降低100%%。",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "光束泉"
	talent.tips = {
		{ -- 1
			{ left = "225法力", right = "40碼距離" }, -- 1
			{ left = "1.5秒施法時間", right = "6分鐘冷卻時間" }, -- 2
			{ left = "製造一個神聖光束泉。隊伍或團隊成員可以擊點光束泉在6秒內恢復801點生命力。受到攻擊會取消此效果。光束泉可持續3分鐘或使用5次。" }, -- 3
		},
	}
	talent = tree.talents[19].info
	talent.name = "祝福韌性"
	talent.tips = {
		format = "當你受到致命一擊後有%s%%的機率防止你在6秒內再度受到致命一擊。",
		multiplier = 20,
	}
	talent = tree.talents[20].info
	talent.name = "強力治療術"
	talent.tips = {
		format = "你的強效治療術從你的治療加成獲得額外%s%%的治療效果，快速治療和束縛治療從你的治療加成獲得額外%s%%的治療效果。",
		table_cache_13, -- 1
		table_cache_55, -- 2
		table_cache_17, -- 3
		table_cache_27, -- 4
		table_cache_10, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "治療之環"
	talent.tips = {
		{ -- 1
			{ left = "300法力", right = "40碼距離" }, -- 1
			table_cache_45,
			{ left = "恢復友方目標以及目標15碼範圍內的隊友們304到334點生命力。" }, -- 3
		},
	}
	tree = data[3]
	tree.info.name = "暗影"
	talent = tree.talents[1].info
	talent.name = "精神分流"
	talent.tips = {
		format = "使你有%s%%的機率在殺死一個敵人並因此獲得經驗或榮譽値之後精神屬性提高100%%。在這段時間裡，你的法力可以在施法時仍保持50%%的恢復速度。持續15秒。",
		multiplier = 20,
	}
	talent = tree.talents[2].info
	talent.name = "昏厥"
	talent.tips = {
		format = "使你的暗影系傷害性法術有%s%%的機率令目標昏迷3秒。",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "暗影親和"
	talent.tips = {
		format = "使你的暗影法術造成的威脅值降低%s%%。",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[4].info
	talent.name = "強化暗言術：痛"
	talent.tips = {
		format = "使你的暗言術：痛的持續時間延長%s秒。",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "暗影集中"
	talent.tips = {
		format = "使目標抵抗你暗影法術的機率下降%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "強化心靈尖嘯"
	talent.tips = {
		format = "使你心靈尖嘯的冷卻時間減少%s秒。",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "強化心靈震爆"
	talent.tips = {
		format = "使你心靈震爆的冷卻時間減少%s秒。",
		multiplier = 0.5,
	}
	talent = tree.talents[8].info
	talent.name = "精神鞭笞"
	talent.tips = {
		{ -- 1
			{ left = "45法力", right = "20碼距離" }, -- 1
			{ left = "需引導" }, -- 2
			{ left = "以暗影能量攻擊目標的靈魂，在3秒內對其造成總計75點暗影傷害，並使其移動速度降低50%。" }, -- 3
			table_cache_52,
			table_cache_105,
			{ left = " 等級2：70點法力，126點傷害" }, -- 6
			{ left = " 等級3：100點法力，186點傷害" }, -- 7
			{ left = " 等級4：135點法力，261點傷害" }, -- 8
			{ left = " 等級5：165點法力，330點傷害" }, -- 9
			{ left = " 等級6：205點法力，426點傷害" }, -- 10
			{ left = " 等級7：230點法力，528點傷害" }, -- 11
		},
	}
	talent = tree.talents[9].info
	talent.name = "強化漸隱術"
	talent.tips = {
		format = "使你漸隱術的冷卻時間減少%s秒。",
		multiplier = 3,
	}
	talent = tree.talents[10].info
	talent.name = "暗影延伸"
	talent.tips = {
		format = "使你暗影系傷害性法術的射程提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "暗影交織"
	talent.tips = {
		format = "你的暗影系傷害性法術有%s%%的機會使你的目標在受到暗影系攻擊時更脆弱，受到的暗影傷害提高2%%，持續15秒。此效果最多可疊加5次。",
		multiplier = 20,
	}
	talent = tree.talents[12].info
	talent.name = "沉默"
	talent.tips = {
		{ -- 1
			{ left = "225法力", right = "20碼距離" }, -- 1
			{ left = "立即施法", right = "45秒冷卻時間" }, -- 2
			{ left = "使目標沉默，並使其在5秒內不能施法。" }, -- 3
		},
	}
	talent = tree.talents[13].info
	talent.name = "吸血鬼的擁抱"
	talent.tips = {
		{ -- 1
			{ left = "52法力", right = "30碼距離" }, -- 1
			table_cache_58,
			{ left = "暗影魔法的能量籠罩你的目標，使你的暗影魔法對其造成傷害總量的15%轉而治療所有隊友，持續1分鐘。" }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "強化吸血鬼的擁抱"
	talent.tips = {
		format = "使你吸血鬼的擁抱的治療比率額外提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[15].info
	talent.name = "精神專注"
	talent.tips = {
		format = "使你心靈震爆，精神控制和精神鞭笞法術所消耗的法力消耗降低%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "暗影韌性"
	talent.tips = {
		format = "使你被所有法術致命一擊的機率降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "黑暗"
	talent.tips = {
		format = "使你的暗影法術傷害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "暗影形態"
	talent.tips = {
		{ -- 1
			{ left = "838點法力" }, -- 1
			{ left = "立即施法", right = "1.5秒冷卻時間" }, -- 2
			{ left = "進入暗影形態，使你能造成的暗影傷害提高15%，受到物理攻擊時承受的傷害降低15%。但是在這個形態下，你無法施放神聖系法術。" }, -- 3
		},
	}
	talent = tree.talents[19].info
	talent.name = "暗影強化"
	talent.tips = {
		format = "使你心靈震爆和暗言術：死造成致命一擊機率提高%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[20].info
	talent.name = "苦難"
	talent.tips = {
		format = "你的暗言術：痛、精神鞭笞和吸血之觸法術同時使目標受到額外%s%%的法術傷害。",
	}
	talent = tree.talents[21].info
	talent.name = "吸血之觸"
	talent.tips = {
		{ -- 1
			{ left = "325 法力", right = "30 碼距離" }, -- 1
			{ left = "1.5 秒施法時間" }, -- 2
			{ left = "對你的目標在15秒內造成495點暗影傷害，並使所有隊友獲得相當於你任何暗影法術所造成的傷害值5%的法力。" }, -- 3
		},
	}
	data = Talented_Data.WARLOCK
	-- data.name = "術士"
	tree = data[1]
	tree.info.name = "痛苦"
	talent = tree.talents[1].info
	talent.name = "鎮壓"
	talent.tips = {
		format = "使敵人抵抗你的痛苦系法術的機率降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "強化腐蝕術"
	talent.tips = {
		format = "使你的腐蝕術施法時間減少%s秒。",
		0.4, -- 1
		0.8, -- 2
		1.2, -- 3
		1.6, -- 4
		2, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "強化虛弱詛咒"
	talent.tips = {
		format = "使你虛弱詛咒的效果提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[4].info
	talent.name = "強化吸取靈魂"
	talent.tips = {
		format = "若目標死於你的吸取靈魂過程中，你將獲得總法力%s%%的法力。此外，你的痛苦系法術所產生的威脅值降低%s%%。",
		{7, 5}, -- 1
		table_cache_8, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "強化生命分流"
	talent.tips = {
		format = "使你的生命分流法術所轉化的法力提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "靈魂虹吸"
	talent.tips = {
		format = "每一個在目標身上的痛苦系法術均會使你的吸取生命法術所吸取的數值額外提高%s%%，額外提高的效果上限為%s%%。",
		{2, 24}, -- 1
		{4, 60}, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "強化痛苦詛咒"
	talent.tips = {
		format = "使你痛苦詛咒所造成的傷害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "惡魔專注"
	talent.tips = {
		format = "使你有%s%%的機率在施放吸取生命、吸取法力或吸取靈魂法術時不會因受到傷害而被打斷。",
		multiplier = 14,
	}
	talent = tree.talents[9].info
	talent.name = "詛咒增幅"
	talent.tips = {
		{ -- 1
			table_cache_86,
			{ left = "使你下一個厄運詛咒或痛苦詛咒的效果提高50%，或使你的下一個疲勞詛咒的效果提高20%，持續30秒。" }, -- 2
		},
	}
	talent = tree.talents[10].info
	talent.name = "無情延伸"
	talent.tips = {
		format = "使你痛苦系法術的射程延長%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "夜幕"
	talent.tips = {
		format = "使你腐蝕術和吸取生命法術有%s%%的機率在對敵人造成傷害之後令你進入暗影冥思狀態。暗影冥思狀態令你下一個暗影箭法術的施法時間減少100%%。",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "強力腐蝕術"
	talent.tips = {
		format = "你的腐蝕術從你的法術傷害加成中獲得額外%s%%的效果。",
		multiplier = 12,
	}
	talent = tree.talents[13].info
	talent.name = "暗影之擁"
	talent.tips = {
		format = "你的腐蝕術、痛苦詛咒、生命虹吸和腐蝕種子法術也會造成暗影之擁效果，使目標造成的物理傷害降低%s%%。",
	}
	talent = tree.talents[14].info
	talent.name = "生命虹吸"
	talent.tips = {
		{ -- 1
			{ left = "140法力", right = "30 碼距離" }, -- 1
			table_cache_20,
			{ left = "每3秒將目標的15點生命力轉移給施法者，持續30秒。" }, -- 3
		},
	}
	talent = tree.talents[15].info
	talent.name = "疲勞詛咒"
	talent.tips = {
		{ -- 1
			{ left = "156法力", right = "30 碼距離" }, -- 1
			table_cache_20,
			{ left = "使目標的速度降低30%，持續12秒。 每個術士只能對一個目標施加一種詛咒。" }, -- 3
		},
	}
	talent = tree.talents[16].info
	talent.name = "精通暗影"
	talent.tips = {
		format = "使你暗影法術所造成的傷害或吸取的生命力提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "傳染"
	talent.tips = {
		format = "使你痛苦詛咒、腐蝕術和腐蝕種子的傷害提高1%%，並使痛苦系法術被驅散的機率額外降低%s%%。",
		multiplier = 6,
	}
	talent = tree.talents[18].info
	talent.name = "黑暗契約"
	talent.tips = {
		{ -- 1
			{ left = "30 碼範圍" }, -- 1
			table_cache_20,
			{ left = "從你的寵物身上抽取305點法力並全部轉化給你。" }, -- 3
		},
	}
	talent = tree.talents[19].info
	talent.name = "強化恐懼嚎叫"
	talent.tips = {
		format = "使你恐懼嚎叫法術的施法時間縮短%s.%s秒。",
		{0, 8}, -- 1
		table_cache_22, -- 2
	}
	talent = tree.talents[20].info
	talent.name = "憎惡"
	talent.tips = {
		format = "使你元素詛咒的傷害加成效果額外提高%s%%。",
	}
	talent = tree.talents[21].info
	talent.name = "痛苦動盪"
	talent.tips = {
		{ -- 1
			{ left = "270法力", right = "30 碼距離" }, -- 1
			{ left = "1.5秒施法時間" }, -- 2
			{ left = "暗影能量緩慢傷害目標，在18秒內造成660點傷害。另外，如果痛苦動盪被驅散，將對驅散法術者造成990點傷害，並使他們沉默5秒。" }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "惡魔"
	talent = tree.talents[1].info
	talent.name = "強化治療石"
	talent.tips = {
		format = "使你治療石所恢復的生命力增加%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[2].info
	talent.name = "強化小鬼"
	talent.tips = {
		format = "使小鬼火焰箭、火焰之盾和血之契印的效果提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[3].info
	talent.name = "惡魔之擁"
	talent.tips = {
		format = "使你的耐力提高%s%%，同時使你的精神降低%s%%。",
		table_cache_23, -- 1
		table_cache_11, -- 2
		table_cache_15, -- 3
		table_cache_47, -- 4
		table_cache_42, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "強化生命通道"
	talent.tips = {
		format = "使你生命通道法術所傳送的生命力提高%s%%，並使最初消耗的生命力降低%s%%。",
		table_cache_53, -- 1
		table_cache_28, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "強化虛空行者"
	talent.tips = {
		format = "使你虛空行者的折磨、吞噬暗影、犧牲和受難法術的效果提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "惡魔智力"
	talent.tips = {
		format = "使你小鬼、虛空行者、魅魔、地獄獵犬和惡魔守衛的智力增加%s%%，並使你的法力上限提高%s%%。",
		table_cache_6, -- 1
		table_cache_73, -- 2
		table_cache_59, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "強化魅魔"
	talent.tips = {
		format = "使魅魔劇痛鞭笞和安撫之吻法術的效果提高%s%%，並使誘惑和次級隱形術的持續時間延長%s%%。",
		table_cache_53, -- 1
		table_cache_28, -- 2
		table_cache_66, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "惡魔支配"
	talent.tips = {
		{ -- 1
			{ left = "立即", right = "15 分鐘冷卻時間" }, -- 1
			{ left = "你的下一個召喚小鬼、虛空行者、魅魔、地獄獵犬和惡魔守衛的法術施法時間減少5.5秒，法力消耗減少50%。" }, -- 2
		},
	}
	talent = tree.talents[9].info
	talent.name = "惡魔耐力"
	talent.tips = {
		format = "使你的小鬼、虛空行者、魅魔、地獄獵犬和惡魔守衛的耐力增加%s%%，並使你的生命力上限提高%s%%。",
		table_cache_6, -- 1
		table_cache_73, -- 2
		table_cache_59, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "惡魔庇護"
	talent.tips = {
		format = "使你魔甲術和獄甲術的效果提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "召喚大師"
	talent.tips = {
		format = "使你召喚小鬼、虛空行者、魅魔、地獄獵犬和惡魔守衛的施法時間減少%s秒，法力消耗降低%s%%。",
		table_cache_56, -- 1
		{4, 40}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "邪惡強化"
	talent.tips = {
		format = "使你的虛空行者、魅魔、地獄獵犬和惡魔守衛的近戰傷害及使你小鬼火焰箭造成的傷害提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[13].info
	talent.name = "強化奴役惡魔"
	talent.tips = {
		format = "使你奴役惡魔法術的攻擊速度和施法速度懲罰減輕%s%%，並使惡魔抵抗奴役效果的機率降低%s%%。",
		table_cache_72, -- 1
		table_cache_53, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "惡魔犧牲"
	talent.tips = {
		{ -- 1
			{ left = "100碼距離" }, -- 1
			table_cache_20,
			{ left = "啟動之後，犧牲你目前所召喚的惡魔，使你獲得一種特殊效果，持續30分鐘。如果在此期間你召喚任意一個惡魔，該效果就會被取消。" }, -- 3
			table_cache_52,
			{ left = "小鬼：使你的火焰技能傷害提高15%。" }, -- 5
			table_cache_52,
			{ left = "虛空行者：使你每4秒恢復總生命力的2%。" }, -- 7
			table_cache_52,
			{ left = "魅魔：使你的暗影技能傷害提高15%。" }, -- 9
			table_cache_52,
			{ left = "地獄獵犬：使你每4秒恢復總法力的3%。" }, -- 11
			table_cache_52,
			{ left = "惡魔守衛：使你的暗影傷害提高10%，並使每4秒恢復總法力的2%。" }, -- 13
		},
	}
	talent = tree.talents[15].info
	talent.name = "魔石專精"
	talent.tips = {
		format = "使你火焰石的火焰傷害加成和效果提高%s%%，並使法術石的法術致命一擊等級加成提高%s%%。",
		{15, 15}, -- 1
		table_cache_66, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "法力餵食"
	talent.tips = {
		format = "當你從吸取法力或生命分流獲得法力時，你的寵物將得到相當於你獲得的法力點數%s%%的法力。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "惡魔學識大師"
	talent.tips = {
		{ -- 1
			table_cache_30,
			table_cache_52,
			{ left = "小鬼 - 對敵人造成的威脅降低4%。" }, -- 3
			table_cache_52,
			{ left = "虛空行者 - 受到物理攻擊時承受的傷害降低2%。" }, -- 5
			table_cache_52,
			{ left = "魅魔 - 對敵人造成的所有傷害提高2%。" }, -- 7
			table_cache_52,
			{ left = "地獄獵犬 - 每等級所有抗性提高0.2點。" }, -- 9
			table_cache_52,
			{ left = "惡魔守衛 - 對敵人造成的所有傷害提高1%且每等級所有抗性提高0.1點" }, -- 11
		},
		{ -- 2
			table_cache_30,
			table_cache_52,
			{ left = "小鬼 - 對敵人造成的威脅降低8%。" }, -- 3
			table_cache_52,
			{ left = "虛空行者 - 受到物理攻擊時承受的傷害降低4%。" }, -- 5
			table_cache_52,
			{ left = "魅魔 - 對敵人造成的所有傷害提高4%。" }, -- 7
			table_cache_52,
			{ left = "地獄獵犬 - 每等級所有抗性提高0.4點。" }, -- 9
			table_cache_52,
			{ left = "惡魔守衛 - 對敵人造成的所有傷害提高2%且每等級所有抗性提高0.2點。" }, -- 11
		},
		{ -- 3
			table_cache_30,
			table_cache_52,
			{ left = "小鬼 - 對敵人造成的威脅降低12%。" }, -- 3
			table_cache_52,
			{ left = "虛空行者 - 受到物理攻擊時承受的傷害降低6%。" }, -- 5
			table_cache_52,
			{ left = "魅魔 - 對敵人造成的所有傷害提高6%。" }, -- 7
			table_cache_52,
			{ left = "地獄獵犬 - 每等級所有抗性提高0.6點。" }, -- 9
			table_cache_52,
			{ left = "惡魔守衛 - 對敵人造成的所有傷害提高3%且每等級所有抗性提高0.3點。" }, -- 11
		},
		{ -- 4
			table_cache_30,
			table_cache_52,
			{ left = "小鬼 - 對敵人造成的威脅降低16%。" }, -- 3
			table_cache_52,
			{ left = "虛空行者 - 受到物理攻擊時承受的傷害降低8%。" }, -- 5
			table_cache_52,
			{ left = "魅魔 - 對敵人造成的所有傷害提高8%。" }, -- 7
			table_cache_52,
			{ left = "地獄獵犬 - 每等級所有抗性提高0.8點。" }, -- 9
			table_cache_52,
			{ left = "惡魔守衛 - 對敵人造成的所有傷害提高4%且每等級所有抗性提高0.4點。" }, -- 11
		},
		{ -- 5
			table_cache_30,
			table_cache_52,
			{ left = "小鬼 - 對敵人造成的威脅降低20%。" }, -- 3
			table_cache_52,
			{ left = "虛空行者 - 受到物理攻擊時承受的傷害降低10%。" }, -- 5
			table_cache_52,
			{ left = "魅魔 - 對敵人造成的所有傷害提高10%。" }, -- 7
			table_cache_52,
			{ left = "地獄獵犬 - 每等級所有抗性提高1點。" }, -- 9
			table_cache_52,
			{ left = "惡魔守衛 - 對敵人造成的所有傷害提高5%且每等級所有抗性提高0.5點。" }, -- 11
		},
	}
	talent = tree.talents[18].info
	talent.name = "惡魔韌性"
	talent.tips = {
		format = "使你被近戰攻擊和法術擊中時造成致命一擊的機率降低%s%%，並使你召喚的惡魔受到的傷害降低%s%%。",
		table_cache_22, -- 1
		table_cache_76, -- 2
		table_cache_70, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "靈魂鏈結"
	talent.tips = {
		{ -- 1
			{ left = "418法力", right = "100 碼距離" }, -- 1
			{ left = "瞬發" }, -- 2
			{ left = "啟動之後，施法者承受的傷害有20%被你的小鬼、虛空行者、魅魔、地獄獵犬、惡魔守衛或者奴役中的惡魔所分擔。此傷害分擔的效果不受其他因素影響。另外，惡魔和其主人所造成的傷害提高5%。只要惡魔保持啟動且受控制的狀態，該效果會一直持續。" }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "惡魔知識"
	talent.tips = {
		format = "使你的法術傷害提高相當於你目前寵物的耐力加上智力的%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[21].info
	talent.name = "惡魔策略"
	talent.tips = {
		format = "同時提高你和你召喚的惡魔所造成的近戰攻擊以及法術致命一擊機率提高%s%%。",
	}
	talent = tree.talents[22].info
	talent.name = "召喚惡魔守衛"
	talent.tips = {
		{ -- 1
			{ left = "2092 點法力" }, -- 1
			{ left = "10 秒施法時間" }, -- 2
			table_cache_32,
			{ left = "召喚一個惡魔守衛為術士作戰。" }, -- 4
		},
	}
	tree = data[3]
	tree.info.name = "毀滅"
	talent = tree.talents[1].info
	talent.name = "強化暗影箭"
	talent.tips = {
		format = "在你的暗影箭對目標造成致命一擊後，目標所受到的暗影傷害將提高%s%%，直到受到4次非持續性的傷害。效果最久持續12秒。",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "災變"
	talent.tips = {
		format = "使你毀滅系法術所消耗的法力降低%s%%。",
	}
	talent = tree.talents[3].info
	talent.name = "災禍"
	talent.tips = {
		format = "使你暗影箭和獻祭的施法時間減少0.%s秒，靈魂之火的施法時間減少%s.%s秒。",
		{1, 0, 4}, -- 1
		{2, 0, 8}, -- 2
		{3, 1, 2}, -- 3
		{4, 1, 6}, -- 4
		{5, 2, 0}, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "清算"
	talent.tips = {
		format = "使你毀滅系法術有%s%%的機率令目標暈眩5秒。",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "強化火焰箭"
	talent.tips = {
		format = "使小鬼火焰箭的施法時間降低0.%s秒。",
		25, -- 1
		5, -- 2
	}
	talent = tree.talents[6].info
	talent.name = "強化劇痛鞭笞"
	talent.tips = {
		format = "使魅魔劇痛鞭笞的冷卻時間減少%s秒。",
		multiplier = 3,
	}
	talent = tree.talents[7].info
	talent.name = "破壞"
	talent.tips = {
		format = "使你毀滅系法術造成致命一擊的機率提高%s%%。",
	}
	talent = tree.talents[8].info
	talent.name = "暗影灼燒"
	talent.tips = {
		{ -- 1
			{ left = "105 點法力", right = "20 碼距離" }, -- 1
			{ left = "立即", right = "15 秒冷卻時間" }, -- 2
			table_cache_32,
			{ left = "立即使用暗影能量衝擊目標，對其造成91到104點暗影傷害。如果目標被暗影灼燒後5秒內死亡，且施法者因此獲得經驗值或榮譽，則施法者獲得一塊靈魂裂片。" }, -- 4
		},
	}
	talent = tree.talents[9].info
	talent.name = "激化"
	talent.tips = {
		format = "使你有%s%%的機率在施放或引導毀滅系法術時不會因受到傷害而被打斷。",
		multiplier = 35,
	}
	talent = tree.talents[10].info
	talent.name = "毀滅延伸"
	talent.tips = {
		format = "使你毀滅系法術的射程增加%s%%，並且產生的威脅值降低%s%%。",
		table_cache_21, -- 1
		table_cache_10, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "強化灼熱之痛"
	talent.tips = {
		format = "使你灼熱之痛造成致命一擊的機率提高%s%%。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "火焰衝撞"
	talent.tips = {
		format = "使你火焰之雨、地獄烈焰和靈魂之火法術有%s%%的機率使目標昏迷3秒。",
		multiplier = 13,
	}
	talent = tree.talents[13].info
	talent.name = "強化獻祭"
	talent.tips = {
		format = "使你獻祭法術的初始傷害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[14].info
	talent.name = "毀滅"
	talent.tips = {
		"使你毀滅系法術的致命一擊傷害加成提高100%。", -- 1
	}
	talent = tree.talents[15].info
	talent.name = "虛空保護"
	talent.tips = {
		format = "在被暗影或火焰法術擊中之後，你有%s%%的機率對暗影或火焰法術免疫持續4秒。",
		multiplier = 10,
	}
	talent = tree.talents[16].info
	talent.name = "餘燼風暴"
	talent.tips = {
		format = "使你火焰法術所造成的傷害提高%s%%，燒盡法術的施法時間縮短%s%%。",
		table_cache_48, -- 1
		table_cache_12, -- 2
		table_cache_74, -- 3
		table_cache_5, -- 4
		table_cache_53, -- 5
	}
	talent = tree.talents[17].info
	talent.name = "反衝"
	talent.tips = {
		format = "使你法術造成致命一擊的機率額外提高%s%%，並賦予你%s%%的機率在被物理攻擊命中後使你的下一個暗影箭或燒盡的施法時間降低100%%。此效果持續8秒並且不會在每8秒內再次啟動。",
		{1, 8}, -- 1
		{2, 16}, -- 2
		{3, 25}, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "燃燒"
	talent.tips = {
		{ -- 1
			{ left = "165法力", right = "30 碼距離" }, -- 1
			{ left = "立即", right = "10 秒冷卻時間" }, -- 2
			{ left = "點燃一個受到你獻祭效果影響的目標，對其造成249到316點火焰傷害，並吞噬你獻祭法術的效果。" }, -- 3
		},
	}
	talent = tree.talents[19].info
	talent.name = "靈魂汲取"
	talent.tips = {
		format = "使你的暗影箭、暗影灼燒、靈魂之火、燒盡、灼熱之痛和燃燒有%s%%的機率恢復生命力相當於所造成20%%的傷害。",
		multiplier = 10,
	}
	talent = tree.talents[20].info
	talent.name = "暗影與火焰"
	talent.tips = {
		format = "使你暗影箭和燒盡法術從你的法術傷害加成中獲得額外%s%%的效果。",
		multiplier = 4,
	}
	talent = tree.talents[21].info
	talent.name = "暗影之怒"
	talent.tips = {
		{ -- 1
			{ left = "440法力", right = "30碼距離" }, -- 1
			{ left = "0.5 秒施法時間", right = "20秒冷卻時間" }, -- 2
			{ left = "釋放暗影之怒，造成357到422點暗影傷害並使半徑8碼內的所有敵人昏迷，持續2秒。" }, -- 3
		},
	}
	data = Talented_Data.DRUID
	-- data.name = "德魯伊"
	tree = data[1]
	tree.info.name = "平衡"
	talent = tree.talents[1].info
	talent.name = "強化憤怒"
	talent.tips = {
		format = "使你的憤怒和星火術的施法時間降低0.%s秒。",
	}
	talent = tree.talents[2].info
	talent.name = "自然之握"
	talent.tips = {
		{ -- 1
			{ left = "立即", right = "1分鐘冷卻時間" }, -- 1
			{ left = "啟動之後，任何擊中施法者的敵人都有35%的機率被施展糾纏根鬚（等級 1）。只能在戶外使用，可生效1次，持續45秒。" }, -- 2
		},
	}
	talent = tree.talents[3].info
	talent.name = "強化自然之握"
	talent.tips = {
		format = "使你的自然之握糾纏敵人的機率提高%s%%。",
		multiplier = 15,
	}
	talent = tree.talents[4].info
	talent.name = "自然掌握"
	talent.tips = {
		format = "使你有%s%%的機率在施放糾纏根鬚和颶風術時不會因為承受傷害而被打斷。",
		40, -- 1
		70, -- 2
		100, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "專注星光"
	talent.tips = {
		format = "使你的憤怒和星火術造成致命一擊的機率提高 %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "強化月火術"
	talent.tips = {
		format = "使你的月火術法術傷害和致命一擊的機率提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "強化荊棘術"
	talent.tips = {
		format = "使你的荊棘術和糾纏根鬚法術造成的傷害提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "蟲群"
	talent.tips = {
		{ -- 1
			{ left = "50法力", right = "30碼距離" }, -- 1
			{ left = "立即法術" }, -- 2
			{ left = "敵人被飛蟲圍繞，攻擊命中率降低2%，在12秒內受到總計108點自然傷害。" }, -- 3
		},
	}
	talent = tree.talents[9].info
	talent.name = "自然延伸"
	talent.tips = {
		format = "使你的平衡系法術和精靈之火(野性)的射程增加%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "復仇"
	talent.tips = {
		format = "使你的星火術、月火術和憤怒的致命一擊傷害加成提高%s%%。",
		multiplier = 20,
	}
	talent = tree.talents[11].info
	talent.name = "星空專注"
	talent.tips = {
		format = "使你的星火術有%s%%將目標擊昏3秒，並使你在施放憤怒法術時，抵抗中斷施法效果的機率增加%s%%。",
		table_cache_75, -- 1
		table_cache_63, -- 2
		{15, 70}, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "月神引導"
	talent.tips = {
		format = "使你的法術傷害和治療效果提高相當於你總智力的%s%%。",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "自然之賜"
	talent.tips = {
		"使你的任何法術造成致命一擊效果之後獲得自然的賜福，使你的下一個法術的施法時間減少0.5秒。", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "月光"
	talent.tips = {
		format = "使你的月火術、星火術、憤怒、治療之觸、癒合和回春術所消耗的法力減少%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[15].info
	talent.name = "月怒"
	talent.tips = {
		format = "使你的星火術、月火術和憤怒所能造成的傷害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "力量平衡"
	talent.tips = {
		format = "使你所有法術的命中機率提高，並使你被所有法術擊中的機率降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "夢境"
	talent.tips = {
		format = "每5秒恢復與智力%s%%等量的法力，施法時亦然。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "梟獸形態"
	talent.tips = {
		{ -- 1
			{ left = "521法力" }, -- 1
			table_cache_45,
			{ left = "德魯伊變身為梟獸形態，在這種形態下，由裝備獲得的護甲值提高400%，攻擊強度提高為你目前等級的150%，並使半徑30碼範圍內的所有隊友的法術致命一擊率提高5%。在此型態下所做出的近戰攻擊有機會在命中後恢復以攻擊強度為基準的法力。梟獸形態下只能施放解除詛咒和平衡系的法術。" }, -- 3
			table_cache_52,
			table_cache_18,
		},
	}
	talent = tree.talents[19].info
	talent.name = "強化精靈之火"
	talent.tips = {
		format = "你的精靈之火法術同時會使目標被近戰和遠程攻擊命中的機率提高%s%%。",
	}
	talent = tree.talents[20].info
	talent.name = "塞納留斯之怒"
	talent.tips = {
		format = "你的星火術從你的法術傷害加成中獲得額外%s%%的效果，並使你的憤怒從你的法術傷害加成中獲得額外%s%%的效果。",
		table_cache_13, -- 1
		table_cache_55, -- 2
		table_cache_17, -- 3
		table_cache_27, -- 4
		table_cache_10, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "自然之力"
	talent.tips = {
		{ -- 1
			{ left = "284法力", right = "30碼範圍" }, -- 1
			table_cache_1,
			{ left = "召喚3個樹人來攻擊目標敵人，持續30秒。" }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "野性戰鬥"
	talent = tree.talents[1].info
	talent.name = "兇暴"
	talent.tips = {
		format = "使你的槌擊、揮擊、爪擊、掃擊和割碎技能所消耗的怒氣或能量降低%s點。",
	}
	talent = tree.talents[2].info
	talent.name = "野性侵略"
	talent.tips = {
		format = "使你的挫志咆哮的攻擊強度減弱效果提高%s%%，並使凶猛撕咬所造成的傷害提高%s%%。",
		{8, 3}, -- 1
		{16, 6}, -- 2
		{24, 9}, -- 3
		{32, 12}, -- 4
		{40, 15}, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "野性本能"
	talent.tips = {
		format = "使你在熊和巨熊形態下所造成的威脅值提高%s%%，並在你潛行時降低敵人偵測到你的機率。",
		multiplier = 5,
	}
	talent = tree.talents[4].info
	talent.name = "野蠻衝撞"
	talent.tips = {
		format = "使你重擊跟突襲的昏迷效果持續時間延長%s秒。",
		multiplier = 0.5,
	}
	talent = tree.talents[5].info
	talent.name = "厚皮"
	talent.tips = {
		format = "使你由裝備而得到的護甲值提高%s%%。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "豹之迅捷"
	talent.tips = {
		format = "使你在獵豹形態下的戶外移動速度提高%s%%，並使你在獵豹、熊或巨熊形態下的閃躲機率提高%s%%。",
		table_cache_50, -- 1
		table_cache_51, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "野性衝鋒"
	talent.tips = {
		{ -- 1
			{ left = "5點怒氣", right = "8-25碼範圍" }, -- 1
			{ left = "立即", right = "15秒冷卻時間" }, -- 2
			{ left = "需要熊型態，巨熊型態" }, -- 3
			{ left = "向目標衝鋒使其無法移動，並中斷施放中的法術，使其在4秒內不能施放同系的法術。" }, -- 4
		},
	}
	talent = tree.talents[8].info
	talent.name = "鋒利獸爪"
	talent.tips = {
		format = "使你在豹、熊或巨熊形態下的致命一擊機率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "撕碎攻擊"
	talent.tips = {
		format = "使你的撕碎技能所消耗的能量減少%s點和割裂技能所消耗的怒氣減少%s點。",
		{9, 1}, -- 1
		{18, 2}, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "猛獸攻擊"
	talent.tips = {
		format = "使你在獵豹、熊、巨熊和梟獸形態下的近戰攻擊強度提高相當你目前等級的%s%%。",
		multiplier = 50,
	}
	talent = tree.talents[11].info
	talent.name = "原始狂怒"
	talent.tips = {
		format = "使你在熊形態和巨熊形態下對目標造成致命一擊後，有%s%%的機率獲得5點怒氣，而在獵豹型態時可增加連擊點數的技能造成致命一擊後有%s%%的機率再獲得一個額外的連擊點數。",
		{50, 50}, -- 1
		{100, 100}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "野蠻暴怒"
	talent.tips = {
		format = "使你爪擊、掃擊以及割碎(獵豹形態)技能所造成的傷害提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "精靈之火（野性）"
	talent.tips = {
		{ -- 1
			{ left = "30碼距離" }, -- 1
			table_cache_57,
			{ left = "需要獵豹形態、熊形態、巨熊形態。" }, -- 3
			{ left = "使目標的護甲值降低175點，持續40秒。在效果持續期間，目標無法潛行或隱形。" }, -- 4
		},
	}
	talent = tree.talents[14].info
	talent.name = "培育天性"
	talent.tips = {
		format = "使你治療法術的治療效果提高相當於%s%%的敏捷值，並使你在獵豹形態下受到的治療效果提高%s%%。",
		table_cache_80, -- 1
		table_cache_54, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "野性之心"
	talent.tips = {
		format = "使你的智力提高%s%%。另外，在熊或巨熊形態下，你的耐力提高%s%%，而在獵豹形態下，你的攻擊強度提高%s%%。",
		{4, 4, 2}, -- 1
		{8, 8, 4}, -- 2
		{12, 12, 6}, -- 3
		{16, 16, 8}, -- 4
		{20, 20, 10}, -- 5
	}
	talent = tree.talents[16].info
	talent.name = "適者生存"
	talent.tips = {
		format = "使所有屬性提高%s%%並使你被近戰攻擊造成致命一擊的機率降低%s%%。",
		table_cache_77, -- 1
		table_cache_48, -- 2
		table_cache_3, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "原始堅韌"
	talent.tips = {
		format = "使你抵抗昏迷和恐懼效果的機率提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[18].info
	talent.name = "獸群領袖"
	talent.tips = {
		"在獵豹、熊或巨熊形態下，使半徑45碼範圍內的所有小隊成員的遠程和近戰攻擊造成致命一擊的機率提高5%。", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "強化獸群領袖"
	talent.tips = {
		format = "你的獸群領袖同時能讓隊友在近戰或是遠程攻擊造成致命一擊後有100%%的機率恢復他們總生命力%s%%的生命力。此治療效果在6秒內無法被觸發多於一次。",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "猛獸天性"
	talent.tips = {
		format = "在獵豹、熊或巨熊形態下近戰致命一擊的傷害提高%s%%，且迴避範圍性攻擊效果的機率提高%s%%。",
		table_cache_95, -- 1
		table_cache_31, -- 2
		{6, 9}, -- 3
		table_cache_41, -- 4
		table_cache_38, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "割碎"
	talent.tips = {
		"割碎目標造成傷害，同時使目標因流血效果而承受額外的傷害，持續12秒。此技能只能在獵豹或者巨熊形態下使用。", -- 1
	}
	tree = data[3]
	tree.info.name = "恢復"
	talent = tree.talents[1].info
	talent.name = "強化野性印記"
	talent.tips = {
		format = "使你野性印記和野性賜福的效果提高%s%%。",
		multiplier = 7,
	}
	talent = tree.talents[2].info
	talent.name = "激怒"
	talent.tips = {
		format = "在你進入熊形態和巨熊形態時有%s%%的機率獲得10點怒氣，或者在進入獵豹形態時獲得40點能量。",
		multiplier = 20,
	}
	talent = tree.talents[3].info
	talent.name = "強化治療之觸"
	talent.tips = {
		format = "使你治療之觸的施法時間減少0.%s秒，並使你在所有形態下造成的物理傷害增加%s%%。",
		table_cache_44, -- 1
		table_cache_9, -- 2
		table_cache_33, -- 3
		table_cache_26, -- 4
		table_cache_62, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "自然集中"
	talent.tips = {
		format = "使你在施放癒合、治療之觸或寧靜時有%s%%的機率不因受到傷害而被打斷。",
		multiplier = 14,
	}
	talent = tree.talents[5].info
	talent.name = "自然變形"
	talent.tips = {
		format = "使你所有變形法術所消耗的法力降低%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "激化"
	talent.tips = {
		format = "使你在施法時仍保持%s%%的法力恢復速度，並使你的狂怒技能立即產生%s點怒氣。",
		table_cache_37, -- 1
		{20, 7}, -- 2
		{30, 10}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "微妙"
	talent.tips = {
		format = "使你的法術所產生的威脅值降低%s%%並使你的法術被驅散的機率降低%s%%。",
		table_cache_31, -- 1
		table_cache_41, -- 2
		{12, 18}, -- 3
		{16, 24}, -- 4
		{20, 30}, -- 5
	}
	talent = tree.talents[8].info
	talent.name = "清晰預兆"
	talent.tips = {
		{ -- 1
			{ left = "120法力" }, -- 1
			table_cache_45,
			{ left = "以自然之力強化德魯伊，每一次近戰攻擊命中敵人時都有一定機率令德魯伊進入節能施法狀態。該狀態可以讓你的下一個傷害法術、治療法術或攻擊技能所消耗的法力、怒氣或能量降低100%，持續30分鐘。" }, -- 3
		},
	}
	talent = tree.talents[9].info
	talent.name = "寧靜之魂"
	talent.tips = {
		format = "使你治療之觸和寧靜所消耗的法力減少%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[10].info
	talent.name = "強化回春術"
	talent.tips = {
		format = "使你回春術的效果提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "自然迅捷"
	talent.tips = {
		{ -- 1
			table_cache_14,
			{ left = "啟動之後，你的下一個自然法術會成為瞬發法術。" }, -- 2
		},
	}
	talent = tree.talents[12].info
	talent.name = "自然賜福"
	talent.tips = {
		format = "使你的所有治療法術的效果提高%s%%。.",
		multiplier = 2,
	}
	talent = tree.talents[13].info
	talent.name = "強化寧靜"
	talent.tips = {
		format = "使你的寧靜法術導致的威脅值降低%s%%。",
		multiplier = 50,
	}
	talent = tree.talents[14].info
	talent.name = "強力之觸"
	talent.tips = {
		format = "你的治療之觸法術從你的治療加成中獲得額外%s%%的效果。",
		multiplier = 10,
	}
	talent = tree.talents[15].info
	talent.name = "強化癒合"
	talent.tips = {
		format = "使你癒合法術產生極效治療效果的機率提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[16].info
	talent.name = "活化精神"
	talent.tips = {
		format = "使你的總精神提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "迅癒"
	talent.tips = {
		{ -- 1
			{ left = "379法力", right = "40碼距離" }, -- 1
			table_cache_67,
			{ left = "吸收友方目標身上的回春術或癒合效果，並對其瞬間恢復所吸收的回春術在12秒內或癒合在18秒內所能治療的生命力。" }, -- 3
		},
	}
	talent = tree.talents[18].info
	talent.name = "自然完美"
	talent.tips = {
		format = "使你的所有法術造成致命一擊的機率提高%s%%，並在你受到致命一擊時獲得自然完美的效果，使你受到的所有傷害降低%s%%。此效果最多可堆疊3次，持續8秒。",
		table_cache_44, -- 1
		table_cache_95, -- 2
		{3, 4}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "強力回春術"
	talent.tips = {
		format = "使你的持續性治療法術的治療加成效果提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[20].info
	talent.name = "生命之樹"
	talent.tips = {
		{ -- 1
			{ left = "663法力" }, -- 1
			table_cache_45,
			{ left = "德魯伊變形成生命之樹。當你保持在這個形態時可使45碼範圍內的隊友所受到的治療效果提高相當於你總精神的25%，你的移動速度降低20%，而且你只能施放迅癒、啟動、自然迅捷、復生、移除中毒和持續性治療法術，但是這些法術所消耗的法力降低20%。" }, -- 3
			table_cache_52,
			table_cache_18,
		},
	}
	data = Talented_Data.ROGUE
	-- data.name = "盜賊"
	tree = data[1]
	tree.info.name = "刺殺"
	talent = tree.talents[1].info
	talent.name = "強化剔骨"
	talent.tips = {
		format = "使你剔骨技能所造成的傷害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[2].info
	talent.name = "冷酷攻擊"
	talent.tips = {
		format = "在你殺死一個敵人並得到經驗或榮譽値後，你的下一次邪惡攻擊、出血、背刺、截肢、伏擊或鬼魅攻擊有%s%%的額外機率造成致命一擊，效果持續20秒。",
		multiplier = 20,
	}
	talent = tree.talents[3].info
	talent.name = "惡意"
	talent.tips = {
		format = "使你的致命一擊機率提高%s%%。",
	}
	talent = tree.talents[4].info
	talent.name = "無情"
	talent.tips = {
		format = "使你的終結技有%s%%的機率為目標增加一個連擊點數。",
		multiplier = 20,
	}
	talent = tree.talents[5].info
	talent.name = "謀殺"
	talent.tips = {
		format = "使你對人型生物，巨人，野獸和龍類的攻擊傷害提高%s%%。",
	}
	talent = tree.talents[6].info
	talent.name = "刺傷"
	talent.tips = {
		format = "使你背刺技能造成致命一擊的機率提高%s%%，並使你截肢技能造成致命一擊的機率提高%s%%。",
		table_cache_21, -- 1
		table_cache_10, -- 2
		{30, 15}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "無情打擊"
	talent.tips = {
		"你的終結技使每個連擊點數有20%的機率恢復25點能量。", -- 1
	}
	talent = tree.talents[8].info
	talent.name = "強化破甲"
	talent.tips = {
		format = "使你破甲技能所降低的護甲值提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[9].info
	talent.name = "致命偷襲"
	talent.tips = {
		format = "使你邪惡攻擊、鑿擊、背刺、鬼魅攻擊、截肢、毒襲或出血技能的致命一擊傷害加成提高%s%%。",
		multiplier = 6,
	}
	talent = tree.talents[10].info
	talent.name = "惡性毒藥"
	talent.tips = {
		format = "使你毒藥和毒化技能所造成的傷害提高%s%%，並給予你的毒藥額外%s%%的機率抵抗驅散效果。%s",
		{4, 8, ""}, -- 1
		{8, 16, ""}, -- 2
		{12, 24, ""}, -- 3
		{16, 32, "。"}, -- 4
		{20, 40, ""}, -- 5
	}
	talent = tree.talents[11].info
	talent.name = "強化毒藥"
	talent.tips = {
		format = "使你的毒藥令目標中毒的機率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "迅足"
	talent.tips = {
		format = "使你抵抗移動限制效果的機率提高%s%%並使你的移動速度提高%s%%。此移動速度提升無法與其他移動速度效果累加。",
		{5, 8}, -- 1
		table_cache_38, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "冷血"
	talent.tips = {
		{ -- 1
			table_cache_86,
			{ left = "啟動之後，你的下一次攻擊技能造成致命一擊的機率提高100%。" }, -- 2
		},
	}
	talent = tree.talents[14].info
	talent.name = "強化腎擊"
	talent.tips = {
		format = "當目標受到你的腎擊攻擊後，在腎擊的有效時間內所受到的傷害全部額外提高%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[15].info
	talent.name = "快速恢復"
	talent.tips = {
		format = "所有對你施放的治療效果提高%s%%。另外，你的終結技在未擊中後所消耗的能量降低%s%%。",
		table_cache_35, -- 1
		{20, 80}, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "封印命運"
	talent.tips = {
		format = "你的所有可以增加連擊點數的技能造成了致命一擊後有%s%%的機率增加一個額外的連擊點數。",
		multiplier = 20,
	}
	talent = tree.talents[17].info
	talent.name = "毒藥大師"
	talent.tips = {
		format = "使你的毒藥被抵抗的機率降低%s%%，並使你抵抗毒藥效果的機率提高額外的%s%%。",
		table_cache_61, -- 1
		table_cache_19, -- 2
	}
	talent = tree.talents[18].info
	talent.name = "精力"
	talent.tips = {
		"使你的能量上限提高10點。", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "神經破壞"
	talent.tips = {
		format = "所有受到的物理攻擊傷害降低%s%%。",
	}
	talent = tree.talents[20].info
	talent.name = "找尋弱點"
	talent.tips = {
		format = "你的終結技使你所有攻擊技能所造成的傷害提高%s%%，持續10秒。",
		multiplier = 2,
	}
	talent = tree.talents[21].info
	talent.name = "截肢"
	talent.tips = {
		{ -- 1
			{ left = "60 能量", right = "近戰範圍" }, -- 1
			table_cache_20,
			{ left = "需要匕首" }, -- 3
			{ left = "瞬間使用主、副手武器攻擊並使主、副手武器各自造成額外44點的傷害。對中毒目標所造成的傷害提高50%。必須從目標的背後攻擊。獎勵2個連擊點數。" }, -- 4
		},
	}
	tree = data[2]
	tree.info.name = "戰鬥"
	talent = tree.talents[1].info
	talent.name = "強化鑿擊"
	talent.tips = {
		format = "使你鑿擊技能的效果持續時間延長%s秒。",
		multiplier = 0.5,
	}
	talent = tree.talents[2].info
	talent.name = "強化邪惡攻擊"
	talent.tips = {
		format = "使你邪惡攻擊技能所消耗的能量降低%s點。",
		3, -- 1
		5, -- 2
	}
	talent = tree.talents[3].info
	talent.name = "閃電反射"
	talent.tips = {
		format = "使你的閃躲機率提高%s%%。",
	}
	talent = tree.talents[4].info
	talent.name = "強化切割"
	talent.tips = {
		format = "使你切割技能的效果持續時間延長%s%%。",
		multiplier = 15,
	}
	talent = tree.talents[5].info
	talent.name = "偏斜"
	talent.tips = {
		format = "使你的招架機率提高%s%%。",
	}
	talent = tree.talents[6].info
	talent.name = "精準"
	talent.tips = {
		format = "使你武器命中目標的機率提高%s%%。",
	}
	talent = tree.talents[7].info
	talent.name = "耐久"
	talent.tips = {
		format = "使你疾跑和閃避技能的冷卻時間降低%s5%s。",
		table_cache_29, -- 1
		{"1.", "分"}, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "還擊"
	talent.tips = {
		{ -- 1
			{ left = "10 能量", right = "5 碼距離" }, -- 1
			table_cache_57,
			{ left = "在招架敵人的攻擊之後可以使用的技能，對目標造成150%的武器傷害，並使其被繳械，持續6秒。" }, -- 3
		},
	}
	talent = tree.talents[9].info
	talent.name = "強化疾跑"
	talent.tips = {
		format = "有%s%%的機率使你在啟動疾跑後移除所有限制移動的效果。",
		multiplier = 50,
	}
	talent = tree.talents[10].info
	talent.name = "強化腳踢"
	talent.tips = {
		format = "使你腳踢技能有%s%%的機率令目標沉默2秒。",
		multiplier = 50,
	}
	talent = tree.talents[11].info
	talent.name = "匕首專精"
	talent.tips = {
		format = "使你匕首造成致命一擊的機率提高%s%%。",
	}
	talent = tree.talents[12].info
	talent.name = "雙武器專精"
	talent.tips = {
		format = "使你副手武器所造成的傷害提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "錘類武器專精"
	talent.tips = {
		format = "使你的錘類武器所造成的致命一擊傷害提高%s%%，並使你的錘類武器在擊中目標時有%s%%的機率將其擊昏3秒。",
		table_cache_77, -- 1
		table_cache_48, -- 2
		table_cache_3, -- 3
		table_cache_12, -- 4
		{5, 6}, -- 5
	}
	talent = tree.talents[14].info
	talent.name = "劍刃亂舞"
	talent.tips = {
		{ -- 1
			{ left = "25 能量" }, -- 1
			table_cache_36,
			{ left = "使你的攻擊速度提高20%。另外還可以對附近一個額外的敵人造成傷害。持續15秒。" }, -- 3
		},
	}
	talent = tree.talents[15].info
	talent.name = "劍類武器專精"
	talent.tips = {
		format = "使你在用劍類武器擊中敵人後有%s%%的機率對同一個目標進行一次額外的攻擊。",
	}
	talent = tree.talents[16].info
	talent.name = "拳套專精"
	talent.tips = {
		format = "使你拳套造成致命一擊的機率提高%s%%。",
	}
	talent = tree.talents[17].info
	talent.name = "旋轉劍刃"
	talent.tips = {
		format = "使你邪惡攻擊、背刺、鑿擊和毒襲技能有%s%%的機率令目標暈眩8秒。",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "武器熟練"
	talent.tips = {
		format = "使你的熟練技能提高%s點。",
		multiplier = 5,
	}
	talent = tree.talents[19].info
	talent.name = "侵略"
	talent.tips = {
		format = "使你邪惡攻擊、背刺和剔骨技能的傷害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "活力"
	talent.tips = {
		format = "使你的總耐力提高%s%%，並使總敏捷提高%s%%。",
		table_cache_65, -- 1
		table_cache_13, -- 2
	}
	talent = tree.talents[21].info
	talent.name = "能量刺激"
	talent.tips = {
		{ -- 1
			{ left = "立即", right = "5 分鐘冷卻時間" }, -- 1
			{ left = "使你的能量恢復速度提高100%，持續15秒。" }, -- 2
		},
	}
	talent = tree.talents[22].info
	talent.name = "鋼鐵意志"
	talent.tips = {
		format = "使你抵抗昏迷和恐懼效果的機率提高額外的%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[23].info
	talent.name = "作戰潛能"
	talent.tips = {
		format = "使你的副手近戰攻擊成功時有20%%的機率產生%s點能量。",
		multiplier = 3,
	}
	talent = tree.talents[24].info
	talent.name = "出奇攻擊"
	talent.tips = {
		"你的終結技將無法被閃避，並使你的邪惡攻擊、背刺、毒襲和鑿擊技能所造成的傷害提高10%。", -- 1
	}
	tree = data[3]
	tree.info.name = "敏銳"
	talent = tree.talents[1].info
	talent.name = "欺詐大師"
	talent.tips = {
		format = "當你在潛行狀態下時，降低敵人偵測到你的機率。%s",
		"", -- 1
		"比欺詐大師（等級 1）更有效。", -- 2
		"比欺詐大師（等級 2）更有效。", -- 3
		"比欺詐大師（等級 3）更有效。", -- 4
		"比欺詐大師（等級 4）更有效。", -- 5
	}
	talent = tree.talents[2].info
	talent.name = "伺機而動"
	talent.tips = {
		format = "使你從背後使用背刺、截肢、絞喉或伏擊技能偷襲敵人時所造成的傷害值提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[3].info
	talent.name = "靈巧之手"
	talent.tips = {
		format = "使你被近戰或遠程攻擊擊中時產生致命一擊的機率降低%s%%，並使佯攻技能所降低的威脅值提高%s%%。",
		table_cache_43, -- 1
		table_cache_56, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "卑鄙技倆"
	talent.tips = {
		format = "使你致盲和悶棍的有效距離提高%s碼同時降低致盲和悶棍的能量消耗%s%%。",
		{2, 25}, -- 1
		{5, 50}, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "偽裝"
	talent.tips = {
		format = "使你在潛行時的移動速度提高%s%%，並使潛行的冷卻時間降低%s秒。",
		table_cache_23, -- 1
		table_cache_11, -- 2
		table_cache_15, -- 3
		table_cache_47, -- 4
		table_cache_42, -- 5
	}
	talent = tree.talents[6].info
	talent.name = "先發制人"
	talent.tips = {
		format = "使你有%s%%的機率在使用伏擊、絞喉或偷襲技能後獲得1個額外的連擊點數。",
		multiplier = 25,
	}
	talent = tree.talents[7].info
	talent.name = "鬼魅攻擊"
	talent.tips = {
		{ -- 1
			{ left = "40 能量", right = "近戰範圍" }, -- 1
			{ left = "立即", right = "20 秒冷卻時間" }, -- 2
			{ left = "鬼魅般的攻擊，造成125%的武器傷害並使你迴避攻擊的機率提高15%，持續7秒。獎勵1點連擊點數。" }, -- 3
		},
	}
	talent = tree.talents[8].info
	talent.name = "強化伏擊"
	talent.tips = {
		format = "使你伏擊技能造成致命一擊的機率提高%s%%。",
		multiplier = 15,
	}
	talent = tree.talents[9].info
	talent.name = "算計"
	talent.tips = {
		format = "使你有%s%%的機率在成功閃躲敵人的攻擊或成功抵抗敵人的法術之後獲得一個連擊點數。",
		multiplier = 15,
	}
	talent = tree.talents[10].info
	talent.name = "飄忽不定"
	talent.tips = {
		format = "使你消失和致盲技能的冷卻時間縮短%s5%s。",
		table_cache_29, -- 1
		{"1.", "分鐘"}, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "鋸刃"
	talent.tips = {
		format = "使你的攻擊無視目標%s點的護甲值，並使割裂技能所造成的傷害提高%s%%。護甲值的降低會隨著你的等級而提升。",
		{186, 10}, -- 1
		{373, 20}, -- 2
		{560, 30}, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "感官提升"
	talent.tips = {
		format = "提高你偵測潛行的能力，並使你被法術和遠程攻擊擊中的機率降低%s%%。%s",
		{2, ""}, -- 1
		{4, "比感官提升(等級 1)更加有效。"}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "準備"
	talent.tips = {
		{ -- 1
			{ left = "立即", right = "10 分鐘冷卻時間" }, -- 1
			{ left = "啟動之後，這項技能立刻令你閃避、疾跑、消失、冷血、暗影閃現和預謀技能的冷卻時間結束。" }, -- 2
		},
	}
	talent = tree.talents[14].info
	talent.name = "陰險動作"
	talent.tips = {
		format = "使你偷襲和絞喉技能所消耗的能量降低%s點。此外，你的特殊技能可對生命力低於35%%的目標造成%s%%的額外傷害",
		table_cache_53, -- 1
		table_cache_28, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "出血"
	talent.tips = {
		{ -- 1
			{ left = "35 能量", right = "近戰範圍" }, -- 1
			table_cache_20,
			table_cache_79,
			{ left = "立即對目標造成110%的武器傷害並令其流血不止，使其在受到物理攻擊時所承受的傷害提高最多13點。最多可生效10次，或者持續15秒。獎勵1個連擊點數。" }, -- 4
		},
	}
	talent = tree.talents[16].info
	talent.name = "敏銳大師"
	talent.tips = {
		format = "在潛行狀態下和在潛行狀態消失後的6秒內所造成的攻擊傷害額外提高%s%%。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "致命傷害"
	talent.tips = {
		format = "使你的攻擊強度提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "暗影籠罩"
	talent.tips = {
		format = "使你避免範圍性攻擊的機率額外提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[19].info
	talent.name = "預謀"
	talent.tips = {
		{ -- 1
			{ left = "30 碼距離" }, -- 1
			table_cache_36,
			{ left = "|cffeb0504需要潛行|r" }, -- 3
			{ left = "使用此技能後，為你的當前目標增加2個連擊點數。你必須在10秒內增加或消耗掉這些點數，否則它們就會消失。" }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "死亡謊言"
	talent.tips = {
		format = "你有%s%%的機率使任何將你擊殺的攻擊轉變為降低你的生命力至10%%，並且令你在3秒內受到的所有傷害降低最多90%%(視韌性值的高低)。此效果無法在1分鐘內發動多於一次。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[21].info
	talent.name = "邪惡呼喚"
	talent.tips = {
		format = "使你的總敏捷提高%s%%，並使背刺和出血的傷害加成百分比提高%s%%。",
		table_cache_23, -- 1
		table_cache_11, -- 2
		table_cache_15, -- 3
		table_cache_47, -- 4
		table_cache_42, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "暗影閃現"
	talent.tips = {
		{ -- 1
			{ left = "10 能量", right = "25碼距離" }, -- 1
			{ left = "立即", right = "30秒冷卻時間" }, -- 2
			{ left = "嘗試穿過暗影並出現在敵人背後，並提高移動速度70%，持續3秒。你的下一個技能所造成的傷害提高20%，並且該技能所造成的威脅值降低50%。持續10秒。" }, -- 3
		},
	}
	data = Talented_Data.PALADIN
	-- data.name = "聖騎士"
	tree = data[1]
	tree.info.name = "神聖"
	talent = tree.talents[1].info
	talent.name = "神聖之力"
	talent.tips = {
		format = "使你的總力量提高 %s%%",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "神聖智慧"
	talent.tips = {
		format = "使你的總智力上限提高 %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "精神集中"
	talent.tips = {
		format = "使你的聖光閃現和聖光術有%s%%的機率在受到傷害時不會延長施法時間。",
		multiplier = 14,
	}
	talent = tree.talents[4].info
	talent.name = "強化正義聖印"
	talent.tips = {
		format = "使你正義聖印和正義審判所造成的傷害 %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "治療之光"
	talent.tips = {
		format = "使你聖光術和聖光閃現的治療效果提高 %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[6].info
	talent.name = "精通光環"
	talent.tips = {
		"使你光環的有效範圍提升到40碼。", -- 1
	}
	talent = tree.talents[7].info
	talent.name = "強化聖療術"
	talent.tips = {
		format = "被你聖療術治療的目標因裝備而獲得的護甲值提高%s%%，持續2分鐘。另外，聖療術的冷卻時間減少%s分鐘。",
		table_cache_8, -- 1
		table_cache_39, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "不滅信仰"
	talent.tips = {
		format = "使你抵抗恐懼和困惑效果的機率額外提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[9].info
	talent.name = "啟發"
	talent.tips = {
		format = "在你的聖光閃現、聖光術或神聖震擊的治療法術造成極致治療效果之後，使你有%s%%的機率恢復該法術基礎法力消耗的60%%。",
		multiplier = 20,
	}
	talent = tree.talents[10].info
	talent.name = "強化智慧祝福"
	talent.tips = {
		format = "使你智慧祝福效果提高 %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "純淨之心"
	talent.tips = {
		format = "使你抵抗詛咒和疾病效果的抗性提高 %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "神恩術"
	talent.tips = {
		{ -- 1
			{ left = "88 點法力" }, -- 1
			{ left = "立即施法", right = "2 分鐘冷卻時間" }, -- 2
			{ left = "啟動之後，使你的下一個聖光閃現、聖光術或神聖震擊有100%的機率造成致命一擊或極效治療。" }, -- 3
		},
	}
	talent = tree.talents[13].info
	talent.name = "聖化之光"
	talent.tips = {
		format = "使你聖光術產生極效治療的機率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "淨化能量"
	talent.tips = {
		format = "使你淨化術、純淨術和奉獻法術所消耗的法力降低%s%%和驅邪術和神聖憤怒造成致命一擊的機率提高%s%%。",
		table_cache_62, -- 1
		table_cache_25, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "神聖強化"
	talent.tips = {
		format = "使你神聖法術造成致命一擊的機率提高 %s%%.",
	}
	talent = tree.talents[16].info
	talent.name = "光明賜福"
	talent.tips = {
		format = "使你的聖光術有%s%%的機率讓下一次的聖光術施法時間降低0.5秒。此效果持續15秒。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "神聖震擊"
	talent.tips = {
		{ -- 1
			{ left = "225 法力", right = "20 碼距離" }, -- 1
			table_cache_67,
			{ left = "以神聖的能量衝擊目標，造成204到220點神聖傷害，或為盟友恢復204到220點生命力。" }, -- 3
		},
	}
	talent = tree.talents[18].info
	talent.name = "神聖生命"
	talent.tips = {
		format = "所有對你的攻擊有%s%%的機率減半傷害。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "神聖導引"
	talent.tips = {
		format = "使你的法術傷害和治療效果提高相當於你總智力的%s%%。",
		multiplier = 7,
	}
	talent = tree.talents[20].info
	talent.name = "神聖啟發"
	talent.tips = {
		{ -- 1
			table_cache_86,
			{ left = "使所有法術所消耗的法力降低50%，持續15秒。" }, -- 2
		},
	}
	tree = data[2]
	tree.info.name = "防護"
	talent = tree.talents[1].info
	talent.name = "強化虔誠光環"
	talent.tips = {
		format = "使你虔誠光環所賦予的護甲值提高 %s%%.",
		multiplier = 8,
	}
	talent = tree.talents[2].info
	talent.name = "盾牌壁壘"
	talent.tips = {
		format = "使你每次受到近戰和遠程攻擊後有10%%的機率使盾牌格擋的機率提高%s%%。持續10秒或格擋5次攻擊。",
		multiplier = 6,
	}
	talent = tree.talents[3].info
	talent.name = "精準"
	talent.tips = {
		format = "使你的近戰武器和法術命中目標的機率提高 %s%%.",
	}
	talent = tree.talents[4].info
	talent.name = "守護者的恩眷"
	talent.tips = {
		format = "使你保護祝福的冷卻時間減少%s秒，自由祝福的效果持續時間延長%s秒。",
		{60, 2}, -- 1
		{120, 4}, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "堅韌"
	talent.tips = {
		format = "使你因裝備而獲得的護甲值提高 %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "王者祝福"
	talent.tips = {
		{ -- 1
			{ left = "177 點法力", right = "30 碼距離" }, -- 1
			table_cache_45,
			{ left = "為友方目標施加祝福，使其所有屬性提高10%，持續10分鐘。每個聖騎士在同一時間內只能給目標施加一種祝福，同類型的祝福不能重疊。" }, -- 3
		},
	}
	talent = tree.talents[7].info
	talent.name = "強化正義之怒"
	talent.tips = {
		format = "在正義之怒啟動後，使你受到的所有傷害減少2/4/6%%，並使你的正義之怒所產生的威脅值提高 %s%%.",
		16, -- 1
		33, -- 2
		50, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "盾牌專精"
	talent.tips = {
		format = "使你盾牌所吸收的傷害提高 %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[9].info
	talent.name = "預知"
	talent.tips = {
		format = "使你的防禦技能提高%s點。",
		multiplier = 4,
	}
	talent = tree.talents[10].info
	talent.name = "堅忍"
	talent.tips = {
		format = "使你抵抗昏迷效果的機率提高%s%%並使你的法術被驅散的機率降低%s%%。",
		table_cache_61, -- 1
		table_cache_19, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "強化制裁之錘"
	talent.tips = {
		format = "使你的制裁之錘的冷卻時間減少%s秒。",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "強化專注光環"
	talent.tips = {
		format = "使你專注光環的效果提高%s%%，並使所有獲得此光環效果影響的隊友受到沉默和中斷效果時，降低其持續時間%s%%。這個降低沉默和中斷持續時間的效果無法與其他效果疊加。",
		table_cache_62, -- 1
		table_cache_25, -- 2
		table_cache_106, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "法術護衛"
	talent.tips = {
		format = "使你受到的所有法術傷害降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "庇護祝福"
	talent.tips = {
		{ -- 1
			{ left = "60 法力", right = "30 碼距離" }, -- 1
			table_cache_45,
			{ left = "為友方目標施加祝福，使其所受到的所有類型的傷害都減少最多10點，持續10分鐘。當目標格擋近戰攻擊將會對攻擊者造成14點神聖傷害。每個聖騎士在同一時間內只能給目標施加一種祝福，同類型的祝福不能重疊。" }, -- 3
		},
	}
	talent = tree.talents[15].info
	talent.name = "清算"
	talent.tips = {
		format = "使你在遭受任何受傷的攻擊之後有%s%%的機率在接下來8秒內展開的4次攻擊中皆獲得一次額外的攻擊機會。",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "神聖職責"
	talent.tips = {
		format = "使你的總耐力提高%s%%，聖盾術的冷卻時間縮短%s秒，並使攻擊速度懲罰降低%s%%。",
		{3, 30, 50}, -- 1
		{6, 60, 100}, -- 2
	}
	talent = tree.talents[17].info
	talent.name = "單手武器專精"
	talent.tips = {
		format = "當裝備單手近戰武器時你所造成的所有傷害提高%s%%。",
	}
	talent = tree.talents[18].info
	talent.name = "強化神聖之盾"
	talent.tips = {
		format = "提高神聖之盾所造成的傷害%s%%，同時增加神聖之盾的使用次數%s次。",
		table_cache_73, -- 1
		{20, 4}, -- 2
	}
	talent = tree.talents[19].info
	talent.name = "神聖之盾"
	talent.tips = {
		{ -- 1
			{ left = "135 法力" }, -- 1
			table_cache_58,
			table_cache_103,
			{ left = "使你的格擋機率提高30%，持續10秒。在此期間每次成功格擋都會對攻擊者造成59點神聖傷害，傷害所造成的威脅值額外提高35%。每次成功格擋會消耗掉一次格擋機會，最多可格擋4次。" }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "忠誠防禦者"
	talent.tips = {
		format = "當你的生命力少於35%%時，所有承受的傷害降低%s%%。",
		multiplier = 6,
	}
	talent = tree.talents[21].info
	talent.name = "戰鬥熟練"
	talent.tips = {
		format = "使你的熟練技能提高%s點，總耐力提高%s%%。",
		table_cache_44, -- 1
		table_cache_9, -- 2
		table_cache_33, -- 3
		table_cache_26, -- 4
		table_cache_62, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "復仇之盾"
	talent.tips = {
		{ -- 1
			{ left = "500 點法力", right = "8-30 碼距離" }, -- 1
			{ left = "1 秒施法時間", right = "30 秒冷卻時間" }, -- 2
			table_cache_103,
			{ left = "對目標發射神聖之盾, 對其造成270到330點神聖傷害, 使其暈眩後彈至其他附近目標。共可攻擊3個目標。暈眩效果持續6秒。" }, -- 4
		},
	}
	tree = data[3]
	tree.info.name = "懲戒"
	talent = tree.talents[1].info
	talent.name = "強化力量祝福"
	talent.tips = {
		format = "使你力量祝福所賦予的近戰攻擊強度加成提高%s%%。.",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "祈福"
	talent.tips = {
		format = "使你審判及聖印技能所消耗的法力降低%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[3].info
	talent.name = "強化審判"
	talent.tips = {
		format = "使你審判法術的冷卻時間減少%s秒。",
	}
	talent = tree.talents[4].info
	talent.name = "強化十字軍聖印"
	talent.tips = {
		format = "除了一般效果外，你的十字軍審判法術也會使所有對該目標攻擊的致命一擊率額外提高%s%%。",
	}
	talent = tree.talents[5].info
	talent.name = "偏斜"
	talent.tips = {
		format = "使你的招架機率提高%s%%。",
	}
	talent = tree.talents[6].info
	talent.name = "辯護"
	talent.tips = {
		format = "使聖騎士的近戰攻擊有一定的機率令目標的屬性降低%s%%，持續15秒。",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "定罪"
	talent.tips = {
		format = "使你近戰武器對敵人造成致命一擊的機率提高%s%%。",
	}
	talent = tree.talents[8].info
	talent.name = "命令聖印"
	talent.tips = {
		{ -- 1
			{ left = "65法力" }, -- 1
			table_cache_45,
			{ left = "使聖騎士在攻擊時有一定機率對目標造成與武器傷害70%等量的神聖傷害。聖騎士在同一時間內只能啟動一種聖印。命令聖印持續30秒。" }, -- 3
			table_cache_52,
			{ left = "釋放這種聖印的能量將對目標造成審判效果，對其立刻造成68到73點神聖傷害，若目標昏迷或癱瘓則造成137到146點神聖傷害。" }, -- 5
		},
	}
	talent = tree.talents[9].info
	talent.name = "正義追擊"
	talent.tips = {
		format = "使你被法術命中的機率降低%s%%，並且使移動速度和坐騎移動速度提高%s%%。這個效果無法與其他提高移動速度的效果堆疊。",
		table_cache_22, -- 1
		table_cache_76, -- 2
		table_cache_70, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "以眼還眼"
	talent.tips = {
		format = "所有對你造成致命一擊的法術都會對其施法者造成%s%%的傷害，但最大數值不會超過聖騎士生命力總量的50%%。",
		multiplier = 15,
	}
	talent = tree.talents[11].info
	talent.name = "強化懲罰光環"
	talent.tips = {
		format = "使你懲罰光環所能造成的傷害提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[12].info
	talent.name = "十字軍"
	talent.tips = {
		format = "使你對人型生物、惡魔、不死生物和元素生物所造成的所有傷害提高%s%%。",
	}
	talent = tree.talents[13].info
	talent.name = "雙手武器專精"
	talent.tips = {
		format = "使你雙手近戰武器所造成的傷害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "聖潔光環"
	talent.tips = {
		{ -- 1
			table_cache_20,
			{ left = "使半徑30碼範圍內的隊友的神聖系攻擊對敵人造成的傷害提高10%。每個聖騎士在同一時間內只能開啟一種光環，且同類光環的效果無法疊加。" }, -- 2
		},
	}
	talent = tree.talents[15].info
	talent.name = "強化聖潔光環"
	talent.tips = {
		format = "使受到聖潔光環影響的目標所造成的傷害提高%s%%。",
	}
	talent = tree.talents[16].info
	talent.name = "復仇"
	talent.tips = {
		format = "使你武器攻擊、法術或技能在對敵人造成致命一擊之後有%s%%的物理和神聖傷害加成，持續30秒。此效果最多可累加3次。",
	}
	talent = tree.talents[17].info
	talent.name = "聖化審判"
	talent.tips = {
		format = "使你審判法術有%s%%的機率回饋聖印法術80%%的法力。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "聖化聖印"
	talent.tips = {
		format = "使你所有法術和近戰攻擊的致命一擊機率提高%s%%，同時使你的聖印被驅散的機率降低%s%%。",
		{1, 33}, -- 1
		{2, 66}, -- 2
		{3, 100}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "懺悔"
	talent.tips = {
		{ -- 1
			{ left = "60 法力", right = "20碼距離" }, -- 1
			table_cache_68,
			{ left = "使目標進入冥想狀態，令其癱瘓最多持續6秒鐘。任何傷害都會喚醒目標。只對人型生物有效。" }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "神聖意圖"
	talent.tips = {
		format = "近戰和遠程攻擊致命一擊對你所造成的傷害降低%s%%。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[21].info
	talent.name = "狂熱"
	talent.tips = {
		format = "使所有審判造成致命一擊的機率提高%s%%，並且使你不受正義之怒影響時，造成的所有威脅值降低%s%%。",
		table_cache_33, -- 1
		{6, 12}, -- 2
		{9, 18}, -- 3
		{12, 24}, -- 4
		table_cache_106, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "十字軍聖擊"
	talent.tips = {
		{ -- 1
			{ left = "236法力", right = "近戰範圍" }, -- 1
			{ left = "立即施法", right = "6 秒鐘冷卻時間" }, -- 2
			table_cache_79,
			{ left = "立即對敵人造成110%的武器傷害並使目標身上所有審判時間重新計算。" }, -- 4
		},
	}
end
