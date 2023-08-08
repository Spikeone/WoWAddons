-- Generated Data : Do Not Modify
if Talented_Data and GetLocale() == "zhCN" then
	local data, tree, talent
	local table_cache_1 = {2, 20}
	local table_cache_2 = {3, 3}
	local table_cache_3 = {8, 8}
	local table_cache_4 = { left = "10 怒气" }
	local table_cache_5 = {5, 1}
	local table_cache_6 = {15, 10}
	local table_cache_8 = {2, 4}
	local table_cache_9 = {20, 10}
	local table_cache_10 = {6, 2}
	local table_cache_11 = {"1.", "分钟"}
	local table_cache_12 = {4, 4}
	local table_cache_13 = {4, 2}
	local table_cache_14 = {10, 40}
	local table_cache_15 = { left = "1.5秒施法时间" }
	local table_cache_16 = { left = " 以下等级可通过学习获得：" }
	local table_cache_17 = {30, 20}
	local table_cache_18 = {5, 5}
	local table_cache_19 = {12, 6}
	local table_cache_20 = {10, 30}
	local table_cache_21 = { left = "使术士和他（她）所召唤的恶魔均获得一个特殊效果，只要该恶魔处于激活状态就不会消失。" }
	local table_cache_22 = {10, 5}
	local table_cache_23 = {6, 3}
	local table_cache_24 = {1, 5}
	local table_cache_25 = {3, 1}
	local table_cache_26 = { left = "瞬发法术", right = "20秒冷却时间" }
	local table_cache_27 = { left = "需要远程武器" }
	local table_cache_28 = {10, 20}
	local table_cache_29 = {4, 8}
	local table_cache_30 = {16, 8}
	local table_cache_31 = {20, 20}
	local table_cache_32 = {15, 2}
	local table_cache_33 = {1, 3}
	local table_cache_34 = {4, 6}
	local table_cache_35 = {3, 6}
	local table_cache_36 = {2, 6}
	local table_cache_37 = {30, 4}
	local table_cache_38 = { left = "需要盾牌" }
	local table_cache_39 = {4, 33}
	local table_cache_40 = {10, 15}
	local table_cache_41 = { left = "瞬发法术" }
	local table_cache_42 = {16, 16}
	local table_cache_43 = {8, 12}
	local table_cache_44 = {15, 5}
	local table_cache_45 = {1, 10}
	local table_cache_46 = {1, 2}
	local table_cache_47 = { left = "瞬发法术", right = "30秒冷却时间" }
	local table_cache_48 = {100, 20}
	local table_cache_49 = {2, 2}
	local table_cache_50 = { left = "需要近战武器" }
	local table_cache_51 = {20, 2}
	local table_cache_52 = {10, 50}
	local table_cache_53 = { left = "瞬发法术", right = "2分钟冷却时间" }
	local table_cache_54 = { left = "瞬发" }
	local table_cache_55 = { left = "" }
	local table_cache_56 = {10, 10}
	local table_cache_57 = { left = "瞬发法术", right = "3分钟冷却时间" }
	local table_cache_58 = {30, 30, 30}
	local table_cache_59 = { left = "30码有效距离" }
	local table_cache_60 = {8, 4}
	local table_cache_61 = {6, 30}
	local table_cache_62 = {4, "秒"}
	local table_cache_63 = { left = "瞬发", right = "30秒冷却时间" }
	local table_cache_64 = {50, 10}
	local table_cache_65 = {7, 4}
	local table_cache_66 = {5, 15}
	local table_cache_67 = {12, 4}
	local table_cache_69 = { left = "225 法力值", right = "20码有效距离" }
	local table_cache_70 = {5, 10}
	local table_cache_71 = {15, 3}
	local table_cache_72 = { left = "瞬发", right = "6秒冷却时间" }
	local table_cache_73 = {2, 1}
	local table_cache_74 = {12, 12}
	local table_cache_75 = { left = "瞬发", right = "2分钟冷却时间" }
	local table_cache_77 = { left = "瞬发法术", right = "10秒冷却时间" }
	local table_cache_78 = { left = "瞬发", right = "5分钟冷却时间" }
	local table_cache_79 = { left = "瞬发法术", right = "15秒冷却时间" }
	local table_cache_81 = {3, 15}
	local table_cache_82 = {9, 3}
	local table_cache_83 = { left = "需要：灵魂碎片" }
	local table_cache_85 = {10, 2}
	local table_cache_86 = {30, 30}
	local table_cache_87 = {5, 25}
	local table_cache_88 = { left = "瞬发", right = "3分钟冷却时间" }
	local table_cache_89 = {2, 10}
	local table_cache_90 = { left = "瞬发法术", right = "1分钟冷却时间" }
	local table_cache_91 = {1, 1}
	local table_cache_94 = {2, 16}
	local table_cache_95 = {1, 25}
	local table_cache_96 = {15, 6}
	local table_cache_98 = {10, 4}
	local table_cache_99 = {2, 50}
	local table_cache_100 = {12, 24}
	local table_cache_101 = {15, 30}
	local table_cache_102 = { left = "15 怒气", right = "5码有效距离" }
	local table_cache_103 = {4, 20}
	data = Talented_Data.HUNTER
	-- data.name = "猎人天赋"
	tree = data[1]
	tree.info.name = "野兽掌握"
	talent = tree.talents[1].info
	talent.name = "强化雄鹰守护"
	talent.tips = {
		format = "当雄鹰守护处于激活状态时，所有普通的远程攻击都有10%%的几率使你的远程攻击速度提高%s%%，持续12秒。",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "耐久训练"
	talent.tips = {
		format = "使你的宠物的生命值提高%s%%，你的生命总值提高%s%%。",
		table_cache_73, -- 1
		table_cache_13, -- 2
		table_cache_23, -- 3
		table_cache_60, -- 4
		table_cache_22, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "火力集中"
	talent.tips = {
		format = "在你的宠物处于激活状态下时，使你所造成的所有伤害提高%s%%，你的杀戮命令技能的爆击几率提高%s%%。",
		table_cache_45, -- 1
		table_cache_1, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "强化灵猴守护"
	talent.tips = {
		format = "使你的灵猴守护提供%s%%的额外躲闪几率。",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "厚皮"
	talent.tips = {
		format = "使你的宠物的护甲等级提高%s%%，你的装备所提供的护甲加成提高%s%%。",
		table_cache_65, -- 1
		{14, 7}, -- 2
		table_cache_9, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "强化复活宠物"
	talent.tips = {
		format = "使你的复活宠物法术的施法时间减少%s秒，法力值消耗降低%s%%，宠物复活后的生命值提高%s%%。",
		{3, 20, 15}, -- 1
		{6, 40, 30}, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "寻路"
	talent.tips = {
		format = "使你的猎豹守护和豹群守护的速度加成效果提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[8].info
	talent.name = "野兽迅捷"
	talent.tips = {
		"使你的宠物在户外的移动速度提高30%。", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "狂怒释放"
	talent.tips = {
		format = "使你的宠物所造成的伤害提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[10].info
	talent.name = "强化治疗宠物"
	talent.tips = {
		format = "使你的治疗宠物技能所消耗的法力值减少%s%%，并且有%s%%的几率每一跳驱散宠物身上的1个诅咒、疾病、魔法或中毒效果。",
		{10, 25}, -- 1
		{20, 50}, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "凶暴"
	talent.tips = {
		format = "使你的宠物的爆击几率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "灵魂联结"
	talent.tips = {
		format = "当你的宠物被激活后，你和你的宠物都会每10秒回复%s%%的生命值。",
	}
	talent = tree.talents[13].info
	talent.name = "胁迫"
	talent.tips = {
		{ -- 1
			{ left = "202 法力值", right = "100码有效距离" }, -- 1
			table_cache_90,
			table_cache_55,
			{ left = "命令你的宠物在下次击中敌人时进行胁迫，造成大量的威胁值，并使目标昏迷3秒。" }, -- 4
		},
	}
	talent = tree.talents[14].info
	talent.name = "野兽戒律"
	talent.tips = {
		format = "使你的宠物的集中值回复速度提高%s%%。",
		multiplier = 50,
	}
	talent = tree.talents[15].info
	talent.name = "驭兽者"
	talent.tips = {
		format = "使你的骑乘速度提高%s%%，宠物的攻击命中率提高%s%%。此骑乘速度加成效果不与其它同类效果叠加。",
		table_cache_13, -- 1
		table_cache_60, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "狂乱"
	talent.tips = {
		format = "使你的宠物有%s%%的几率在对敌人造成爆击后获得攻击速度提高30%%的效果，持续8秒钟。",
		multiplier = 20,
	}
	talent = tree.talents[17].info
	talent.name = "凶猛灵感"
	talent.tips = {
		format = "当你的宠物打出爆击之后，所有小队成员造成的所有伤害提高%s%%，效果持续10秒。",
	}
	talent = tree.talents[18].info
	talent.name = "狂野怒火"
	talent.tips = {
		{ -- 1
			{ left = "338 法力值", right = "100码有效距离" }, -- 1
			table_cache_53,
			table_cache_55,
			{ left = "使宠物进入疯狂状态，对目标造成的伤害提高50%，持续18秒。在这种状态下，宠物不会有任何恐惧和怜悯，也无法停止下来，除非被杀死。" }, -- 4
		},
	}
	talent = tree.talents[19].info
	talent.name = "猎豹反射"
	talent.tips = {
		format = "使你的躲闪几率提高%s%%，你的宠物的躲闪几率提高%s%%。",
		table_cache_33, -- 1
		table_cache_36, -- 2
		{3, 9}, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "蛇之迅捷"
	talent.tips = {
		format = "你的远程攻击速度提高%s%%，你的宠物的近战攻击速度提高%s%%。",
		table_cache_12, -- 1
		table_cache_3, -- 2
		table_cache_74, -- 3
		table_cache_42, -- 4
		table_cache_31, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "野兽之心"
	talent.tips = {
		"当你的宠物激活狂野怒火之后，你也会进入狂暴状态，对目标造成的伤害提高10%，所有法术所消耗的法力值降低20%，效果持续18秒。在这种状态下，你不会有任何恐惧或怜悯，也无法停止下来，除非被杀死。", -- 1
	}
	tree = data[2]
	tree.info.name = "射击"
	talent = tree.talents[1].info
	talent.name = "强化震荡射击"
	talent.tips = {
		format = "使你的震荡射击有%s%%的机会令目标昏迷3秒。",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "夺命射击"
	talent.tips = {
		format = "使你的远程武器的爆击几率提高%s%%。",
	}
	talent = tree.talents[3].info
	talent.name = "强化猎人印记"
	talent.tips = {
		format = "使你的猎人印记也提供近战攻击强度加成效果，数值相当于远程攻击强度加成的基础值的%s%%。",
		multiplier = 20,
	}
	talent = tree.talents[4].info
	talent.name = "效率"
	talent.tips = {
		format = "使你施放射击和钉刺技能所消耗的法力值减少%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "直取要害"
	talent.tips = {
		format = "你的远程爆击可以令你的宠物回复%s点集中值。",
		multiplier = 25,
	}
	talent = tree.talents[6].info
	talent.name = "强化奥术射击"
	talent.tips = {
		format = "使你的奥术射击的冷却时间减少%s秒。",
		0.2, -- 1
		0.4, -- 2
		0.6, -- 3
		0.8, -- 4
		1, -- 5
	}
	talent = tree.talents[7].info
	talent.name = "瞄准射击"
	talent.tips = {
		{ -- 1
			{ left = "75 法力值", right = "5-35码距离" }, -- 1
			{ left = "3秒施法时间" }, -- 2
			{ left = "6秒冷却时间 + 远程武器攻击速度" }, -- 3
			table_cache_27,
			table_cache_55,
			{ left = "瞄准目标射击，使远程伤害提高870点，并使其受到的治疗效果降低50%。持续10秒钟。" }, -- 6
		},
	}
	talent = tree.talents[8].info
	talent.name = "疾速杀戮"
	talent.tips = {
		format = "使你的急速射击技能的冷却时间减少%s分钟。另外，在杀死一个能够使你获得经验值或荣誉值的敌人之后，你的下一次瞄准射击、奥术射击或自动射击所造成的伤害提高%s%%，效果持续20秒。",
		table_cache_45, -- 1
		table_cache_1, -- 2
	}
	talent = tree.talents[9].info
	talent.name = "强化钉刺"
	talent.tips = {
		format = "使你的毒蛇钉刺和翼龙钉刺所造成的伤害提高%s%%，蝰蛇钉刺所吸取的法力值提高%s%%，另外还可使你的钉刺被驱散的几率降低%s%%。",
		{6, 6, 6}, -- 1
		{12, 12, 12}, -- 2
		{18, 18, 18}, -- 3
		{24, 24, 24}, -- 4
		table_cache_58, -- 5
	}
	talent = tree.talents[10].info
	talent.name = "致死射击"
	talent.tips = {
		format = "使你的远程武器爆击伤害加成提高%s%%。",
		multiplier = 6,
	}
	talent = tree.talents[11].info
	talent.name = "冲击弹幕"
	talent.tips = {
		format = "你的自动射击命中目标后有%s%%的几率令目标眩晕4秒。",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "驱散射击"
	talent.tips = {
		{ -- 1
			{ left = "202 法力值", right = "15码距离" }, -- 1
			table_cache_47,
			table_cache_27,
			table_cache_55,
			{ left = "短程射击，对目标造成50%的武器伤害，并使其困惑4秒。任何伤害都会打断该效果。使用之后结束你的攻击。" }, -- 5
		},
	}
	talent = tree.talents[13].info
	talent.name = "弹幕"
	talent.tips = {
		format = "使你的多重射击和乱射的伤害提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[14].info
	talent.name = "战斗经验"
	talent.tips = {
		format = "使你的敏捷总值提高%s%%，智力总值提高%s%%。",
		table_cache_33, -- 1
		table_cache_36, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "远程武器专精"
	talent.tips = {
		format = "使你的远程武器伤害提高%s%%。",
	}
	talent = tree.talents[16].info
	talent.name = "精确瞄准"
	talent.tips = {
		format = "使你的远程攻击强度提高，数值相当于你的智力总值的%s%%。",
		multiplier = 15,
	}
	talent = tree.talents[17].info
	talent.name = "强击光环"
	talent.tips = {
		{ -- 1
			table_cache_41,
			table_cache_55,
			{ left = "使半径45码范围内的小队成员的攻击强度提高50点，直到主动取消。" }, -- 3
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：75 攻击强度" }, -- 6
			{ left = " 等级3：100 攻击强度" }, -- 7
			{ left = " 等级4：125 攻击强度" }, -- 8
		},
	}
	talent = tree.talents[18].info
	talent.name = "强化弹幕"
	talent.tips = {
		format = "使你的多重射击技能的爆击几率提高%s%%，并且使你有%s%%的几率在引导乱射技能时不会因受到伤害而被打断。",
		table_cache_39, -- 1
		{8, 66}, -- 2
		{12, 100}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "狙击高手"
	talent.tips = {
		format = "使你的远程攻击强度提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "沉默射击"
	talent.tips = {
		{ -- 1
			{ left = "202 法力值", right = "5-35码距离" }, -- 1
			table_cache_26,
			table_cache_55,
			{ left = "射击敌人，对其造成50%的武器伤害，并使其沉默3秒。" }, -- 4
		},
	}
	tree = data[3]
	tree.info.name = "生存"
	talent = tree.talents[1].info
	talent.name = "怪物杀手"
	talent.tips = {
		format = "使你对野兽、巨人和龙类所造成的所有伤害提高%s%%，对野兽、巨人和龙类所造成的爆击伤害提高%s%%。",
		table_cache_91, -- 1
		table_cache_49, -- 2
		table_cache_2, -- 3
	}
	talent = tree.talents[2].info
	talent.name = "人型生物杀手"
	talent.tips = {
		format = "使你对人型生物所造成的所有伤害提高%s%%，对人型生物所造成的爆击伤害提高%s%%。",
		table_cache_91, -- 1
		table_cache_49, -- 2
		table_cache_2, -- 3
	}
	talent = tree.talents[3].info
	talent.name = "鹰眼"
	talent.tips = {
		format = "使你的远程武器的射程延长%s码。",
		multiplier = 2,
	}
	talent = tree.talents[4].info
	talent.name = "野蛮打击"
	talent.tips = {
		format = "使你的猛禽一击和猫鼬撕咬的爆击几率提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[5].info
	talent.name = "诱捕"
	talent.tips = {
		format = "使你的献祭陷阱、冰霜陷阱、爆炸陷阱和毒蛇陷阱有%s%%的几率困住目标，令他们无法移动，持续4秒。",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "偏斜"
	talent.tips = {
		format = "使你的招架几率提高%s%%。",
	}
	talent = tree.talents[7].info
	talent.name = "强化摔绊"
	talent.tips = {
		format = "使你的摔绊技能有%s%%的几率令目标在5秒内无法移动。",
		7, -- 1
		14, -- 2
		20, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "灵巧陷阱"
	talent.tips = {
		format = "使你的冰冻陷阱和冰霜陷阱的效果持续时间提高%s%%，献祭陷阱和爆炸陷阱所造成的伤害提高%s%%，毒蛇陷阱所召唤的毒蛇数量提高%s%%。",
		{15, 15, 15}, -- 1
		table_cache_58, -- 2
	}
	talent = tree.talents[9].info
	talent.name = "生存专家"
	talent.tips = {
		format = "使你的生命值上限提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[10].info
	talent.name = "威慑"
	talent.tips = {
		{ -- 1
			table_cache_78,
			table_cache_55,
			{ left = "激活之后，使你的躲闪和招架几率提高25%，持续10秒。" }, -- 3
		},
	}
	talent = tree.talents[11].info
	talent.name = "陷阱掌握"
	talent.tips = {
		format = "使敌人抵抗你陷阱效果的几率降低%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "稳固"
	talent.tips = {
		format = "使你的攻击命中敌人的几率提高%s%%，并使你抵抗移动限制效果的几率提高%s%%。",
		table_cache_24, -- 1
		table_cache_89, -- 2
		table_cache_81, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "强化假死"
	talent.tips = {
		format = "使敌人抵抗你的假死技能的几率降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "生存本能"
	talent.tips = {
		format = "受到的所有伤害降低%s%%，攻击强度提高%s%%。",
		table_cache_49, -- 1
		table_cache_12, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "杀戮本能"
	talent.tips = {
		format = "使你的所有攻击造成爆击的几率提高%s%%。",
	}
	talent = tree.talents[16].info
	talent.name = "反击"
	talent.tips = {
		{ -- 1
			{ left = "45 法力值", right = "近战范围" }, -- 1
			{ left = "瞬发法术", right = "5秒冷却时间" }, -- 2
			table_cache_55,
			{ left = "在招架敌人的攻击之后可以使用的技能。对敌人造成40点伤害，并使其无法行动，持续5秒。反击无法被格挡、躲闪或招架。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：65 法力值，70 伤害" }, -- 7
			{ left = " 等级3：85 法力值，110 伤害" }, -- 8
			{ left = " 等级4：110 法力值，165 伤害" }, -- 9
		},
	}
	talent = tree.talents[17].info
	talent.name = "足智多谋"
	talent.tips = {
		format = "使你的所有陷阱和近战技能所消耗的法力值减少%s%%，所有陷阱的冷却时间减少%s秒。",
		table_cache_51, -- 1
		{40, 4}, -- 2
		{60, 6}, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "闪电反射"
	talent.tips = {
		format = "使你的敏捷提高%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[19].info
	talent.name = "狩猎刺激"
	talent.tips = {
		format = "你有%s%%的几率在任何射击技能爆击之后回复该技能消耗法力值的40%%。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "翼龙钉刺"
	talent.tips = {
		{ -- 1
			{ left = "115 法力值", right = "5-35码距离" }, -- 1
			table_cache_53,
			table_cache_27,
			table_cache_55,
			{ left = "钉刺目标，使其沉睡12秒。任何伤害都会取消沉睡效果。当目标醒来时，钉刺会在12秒内对其造成300点自然伤害。只能在非战斗状态下使用。每个猎人在同一时间内只能对一个目标使用一种钉刺，且同类钉刺无法叠加。" }, -- 5
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：155 法力值，420 伤害" }, -- 8
			{ left = " 等级3：255 法力值，600 伤害" }, -- 9
		},
	}
	talent = tree.talents[21].info
	talent.name = "破甲虚弱"
	talent.tips = {
		format = "你的远程爆击有%s%%的几率为目标附加破甲虚弱效果，令所有攻击对该目标的攻击强度提高，数值相当于你的敏捷值的25%%，效果持续7秒钟。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[22].info
	talent.name = "战术大师"
	talent.tips = {
		format = "你的远程攻击命中后有6%%的几率使你的所有攻击的爆击几率提高%s%%，效果持续8秒钟。",
		multiplier = 2,
	}
	talent = tree.talents[23].info
	talent.name = "准备就绪"
	talent.tips = {
		{ -- 1
			table_cache_78,
			table_cache_55,
			{ left = "激活之后，这个技能立刻使你的其它猎人技能的冷却时间结束。" }, -- 3
		},
	}
	data = Talented_Data.WARRIOR
	-- data.name = "战士天赋"
	tree = data[1]
	tree.info.name = "武器"
	talent = tree.talents[1].info
	talent.name = "强化英勇打击"
	talent.tips = {
		format = "使你的英勇打击技能所消耗的怒气值减少%s点。",
	}
	talent = tree.talents[2].info
	talent.name = "偏斜"
	talent.tips = {
		format = "使你的招架几率提高%s%%。",
	}
	talent = tree.talents[3].info
	talent.name = "强化撕裂"
	talent.tips = {
		format = "使你的撕裂技能的流血伤害效果每次生效时都提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[4].info
	talent.name = "强化冲锋"
	talent.tips = {
		format = "使你的冲锋技能积攒的怒气值提高%s点。",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "钢铁意志"
	talent.tips = {
		format = "使你抵抗眩晕和魅惑效果的几率提高%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[6].info
	talent.name = "强化雷霆一击"
	talent.tips = {
		format = "使你的雷霆一击技能所消耗的怒气值减少%s点，伤害效果提高%s%%，另外使减速效果提高%s%%。",
		{1, 40, 4}, -- 1
		{2, 70, 7}, -- 2
		{4, 100, 10}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "强化压制"
	talent.tips = {
		format = "使你的压制技能的爆击几率提高%s%%.",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "愤怒掌握"
	talent.tips = {
		"每3秒获得1点怒气值。", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "重伤"
	talent.tips = {
		format = "你的爆击导致目标流血，使其在12秒内遭受相当于你的武器平均伤害值的%s%%的伤害。",
		multiplier = 20,
	}
	talent = tree.talents[10].info
	talent.name = "双手武器专精"
	talent.tips = {
		format = "使你的双手近战武器伤害提高%s%%。",
	}
	talent = tree.talents[11].info
	talent.name = "穿刺"
	talent.tips = {
		format = "使你在战斗姿态、防御姿态和狂暴姿态下的各种技能的爆击伤害加成提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[12].info
	talent.name = "长柄专精"
	talent.tips = {
		format = "使你的斧类武器和长柄武器的爆击几率提高%s%%。",
	}
	talent = tree.talents[13].info
	talent.name = "死亡之愿"
	talent.tips = {
		{ -- 1
			table_cache_4,
			table_cache_88,
			table_cache_55,
			{ left = "激活之后，你的物理攻击伤害提高20%，并免疫恐惧效果，但是受到任何攻击时所承受的伤害都提高5%。持续30秒。" }, -- 4
		},
	}
	talent = tree.talents[14].info
	talent.name = "锤类武器专精"
	talent.tips = {
		format = "使你的锤类武器在击中目标时有一定几率将其击晕3秒，并使你获得7点怒气值。%s",
		"", -- 1
		"比锤类武器专精（等级 1）更有效。", -- 2
		"比锤类武器专精（等级 2）更有效。", -- 3
		"比锤类武器专精（等级 3）更有效。", -- 4
		"比锤类武器专精（等级 4）更有效。", -- 5
	}
	talent = tree.talents[15].info
	talent.name = "剑类武器专精"
	talent.tips = {
		format = "使你在用剑类武器击中敌人后有%s%%的几率进行一次额外的攻击。",
	}
	talent = tree.talents[16].info
	talent.name = "强化拦截"
	talent.tips = {
		format = "使你的拦截技能的冷却时间减少%s秒。",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "强化断筋"
	talent.tips = {
		format = "使你的断筋技能有%s%%的几率令目标无法移动，持续5秒。",
		multiplier = 5,
	}
	talent = tree.talents[18].info
	talent.name = "强化戒律"
	talent.tips = {
		format = "使你的反击风暴、鲁莽和盾墙技能的冷却时间减少%s分钟，持续时间延长%s秒。",
		table_cache_13, -- 1
		table_cache_65, -- 2
		{10, 6}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "血性狂乱"
	talent.tips = {
		format = "你的撕裂和重伤技能也可以使目标受到的所有物理伤害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "致死打击"
	talent.tips = {
		{ -- 1
			{ left = "30 怒气", right = "5码有效距离" }, -- 1
			table_cache_72,
			table_cache_50,
			{ left = "一次邪恶的攻击，对目标造成武器伤害外加85点伤害，并使任何形式的治疗对其产生的效果降低50%，持续10秒。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = "  等级2：+110 伤害" }, -- 7
			{ left = "  等级3：+135 伤害" }, -- 8
			{ left = "  等级4：+160 伤害" }, -- 9
			{ left = "  等级5：+185 伤害" }, -- 10
			{ left = "  等级6：+210 伤害" }, -- 11
		},
	}
	talent = tree.talents[21].info
	talent.name = "复苏之风"
	talent.tips = {
		format = "当你受到昏迷或定身效果影响时，你将在10秒内获得%s点怒气值和生命总值的%s%%。",
		table_cache_22, -- 1
		table_cache_9, -- 2
	}
	talent = tree.talents[22].info
	talent.name = "强化致死打击"
	talent.tips = {
		format = "使你的致死打击技能的冷却时间减少%s秒，伤害提高%s%%。",
		{0.2, 1}, -- 1
		{0.4, 2}, -- 2
		{0.6, 3}, -- 3
		{0.8, 4}, -- 4
		table_cache_24, -- 5
	}
	talent = tree.talents[23].info
	talent.name = "无尽怒气"
	talent.tips = {
		"在对敌人造成伤害时产生的怒气值提高25%。", -- 1
	}
	tree = data[2]
	tree.info.name = "狂怒"
	talent = tree.talents[1].info
	talent.name = "震耳嗓音"
	talent.tips = {
		format = "使你的战斗怒吼、挫志怒吼和命令怒吼的作用范围和持续时间提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[2].info
	talent.name = "残忍"
	talent.tips = {
		format = "使你的近战武器的爆击几率提高%s%%。",
	}
	talent = tree.talents[3].info
	talent.name = "强化挫志怒吼"
	talent.tips = {
		format = "使你的挫志怒吼技能降低敌人近战攻击强度的效果提高%s%%。",
		multiplier = 8,
	}
	talent = tree.talents[4].info
	talent.name = "怒不可遏"
	talent.tips = {
		format = "使你有一定几率在对敌人造成近战伤害之后获得1个额外的怒气点数。%s",
		"", -- 1
		"触发几率比怒不可遏（等级 1）更高。", -- 2
		"触发几率比怒不可遏（等级 2）更高。", -- 3
		"触发几率比怒不可遏（等级 3）更高。", -- 4
		"触发几率比怒不可遏（等级 4）更高。", -- 5
	}
	talent = tree.talents[5].info
	talent.name = "强化顺劈斩"
	talent.tips = {
		format = "使你的顺劈斩技能附加的伤害提高%s%%。",
		multiplier = 40,
	}
	talent = tree.talents[6].info
	talent.name = "刺耳怒吼"
	talent.tips = {
		{ -- 1
			table_cache_4,
			table_cache_54,
			table_cache_55,
			{ left = "使战士身边的所有敌人眩晕，移动速度降低50%，持续6秒。" }, -- 4
		},
	}
	talent = tree.talents[7].info
	talent.name = "血之狂热"
	talent.tips = {
		format = "在受到爆击之后的6秒内为你回复生命值总量的%s%%。",
	}
	talent = tree.talents[8].info
	talent.name = "统御之力"
	talent.tips = {
		format = "使你的战斗怒吼所提供的近战攻击强度加成和命令怒吼所提供的生命值加成提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[9].info
	talent.name = "双武器专精"
	talent.tips = {
		format = "使你的副手武器伤害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[10].info
	talent.name = "强化斩杀"
	talent.tips = {
		format = "使你的斩杀技能的怒气值消耗减少%s点。",
		2, -- 1
		5, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "激怒"
	talent.tips = {
		format = "使你在遭到敌人的爆击之后所进行的最多12次近战攻击都获得%s%%的额外伤害加值，效果持续12秒。",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "强化猛击"
	talent.tips = {
		format = "使你的猛击技能的施放时间减少%s秒。",
		multiplier = 0.5,
	}
	talent = tree.talents[13].info
	talent.name = "横扫攻击"
	talent.tips = {
		{ -- 1
			{ left = "30 怒气" }, -- 1
			table_cache_63,
			table_cache_50,
			{ left = "需要战斗姿态" }, -- 4
			table_cache_55,
			{ left = "你在接下来的10次近战攻击中可以攻击到一个额外的敌人。" }, -- 6
		},
	}
	talent = tree.talents[14].info
	talent.name = "武器掌握"
	talent.tips = {
		format = "使你的攻击被躲闪的几率降低%s%%，并使你受到的缴械效果持续时间缩短%s%%。",
		table_cache_95, -- 1
		table_cache_99, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "强化狂暴之怒"
	talent.tips = {
		format = "在使用狂暴之怒技能之后获得%s点怒气值。",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "乱舞"
	talent.tips = {
		format = "在你的普通近战攻击打出爆击之后，使你的下3次近战攻击速度提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "精确"
	talent.tips = {
		format = "使你的近战武器的命中几率提高%s%%。",
	}
	talent = tree.talents[18].info
	talent.name = "嗜血"
	talent.tips = {
		{ -- 1
			{ left = "30 怒气", right = "近战攻击距离" }, -- 1
			table_cache_72,
			table_cache_55,
			{ left = "立刻攻击目标，对其造成217点伤害。另外，你的下5次成功的近战攻击每次都可令你回复10点生命值。效果持续8秒。攻击强度会影响伤害的数值。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = "  等级2：13 生命值" }, -- 7
			{ left = "  等级3：17 生命值" }, -- 8
			{ left = "  等级4：20 生命值" }, -- 9
			{ left = "  等级5：25 生命值" }, -- 10
			{ left = "  等级6：30 生命值" }, -- 11
		},
	}
	talent = tree.talents[19].info
	talent.name = "强化旋风斩"
	talent.tips = {
		format = "使你的旋风斩技能的冷却时间减少%s秒。",
	}
	talent = tree.talents[20].info
	talent.name = "强化狂暴姿态"
	talent.tips = {
		format = "在狂暴姿态下的攻击强度提高%s%%，威胁值降低%s%%。",
		table_cache_49, -- 1
		table_cache_12, -- 2
		{6, 6}, -- 3
		table_cache_3, -- 4
		table_cache_56, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "暴怒"
	talent.tips = {
		{ -- 1
			{ left = "20 怒气" }, -- 1
			table_cache_54,
			table_cache_55,
			{ left = "战士进入暴怒状态，攻击强度提高30点，大部分成功命中的近战攻击都可以令攻击强度继续提高30点。这个效果可以叠加最多5次，持续30秒。只能在打出爆击之后使用此技能。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = "  等级2：+40 攻击强度" }, -- 7
			{ left = "  等级3：+50 攻击强度" }, -- 8
		},
	}
	tree = data[3]
	tree.info.name = "防护"
	talent = tree.talents[1].info
	talent.name = "强化血性狂暴"
	talent.tips = {
		format = "使你的血性狂暴技能激活时所产生的怒气值增加%s点。",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "战术掌握"
	talent.tips = {
		format = "在改变姿态的时候可以保留的怒气值上限提高%s点，同时极大提高你在防御姿态下使用嗜血和致死打击技能所造成的威胁值。",
		multiplier = 5,
	}
	talent = tree.talents[3].info
	talent.name = "预知"
	talent.tips = {
		format = "使你的防御技能提高%s点。",
		multiplier = 4,
	}
	talent = tree.talents[4].info
	talent.name = "盾牌专精"
	talent.tips = {
		format = "使你用盾牌格挡攻击的几率提高%s%%，格挡成功所减免的伤害量提高%s%%。",
		{1, 20}, -- 1
		{2, 40}, -- 2
		{3, 60}, -- 3
		{4, 80}, -- 4
		{5, 100}, -- 5
	}
	talent = tree.talents[5].info
	talent.name = "坚韧"
	talent.tips = {
		format = "使你因装备而获得的护甲值提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "破釜沉舟"
	talent.tips = {
		{ -- 1
			{ left = "瞬发", right = "8分钟冷却时间" }, -- 1
			table_cache_55,
			{ left = "激活之后，使你暂时获得相当于最大生命值30%的生命值，持续20秒。在效果解除之后，这些生命值会被扣除。" }, -- 3
		},
	}
	talent = tree.talents[7].info
	talent.name = "强化盾牌格挡"
	talent.tips = {
		"使你的盾牌格档技能可以额外格档一次攻击，并使其有效时间延长1秒。", -- 1
	}
	talent = tree.talents[8].info
	talent.name = "强化复仇"
	talent.tips = {
		format = "使你的复仇技能有%s%%的几率令目标昏迷3秒。",
		multiplier = 15,
	}
	talent = tree.talents[9].info
	talent.name = "挑衅"
	talent.tips = {
		format = "使你在防御姿态下由于攻击而造成的威胁值提高%s%%，并使你的精准等级提高%s。",
		table_cache_49, -- 1
		table_cache_98, -- 2
		table_cache_96, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "强化破甲攻击"
	talent.tips = {
		format = "使你的破甲攻击和毁灭打击所消耗的怒气值减少%s点。",
	}
	talent = tree.talents[11].info
	talent.name = "强化缴械"
	talent.tips = {
		format = "使你的缴械技能的效果持续时间延长%s秒。",
	}
	talent = tree.talents[12].info
	talent.name = "强化嘲讽"
	talent.tips = {
		format = "使你的嘲讽技能的冷却时间减少%s秒。",
	}
	talent = tree.talents[13].info
	talent.name = "强化盾墙"
	talent.tips = {
		format = "使你的盾墙技能的有效时间延长%s秒。",
		3, -- 1
		5, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "震荡猛击"
	talent.tips = {
		{ -- 1
			table_cache_102,
			{ left = "瞬发", right = "45秒冷却时间" }, -- 2
			table_cache_50,
			table_cache_55,
			{ left = "野蛮的攻击，令目标昏迷5秒。" }, -- 5
		},
	}
	talent = tree.talents[15].info
	talent.name = "强化盾击"
	talent.tips = {
		format = "使你的盾击技能有%s%%的几率使目标沉默3秒。",
		multiplier = 50,
	}
	talent = tree.talents[16].info
	talent.name = "盾牌掌握"
	talent.tips = {
		format = "使你的盾牌所吸收的伤害值提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[17].info
	talent.name = "单手武器专精"
	talent.tips = {
		format = "使你的单手近战武器伤害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "强化防御姿态"
	talent.tips = {
		format = "在防御姿态下受到的所有法术伤害减少%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[19].info
	talent.name = "盾牌猛击"
	talent.tips = {
		{ -- 1
			{ left = "20 怒气", right = "近战范围" }, -- 1
			table_cache_72,
			table_cache_38,
			table_cache_55,
			{ left = "用盾牌击打目标，对其造成225到235点伤害（盾牌格档值会对伤害数值产生影响），并驱散目标身上的1个魔法效果，同时产生大量的威胁值。" }, -- 5
			table_cache_55,
			table_cache_16,
			{ left = "  等级2：264-276 伤害" }, -- 8
			{ left = "  等级3：303-317 伤害" }, -- 9
			{ left = "  等级4：342-358 伤害" }, -- 10
			{ left = "  等级5：381-399 伤害" }, -- 11
			{ left = "  等级6：420-440 伤害" }, -- 12
		},
	}
	talent = tree.talents[20].info
	talent.name = "怒火专注"
	talent.tips = {
		format = "使你的所有攻击技能所消耗的怒气值降低%s。",
	}
	talent = tree.talents[21].info
	talent.name = "活力"
	talent.tips = {
		format = "使你的耐力总值提高%s%%，力量总值提高%s%%。",
		table_cache_46, -- 1
		table_cache_8, -- 2
		table_cache_35, -- 3
		table_cache_29, -- 4
		table_cache_70, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "毁灭打击"
	talent.tips = {
		{ -- 1
			table_cache_102,
			table_cache_54,
			{ left = "需要单手近战武器" }, -- 3
			table_cache_55,
			{ left = "击碎目标的护甲，对其造成破甲效果。另外还可以造成50%的武器伤害，外加目标身上每层破甲效果所提供的35点伤害加成。破甲效果可以叠加最多5次。" }, -- 5
			table_cache_55,
			table_cache_16,
			{ left = "  等级2：+25 伤害" }, -- 8
			{ left = "  等级3： +35 伤害" }, -- 9
		},
	}
	data = Talented_Data.SHAMAN
	-- data.name = "萨满祭司天赋"
	tree = data[1]
	tree.info.name = "元素战斗"
	talent = tree.talents[1].info
	talent.name = "传导"
	talent.tips = {
		format = "使你的震击、闪电箭和闪电链所消耗的法力值减少%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "震荡"
	talent.tips = {
		format = "使你的震击、闪电箭和闪电链的伤害提高%s%%。",
	}
	talent = tree.talents[3].info
	talent.name = "大地之握"
	talent.tips = {
		format = "使你的石爪图腾的生命值提高%s%%，地缚图腾的影响范围增加%s%%。",
		{25, 10}, -- 1
		{50, 20}, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "元素防护"
	talent.tips = {
		format = "使你在被火焰、冰霜和自然系法术击中时所承受的伤害降低%s%%。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "烈焰召唤"
	talent.tips = {
		format = "使你的火系图腾所能造成的伤害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "元素集中"
	talent.tips = {
		"你的任何火焰、冰霜或自然系的伤害性法术造成爆击之后，你都会进入节能施法状态。这个状态可以使你的下2个伤害性法术所消耗的法力值减少40%。", -- 1
	}
	talent = tree.talents[7].info
	talent.name = "回响"
	talent.tips = {
		format = "使你的震击法术的冷却时间减少%s秒。",
		0.2, -- 1
		0.4, -- 2
		0.6, -- 3
		0.8, -- 4
		1, -- 5
	}
	talent = tree.talents[8].info
	talent.name = "雷霆召唤"
	talent.tips = {
		format = "使你的闪电箭和闪电链的爆击几率提高%s%%。",
		1, -- 1
		2, -- 2
		3, -- 3
		4, -- 4
		6, -- 5
	}
	talent = tree.talents[9].info
	talent.name = "强化火焰图腾"
	talent.tips = {
		format = "使你的火焰新星图腾激活所需的延迟时间减少%s秒，熔岩图腾所造成的威胁值降低%s%%。",
		table_cache_95, -- 1
		table_cache_99, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "风暴之眼"
	talent.tips = {
		format = "使你有%s%%的几率在受到敌人的近战或远程爆击后获得专注施法效果，持续6。专注施法效果可以令你避免因为受到伤害而延长萨满祭司法术的施法时间。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "元素浩劫"
	talent.tips = {
		format = "你的攻击法术在造成爆击之后，令你的近战爆击几率提高%s%%，持续10秒。",
		multiplier = 3,
	}
	talent = tree.talents[12].info
	talent.name = "风暴来临"
	talent.tips = {
		format = "使你的闪电箭和闪电链的射程延长%s码。",
		multiplier = 3,
	}
	talent = tree.talents[13].info
	talent.name = "元素之怒"
	talent.tips = {
		"使你的灼热图腾、熔岩图腾、火焰新星图腾以及你的火焰、冰霜和自然系法术的爆击伤害加成提高100%。", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "冷酷风暴"
	talent.tips = {
		format = "每5秒为你恢复相当于你的智力值%s%%的法力值，在施法时仍然有效。",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "元素精准"
	talent.tips = {
		format = "使你的火焰、冰霜和自然系法术的命中几率提高%s%%，火焰、冰霜和自然系法术所造成的威胁值降低%s。",
		{2, "4%"}, -- 1
		{4, "7%"}, -- 2
		{6, 10}, -- 3
	}
	talent = tree.talents[16].info
	talent.name = "闪电掌握"
	talent.tips = {
		format = "使你的闪电箭和闪电链的施法时间减少0.%s秒。",
	}
	talent = tree.talents[17].info
	talent.name = "元素掌握"
	talent.tips = {
		{ -- 1
			table_cache_88,
			{ left = "激活之后，你的下一个火焰、冰霜或自然法术有100%的几率造成爆击，且法力值消耗降低100%。" }, -- 2
		},
	}
	talent = tree.talents[18].info
	talent.name = "元素之盾"
	talent.tips = {
		format = "使你受到近战和远程爆击的几率降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[19].info
	talent.name = "闪电过载"
	talent.tips = {
		format = "你的闪电箭和闪电链法术有%s%%的几率令你对同一个目标施放第二个完全一样的法术，不需任何法力值消耗，但是伤害减半。",
		multiplier = 4,
	}
	talent = tree.talents[20].info
	talent.name = "天怒图腾"
	talent.tips = {
		{ -- 1
			{ left = "147 法力值" }, -- 1
			table_cache_41,
			{ left = "工具：火图腾" }, -- 3
			{ left = "在施法者身边召唤一个生命值为5点的天怒图腾，持续2分钟。这个图腾可以使周围半径20码范围内的所有小队成员的法术命中几率和法术爆击几率提高3%。" }, -- 4
		},
	}
	tree = data[2]
	tree.info.name = "增强"
	talent = tree.talents[1].info
	talent.name = "先祖知识"
	talent.tips = {
		format = "使你的法力值上限提高%s%%。",
	}
	talent = tree.talents[2].info
	talent.name = "盾牌专精"
	talent.tips = {
		format = "使你用盾牌格挡攻击的几率提高%s%%，格挡成功后所减免的伤害量提高%s%%。",
		table_cache_24, -- 1
		table_cache_89, -- 2
		table_cache_81, -- 3
		table_cache_103, -- 4
		table_cache_87, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "守护图腾"
	talent.tips = {
		format = "使你的石肤图腾和风墙图腾所能吸收的伤害提高%s%%，根基图腾的冷却时间减少%s秒。",
		{10, 1}, -- 1
		table_cache_51, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "雷鸣猛击"
	talent.tips = {
		format = "使你的武器的爆击几率提高%s%%。",
	}
	talent = tree.talents[5].info
	talent.name = "强化幽灵之狼"
	talent.tips = {
		format = "使你的幽魂之狼法术的施法时间减少%s秒。",
	}
	talent = tree.talents[6].info
	talent.name = "强化闪电之盾"
	talent.tips = {
		format = "使你的闪电之盾法术所造成的伤害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "强化图腾"
	talent.tips = {
		format = "使你的大地之力图腾和风之优雅图腾的效果提高%s%%。",
		8, -- 1
		15, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "萨满专注"
	talent.tips = {
		"在打出一次近战爆击之后，你将进入专注状态，使你的下一次震击法术所消耗的法力值减少60%。", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "预知"
	talent.tips = {
		format = "使你的躲闪几率提高%s%%。",
	}
	talent = tree.talents[10].info
	talent.name = "乱舞"
	talent.tips = {
		format = "在你打出爆击之后，使你的下3次近战攻击速度提高%s%%。",
		10, -- 1
		15, -- 2
		20, -- 3
		25, -- 4
		30, -- 5
	}
	talent = tree.talents[11].info
	talent.name = "坚韧"
	talent.tips = {
		format = "使你因装备而获得的护甲值提高%s%%，你身上的所有移动限制效果的持续时间缩短%s%%。",
		table_cache_89, -- 1
		table_cache_103, -- 2
		table_cache_61, -- 3
		{8, 40}, -- 4
		table_cache_52, -- 5
	}
	talent = tree.talents[12].info
	talent.name = "强化武器图腾"
	talent.tips = {
		format = "使你的风怒图腾所提供的近战攻击强度加成提高%s%%，火舌图腾所造成的伤害提高%s%%。",
		table_cache_96, -- 1
		{30, 12}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "灵魂武器"
	talent.tips = {
		"有一定几率招架敌人的近战攻击，并使你的近战攻击所产生的威胁值降低30%。", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "元素武器"
	talent.tips = {
		format = "使你的石化武器所造成的伤害提高%s%%，风怒武器效果所造成的伤害提高%s%%，火舌武器和冰封武器所造成的伤害提高%s%%。",
		{7, 13, 5}, -- 1
		{14, 27, 10}, -- 2
		{20, 40, 15}, -- 3
	}
	talent = tree.talents[15].info
	talent.name = "精神敏锐"
	talent.tips = {
		format = "使你的瞬发法术所消耗的法力值降低%s%%，并提高你的法术伤害和治疗效果，数值相当于你的攻击强度的%s%%。",
		table_cache_89, -- 1
		table_cache_103, -- 2
		table_cache_61, -- 3
	}
	talent = tree.talents[16].info
	talent.name = "武器掌握"
	talent.tips = {
		format = "使你的所有武器伤害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "双武器专精"
	talent.tips = {
		format = "使你在持双武器作战时的命中几率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "双武器"
	talent.tips = {
		"使你可以在副手上装备单手和副手武器。", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "风暴打击"
	talent.tips = {
		{ -- 1
			{ left = "236 法力值", right = "近战范围" }, -- 1
			table_cache_77,
			table_cache_55,
			{ left = "立即使用两把武器攻击。另外，你的下2次攻击对敌人造成的自然伤害提高20%，持续12秒。" }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "怒火释放"
	talent.tips = {
		format = "你的近战爆击可以令身边半径20码范围内的所有小队成员的攻击强度提高%s%%。效果持续10秒。",
		multiplier = 2,
	}
	talent = tree.talents[21].info
	talent.name = "萨满之怒"
	talent.tips = {
		{ -- 1
			table_cache_75,
			table_cache_55,
			{ left = "使你受到的所有伤害降低30%，成功的近战攻击有一定几率为你恢复法力值，数值相当于你的攻击强度的30%。持续15秒。" }, -- 3
		},
	}
	tree = data[3]
	tree.info.name = "恢复"
	talent = tree.talents[1].info
	talent.name = "强化治疗波"
	talent.tips = {
		format = "使你的治疗波的施法时间减少0.%s秒。",
	}
	talent = tree.talents[2].info
	talent.name = "潮汐集中"
	talent.tips = {
		format = "使你的治疗法术所消耗的法力值减少%s%%。",
	}
	talent = tree.talents[3].info
	talent.name = "强化复生"
	talent.tips = {
		format = "使你的复生法术的冷却时间减少%s分钟，并使你在重生后所获得的生命值和法力值提高%s%%。",
		table_cache_56, -- 1
		table_cache_31, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "先祖治疗"
	talent.tips = {
		format = "在你的任何一个治疗法术对目标造成爆击效果后，使目标因装备而获得的护甲值提高%s%%，持续15秒。",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "图腾集中"
	talent.tips = {
		format = "使你施放图腾所消耗的法力值减少%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "自然指引"
	talent.tips = {
		format = "使你的法术和近战攻击的命中几率提高%s%%。",
	}
	talent = tree.talents[7].info
	talent.name = "治疗专注"
	talent.tips = {
		format = "使你在施放任意萨满祭司治疗法术的时候有%s%%的几率避免因受到伤害而被打断。",
		multiplier = 14,
	}
	talent = tree.talents[8].info
	talent.name = "图腾掌握"
	talent.tips = {
		"你的图腾影响友方单位的半径增加到30码。", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "治疗之赐"
	talent.tips = {
		format = "使你的所有治疗法术所造成的威胁值降低%s%%，并且降低法术被驱散的几率%s%%。",
		table_cache_70, -- 1
		table_cache_28, -- 2
		table_cache_101, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "恢复图腾"
	talent.tips = {
		format = "使你的法力之泉图腾和治疗之泉图腾的效果提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "潮汐掌握"
	talent.tips = {
		format = "使你的治疗法术和闪电法术的爆击几率提高%s%%。",
	}
	talent = tree.talents[12].info
	talent.name = "治疗之道"
	talent.tips = {
		format = "你的治疗波有%s%%的几率令你的目标由以后的治疗波获得额外的治疗效果。这个效果使目标所受到的治疗效果提高6%%，持续15秒，可叠加3次。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "自然迅捷"
	talent.tips = {
		{ -- 1
			table_cache_88,
			table_cache_55,
			{ left = "激活之后，你的下一个施法时间低于10秒的自然法术会成为瞬发法术。" }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "心灵专注"
	talent.tips = {
		format = "使所有沉默和打断效果对萨满祭司的持续时间缩短%s%%。这个效果不与其它任何同类效果叠加。",
		multiplier = 5,
	}
	talent = tree.talents[15].info
	talent.name = "净化"
	talent.tips = {
		format = "使你的治疗法术的效果提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "法力之潮图腾"
	talent.tips = {
		{ -- 1
			{ left = "<span style=text-align:left;float:left;font-size=11px;color=#cccccc>88 法力值" }, -- 1
			{ left = "瞬发法术", right = "5分钟冷却时间" }, -- 2
			{ left = "工具: 水图腾" }, -- 3
			{ left = "在施法者身边召唤一个生命值为5点的法力之潮图腾，持续12。它可以为半径20码范围内的小队成员每3秒回复6%的法力值。" }, -- 4
		},
	}
	talent = tree.talents[17].info
	talent.name = "自然的守护者"
	talent.tips = {
		format = "当一次伤害性的攻击使你的生命值降低到30%%以下时，你有%s%%的几率恢复生命总值的10%%，并降低你对该目标的威胁值。5秒钟冷却时间。",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "自然的祝福"
	talent.tips = {
		format = "使你的法术伤害和治疗效果提高，数值相当于你的智力值的%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[19].info
	talent.name = "强化治疗链"
	talent.tips = {
		format = "使你的治疗链法术所恢复的生命值提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[20].info
	talent.name = "大地之盾"
	talent.tips = {
		{ -- 1
			{ left = "300 法力值", right = "40码距离" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "一层大地之盾保护目标，使其有30%的几率忽略打断施法的效果，被大地之盾保护的目标在受到攻击时可以恢复150点生命值。该效果每数秒只能出现一次，共可生效6次。大地之盾持续10分钟，同一时间内只能给一个目标施放大地之盾，且同一时间内只能有一种元素护盾在同一目标身上生效。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：375 法力值，治疗205点生命" }, -- 7
			{ left = " 等级3：450 法力值，治疗270点生命" }, -- 8
		},
	}
	data = Talented_Data.MAGE
	-- data.name = "法师天赋"
	tree = data[1]
	tree.info.name = "奥术"
	talent = tree.talents[1].info
	talent.name = "奥术精妙"
	talent.tips = {
		format = "使你的目标对你的所有法术的抗性降低%s，并使你的奥术系法术所造成的威胁值降低%s%%。",
		{5, 20}, -- 1
		table_cache_14, -- 2
	}
	talent = tree.talents[2].info
	talent.name = "奥术集中"
	talent.tips = {
		format = "使你的敌人抵抗你的奥术法术的几率降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "强化奥术飞弹"
	talent.tips = {
		format = "使你有%s%%的几率在施放奥术飞弹时不会因为受到伤害而中断施法。",
		multiplier = 20,
	}
	talent = tree.talents[4].info
	talent.name = "魔杖专精"
	talent.tips = {
		format = "使你的魔杖伤害提高%s%%。",
		13, -- 1
		25, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "魔法吸收"
	talent.tips = {
		format = "使你的所有抗性提高%s点，你每次完全抵抗一个法术就可以恢复法力值总量的%s%%。冷却时间1秒钟。",
		table_cache_73, -- 1
		table_cache_13, -- 2
		table_cache_23, -- 3
		table_cache_60, -- 4
		table_cache_22, -- 5
	}
	talent = tree.talents[6].info
	talent.name = "奥术专注"
	talent.tips = {
		format = "使你有%s%%的几率在施放任何一种伤害性法术之后进入节能施法状态。节能施法状态可以使你的下一个伤害性法术所消耗的法力值减少100%%。",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "魔法协调"
	talent.tips = {
		format = "使你的魔法抑制和魔法增效的效果提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "奥术爆裂"
	talent.tips = {
		format = "使你的魔爆术和奥术冲击的爆击几率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "奥术坚韧"
	talent.tips = {
		"使你的护甲值提高，数值相当于你的智力的100%。", -- 1
	}
	talent = tree.talents[10].info
	talent.name = "强化法力护盾"
	talent.tips = {
		format = "使你的法力护盾每吸收一点伤害所消耗的法力值减少%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "强化法术反制"
	talent.tips = {
		format = "使你的法术反制有%s%%的几率令目标沉默4秒。",
		multiplier = 50,
	}
	talent = tree.talents[12].info
	talent.name = "奥术冥想"
	talent.tips = {
		format = "使你在施法时仍保持%s%%的法力回复速度。",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "强化闪现术"
	talent.tips = {
		format = "在施放闪现法术之后的4秒内，你被任何攻击命中的几率降低%s%%。",
		13, -- 1
		25, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "气定神闲"
	talent.tips = {
		{ -- 1
			table_cache_88,
			table_cache_55,
			{ left = "激活之后，你的下一个施法时间低于10秒的法师法术会成为瞬发法术法术。" }, -- 3
		},
	}
	talent = tree.talents[15].info
	talent.name = "奥术心智"
	talent.tips = {
		format = "使你的智力总值提高%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[16].info
	talent.name = "多彩屏障"
	talent.tips = {
		format = "受到的所有伤害降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "奥术增效"
	talent.tips = {
		format = "使你的法术伤害和爆击几率提高%s%%。",
	}
	talent = tree.talents[18].info
	talent.name = "奥术潜能"
	talent.tips = {
		format = "在节能施法状态下施放的所有法术的爆击几率提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[19].info
	talent.name = "奥术飞弹增效"
	talent.tips = {
		format = "提高法术伤害的效果对你的奥术飞弹有%s%%的额外加成，但法力值消耗提高%s%%。",
		table_cache_32, -- 1
		table_cache_37, -- 2
		{45, 6}, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "奥术强化"
	talent.tips = {
		{ -- 1
			table_cache_88,
			table_cache_55,
			{ left = "激活之后，你的法术会造成30%的额外伤害，但同时也要消耗30%的额外法力才能施放。这个效果可以持续15秒。" }, -- 3
		},
	}
	talent = tree.talents[21].info
	talent.name = "法术能量"
	talent.tips = {
		format = "所有法术的爆击伤害加成提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[22].info
	talent.name = "心灵掌握"
	talent.tips = {
		format = "使你的法术伤害加成提高，数值最多相当于你的智力总值的%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[23].info
	talent.name = "减速"
	talent.tips = {
		{ -- 1
			{ left = "627 法力值", right = "30码有效距离" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "使目标的移动速度降低50%，远程攻击间隔延长50%，施法时间延长50%。持续15秒。同一时间内只能对一个目标使用减速。" }, -- 4
		},
	}
	tree = data[2]
	tree.info.name = "火焰"
	talent = tree.talents[1].info
	talent.name = "强化火球术"
	talent.tips = {
		format = "使你的火球术的施法时间减少0.%s秒。",
	}
	talent = tree.talents[2].info
	talent.name = "冲击"
	talent.tips = {
		format = "使你的火焰魔法有%s%%的几率令目标昏迷2秒。",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "点燃"
	talent.tips = {
		format = "你的火焰法术在造成爆击后使目标燃烧，令其在4秒内承受相当于该法术伤害%s%%的额外伤害。",
		multiplier = 8,
	}
	talent = tree.talents[4].info
	talent.name = "烈焰投掷"
	talent.tips = {
		format = "使你的火焰法术的射程增加%s码。",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "强化火焰冲击"
	talent.tips = {
		format = "使你的火焰冲击的冷却时间减少%s秒。",
		multiplier = 0.5,
	}
	talent = tree.talents[6].info
	talent.name = "烧尽"
	talent.tips = {
		format = "使你的火焰冲击和灼烧法术的爆击几率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "强化烈焰风暴"
	talent.tips = {
		format = "使你的烈焰风暴的爆击几率提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "炎爆术"
	talent.tips = {
		{ -- 1
			{ left = "125 法力值", right = "35码有效距离" }, -- 1
			{ left = "6秒施法时间" }, -- 2
			table_cache_55,
			{ left = "发射一枚巨大的火球，对目标造成148到195点伤害，并在12秒内造成总计56点额外伤害。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：150法力值，193-250伤害，72附加伤害/12秒" }, -- 7
			{ left = " 等级3：195法力值，270-343伤害，96附加伤害/12秒" }, -- 8
			{ left = " 等级4：240法力值，347-437伤害，124附加伤害/12秒" }, -- 9
			{ left = " 等级5：285法力值，427-536伤害，156附加伤害/12秒" }, -- 10
			{ left = " 等级6：335法力值，525-654伤害，188附加伤害/12秒" }, -- 11
			{ left = " 等级7：385法力值，625-776伤害，228附加伤害/12秒" }, -- 12
			{ left = " 等级8：440法力值，743-918伤害，268附加伤害/12秒" }, -- 13
			{ left = " 等级9：460法力值，877-1087伤害，324附加伤害/12秒" }, -- 14
		},
	}
	talent = tree.talents[9].info
	talent.name = "燃烧之魂"
	talent.tips = {
		format = "使你的火焰系法术有%s%%的几率不会因为你受到伤害而被干扰，火焰系法术所造成的威胁值降低%s%%。",
		{35, 5}, -- 1
		{70, 10}, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "强化灼烧"
	talent.tips = {
		format = "使你的灼烧法术有%s%%的几率令目标更容易受到火焰伤害，在其受到火焰系法术攻击时承受的伤害提高3%%，持续30秒。最多可叠加5次。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "熔岩护盾"
	talent.tips = {
		format = "你的防护火焰结界有%s%%的几率将火焰法术反射给施法者。另外，你的熔岩护甲有%s%%的几率对远程或法术攻击生效。",
		table_cache_52, -- 1
		{20, 100}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "元素大师"
	talent.tips = {
		format = "你的火焰系和冰霜系法术在造成爆击之后会为你回复该法术所消耗基础法力值的%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "玩火自焚"
	talent.tips = {
		format = "使你所造成的法术伤害提高%s%%，受到的所有法术伤害提高%s%%。",
		table_cache_91, -- 1
		table_cache_49, -- 2
		table_cache_2, -- 3
	}
	talent = tree.talents[14].info
	talent.name = "火焰重击"
	talent.tips = {
		format = "使你的火焰法术的爆击几率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "冲击波"
	talent.tips = {
		{ -- 1
			{ left = "215 法力值" }, -- 1
			table_cache_63,
			table_cache_55,
			{ left = "施法者放出一道火焰冲击波，所有被冲击波触及的敌人都会受到160到192点火焰伤害，并眩晕6秒。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：270 法力值，201-241 伤害" }, -- 7
			{ left = " 等级3：355 法力值，277-329 伤害" }, -- 8
			{ left = " 等级4：450 法力值，365-433 伤害" }, -- 9
			{ left = " 等级5：545 法力值，462-544 伤害" }, -- 10
			{ left = " 等级6：595 法力值，640-754 伤害" }, -- 11
		},
	}
	talent = tree.talents[16].info
	talent.name = "炽热疾速"
	talent.tips = {
		format = "使你有%s%%在受到近战或远程攻击之后，移动速度提高50%%，并解除所有移动限制效果。炽热疾速效果可持续8秒。",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "火焰强化"
	talent.tips = {
		format = "使你的火焰法术的伤害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "纵火"
	talent.tips = {
		format = "使所有火焰法术的爆击几率提高%s%%，法力值消耗降低%s%%。",
		table_cache_91, -- 1
		table_cache_49, -- 2
		table_cache_2, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "燃烧"
	talent.tips = {
		{ -- 1
			table_cache_88,
			table_cache_55,
			{ left = "激活之后，你每一次施放火焰系伤害性法术，你的该类法术的爆击几率都会提高10%。这个效果会一直持续到你使用火焰系法术造成了3次爆击。" }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "熔岩之怒"
	talent.tips = {
		format = "所有法术对生命值低于20%%的目标所造成的伤害提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[21].info
	talent.name = "火球增效"
	talent.tips = {
		format = "提高法术伤害的效果对你的火球术有%s%%的额外加成。",
		multiplier = 3,
	}
	talent = tree.talents[22].info
	talent.name = "龙息术"
	talent.tips = {
		{ -- 1
			{ left = "475 法力值" }, -- 1
			table_cache_26,
			table_cache_55,
			{ left = "使施法者面前的一个锥形区域内的所有目标受到382到442点火焰伤害，并陷入混乱状态，持续3秒钟。任何直接伤害型的攻击都会令混乱的目标恢复正常。使用之后结束你的攻击动作。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：575 法力值，463-536 伤害" }, -- 7
			{ left = " 等级3：660 法力值，584-677 伤害" }, -- 8
			{ left = " 等级4：700 法力值，680-790 伤害" }, -- 9
		},
	}
	tree = data[3]
	tree.info.name = "冰霜"
	talent = tree.talents[1].info
	talent.name = "冰霜障壁"
	talent.tips = {
		format = "使你的霜甲术和冰甲术所提供的护甲值和抗性提高%s%%。另外，你的防护冰霜结界有%s%%的几率将冰霜系法术和魔法效果反射给施法者。",
		table_cache_6, -- 1
		table_cache_17, -- 2
	}
	talent = tree.talents[2].info
	talent.name = "强化寒冰箭"
	talent.tips = {
		format = "使你的寒冰箭的施法时间减少0.%s秒。",
	}
	talent = tree.talents[3].info
	talent.name = "元素精准"
	talent.tips = {
		format = "使你的火焰和冰霜系法术所消耗的法力值及目标抵抗这些法术的几率降低%s%%。",
	}
	talent = tree.talents[4].info
	talent.name = "寒冰碎片"
	talent.tips = {
		format = "使你的冰霜法术的爆击伤害提高%s%%。",
		multiplier = 20,
	}
	talent = tree.talents[5].info
	talent.name = "霜寒刺骨"
	talent.tips = {
		format = "使你的寒冷效果有%s%%的几率将目标冻结5秒。",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "强化冰霜新星"
	talent.tips = {
		format = "使你的冰霜新星的冷却时间减少%s秒。",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "极寒冰霜"
	talent.tips = {
		format = "使你的冰冷效果的持续时间延长%s秒，并使目标身上的减速效果提高%s%%。",
		{1, 4}, -- 1
		{2, 7}, -- 2
		{3, 10}, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "刺骨寒冰"
	talent.tips = {
		format = "使你的冰霜法术的伤害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "冰冷血脉"
	talent.tips = {
		{ -- 1
			{ left = "3%基础法力值" }, -- 1
			table_cache_57,
			table_cache_55,
			{ left = "提高你的施法速度，使得所有法术的施法时间缩短20%，避免因受到伤害而打断施法的几率提高100%，效果持续20秒。" }, -- 4
		},
	}
	talent = tree.talents[10].info
	talent.name = "强化暴风雪"
	talent.tips = {
		format = "为你的暴风雪法术增加冰冷效果，使目标的移动速度降低%s%%。持续1.50秒。",
		30, -- 1
		50, -- 2
		65, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "极寒延伸"
	talent.tips = {
		format = "使你的冰霜新星和冰锥术的有效半径以及寒冰箭和暴风雪的射程提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[12].info
	talent.name = "冰霜导能"
	talent.tips = {
		format = "使你的所有冰霜法术所消耗的法力值减少%s%%，冰霜系法术所造成的威胁值降低%s%%。",
		{5, 4}, -- 1
		{10, 7}, -- 2
		table_cache_6, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "碎冰"
	talent.tips = {
		format = "使你的所有法术在击中被冰冻的敌人时的爆击几率提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[14].info
	talent.name = "冰冻之心"
	talent.tips = {
		format = "受到冰霜和火焰系攻击时所承受的伤害降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "急速冷却"
	talent.tips = {
		{ -- 1
			{ left = "瞬发法术", right = "8分钟冷却时间" }, -- 1
			table_cache_55,
			{ left = "激活之后，使你最近施放的所有冰霜法术的冷却时间结束。" }, -- 3
		},
	}
	talent = tree.talents[16].info
	talent.name = "强化冰锥术"
	talent.tips = {
		format = "使你的冰锥术的伤害提高%s%%。",
		15, -- 1
		25, -- 2
		35, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "浮冰"
	talent.tips = {
		format = "使你的冰锥术、急速冷却、寒冰护体和寒冰屏障法术的冷却时间减少%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "深冬之寒"
	talent.tips = {
		format = "你的冰霜系伤害法术有%s%%的几率附加深冬之寒效果，令冰霜系法术对目标造成爆击的几率提高2%%，该效果持续15秒。可叠加最多5次。",
		multiplier = 20,
	}
	talent = tree.talents[19].info
	talent.name = "寒冰护体"
	talent.tips = {
		{ -- 1
			{ left = "305 法力值" }, -- 1
			table_cache_47,
			table_cache_55,
			{ left = "立即为目标加上魔法护盾，可吸收454点伤害，持续1分钟。只要护盾存在，受保护者的施法就不会被打断。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：吸收568点伤害" }, -- 7
			{ left = " 等级3：吸收699点伤害" }, -- 8
			{ left = " 等级4：吸收842点伤害" }, -- 9
			{ left = " 等级5：吸收1003点伤害" }, -- 10
		},
	}
	talent = tree.talents[20].info
	talent.name = "极寒之风"
	talent.tips = {
		format = "使你的所有冰霜法术伤害提高%s%%，被近战和远程攻击命中的几率降低%s%%。",
		table_cache_91, -- 1
		table_cache_49, -- 2
		table_cache_2, -- 3
		table_cache_12, -- 4
		table_cache_18, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "寒冰箭增效"
	talent.tips = {
		format = "提高法术伤害的效果对你的寒冰箭有%s%%的额外加成，同时你的寒冰箭的爆击几率提高%s%%。",
		table_cache_73, -- 1
		table_cache_13, -- 2
		table_cache_23, -- 3
		table_cache_60, -- 4
		table_cache_22, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "召唤水元素"
	talent.tips = {
		{ -- 1
			{ left = "358 法力值" }, -- 1
			table_cache_57,
			table_cache_55,
			{ left = "召唤一个水元素为施法者作战，持续45秒。" }, -- 4
		},
	}
	data = Talented_Data.PRIEST
	-- data.name = "牧师天赋"
	tree = data[1]
	tree.info.name = "戒律"
	talent = tree.talents[1].info
	talent.name = "坚定意志"
	talent.tips = {
		format = "使你抵抗昏迷、恐惧和沉默效果的几率提高%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "魔杖专精"
	talent.tips = {
		format = "使你的魔杖伤害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[3].info
	talent.name = "无声消退"
	talent.tips = {
		format = "使你的神圣和戒律系法术造成的威胁值降低%s%%，并使你的法术被驱散的几率降低%s%%。",
		table_cache_12, -- 1
		table_cache_3, -- 2
		table_cache_74, -- 3
		table_cache_42, -- 4
		table_cache_31, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "强化真言术：韧"
	talent.tips = {
		format = "使你的真言术：韧和坚韧祷言的效果提高%s%%。",
		multiplier = 15,
	}
	talent = tree.talents[5].info
	talent.name = "强化真言术：盾"
	talent.tips = {
		format = "使你的真言术：盾所吸收的伤害量提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "殉难"
	talent.tips = {
		format = "使你有%s%%的几率在受到敌人近战或远程爆击后得到专注施法效果，持续6秒。专注施法效果可以令你避免因为受到伤害而延长施法时间，并使你抵抗打断效果的几率提高%s%%。",
		table_cache_64, -- 1
		table_cache_48, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "赦免"
	talent.tips = {
		format = "使你的驱散魔法、治愈疾病、驱除疾病和群体驱散法术所消耗的法力值降低%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "心灵专注"
	talent.tips = {
		{ -- 1
			table_cache_88,
			table_cache_55,
			{ left = "激活之后，你的下一个法术所消耗的法力值减少100%，爆击几率提高25%（如果它有可能造成爆击的话）。" }, -- 3
		},
	}
	talent = tree.talents[9].info
	talent.name = "冥想"
	talent.tips = {
		format = "使你在施法时仍保持%s%%的法力回复速度。",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "强化心灵之火"
	talent.tips = {
		format = "使你的心灵之火的护甲增强效果提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "精神敏锐"
	talent.tips = {
		format = "使你的瞬发法术所消耗的法力值减少%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "强化法力燃烧"
	talent.tips = {
		format = "使你的法力燃烧的施法时间减少%s.%s秒。",
		{0, 5}, -- 1
		{1, 0}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "心灵之力"
	talent.tips = {
		format = "使你的法力值上限提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "神圣之灵"
	talent.tips = {
		{ -- 1
			{ left = "262 法力值", right = "30码有效距离" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "圣洁的能量充满目标全身，令其精神提高17点，持续30分钟。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：420 法力值，3 精神" }, -- 7
			{ left = " 等级3：785 法力值，33 精神" }, -- 8
			{ left = " 等级4：970 法力值，40 精神" }, -- 9
		},
	}
	talent = tree.talents[15].info
	talent.name = "强化神圣之灵"
	talent.tips = {
		format = "你的神圣之灵和精神祷言法术令目标的法术伤害和治疗效果提高，数值相当于他们各自精神总值的%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "能量集中"
	talent.tips = {
		format = "你的惩击、心灵震爆和群体驱散法术的命中几率提高%s%%。另外，你的群体驱散法术的施法时间减少%s秒。",
		{2, 0.5}, -- 1
		{4, 1}, -- 2
	}
	talent = tree.talents[17].info
	talent.name = "意志之力"
	talent.tips = {
		format = "使你的法术伤害提高%s%%，攻击法术的爆击几率提高%s%%。",
		table_cache_91, -- 1
		table_cache_49, -- 2
		table_cache_2, -- 3
		{4, ""}, -- 4
		table_cache_18, -- 5
	}
	talent = tree.talents[18].info
	talent.name = "专注意志"
	talent.tips = {
		format = "在受到爆击之后获得专注意志效果，在接下来的8秒内受到的爆击伤害降低%s%%，受到的治疗效果提高%s%%，可叠加最多3次。效果持续8秒。",
		table_cache_8, -- 1
		{3, 7}, -- 2
		{4, 10}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "能量灌注"
	talent.tips = {
		{ -- 1
			{ left = "419 法力值", right = "30码有效距离" }, -- 1
			table_cache_57,
			table_cache_55,
			{ left = "能量灌注目标全身，使其施法速度提高20%，所有法术的消耗降低20%，持续15秒。" }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "反射护盾"
	talent.tips = {
		format = "你的真言术：盾所吸收的伤害有%s%%反射给攻击者。这种伤害不会产生任何威胁值。",
		multiplier = 10,
	}
	talent = tree.talents[21].info
	talent.name = "启迪"
	talent.tips = {
		format = "使你的耐力、智力和精神总值提高%s%%。",
	}
	talent = tree.talents[22].info
	talent.name = "痛苦压制"
	talent.tips = {
		{ -- 1
			{ left = "209 法力值" }, -- 1
			table_cache_53,
			table_cache_55,
			{ left = "立即使一个友方目标的威胁值降低5%，受到的所有伤害降低40%，抵抗驱散效果的几率提高65%，效果持续8秒。" }, -- 4
		},
	}
	tree = data[2]
	tree.info.name = "神圣"
	talent = tree.talents[1].info
	talent.name = "治疗专注"
	talent.tips = {
		format = "使你有%s%%的几率在施放任何治疗法术时不会因为受到伤害而中断施法。",
		multiplier = 35,
	}
	talent = tree.talents[2].info
	talent.name = "强化恢复"
	talent.tips = {
		format = "使你的恢复法术的治疗量提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[3].info
	talent.name = "神圣专精"
	talent.tips = {
		format = "使你的神圣法术的爆击几率提高%s%%。",
	}
	talent = tree.talents[4].info
	talent.name = "法术屏障"
	talent.tips = {
		format = "使你受到的所有法术伤害降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "神圣之怒"
	talent.tips = {
		format = "使你的惩击、神圣之火、治疗术和强效治疗术的施法时间减少0.%s秒。",
	}
	talent = tree.talents[6].info
	talent.name = "神圣新星"
	talent.tips = {
		{ -- 1
			{ left = "<span style=text-align:left;float:left;font-size=11px;color=#cccccc>185 法力值" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "制造一次以施法者为中心的能了爆炸，对半径10码内的所有目标造成29到34点神圣伤害，并为半径10码范围内的所有小队成员恢复54到63点生命值。这些效果不对怪物产生任何威胁值。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：290 法力值，52-61 伤害，89-101 治疗" }, -- 7
			{ left = " 等级3: 400 法力值，79-92 伤害，124-143 治疗" }, -- 8
			{ left = " 等级4: 520 法力值，110-127 伤害，165-192 治疗" }, -- 9
			{ left = " 等级5: 635 法力值，146-168 伤害，239-276 治疗" }, -- 10
			{ left = " 等级6: 750 法力值，188-217 伤害，307-356 治疗" }, -- 11
			{ left = " 等级7: 875法力值，244-283 伤害，386-448 治疗" }, -- 12
		},
	}
	talent = tree.talents[7].info
	talent.name = "神恩回复"
	talent.tips = {
		format = "在遭受近战或远程爆击之后，为你在6秒内恢复相当于该伤害总量%s%%的生命值。",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "灵感"
	talent.tips = {
		format = "在你的快速治疗、治疗术、强效治疗术、治疗祷言或治疗之环对目标造成爆击效果后，使目标的护甲值提高%s%%，持续15秒。",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[9].info
	talent.name = "神圣延伸"
	talent.tips = {
		format = "使你的惩击和神圣之火的射程、治疗祷言、神圣新星和治疗之环的作用半径提高%s%%.",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "强化治疗术"
	talent.tips = {
		format = "使你的次级治疗术、治疗术和强效治疗术的法力值消耗降低%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "灼热之光"
	talent.tips = {
		format = "使你的惩击和神圣之火的伤害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "治疗祈祷"
	talent.tips = {
		format = "使你的治疗祷言和愈合祷言所消耗的法力值减少%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "救赎之魂"
	talent.tips = {
		"使你的精神总值提高5%。当牧师在死亡之后变身成为救赎之魂，持续15秒钟。救赎之魂无法移动、攻击、被攻击或被任何法术效果影响。在这个状态下，牧师可以随意施放任何治疗法术。效果结束之后，牧师死亡。", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "精神指引"
	talent.tips = {
		format = "使你的法术的伤害和治疗效果提高，数值最多相当于你精神值的%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[15].info
	talent.name = "圣光涌动"
	talent.tips = {
		format = "你的法术爆击有%s%%的几率令你的下一次惩击法术变为瞬发，不消耗法力值，但是无法造成爆击。这个效果可以持续10秒。",
		multiplier = 25,
	}
	talent = tree.talents[16].info
	talent.name = "精神治疗"
	talent.tips = {
		format = "使你的治疗法术的治疗效果提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "神圣专注"
	talent.tips = {
		format = "使你有%s%%的几率在施放快速治疗、联结治疗或强效治疗术之后进入节能施法状态。节能施法可以令你的下一个快速治疗、联结治疗或强效治疗术的法力值消耗降低100%%。",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "光明之泉"
	talent.tips = {
		{ -- 1
			{ left = "225 法力值", right = "40码有效距离" }, -- 1
			{ left = "1.5秒施法时间", right = "6分钟冷却时间" }, -- 2
			table_cache_55,
			{ left = "在牧师身边制造一个光明之泉。你所属的小队或团队中的友方单位可以点击光明之泉，在6秒内恢复801点生命值。被攻击会中断这个效果。光明之泉在3分钟或者在被使用5次后消失。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：295 法力值，1164 生命值" }, -- 7
			{ left = " 等级3：365 法力值，1599 生命值" }, -- 8
			{ left = " 等级4：445 法力值，2361 生命值" }, -- 9
		},
	}
	talent = tree.talents[19].info
	talent.name = "神佑之韧"
	talent.tips = {
		format = "你遭受爆击之后有%s%%的几率在接下来的6秒内不会再受到爆击。",
		multiplier = 20,
	}
	talent = tree.talents[20].info
	talent.name = "治疗增效"
	talent.tips = {
		format = "提高法术治疗的效果对你的强效治疗术有%s%%的额外加成，对你的快速治疗和联结治疗有%s%%的额外加成。",
		table_cache_13, -- 1
		table_cache_60, -- 2
		table_cache_19, -- 3
		table_cache_30, -- 4
		table_cache_9, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "治疗之环"
	talent.tips = {
		{ -- 1
			{ left = "300 法力值", right = "40码有效距离" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "治疗友方目标及其身边半径15码范围内的该目标小队成员，恢复304到334点生命值。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：337 法力值，356到393生命值" }, -- 7
			{ left = " 等级3：375 法力值，404到447生命值" }, -- 8
			{ left = " 等级4：412 法力值，458到505生命值" }, -- 9
			{ left = " 等级5：450 法力值，499到551生命值" }, -- 10
		},
	}
	tree = data[3]
	tree.info.name = "暗影"
	talent = tree.talents[1].info
	talent.name = "精神分流"
	talent.tips = {
		format = "使你有%s%%的几率在杀死一个%s经验值%s之后精神属性提高100%%。在这段时间里，你的法力值可以在施法时仍保持50%%的回复速度。持续15秒。",
		{20, "可以为你提供", "或荣誉值的目标"}, -- 1
		{40, "可以为你提供", "或荣誉值的目标"}, -- 2
		{60, "可以为你提供", "或荣誉值的目标"}, -- 3
		{80, "可以为你提供", "或荣誉值的目标"}, -- 4
		{100, "敌人并因此获得", ""}, -- 5
	}
	talent = tree.talents[2].info
	talent.name = "昏厥"
	talent.tips = {
		format = "使你的暗影系伤害性法术有%s%%的几率令目标昏迷3秒。",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "暗影亲和"
	talent.tips = {
		format = "使你的暗影法术造成的威胁值降低%s%%。",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[4].info
	talent.name = "强化暗言术：痛"
	talent.tips = {
		format = "使你的暗言术：痛的持续时间延长%s秒。",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "暗影集中"
	talent.tips = {
		format = "使目标抵抗你的暗影法术的机率下降%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "强化心灵尖啸"
	talent.tips = {
		format = "使你的心灵尖啸的冷却时间减少%s秒。",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "强化心灵震爆"
	talent.tips = {
		format = "使你的心灵震爆的冷却时间减少%s秒。",
		multiplier = 0.5,
	}
	talent = tree.talents[8].info
	talent.name = "精神鞭笞"
	talent.tips = {
		{ -- 1
			{ left = "45 法力值", right = "20码有效距离" }, -- 1
			{ left = "需引导" }, -- 2
			table_cache_55,
			{ left = "以暗影能量攻击目标的灵魂，在3秒内对其造成总计75点暗影伤害，并使其移动速度降低50%。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：70 法力值，126 伤害" }, -- 7
			{ left = " 等级3：100 法力值，186 伤害" }, -- 8
			{ left = " 等级4：135 法力值，261 伤害" }, -- 9
			{ left = " 等级5：165 法力值，330 伤害" }, -- 10
			{ left = " 等级6：205 法力值，426 伤害" }, -- 11
			{ left = " 等级7：230 法力值，528 伤害" }, -- 12
		},
	}
	talent = tree.talents[9].info
	talent.name = "强化渐隐术"
	talent.tips = {
		format = "使你的渐隐术的冷却时间减少%s秒。",
		multiplier = 3,
	}
	talent = tree.talents[10].info
	talent.name = "暗影延伸"
	talent.tips = {
		format = "使你的暗影系伤害性法术的射程提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "暗影之波"
	talent.tips = {
		format = "你的暗影系伤害性法术有%s%%的机会使你的目标在受到暗影系攻击时更脆弱，受到的伤害提高2%%，持续15秒。此效果最多可叠加5次。",
		multiplier = 20,
	}
	talent = tree.talents[12].info
	talent.name = "沉默"
	talent.tips = {
		{ -- 1
			table_cache_69,
			{ left = "瞬发法术", right = "45秒冷却时间" }, -- 2
			table_cache_55,
			{ left = "使目标沉默，在5秒内不能施法。" }, -- 4
		},
	}
	talent = tree.talents[13].info
	talent.name = "吸血鬼的拥抱"
	talent.tips = {
		{ -- 1
			{ left = "52 法力值", right = "30码有效距离" }, -- 1
			table_cache_77,
			table_cache_55,
			{ left = "暗影魔法的能量笼罩你的目标，使你对其造成的暗影伤害总量的20%转而治疗所有队友。" }, -- 4
		},
	}
	talent = tree.talents[14].info
	talent.name = "强化吸血鬼的拥抱"
	talent.tips = {
		format = "使吸血鬼的拥抱恢复生命值的百分比提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[15].info
	talent.name = "心灵集中"
	talent.tips = {
		format = "使你的心灵震爆、精神控制和精神鞭笞所消耗的法力值降低%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "暗影之韧"
	talent.tips = {
		format = "使所有攻击对你产生爆击效果的几率降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "黑暗"
	talent.tips = {
		format = "使你的暗影法术伤害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "暗影形态"
	talent.tips = {
		{ -- 1
			{ left = "<span style=text-align:left;float:left;font-size=11px;color=#cccccc>838 法力值" }, -- 1
			{ left = "瞬发法术", right = "1.5秒冷却时间" }, -- 2
			table_cache_55,
			{ left = "进入暗影形态，使你能造成的暗影伤害提高15%，受到物理攻击时承受的伤害降低15%。但是在这个形态下，你不能施放神圣系的法术。" }, -- 4
		},
	}
	talent = tree.talents[19].info
	talent.name = "暗影能量"
	talent.tips = {
		format = "你的心灵震爆和暗言术：灭的爆击几率提高%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[20].info
	talent.name = "悲惨"
	talent.tips = {
		format = "你的暗言术：灭、精神鞭笞和吸血鬼之触会使目标承受的法术伤害提高%s%%。",
	}
	talent = tree.talents[21].info
	talent.name = "吸血鬼之触"
	talent.tips = {
		{ -- 1
			{ left = "325 法力值", right = "30码有效距离" }, -- 1
			table_cache_15,
			table_cache_55,
			{ left = "在15秒内对目标造成450点暗影伤害，并使所有小队成员获得法力值，数值相当于你所造成的任何暗影伤害的5%。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：400 法力值，600 伤害" }, -- 7
			{ left = " 等级3：425 法力值，650 伤害" }, -- 8
		},
	}
	data = Talented_Data.WARLOCK
	-- data.name = "术士天赋"
	tree = data[1]
	tree.info.name = "痛苦"
	talent = tree.talents[1].info
	talent.name = "镇压"
	talent.tips = {
		format = "使敌人抵抗你的痛苦系法术的几率降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "强化腐蚀术"
	talent.tips = {
		format = "使你的腐蚀术的施法时间减少%s秒。",
		0.4, -- 1
		0.8, -- 2
		1.2, -- 3
		1.6, -- 4
		2, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "强化虚弱诅咒"
	talent.tips = {
		format = "使你的虚弱诅咒的效果提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[4].info
	talent.name = "强化吸取灵魂"
	talent.tips = {
		format = "在目标死于你的吸取灵魂过程中时，你将获得你的法力值上限的%s%%。另外，你的痛苦系法术所产生的威胁值降低%s%%。",
		{7, 5}, -- 1
		table_cache_6, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "强化生命分流"
	talent.tips = {
		format = "使你的生命分流法术所转化的法力值提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "灵魂虹吸"
	talent.tips = {
		format = "目标身上每多一层痛苦系法术效果，你的吸取生命所吸取的生命值就提高%s%%，最多可以获得%s%%的效果加成。",
		{2, 24}, -- 1
		{4, 60}, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "强化痛苦诅咒"
	talent.tips = {
		format = "使你的痛苦诅咒的伤害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "恶魔专注"
	talent.tips = {
		format = "使你有%s%%的几率在施放吸取生命、吸取法力或吸取灵魂法术时不会因受到伤害而被打断。",
		multiplier = 14,
	}
	talent = tree.talents[9].info
	talent.name = "诅咒增幅"
	talent.tips = {
		{ -- 1
			table_cache_88,
			table_cache_55,
			{ left = "使你的下一个虚弱诅咒或痛苦诅咒的效果提高50%，或使你的下一个疲劳诅咒的效果提高20%。持续30秒。" }, -- 3
		},
	}
	talent = tree.talents[10].info
	talent.name = "无情延伸"
	talent.tips = {
		format = "使你的痛苦系法术的射程延长%s%%.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "夜幕"
	talent.tips = {
		format = "使你的腐蚀术和吸取生命法术有%s%%的几率在对敌人造成伤害之后令你进入暗影冥思状态。暗影冥思状可以令你的下一个暗影箭法术的施法时间减少100%%。",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "腐蚀增效"
	talent.tips = {
		format = "提高法术伤害的效果对你的腐蚀术有%s%%的额外加成。",
		multiplier = 12,
	}
	talent = tree.talents[13].info
	talent.name = "暗影之拥"
	talent.tips = {
		format = "你的腐蚀术、痛苦诅咒、生命虹吸和腐蚀之种也会造成暗影之拥效果，令目标所造成的近战伤害降低%s%%。",
	}
	talent = tree.talents[14].info
	talent.name = "生命虹吸"
	talent.tips = {
		{ -- 1
			{ left = "140 法力值", right = "30码有效距离" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "每3秒将目标的15点生命值转移给施法者，持续30秒。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：190 法力值，22 生命" }, -- 7
			{ left = " 等级3：250 法力值，33 生命" }, -- 8
			{ left = " 等级4：310 法力值，45 生命" }, -- 9
			{ left = " 等级5：355 法力值，49 生命" }, -- 10
			{ left = " 等级6：420 法力值，66 生命" }, -- 11
		},
	}
	talent = tree.talents[15].info
	talent.name = "疲劳诅咒"
	talent.tips = {
		{ -- 1
			{ left = "156 法力值", right = "30码有效距离" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "使目标的速度降低30%，持续12秒。每个术士只能对一个目标施加一种诅咒，且同类诅咒不能叠加。" }, -- 4
		},
	}
	talent = tree.talents[16].info
	talent.name = "暗影掌握"
	talent.tips = {
		format = "使你的暗影法术的伤害或吸取的生命值提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "传染"
	talent.tips = {
		format = "使你的痛苦诅咒、腐蚀术和腐蚀之种的伤害提%s%%，你的痛苦系法术被驱散的几率降低%s%%。",
		{1, 6}, -- 1
		{2, 12}, -- 2
		{3, 18}, -- 3
		{4, 24}, -- 4
		{5, 30}, -- 5
	}
	talent = tree.talents[18].info
	talent.name = "黑暗契约"
	talent.tips = {
		{ -- 1
			table_cache_59,
			table_cache_54,
			table_cache_55,
			{ left = "从你的宠物身上抽取305点法力值并全部转化给你。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：440 法力值" }, -- 7
			{ left = " 等级3：545 法力值" }, -- 8
			{ left = " 等级4：700 法力值" }, -- 9
		},
	}
	talent = tree.talents[19].info
	talent.name = "强化恐惧嚎叫"
	talent.tips = {
		format = "使你的恐惧嚎叫法术的施法时间减少%s.%s秒。",
		{0, 8}, -- 1
		table_cache_24, -- 2
	}
	talent = tree.talents[20].info
	talent.name = "邪咒"
	talent.tips = {
		format = "使你的暗影诅咒和元素诅咒的伤害加成效果提高%s%%。",
	}
	talent = tree.talents[21].info
	talent.name = "痛苦无常"
	talent.tips = {
		{ -- 1
			{ left = "270 法力值", right = "30码有效距离" }, -- 1
			table_cache_15,
			table_cache_55,
			{ left = "暗影能量逐渐吞噬目标，在18秒内对其造成总计660点伤害。如果这个效果被驱散，则它对驱散者造成990点伤害，并令其沉默5秒。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：315 法力值，930点持续伤害，对驱散者造成1395点伤害" }, -- 7
			{ left = " 等级3：400 法力值，1050点持续伤害，对驱散者造成1575点伤害" }, -- 8
		},
	}
	tree = data[2]
	tree.info.name = "恶魔学识"
	talent = tree.talents[1].info
	talent.name = "强化治疗石"
	talent.tips = {
		format = "使你的治疗石所恢复的生命值增加%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[2].info
	talent.name = "强化小鬼"
	talent.tips = {
		format = "使小鬼的火焰箭、火焰之盾和血之契印的效果提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[3].info
	talent.name = "恶魔之拥"
	talent.tips = {
		format = "使你的耐力总值提高%s%%，同时使你的精神总值降低%s%%。",
		table_cache_25, -- 1
		table_cache_10, -- 2
		table_cache_82, -- 3
		table_cache_67, -- 4
		table_cache_44, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "强化生命通道"
	talent.tips = {
		format = "使你的生命通道法术所转化的生命值提高%s%%，初始生命值消耗减少%s%%。",
		table_cache_56, -- 1
		table_cache_31, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "强化虚空行者"
	talent.tips = {
		format = "使你的虚空行者的折磨、吞噬暗影、牺牲和受难法术的效果提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "恶魔智力"
	talent.tips = {
		format = "使你的小鬼、虚空行者、魅魔、地狱猎犬和恶魔卫士的智力提高%s%%，你的法力值上限提高%s%%。",
		table_cache_5, -- 1
		table_cache_85, -- 2
		table_cache_71, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "强化魅魔"
	talent.tips = {
		format = "使你的魅魔的剧痛鞭笞和安抚之吻法术的效果提高%s%%，并使你的魅魔的诱惑和次级隐形术的持续时间延长%s%%。",
		table_cache_56, -- 1
		table_cache_31, -- 2
		table_cache_86, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "恶魔支配"
	talent.tips = {
		{ -- 1
			{ left = "瞬发", right = "15分钟冷却时间" }, -- 1
			table_cache_55,
			{ left = "你的下一个召唤小鬼、虚空行者、魅魔、地狱猎犬或恶魔卫士的法术施法时间减少5.5秒，法力消耗减少50%。" }, -- 3
		},
	}
	talent = tree.talents[9].info
	talent.name = "恶魔耐力"
	talent.tips = {
		format = "使你的小鬼、虚空行者、魅魔、地狱猎犬和恶魔卫士的生命值上限提高%s%%，你的生命值上限提高%s%%。",
		table_cache_5, -- 1
		table_cache_85, -- 2
		table_cache_71, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "恶魔庇护"
	talent.tips = {
		format = "使你的魔甲术和邪甲术的效果提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "召唤大师"
	talent.tips = {
		format = "使你召唤小鬼、虚空行者、魅魔、地狱猎犬和恶魔卫士的施法时间减少%s秒，法力值消耗降低%s%%。",
		table_cache_1, -- 1
		{4, 40}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "邪恶强化"
	talent.tips = {
		format = "使你的虚空行者、魅魔、地狱猎犬和恶魔卫士的近战伤害及小鬼的火焰箭伤害提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[13].info
	talent.name = "强化奴役恶魔"
	talent.tips = {
		format = "使你的奴役恶魔法术的攻击速度和施法速度惩罚减轻%s%%，恶魔抵抗奴役效果的几率降低%s%%。",
		table_cache_18, -- 1
		table_cache_56, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "恶魔牺牲"
	talent.tips = {
		{ -- 1
			{ left = "100码有效距离" }, -- 1
			table_cache_54,
			table_cache_55,
			{ left = "激活之后，牺牲你当前所召唤的恶魔，使你获得一种特殊效果，持续30分钟。如果在此期间你召唤任意一个恶魔，该效果就会被取消。" }, -- 4
			table_cache_55,
			{ left = "小鬼：使你的火焰技能伤害提高15%。" }, -- 6
			table_cache_55,
			{ left = "虚空行者：使你每4秒回复2%的生命值。" }, -- 8
			table_cache_55,
			{ left = "魅魔：使你的暗影技能伤害提高15%。" }, -- 10
			table_cache_55,
			{ left = "地狱犬：使你每4秒回复3%的法力值。" }, -- 12
			table_cache_55,
			{ left = "恶魔卫士：使你的暗影伤害提高10%，每4秒恢复法力总值的2%。" }, -- 14
		},
	}
	talent = tree.talents[15].info
	talent.name = "魔石大师"
	talent.tips = {
		format = "使你的火焰石的效果和伤害加成提高%s%%，法术石的法术爆击等级加成提高%s%%。",
		{15, 15}, -- 1
		table_cache_86, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "法力喂食"
	talent.tips = {
		format = "当你因法力吸取或生命分流而获得法力值时，你的宠物也可以获得法力值，数值相当于你所获法力值的%s%%。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "恶魔学识大师"
	talent.tips = {
		{ -- 1
			table_cache_21,
			table_cache_55,
			{ left = "小鬼 - 对敌人造成的威胁降低4%。" }, -- 3
			table_cache_55,
			{ left = "虚空行者 - 受到物理攻击时承受的伤害降低2%。" }, -- 5
			table_cache_55,
			{ left = "魅魔 - 对敌人造成的所有伤害提高2%。" }, -- 7
			table_cache_55,
			{ left = "地狱猎犬 - 每等级所有抗性提高0.2。" }, -- 9
			table_cache_55,
			{ left = "恶魔卫士 - 所有伤害提高1%，所有抗性提高每等级0.1。" }, -- 11
		},
		{ -- 2
			table_cache_21,
			table_cache_55,
			{ left = "小鬼 - 对敌人造成的威胁降低8%。" }, -- 3
			table_cache_55,
			{ left = "虚空行者 - 受到物理攻击时承受的伤害降低4%。" }, -- 5
			table_cache_55,
			{ left = "魅魔 - 对敌人造成的所有伤害提高4%。" }, -- 7
			table_cache_55,
			{ left = "地狱猎犬 - 每等级所有抗性提高0.4。" }, -- 9
			table_cache_55,
			{ left = "恶魔卫士 - 所有伤害提高2%，所有抗性提高每等级0.2。" }, -- 11
		},
		{ -- 3
			table_cache_21,
			table_cache_55,
			{ left = "小鬼 - 对敌人造成的威胁降低12%。" }, -- 3
			table_cache_55,
			{ left = "虚空行者 - 受到物理攻击时承受的伤害降低6%。" }, -- 5
			table_cache_55,
			{ left = "魅魔 - 对敌人造成的所有伤害提高6%。" }, -- 7
			table_cache_55,
			{ left = "地狱猎犬 - 每等级所有抗性提高0.6。" }, -- 9
			table_cache_55,
			{ left = "恶魔卫士 - 所有伤害提高3%，所有抗性提高每等级0.3。" }, -- 11
		},
		{ -- 4
			table_cache_21,
			table_cache_55,
			{ left = "小鬼 - 对敌人造成的威胁降低16%。" }, -- 3
			table_cache_55,
			{ left = "虚空行者 - 受到物理攻击时承受的伤害降低8%。" }, -- 5
			table_cache_55,
			{ left = "魅魔 - 对敌人造成的所有伤害提高8%。" }, -- 7
			table_cache_55,
			{ left = "地狱猎犬 - 每等级所有抗性提高0.8。" }, -- 9
			table_cache_55,
			{ left = "恶魔卫士 - 所有伤害提高4%，所有抗性提高每等级0.4。" }, -- 11
		},
		{ -- 5
			table_cache_21,
			table_cache_55,
			{ left = "小鬼 - 对敌人造成的威胁降低20%。" }, -- 3
			table_cache_55,
			{ left = "虚空行者 - 受到物理攻击时承受的伤害降低10%。" }, -- 5
			table_cache_55,
			{ left = "魅魔 - 对敌人造成的所有伤害提高10%。" }, -- 7
			table_cache_55,
			{ left = "地狱猎犬 - 每等级所有抗性提高1。" }, -- 9
			table_cache_55,
			{ left = "恶魔卫士 - 所有伤害提高5%，所有抗性提高每等级0.5。" }, -- 11
		},
	}
	talent = tree.talents[18].info
	talent.name = "恶魔韧性"
	talent.tips = {
		format = "使你受到近战和法术爆击的几率降低%s%%，你所召唤的恶魔受到的所有伤害降低%s%%。",
		table_cache_24, -- 1
		table_cache_89, -- 2
		table_cache_81, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "灵魂链接"
	talent.tips = {
		{ -- 1
			{ left = "418 法力值", right = "100码有效距离" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "激活之后，施法者所承受的伤害有20%被他（她）的小鬼、虚空行者、魅魔、地狱猎犬、恶魔卫士或者奴役的恶魔分担。该伤害无法避免。另外，恶魔和其主人的任何攻击所造成的伤害都提高5%。只要恶魔保持激活状态，该效果就一直持续。" }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "恶魔知识"
	talent.tips = {
		format = "使你的法术伤害提高，数值相当于你所激活的恶魔宠物的耐力值与智力值总合的%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[21].info
	talent.name = "恶魔战术"
	talent.tips = {
		format = "使你和你所召唤的恶魔宠物的近战和法术爆击几率提高%s%%。",
	}
	talent = tree.talents[22].info
	talent.name = "召唤恶魔卫士"
	talent.tips = {
		{ -- 1
			{ left = "2092 法力值" }, -- 1
			{ left = "10秒施法时间" }, -- 2
			table_cache_83,
			{ left = "召唤一个恶魔卫士协助术士作战。" }, -- 4
		},
	}
	tree = data[3]
	tree.info.name = "毁灭"
	talent = tree.talents[1].info
	talent.name = "强化暗影箭"
	talent.tips = {
		format = "在你的暗影箭对目标造成爆击之后，你对其造成的接连4次非持续性暗影伤害都将提高%s%%。效果持续最多12秒。",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "灾变"
	talent.tips = {
		format = "使你的毁灭系法术所消耗的法力值减少%s%%。",
	}
	talent = tree.talents[3].info
	talent.name = "灾祸"
	talent.tips = {
		format = "使你的暗影箭和献祭的施法时间减少0.%s秒，灵魂之火的施法时间减少%s.%s秒。",
		{1, 0, 4}, -- 1
		{2, 0, 8}, -- 2
		{3, 1, 2}, -- 3
		{4, 1, 6}, -- 4
		{5, 2, 0}, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "清算"
	talent.tips = {
		format = "使你的毁灭系法术有%s%%的几率令目标眩晕5秒。",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "强化火焰箭"
	talent.tips = {
		format = "使小鬼的火焰箭的施法时间减少0.%s秒。",
		25, -- 1
		5, -- 2
	}
	talent = tree.talents[6].info
	talent.name = "强化剧痛鞭笞"
	talent.tips = {
		format = "使魅魔的剧痛鞭笞的冷却时间减少%s秒。",
		multiplier = 3,
	}
	talent = tree.talents[7].info
	talent.name = "毁坏"
	talent.tips = {
		format = "使你的毁灭系法术的爆击几率提高%s%%。",
	}
	talent = tree.talents[8].info
	talent.name = "暗影灼烧"
	talent.tips = {
		{ -- 1
			{ left = "105 法力值", right = "20码有效距离" }, -- 1
			table_cache_79,
			table_cache_83,
			{ left = "立即使用暗影能量冲击目标，对其造成91到104点暗影伤害。如果目标在5秒内死于暗影灼烧，且施法者因此获得经验值或荣誉，则施法者获得一块灵魂碎片。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：130 法力值，115-131 伤害" }, -- 7
			{ left = " 等级3：190 法力值，186-210 伤害" }, -- 8
			{ left = " 等级4：245 法力值，261-293 伤害" }, -- 9
			{ left = " 等级5：305 法力值，350-392 伤害" }, -- 10
			{ left = " 等级6：365 法力值，450-502 伤害" }, -- 11
			{ left = " 等级7：435 法力值，518-578 伤害" }, -- 12
			{ left = " 等级8：515 法力值，597-665 伤害" }, -- 13
		},
	}
	talent = tree.talents[9].info
	talent.name = "强烈"
	talent.tips = {
		format = "使你有%s%%的几率在施放或引导任何毁灭系法术时不会因受到伤害而被打断。",
		multiplier = 35,
	}
	talent = tree.talents[10].info
	talent.name = "毁灭延伸"
	talent.tips = {
		format = "使你的毁灭系法术的射程增加%s%%，毁灭系法术所造成的威胁值降低%s%%。",
		table_cache_22, -- 1
		table_cache_9, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "强化灼热之痛"
	talent.tips = {
		format = "使你的灼热之痛的爆击几率提高%s%%。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "火焰冲撞"
	talent.tips = {
		format = "使你的火焰之雨、地狱烈焰和灵魂之火有%s%%的几率使目标昏迷3秒。",
		multiplier = 13,
	}
	talent = tree.talents[13].info
	talent.name = "强化献祭"
	talent.tips = {
		format = "使你的献祭法术的初始伤害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[14].info
	talent.name = "毁灭"
	talent.tips = {
		"使你的毁灭系法术的爆击伤害加成提高100%。", -- 1
	}
	talent = tree.talents[15].info
	talent.name = "虚空防护"
	talent.tips = {
		format = "被暗影或火焰法术击中之后有%s%%的几率对暗影和火焰法术免疫，效果持续4秒。",
		multiplier = 10,
	}
	talent = tree.talents[16].info
	talent.name = "灰烬风暴"
	talent.tips = {
		format = "使你的火焰法术所造成的伤害提高%s%%，烧尽法术的施法时间减少%s%%。",
		table_cache_49, -- 1
		table_cache_12, -- 2
		{6, 7}, -- 3
		table_cache_3, -- 4
		table_cache_56, -- 5
	}
	talent = tree.talents[17].info
	talent.name = "反冲"
	talent.tips = {
		format = "使你的法术爆击几率提高%s%%，并使你有%s%%的几率在受到物理攻击之后的下一个暗影箭或燃尽法术的施法时间减少100%%。这个效果可以持续8秒，且在8秒内只能出现一次。",
		{1, 8}, -- 1
		table_cache_94, -- 2
		{3, 25}, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "燃烧"
	talent.tips = {
		{ -- 1
			{ left = "165 法力值", right = "30码有效距离" }, -- 1
			table_cache_77,
			table_cache_55,
			{ left = "点燃一个已经被施加献祭效果的目标，对其造成249到316点火焰伤害并吞噬掉献祭效果。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：200 法力值，316-396 伤害" }, -- 7
			{ left = " 等级3：230 法力值，383-479 伤害" }, -- 8
			{ left = " 等级4：255 法力值，447-557 伤害" }, -- 9
			{ left = " 等级5：360 法力值，512-638 伤害" }, -- 10
			{ left = " 等级6：405 法力值，632-788 伤害" }, -- 11
		},
	}
	talent = tree.talents[19].info
	talent.name = "灵魂榨取"
	talent.tips = {
		format = "使你的暗影箭、暗影灼烧、灵魂之火、灼热之痛、烧尽和燃烧有%s%%的几率为你回复生命值，数值相当于该法术所造成伤害的20%%。",
		multiplier = 10,
	}
	talent = tree.talents[20].info
	talent.name = "暗影烈焰"
	talent.tips = {
		format = "你的暗影箭和烧尽所获得的法术伤害加成效果提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[21].info
	talent.name = "暗影之怒"
	talent.tips = {
		{ -- 1
			{ left = "440 法力值", right = "30码有效距离" }, -- 1
			{ left = "0.5秒施法时间", right = "20秒冷却时间" }, -- 2
			table_cache_55,
			{ left = "释放暗影之怒，对身边半径8码内的所有敌人造成357到422点暗影伤害，并使它们昏迷2秒。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：545 法力值，476-565 伤害" }, -- 7
			{ left = " 等级3：710 法力值，612-728 伤害" }, -- 8
		},
	}
	data = Talented_Data.DRUID
	-- data.name = "德鲁伊天赋"
	tree = data[1]
	tree.info.name = "平衡"
	talent = tree.talents[1].info
	talent.name = "星光之怒"
	talent.tips = {
		format = "使你的愤怒和星火术的施法时间减少0.%s秒。",
	}
	talent = tree.talents[2].info
	talent.name = "自然之握"
	talent.tips = {
		{ -- 1
			{ left = "瞬发", right = "1分钟冷却时间" }, -- 1
			table_cache_55,
			{ left = "激活之后，任何击中施法者的敌人都有35%的几率被施展纠缠根须（等级1）。只能在户外使用，可生效1次，持续45秒。" }, -- 3
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：纠缠根须（等级2）" }, -- 6
			{ left = " 等级3：纠缠根须（等级3）" }, -- 7
			{ left = " 等级4：纠缠根须（等级4）" }, -- 8
			{ left = " 等级5：纠缠根须（等级5）" }, -- 9
			{ left = " 等级6：纠缠根须（等级6）" }, -- 10
			{ left = " 等级7：纠缠根须（等级7）" }, -- 11
		},
	}
	talent = tree.talents[3].info
	talent.name = "强化自然之握"
	talent.tips = {
		format = "使你的自然之握纠缠敌人的几率提高%s%%。",
		15, -- 1
		30, -- 2
		45, -- 3
		65, -- 4
	}
	talent = tree.talents[4].info
	talent.name = "自然控制"
	talent.tips = {
		format = "使你有%s%%的几率在施放纠缠根须和飓风术时不会因为承受伤害而被打断。",
		40, -- 1
		70, -- 2
		100, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "汇聚星光"
	talent.tips = {
		format = "使你的愤怒和星火术的爆击几率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "强化月火术"
	talent.tips = {
		format = "使你的月火术的伤害和爆击几率提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "荆刺"
	talent.tips = {
		format = "使你的荆棘术和缠绕根须所造成的伤害提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "虫群"
	talent.tips = {
		{ -- 1
			{ left = "50 法力值", right = "30码有效距离" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "敌人被飞虫围绕，攻击命中率降低2%，在12秒内受到总计108点自然伤害。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：85 法力值，192 伤害" }, -- 7
			{ left = " 等级3：110 法力值，300 伤害" }, -- 8
			{ left = " 等级4：135 法力值，432 伤害" }, -- 9
			{ left = " 等级5：155 法力值，594 伤害" }, -- 10
			{ left = " 等级6：175 法力值，792 伤害" }, -- 11
		},
	}
	talent = tree.talents[9].info
	talent.name = "自然延伸"
	talent.tips = {
		format = "使你的平衡系法术和精灵之火（野性）的射程延长%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "复仇"
	talent.tips = {
		format = "使你的星火术、月火术和愤怒的爆击伤害提高%s%%。",
		multiplier = 20,
	}
	talent = tree.talents[11].info
	talent.name = "星空专注"
	talent.tips = {
		format = "使你的星火术有%s%%的几率击晕目标3秒，并使你在施放愤怒法术时受到打断效果影响的几率降低%s%%。",
		table_cache_87, -- 1
		table_cache_52, -- 2
		{15, 70}, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "月神指引"
	talent.tips = {
		format = "使你的法术伤害和治疗效果提高，数值相当于你的智力总值的%s%%。",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "自然之赐"
	talent.tips = {
		"在你的任何法术造成爆击之后获得自然的赐福，使你的下一个法术的施法时间减少0.5秒。", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "月光"
	talent.tips = {
		format = "使你的月火术、星火术、愤怒、治疗之触、愈合和回春术所消耗的法力值减少%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[15].info
	talent.name = "月怒"
	talent.tips = {
		format = "使你的星火术、月火术和愤怒所能造成的伤害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "能量平衡"
	talent.tips = {
		format = "使你的所有法术命中目标的几率提高%s%%，你被法术命中的几率降低%s%%。",
		table_cache_49, -- 1
		table_cache_12, -- 2
	}
	talent = tree.talents[17].info
	talent.name = "梦境"
	talent.tips = {
		format = "每5秒回复一次法力值，数值相当于你的智力值的%s%%，施法时也可继续生效。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "枭兽形态"
	talent.tips = {
		{ -- 1
			{ left = "521 法力值" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "德鲁伊进入枭兽形态，在这种形态下，护甲值提高400%，攻击强度提高，数值相当于你当前等级的150%，半径30码范围内的所有队友的法术爆击几率提高5%。近战攻击有一定几率为你回复法力值，数值取决于攻击强度。枭兽形态下只能施放平衡系的法术。" }, -- 4
			table_cache_55,
			{ left = "变变身可以解除施法者身上的所有变形和移动限制效果。" }, -- 6
		},
	}
	talent = tree.talents[19].info
	talent.name = "强化精灵之火"
	talent.tips = {
		format = "你的精灵之火使目标被近战和远程攻击命中的几率提高%s%%。",
	}
	talent = tree.talents[20].info
	talent.name = "塞纳留斯之怒"
	talent.tips = {
		format = "你的星火术所获得的法术伤害加成效果提高%s%%，愤怒所获得的法术伤害加成效果提高%s%%。",
		table_cache_13, -- 1
		table_cache_60, -- 2
		table_cache_19, -- 3
		table_cache_30, -- 4
		table_cache_9, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "自然之力"
	talent.tips = {
		{ -- 1
			{ left = "284 法力值", right = "30码有效距离" }, -- 1
			table_cache_57,
			table_cache_55,
			{ left = "召唤3个树人攻击敌人，持续30秒。" }, -- 4
		},
	}
	tree = data[2]
	tree.info.name = "野性战斗"
	talent = tree.talents[1].info
	talent.name = "凶暴"
	talent.tips = {
		format = "使你的重殴、横扫、爪击、斜掠和裂伤技能的怒气或能量消耗减少%s点。",
	}
	talent = tree.talents[2].info
	talent.name = "野性侵略"
	talent.tips = {
		format = "使你的挫志咆哮的攻击强度减弱效果提高%s%%，凶猛撕咬技能所造成的伤害提高%s%%。",
		{8, 3}, -- 1
		{16, 6}, -- 2
		{24, 9}, -- 3
		{32, 12}, -- 4
		{40, 15}, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "野性本能"
	talent.tips = {
		format = "使你在熊和巨熊形态下所造成的威胁值提高%s%%，并在你潜行时降低敌人侦测到你的几率。",
		multiplier = 5,
	}
	talent = tree.talents[4].info
	talent.name = "野蛮冲撞"
	talent.tips = {
		format = "使你的猛击和突袭技能的击昏效果持续时间延长%s秒。",
		multiplier = 0.5,
	}
	talent = tree.talents[5].info
	talent.name = "厚皮"
	talent.tips = {
		format = "使你由装备而得到的护甲值提高%s%%。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "豹之迅捷"
	talent.tips = {
		format = "使你在猎豹形态下的移动速度提高%s%%，只能在户外生效。另外，还可以使你在猎豹形态、熊形态和巨熊形态下的躲闪几率提高%s%%。",
		table_cache_32, -- 1
		table_cache_37, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "野性冲锋"
	talent.tips = {
		{ -- 1
			{ left = "5 怒气", right = "8-25码有效距离" }, -- 1
			{ left = "瞬发", right = "15秒冷却时间" }, -- 2
			{ left = "需要熊、巨熊形态" }, -- 3
			table_cache_55,
			{ left = "向目标冲锋，使其停止动作，并使其在4秒内不能施放任何法术。" }, -- 5
		},
	}
	talent = tree.talents[8].info
	talent.name = "锋利兽爪"
	talent.tips = {
		format = "使你在猎豹、熊或巨熊形态下的爆击几率提高%s%%.",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "撕碎攻击"
	talent.tips = {
		format = "使你的撕碎技能所消耗的能量值减少%s点，割伤技能所消耗的怒气值减少%s点。",
		{9, 1}, -- 1
		{18, 2}, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "猛兽攻击"
	talent.tips = {
		format = "使你在猎豹、熊、巨熊和枭兽形态下的近战攻击强度加成提高，数值相当于你的当前等级的%s%%。",
		multiplier = 50,
	}
	talent = tree.talents[11].info
	talent.name = "原始狂怒"
	talent.tips = {
		format = "使你在熊和巨熊形态下对目标产生爆击后，有%s%%的几率获得5点怒气值。并且，你在猎豹形态下的所有可增加连击点数的技能在对敌人造成爆击之后有%s%%的几率增加一个额外的连击点数。",
		{50, 50}, -- 1
		{100, 100}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "野蛮暴怒"
	talent.tips = {
		format = "使你的爪击、斜掠和裂伤（豹）技能的伤害提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "精灵之火 (野性)"
	talent.tips = {
		{ -- 1
			table_cache_59,
			table_cache_72,
			{ left = "需要猎豹、熊、巨熊形态" }, -- 3
			table_cache_55,
			{ left = "使目标的护甲值降低175点，持续40秒。在效果持续期间，目标无法潜行或隐形。" }, -- 5
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：-285点护甲" }, -- 8
			{ left = " 等级3：-395点护甲" }, -- 9
			{ left = " 等级4：-505点护甲" }, -- 10
			{ left = " 等级5：-610点护甲" }, -- 11
		},
	}
	talent = tree.talents[14].info
	talent.name = "治愈本能"
	talent.tips = {
		format = "使你的治疗法术效果提高，数值相当于你的敏捷值的%s%%，并使你在猎豹形态下受到的治疗量提高%s%%。",
		table_cache_64, -- 1
		table_cache_48, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "野性之心"
	talent.tips = {
		format = "使你的智力提高%s%%。另外，当在熊或巨熊形态下，你的耐力提高%s%%，在猎豹形态下，你的攻击强度提高%s%%。",
		{4, 4, 2}, -- 1
		{8, 8, 4}, -- 2
		{12, 12, 6}, -- 3
		{16, 16, 8}, -- 4
		{20, 20, 10}, -- 5
	}
	talent = tree.talents[16].info
	talent.name = "适者生存"
	talent.tips = {
		format = "使你的所有属性提高%s%%，被近战爆击的几率降低%s%%。",
		table_cache_91, -- 1
		table_cache_49, -- 2
		table_cache_2, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "原始坚韧"
	talent.tips = {
		format = "使你抵抗昏迷和恐惧效果的几率提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[18].info
	talent.name = "兽群领袖"
	talent.tips = {
		"在猎豹、熊或巨熊形态下，使半径45码范围内的所有小队成员的远程和近战攻击的爆击几率提高5%。", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "强化兽群领袖"
	talent.tips = {
		format = "你的兽群领袖技能影响到的目标有100%%的几率在打出近战或远程爆击之后恢复%s%%的生命值。这个治疗效果每6秒只能出现一次。",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "狩猎天性"
	talent.tips = {
		format = "在猎豹、熊或巨熊形态下，使你的近战爆击伤害提高%s%%，躲避范围伤害攻击的几率提高%s%%。",
		{2, 3}, -- 1
		table_cache_34, -- 2
		{6, 9}, -- 3
		table_cache_43, -- 4
		table_cache_40, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "裂伤"
	talent.tips = {
		{ -- 1
			{ left = "撕扯目标，对其造成伤害，并使其在接下来的12秒内受到的流血伤害提高。这个技能可以在猎豹和巨熊形态下使用。" }, -- 1
			table_cache_55,
			{ left = " 熊形态：" }, -- 3
			{ left = " 20 怒气，近战攻击距离，瞬发，6秒冷却时间" }, -- 4
			{ left = " 115%普通伤害再加 x 点额外伤害，并且使其在接下来的12秒内受到的流血伤害提高30%。" }, -- 5
			{ left = " 等级1：+86" }, -- 6
			{ left = " 等级2：+121" }, -- 7
			{ left = " 等级3：+155" }, -- 8
			table_cache_55,
			{ left = " 猎豹形态：" }, -- 10
			{ left = " 45 能量，近战攻击距离，瞬发，奖励1个连击点。" }, -- 11
			{ left = " 160%普通伤害再加 x 点额外伤害，并且使其在接下来的12秒内受到的流血伤害提高30%。" }, -- 12
			{ left = " 等级1：+158" }, -- 13
			{ left = " 等级2：+205" }, -- 14
			{ left = " 等级3：+264" }, -- 15
		},
	}
	tree = data[3]
	tree.info.name = "恢复"
	talent = tree.talents[1].info
	talent.name = "强化野性印记"
	talent.tips = {
		format = "使你的野性印记和野性赐福的效果提高%s%%。",
		multiplier = 7,
	}
	talent = tree.talents[2].info
	talent.name = "激怒"
	talent.tips = {
		format = "在你进入熊形态或巨熊形态时有%s%%的几率获得10点怒气值，或者在进入豹形态时获得40点能量值。",
		multiplier = 20,
	}
	talent = tree.talents[3].info
	talent.name = "自然主义"
	talent.tips = {
		format = "使你的治疗之触的施法时间减少0.%s秒，你在所有形态下的物理攻击所造成的伤害提高%s%%。",
		table_cache_46, -- 1
		table_cache_8, -- 2
		table_cache_35, -- 3
		table_cache_29, -- 4
		table_cache_70, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "自然集中"
	talent.tips = {
		format = "使你在施放愈合、治疗之触或宁静时有%s%%的几率不会因受到伤害而被打断。",
		multiplier = 14,
	}
	talent = tree.talents[5].info
	talent.name = "自然变形"
	talent.tips = {
		format = "使你的所有变形法术所消耗的法力值降低%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "强烈"
	talent.tips = {
		format = "使你在施法时仍保持%s%%的法力回复速度，并使你在使用激怒技能后立即获得%s点怒气值。",
		table_cache_98, -- 1
		{20, 7}, -- 2
		{30, 10}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "微妙"
	talent.tips = {
		format = "使你的法术造成的威胁值降低%s%%，并使你的法术被驱散的几率降低%s%%。",
		table_cache_34, -- 1
		table_cache_43, -- 2
		{12, 18}, -- 3
		{16, 24}, -- 4
		{20, 30}, -- 5
	}
	talent = tree.talents[8].info
	talent.name = "清晰预兆"
	talent.tips = {
		{ -- 1
			{ left = "120 法力值" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "以自然的力量强化德鲁伊的武器，每次近战攻击命中敌人都有一定几率令德鲁伊进入节能施法状态。该状态可以让你的下一个伤害法术、治疗法术或攻击技能所消耗的法力值、怒气值或能量值降低100%。清晰预兆效果可持续30分钟。" }, -- 4
		},
	}
	talent = tree.talents[9].info
	talent.name = "宁静之魂"
	talent.tips = {
		format = "使你的治疗之触和宁静所消耗的法力值减少%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[10].info
	talent.name = "强化回春术"
	talent.tips = {
		format = "使你的回春术的效果提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "自然迅捷"
	talent.tips = {
		{ -- 1
			table_cache_88,
			table_cache_55,
			{ left = "激活之后，你的下一个自然法术会成为瞬发法术。" }, -- 3
		},
	}
	talent = tree.talents[12].info
	talent.name = "自然赐福"
	talent.tips = {
		format = "你的所有治疗法术的效果提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[13].info
	talent.name = "强化宁静"
	talent.tips = {
		format = "使你的宁静法术导致的威胁值降低%s%%。",
		multiplier = 50,
	}
	talent = tree.talents[14].info
	talent.name = "治疗之触增效"
	talent.tips = {
		format = "提高法术治疗的效果对你的治疗之触有%s%%的额外加成。",
		multiplier = 10,
	}
	talent = tree.talents[15].info
	talent.name = "强化愈合"
	talent.tips = {
		format = "使你的愈合法术的爆击几率提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[16].info
	talent.name = "生命之魂"
	talent.tips = {
		format = "使你的精神总值提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "迅捷治愈"
	talent.tips = {
		{ -- 1
			{ left = "379 法力值", right = "40码有效距离" }, -- 1
			table_cache_79,
			table_cache_55,
			{ left = "吞噬友方目标身上的一个回春术或愈合的持续效果，并立即为其回复生命值，其数值等于12秒的回春效果或18秒的愈合效果。" }, -- 4
		},
	}
	talent = tree.talents[18].info
	talent.name = "天然完美"
	talent.tips = {
		format = "你的法术爆击几率提高%s%%，受到近战和远程爆击之后会获得天然完美效果，使你承受的所有伤害降低%s%%。可叠加最多3次，效果持续8秒。",
		table_cache_46, -- 1
		table_cache_8, -- 2
		table_cache_35, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "回春增效"
	talent.tips = {
		format = "提高法术治疗的效果对你的持续治疗法术有%s%%的额外加成。",
		multiplier = 4,
	}
	talent = tree.talents[20].info
	talent.name = "生命之树"
	talent.tips = {
		{ -- 1
			{ left = "663 法力值" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "德鲁伊变身成为一棵生命之树。在这种形态下，你身边半径45码范围内的所有队友受到的治疗效果提高，数值相当于你的精神总值的25%。你的移动速度降低20%，并且只能施放迅捷治愈、激活、复生和持续性治疗法术，但这些法术所消耗的法力值也降低20%。" }, -- 4
			table_cache_55,
			{ left = "变身可以解除施法者身上的一切变形和移动限制效果。" }, -- 6
		},
	}
	data = Talented_Data.ROGUE
	-- data.name = "潜行者天赋"
	tree = data[1]
	tree.info.name = "刺杀"
	talent = tree.talents[1].info
	talent.name = "强化刺骨"
	talent.tips = {
		format = "使你的刺骨技能所造成的伤害提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[2].info
	talent.name = "冷酷攻击"
	talent.tips = {
		format = "在你杀死一个可为你提供经验值的敌人后，你的下一次影袭、背刺、伏击、毁伤或鬼魅攻击有%s%%的额外几率造成爆击，效果持续20秒。",
		multiplier = 20,
	}
	talent = tree.talents[3].info
	talent.name = "恶意"
	talent.tips = {
		format = "使你的爆击%s率提高%s%%。",
		{"", 1}, -- 1
		{"几", 2}, -- 2
		{"几", 3}, -- 3
		{"几", 4}, -- 4
		{"几", 5}, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "无情"
	talent.tips = {
		format = "使你的终极技有%s%%的几率为目标增加一个连击点数。",
		multiplier = 20,
	}
	talent = tree.talents[5].info
	talent.name = "谋划"
	talent.tips = {
		format = "使你对人型生物、巨人、野兽和龙类所造成的所有伤害提高%s%%。",
	}
	talent = tree.talents[6].info
	talent.name = "穿刺之伤"
	talent.tips = {
		format = "使你的背刺技能的爆击几率提高%s%%，毁伤技能的爆击几率提高%s%%。",
		table_cache_22, -- 1
		table_cache_9, -- 2
		{30, 15}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "无情打击"
	talent.tips = {
		"你的终结技有每连击点数20%的几率恢复25点能量值。", -- 1
	}
	talent = tree.talents[8].info
	talent.name = "强化破甲"
	talent.tips = {
		format = "使你的破甲技能令目标护甲值降低的效果提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[9].info
	talent.name = "致命偷袭"
	talent.tips = {
		format = "使你的影袭、凿击、背刺、鬼魅攻击、毁伤、毒刃和出血技能的爆击伤害加成提高%s%%。",
		multiplier = 6,
	}
	talent = tree.talents[10].info
	talent.name = "剧毒"
	talent.tips = {
		format = "使你的毒素所造成的伤害提高%s%%，并使你的毒药抵抗驱散效果的几率提高%s%%。",
		table_cache_29, -- 1
		{8, 16}, -- 2
		table_cache_100, -- 3
		{16, 32}, -- 4
		{20, 40}, -- 5
	}
	talent = tree.talents[11].info
	talent.name = "强化药膏"
	talent.tips = {
		format = "使你的毒药对敌人生效的几率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "健步如飞"
	talent.tips = {
		format = "使你抵抗移动限制效果的几率提高%s%%，并且使你的移动速度提高%s%%。该效果不能与其它移动加速效果叠加。",
		{5, 8}, -- 1
		table_cache_40, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "冷血"
	talent.tips = {
		{ -- 1
			table_cache_88,
			table_cache_55,
			{ left = "激活之后，你的下一次攻击技能的爆击几率提高100%。" }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "强化肾击"
	talent.tips = {
		format = "当你的肾击对敌人生效后，目标所受到的伤害提高%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[15].info
	talent.name = "快速恢复"
	talent.tips = {
		format = "所有在你身上的治疗效果增加%s%%。另外，你的终极技在未击中时所消耗的能量值减少%s%%。",
		table_cache_14, -- 1
		{20, 80}, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "封印命运"
	talent.tips = {
		format = "如果你的某个可以增加连击点数的技能造成了爆击，那么它就有%s%%的几率增加一个额外的连击点数。",
		multiplier = 20,
	}
	talent = tree.talents[17].info
	talent.name = "奇毒"
	talent.tips = {
		format = "使你的毒药被抵抗的几率降低%s%%，额外还使你抵抗毒药的几率提高%s%%。",
		table_cache_66, -- 1
		table_cache_20, -- 2
	}
	talent = tree.talents[18].info
	talent.name = "精力"
	talent.tips = {
		"使你的能量值上限提高10点。", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "勇气衰竭"
	talent.tips = {
		format = "使你受到物理攻击时所承受的伤害减少%s%%。",
	}
	talent = tree.talents[20].info
	talent.name = "寻找弱点"
	talent.tips = {
		format = "使你的终极技在接下来的10秒内提高所有攻击型技能的伤害%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[21].info
	talent.name = "毁伤"
	talent.tips = {
		{ -- 1
			{ left = "60 能量", right = "5码距离" }, -- 1
			table_cache_54,
			{ left = "需要匕首" }, -- 3
			table_cache_55,
			{ left = "同时用两把武器攻击目标，每把武器所造成的伤害都提高44点。如果目标处于中毒状态，则对其造成伤害提高50%。必须从目标背后发动，奖励2个连击点数。" }, -- 5
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：每把武器63点伤害" }, -- 8
			{ left = " 等级3：每把武器88点伤害" }, -- 9
			{ left = " 等级4：每把武器101点伤害" }, -- 10
		},
	}
	tree = data[2]
	tree.info.name = "战斗"
	talent = tree.talents[1].info
	talent.name = "强化凿击"
	talent.tips = {
		format = "使你的凿击技能的效果持续时间延长%s秒。",
		multiplier = 0.5,
	}
	talent = tree.talents[2].info
	talent.name = "强化影袭"
	talent.tips = {
		format = "使你的影袭技能所消耗的能量值减少%s。",
		3, -- 1
		5, -- 2
	}
	talent = tree.talents[3].info
	talent.name = "闪电反射"
	talent.tips = {
		format = "使你的躲闪几率提高%s%%。",
	}
	talent = tree.talents[4].info
	talent.name = "强化切割"
	talent.tips = {
		format = "使你的切割技能的效果持续时间延长%s%%。",
		multiplier = 15,
	}
	talent = tree.talents[5].info
	talent.name = "偏斜"
	talent.tips = {
		format = "使你的招架几率提高%s%%。",
	}
	talent = tree.talents[6].info
	talent.name = "精确"
	talent.tips = {
		format = "使你的武器击中几率提高%s%%。",
	}
	talent = tree.talents[7].info
	talent.name = "耐久"
	talent.tips = {
		format = "降低你疾跑和闪避技能的冷却时间%s5%s。",
		table_cache_62, -- 1
		table_cache_11, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "还击"
	talent.tips = {
		{ -- 1
			{ left = "10 能量", right = "5码距离" }, -- 1
			table_cache_72,
			table_cache_55,
			{ left = "在招架了敌人的攻击之后可以使用的技能，对目标造成150%的武器伤害，并使其被缴械，持续6秒钟。" }, -- 4
		},
	}
	talent = tree.talents[9].info
	talent.name = "强化疾跑"
	talent.tips = {
		format = "使你在启动疾跑技能时有%s%%的几率移除所有移动限制效果。",
		multiplier = 50,
	}
	talent = tree.talents[10].info
	talent.name = "强化脚踢"
	talent.tips = {
		format = "使你的脚踢技能有%s%%的几率令目标沉默2秒。",
		multiplier = 50,
	}
	talent = tree.talents[11].info
	talent.name = "匕首专精"
	talent.tips = {
		format = "使你的匕首的爆击几率提高%s%%。",
	}
	talent = tree.talents[12].info
	talent.name = "双武器专精"
	talent.tips = {
		format = "使你的副手武器造成的伤害提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "锤类武器专精"
	talent.tips = {
		format = "使你的锤类武器爆击之后所造成的伤害提高%s%%，用锤类武器击中目标时有%s%%的几率将其击晕3秒。",
		table_cache_91, -- 1
		table_cache_49, -- 2
		table_cache_2, -- 3
		table_cache_12, -- 4
		table_cache_18, -- 5
	}
	talent = tree.talents[14].info
	talent.name = "剑刃乱舞"
	talent.tips = {
		{ -- 1
			{ left = "25 能量" }, -- 1
			table_cache_75,
			table_cache_50,
			table_cache_55,
			{ left = "使你的攻击速度提高20%。另外还可以对附近的一个额外的敌人造成伤害。持续15秒。" }, -- 5
		},
	}
	talent = tree.talents[15].info
	talent.name = "剑类武器专精"
	talent.tips = {
		format = "使你在用剑类武器击中敌人后有%s%%的几率进行一次额外的攻击。",
	}
	talent = tree.talents[16].info
	talent.name = "拳套武器专精"
	talent.tips = {
		format = "使你的拳套的爆击几率提高%s%%。",
	}
	talent = tree.talents[17].info
	talent.name = "剑刃飞转"
	talent.tips = {
		format = "你的影袭、背刺、凿击和毒刃技能有%s%%的几率令目标眩晕8秒。",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "武器专家"
	talent.tips = {
		format = "使你的精准等级提高%s。",
		multiplier = 5,
	}
	talent = tree.talents[19].info
	talent.name = "侵犯"
	talent.tips = {
		format = "使你的影袭和刺骨技能的伤害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "活力"
	talent.tips = {
		format = "使你的耐力值上限提高%s%%，敏捷值上限提高%s%%。",
		table_cache_73, -- 1
		table_cache_13, -- 2
	}
	talent = tree.talents[21].info
	talent.name = "冲动"
	talent.tips = {
		{ -- 1
			table_cache_78,
			table_cache_55,
			{ left = "使你的能量值回复速度提高100%，持续15秒。" }, -- 3
		},
	}
	talent = tree.talents[22].info
	talent.name = "钢铁意志"
	talent.tips = {
		format = "使你抵抗眩晕和恐惧效果的几率提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[23].info
	talent.name = "战斗潜能"
	talent.tips = {
		format = "使你的副手武器的命中攻击有20%%的几率获得%s点能量。",
		multiplier = 3,
	}
	talent = tree.talents[24].info
	talent.name = "突袭"
	talent.tips = {
		"你的终结技无法被躲闪，你的影袭、背刺、毒刃和凿击技能所造成的伤害提高10%。", -- 1
	}
	tree = data[3]
	tree.info.name = "敏锐"
	talent = tree.talents[1].info
	talent.name = "欺诈高手"
	talent.tips = {
		format = "当你在潜行状态下时，降低敌人侦测到你的几率。%s",
		"", -- 1
		"比欺诈高手(等级 1)更加有效。", -- 2
		"比欺诈高手(等级 2)更加有效。", -- 3
		"比欺诈高手(等级 3)更加有效。", -- 4
		"比欺诈高手(等级 4)更加有效。", -- 5
	}
	talent = tree.talents[2].info
	talent.name = "伺机而动"
	talent.tips = {
		format = "使你在从背后使用背刺、毁伤、绞喉或伏击技能偷袭敌人时的伤害提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[3].info
	talent.name = "狡诈"
	talent.tips = {
		format = "使你受到近战和远程爆击的几率降低%s%%，并使你的佯攻技能降低仇恨的效果提高%s%%。",
		table_cache_45, -- 1
		table_cache_1, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "邪恶计谋"
	talent.tips = {
		format = "使你的致盲和闷棍技能的射程延长%s码，致盲和闷棍技能所消耗的能量值减少%s%%。",
		{2, 25}, -- 1
		{5, 50}, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "伪装"
	talent.tips = {
		format = "使你在潜行后的移动速度提高%s%%，并使你的潜行技能的冷却时间减少%s秒。",
		table_cache_25, -- 1
		table_cache_10, -- 2
		table_cache_82, -- 3
		table_cache_67, -- 4
		table_cache_44, -- 5
	}
	talent = tree.talents[6].info
	talent.name = "先发制人"
	talent.tips = {
		format = "使你有%s%%的几率在使用伏击、绞喉或偷袭技能后获得一个额外的连击点数。",
		multiplier = 25,
	}
	talent = tree.talents[7].info
	talent.name = "鬼魅攻击"
	talent.tips = {
		{ -- 1
			{ left = "40 能量", right = "5码距离" }, -- 1
			{ left = "瞬发", right = "20秒冷却时间" }, -- 2
			table_cache_55,
			{ left = "对敌人造成125%的武器伤害，并使你躲闪攻击的几率提高15%，持续7秒。奖励1个连击点数。" }, -- 4
		},
	}
	talent = tree.talents[8].info
	talent.name = "强化伏击"
	talent.tips = {
		format = "使你的伏击技能的爆击几率提高%s%%。",
		multiplier = 15,
	}
	talent = tree.talents[9].info
	talent.name = "调整"
	talent.tips = {
		format = "使你有%s%%的几率在成功躲闪敌人的攻击之后，或者完全抵抗敌人的法术后，获得一个连击点数。",
		multiplier = 15,
	}
	talent = tree.talents[10].info
	talent.name = "飘忽不定"
	talent.tips = {
		format = "使你的消失和致盲技能的冷却时间缩短%s5%s。",
		table_cache_62, -- 1
		table_cache_11, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "锯齿利刃"
	talent.tips = {
		format = "使你的攻击忽视目标%s点护甲，并使你的割裂技能所造成的伤害提高%s%%。削弱目标护甲的效果随着你的等级提高而提高。",
		{186, 10}, -- 1
		{373, 20}, -- 2
		{600, 30}, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "察觉"
	talent.tips = {
		format = "提高你的潜行侦测能力，并且降低你被法术或远程攻击击中的几率%s%%。%s",
		{2, ""}, -- 1
		{4, "比察觉（等级 1）更有效。"}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "伺机待发"
	talent.tips = {
		{ -- 1
			{ left = "瞬发", right = "10分钟冷却时间" }, -- 1
			table_cache_55,
			{ left = "激活之后，这项技能立刻使你的闪避、疾跑、消失、冷血、暗影步和预谋技能的冷却时间结束。" }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "卑鄙"
	talent.tips = {
		format = "使你的偷袭和锁喉技能所消耗的能量值减少%s点。另外，你的特殊技能对生命值低于35%%的目标所造成的伤害提高%s%%。",
		table_cache_56, -- 1
		table_cache_31, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "出血"
	talent.tips = {
		{ -- 1
			{ left = "35 能量", right = "近战范围" }, -- 1
			table_cache_54,
			table_cache_50,
			table_cache_55,
			{ left = "立即对目标造成110%的武器伤害，并令其流血，使其在受到物理攻击时所承受的伤害提高最多42点。可最多生效10次，或者持续15秒。奖励1个连击点数。" }, -- 5
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：伤害提高18点" }, -- 8
			{ left = " 等级3：伤害提高25点" }, -- 9
			{ left = " 等级4：伤害提高36点" }, -- 10
		},
	}
	talent = tree.talents[16].info
	talent.name = "敏锐大师"
	talent.tips = {
		format = "在潜行状态下或脱离潜行状态6秒内，对目标造成%s%%的额外伤害。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "致命"
	talent.tips = {
		format = "使你的攻击强度提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "覆体之影"
	talent.tips = {
		format = "使你躲避范围伤害攻击的几率提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[19].info
	talent.name = "预谋"
	talent.tips = {
		{ -- 1
			{ left = "30码距离" }, -- 1
			table_cache_75,
			{ left = "|cffeb0504需要潜行|r" }, -- 3
			table_cache_55,
			{ left = "使用此技能后，为你的当前目标增加2个连击点数。你必须在10秒内消耗掉这些点数，或者为其增加新的连击点数，否则它们就会消失。" }, -- 5
		},
	}
	talent = tree.talents[20].info
	talent.name = "装死"
	talent.tips = {
		format = "你有%s%%的几率令任何可以导致你死亡的攻击对你造成的伤害只相当于你的生命上限的10%%，并且使你受到的所有伤害降低最多90%%，持续3秒（减免数值受韧性影响）。这个效果每1分钟只能触发一次。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[21].info
	talent.name = "邪恶召唤"
	talent.tips = {
		format = "使你的敏捷总值提高%s%%，并使背刺和出血技能的百分比伤害加成提高%s%%。",
		table_cache_25, -- 1
		table_cache_10, -- 2
		table_cache_82, -- 3
		table_cache_67, -- 4
		table_cache_44, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "暗影步"
	talent.tips = {
		{ -- 1
			{ left = "10 能量", right = "25码距离" }, -- 1
			table_cache_63,
			table_cache_55,
			{ left = "尝试在暗影中行进，并出现在你的目标身后，移动速度提高70%，持续3秒。你的下一个技能所造成的伤害提高20%，威胁值降低50%。持续10秒。" }, -- 4
		},
	}
	data = Talented_Data.PALADIN
	-- data.name = "圣骑士天赋"
	tree = data[1]
	tree.info.name = "神圣"
	talent = tree.talents[1].info
	talent.name = "神圣之力"
	talent.tips = {
		format = "使你的力量总值提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "神圣智慧"
	talent.tips = {
		format = "使你的智力总值提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "精神集中"
	talent.tips = {
		format = "使你的圣光闪现和圣光术有%s%%的几率在受到伤害时不会延长施法时间。.",
		multiplier = 14,
	}
	talent = tree.talents[4].info
	talent.name = "强化正义圣印"
	talent.tips = {
		format = "使你的正义圣印和正义审判的伤害提高%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "治疗之光"
	talent.tips = {
		format = "使你的圣光术和圣光闪现的治疗效果提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[6].info
	talent.name = "光环掌握"
	talent.tips = {
		"使你的光环的影响半径扩大到40码。", -- 1
	}
	talent = tree.talents[7].info
	talent.name = "强化圣疗术"
	talent.tips = {
		format = "被你的圣疗术治疗的目标因装备而获得的护甲值提高%s%%，持续2分钟。另外，圣疗术的冷却时间减少%s分钟。",
		table_cache_6, -- 1
		table_cache_17, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "不灭信仰"
	talent.tips = {
		format = "使你抵抗恐惧和困惑效果的几率提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[9].info
	talent.name = "启发"
	talent.tips = {
		format = "在你的圣光闪现、圣光术或神圣震击造成爆击效果后，使你有%s%%的几率回复施法所消耗的法力值的60%%。.",
		multiplier = 20,
	}
	talent = tree.talents[10].info
	talent.name = "强化智慧祝福"
	talent.tips = {
		format = "使你的智慧祝福的效果提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "纯净心灵"
	talent.tips = {
		format = "使你抵抗诅咒和疾病效果的几率提高%s%%。",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "神恩术"
	talent.tips = {
		{ -- 1
			{ left = "88 法力值" }, -- 1
			table_cache_53,
			table_cache_55,
			{ left = "激活之后，使你的下一个圣光闪现、圣光术或神圣震击有100%的爆击几率。" }, -- 4
		},
	}
	talent = tree.talents[13].info
	talent.name = "神圣光芒"
	talent.tips = {
		format = "使你的圣光术的爆击几率提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "净化之力"
	talent.tips = {
		format = "使你的净化和奉献法术所消耗的法力值减少%s%%，驱邪术和神圣愤怒的爆击几率提高%s%%。",
		table_cache_70, -- 1
		table_cache_28, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "神圣之力"
	talent.tips = {
		format = "使你的神圣法术的爆击几率提高%s%%。",
	}
	talent = tree.talents[16].info
	talent.name = "光之优雅"
	talent.tips = {
		format = "使你施放的圣光术有%s%%的几率令下一个圣光术的施法时间减少0.5秒，该效果可持续15秒钟。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "神圣震击"
	talent.tips = {
		{ -- 1
			table_cache_69,
			table_cache_79,
			table_cache_55,
			{ left = "以神圣的能量冲击目标，造成204到220点神圣伤害，或为盟友恢复204到220点生命值。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：275 法力值，279-302 伤害或生命" }, -- 7
			{ left = " 等级3：325 法力值，365-396 伤害或生命" }, -- 8
			{ left = " 等级4：385 法力值，452-488 伤害或生命" }, -- 9
			{ left = " 等级5：435 法力值，530-574 伤害或生命" }, -- 10
		},
	}
	talent = tree.talents[18].info
	talent.name = "神佑之体"
	talent.tips = {
		format = "你有%s%%的几率在受到任何攻击时只承受一半的伤害。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "神圣指引"
	talent.tips = {
		format = "使你的法术伤害和治疗效果提高，数值相当于你的智力总值的%s%%。",
		multiplier = 7,
	}
	talent = tree.talents[20].info
	talent.name = "神启"
	talent.tips = {
		{ -- 1
			table_cache_88,
			table_cache_55,
			{ left = "使你的所有法术所消耗的法力值减少50%，持续15秒。" }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "防护"
	talent = tree.talents[1].info
	talent.name = "强化虔诚光环"
	talent.tips = {
		format = "使你的虔诚光环提供额外护甲值的效果增强%s%%。",
		multiplier = 8,
	}
	talent = tree.talents[2].info
	talent.name = "盾牌壁垒"
	talent.tips = {
		format = "使你在遭受爆击之后使用盾牌格挡攻击的几率提%s%%。持续10秒钟或格挡5次攻击。",
		multiplier = 6,
	}
	talent = tree.talents[3].info
	talent.name = "精确"
	talent.tips = {
		format = "使你的近战武器和法术命中几率提高%s%%。",
	}
	talent = tree.talents[4].info
	talent.name = "守护者的宠爱"
	talent.tips = {
		format = "使你的保护祝福的冷却时间减少%s秒，自由祝福的效果持续时间延长%s秒。",
		{60, 3}, -- 1
		{120, 6}, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "坚韧"
	talent.tips = {
		format = "使你因装备而获得的护甲值提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "王者祝福"
	talent.tips = {
		{ -- 1
			{ left = "177 法力值", right = "30码有效距离" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "为友方目标施加祝福，使其所有属性提高10%，持续5分钟。每个圣骑士在同一时间内只能给目标施加一种祝福，同类型的祝福不能重叠。" }, -- 4
		},
	}
	talent = tree.talents[7].info
	talent.name = "强化正义之怒"
	talent.tips = {
		format = "当正义之怒处于激活状态时，你所承受的一切伤害降低%s%%，正义之怒所产生的威胁值提高%s%%。",
		table_cache_94, -- 1
		table_cache_39, -- 2
		{6, 50}, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "盾牌专精"
	talent.tips = {
		format = "使你的盾牌所能吸收的伤害提高%s%%。",
		multiplier = 10,
	}
	talent = tree.talents[9].info
	talent.name = "预知"
	talent.tips = {
		format = "使你的防御技能提高%s。",
		multiplier = 4,
	}
	talent = tree.talents[10].info
	talent.name = "淡泊"
	talent.tips = {
		format = "使你抵抗昏迷效果的几率提高%s%%，你的法术被驱散的几率降低%s%%。",
		table_cache_66, -- 1
		table_cache_20, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "强化制裁之锤"
	talent.tips = {
		format = "使你的制裁之锤的冷却时间减少%s秒。",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "强化专注光环"
	talent.tips = {
		format = "使你的专注光环的效果提高%s%%，所有受到光环影响的队友受到沉默和打断效果影响的时间缩短%s%%。影响时间缩短的效果不与其它同类效果叠加。",
		table_cache_70, -- 1
		table_cache_28, -- 2
		table_cache_101, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "法术屏障"
	talent.tips = {
		format = "使你受到的所有法术伤害降低%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "庇护祝福"
	talent.tips = {
		{ -- 1
			{ left = "60 法力值", right = "30码有效距离" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "为友方目标施加祝福，使其受到的所有类型的伤害都减少最多10点，持续5分钟。另外，当目标格挡一次近战攻击时，攻击者会受到14点神圣伤害。每个圣骑士在同一时间内只能给目标施加一种祝福，同类型的祝福不能重叠。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：85 法力值，14 伤害减少，21 神圣伤害" }, -- 7
			{ left = " 等级3：110 法力值，19 伤害减少，28 神圣伤害" }, -- 8
			{ left = " 等级4：135 法力值，24 伤害减少，35 神圣伤害" }, -- 9
			{ left = " 等级5：180 法力值，80 伤害减少，46 神圣伤害" }, -- 10
		},
	}
	talent = tree.talents[15].info
	talent.name = "清算"
	talent.tips = {
		format = "使你在承受任何攻击伤害之后有%s%%的几率在的几率在接下来的8秒内进行的4次武器攻击获得一次额外的攻击机会。",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "神圣使命"
	talent.tips = {
		format = "使你的耐力总值提高%s%%，圣盾术的冷却时间减少%s秒，攻击速度惩罚降低%s%%。",
		{3, 30, 50}, -- 1
		{6, 60, 100}, -- 2
	}
	talent = tree.talents[17].info
	talent.name = "单手武器专精"
	talent.tips = {
		format = "使你的单手近战武器伤害提高%s%%。",
	}
	talent = tree.talents[18].info
	talent.name = "强化神圣之盾"
	talent.tips = {
		format = "使你的神圣之盾造成的伤害提高%s%%，神圣之盾的使用次数增加%s次。",
		table_cache_85, -- 1
		{20, 4}, -- 2
	}
	talent = tree.talents[19].info
	talent.name = "神圣之盾"
	talent.tips = {
		{ -- 1
			{ left = "135 法力值" }, -- 1
			{ left = "瞬发", right = "10秒钟冷却时间" }, -- 2
			table_cache_38,
			table_cache_55,
			{ left = "使你的格挡几率提高30%，持续10秒钟。在此期间每次成功格挡都会对攻击者造成59点神圣伤害，由神圣之盾造成的伤害所产生的威胁值提高35%。每次成功格挡会消耗掉一次格挡机会，最多可格挡4次。" }, -- 5
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：175 法力值，86点神圣伤害" }, -- 8
			{ left = " 等级3：215 法力值，117点神圣伤害" }, -- 9
			{ left = " 等级4：280 法力值，155点神圣伤害" }, -- 10
		},
	}
	talent = tree.talents[20].info
	talent.name = "炽热防御者"
	talent.tips = {
		format = "当你的生命值低于35%%时，你承受的所有伤害降低%s%%。",
		multiplier = 6,
	}
	talent = tree.talents[21].info
	talent.name = "战斗精准"
	talent.tips = {
		format = "使你的精准等级提高%s，耐力总值提高%s%%。",
		table_cache_46, -- 1
		table_cache_8, -- 2
		table_cache_35, -- 3
		table_cache_29, -- 4
		table_cache_70, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "复仇者之盾"
	talent.tips = {
		{ -- 1
			{ left = "500 法力值", right = "8-30码有效距离" }, -- 1
			{ left = "1秒施法时间", right = "30秒冷却时间" }, -- 2
			table_cache_55,
			{ left = "向目标投掷神圣之盾，对其造成270到330神圣伤害并使其眩晕，然后跳转攻击下一个附近的目标。最多可攻击3个目标。效果持续6秒。" }, -- 4
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：615 法力值，370-452 神圣伤害" }, -- 7
			{ left = " 等级3：780 法力值，494-602 神圣伤害" }, -- 8
		},
	}
	tree = data[3]
	tree.info.name = "惩戒"
	talent = tree.talents[1].info
	talent.name = "强化力量祝福"
	talent.tips = {
		format = "使你的力量祝福所提供的攻击强度加成提高%s%%。",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "祈福"
	talent.tips = {
		format = "使你的审判和圣印所消耗的法力值减少%s%%。",
		multiplier = 3,
	}
	talent = tree.talents[3].info
	talent.name = "强化审判"
	talent.tips = {
		format = "使你的审判法术的冷却时间减少%s秒。",
	}
	talent = tree.talents[4].info
	talent.name = "强化十字军圣印"
	talent.tips = {
		format = "除了普通的效果外，你的十字军审判也会令所有攻击对审判目标的爆击几率提高%s%%。",
	}
	talent = tree.talents[5].info
	talent.name = "偏斜"
	talent.tips = {
		format = "使你的招架几率提高%s%%。",
	}
	talent = tree.talents[6].info
	talent.name = "辩护"
	talent.tips = {
		format = "使圣骑士的近战攻击有一定的几率令目标的属性降低%s%%，持续15秒。",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "定罪"
	talent.tips = {
		format = "使你的近战武器的爆击几率提高%s%%。",
	}
	talent = tree.talents[8].info
	talent.name = "命令圣印"
	talent.tips = {
		{ -- 1
			{ left = "65 法力值" }, -- 1
			table_cache_41,
			table_cache_55,
			{ left = "使圣骑士在攻击时有一定几率对目标造成与攻击伤害的70%等量的神圣伤害。圣骑士在同一时间内只能激活一种圣印。持续30秒。" }, -- 4
			table_cache_55,
			{ left = "释放这种圣印的能量将对目标造成审判效果，对其立刻造成68到73点神圣伤害，若目标昏迷或瘫痪则造成137到146点神圣伤害。" }, -- 6
			table_cache_55,
			table_cache_16,
			{ left = " 等级2：110 法力值，97-105 / 194-209 伤害" }, -- 9
			{ left = " 等级3：140 法力值，124-135 / 248-269 伤害" }, -- 10
			{ left = " 等级4：180 法力值，154-168 / 309-336 伤害" }, -- 11
			{ left = " 等级5：210 法力值，193-211 / 387-422 伤害" }, -- 12
			{ left = " 等级6：280 法力值，228-252 / 456-504 伤害" }, -- 13
		},
	}
	talent = tree.talents[9].info
	talent.name = "正义追击"
	talent.tips = {
		format = "使你被法术命中的几率降低%s%%，移动速度和坐骑移动速度提高%s%%。这个效果不与其它同类效果叠加。",
		table_cache_24, -- 1
		table_cache_89, -- 2
		table_cache_81, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "以眼还眼"
	talent.tips = {
		format = "所有对你造成爆击的法术都会对其施法者造成%s%%的伤害，但最大数值不会超过圣骑士生命值总量的50%%。",
		multiplier = 15,
	}
	talent = tree.talents[11].info
	talent.name = "强化惩戒光环"
	talent.tips = {
		format = "使你的惩戒光环的伤害提高%s%%。",
		multiplier = 25,
	}
	talent = tree.talents[12].info
	talent.name = "征伐"
	talent.tips = {
		format = "对人形生物、恶魔、亡灵和元素生物造成的所有伤害提高%s%%。",
	}
	talent = tree.talents[13].info
	talent.name = "双手武器专精"
	talent.tips = {
		format = "使你的双手近战武器伤害提高%s%%。",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "圣洁光环"
	talent.tips = {
		{ -- 1
			table_cache_54,
			table_cache_55,
			{ left = "使半径30码范围内的队友的神圣系攻击对敌人造成的伤害提高10%。每个圣骑士在同一时间内只能开启一种光环，且同类光环的效果无法叠加。" }, -- 3
		},
	}
	talent = tree.talents[15].info
	talent.name = "强化圣洁光环"
	talent.tips = {
		format = "受到圣洁光环影响的目标所能造成的伤害提高%s%%。",
	}
	talent = tree.talents[16].info
	talent.name = "复仇"
	talent.tips = {
		format = "使你的武器攻击、法术或技能在对敌人造成爆击之后有%s%%的物理和神圣伤害加成，持续30秒。这个效果可以叠加最多3次。",
	}
	talent = tree.talents[17].info
	talent.name = "神圣审判"
	talent.tips = {
		format = "你的审判法术有%s%%的几率返还所用圣印的法力值消耗的80%%。",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "神圣圣印"
	talent.tips = {
		format = "你的所有法术和近战攻击的爆击几率提高%s%%，你的圣印被驱散的几率降低%s%%。",
		{1, 33}, -- 1
		{2, 66}, -- 2
		{3, 100}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "忏悔"
	talent.tips = {
		{ -- 1
			{ left = "60 法力值", right = "20码有效距离" }, -- 1
			table_cache_90,
			table_cache_55,
			{ left = "使目标进入冥想状态，最多持续6秒。任何伤害都会唤醒目标。只对人型生物有效。" }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "神圣意志"
	talent.tips = {
		format = "近战和远程爆击对你所造成的伤害降低%s%%。",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[21].info
	talent.name = "狂热"
	talent.tips = {
		format = "所有可以造成爆击的审判法术的爆击几率提高%s%%，所有行为造成的威胁值降低%s%%（在正义之怒效果影响下时不会降低威胁值）。",
		table_cache_35, -- 1
		{6, 12}, -- 2
		{9, 18}, -- 3
		table_cache_100, -- 4
		table_cache_101, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "十字军打击"
	talent.tips = {
		{ -- 1
			{ left = "236 法力值", right = "5码有效距离" }, -- 1
			{ left = "瞬发法术", right = "6秒冷却时间" }, -- 2
			table_cache_50,
			table_cache_55,
			{ left = "瞬发的攻击，可以对目标造成110%的武器伤害，并刷新目标身上的所有审判持续时间。" }, -- 5
		},
	}
end
