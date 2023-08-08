-- Generated Data : Do Not Modify
if Talented_Data and GetLocale() == "koKR" then
	local data, tree, talent
	local table_cache_1 = {2, 20}
	local table_cache_2 = { left = "즉시 시전", right = "재사용 대기시간 8분" }
	local table_cache_3 = {3, 3}
	local table_cache_4 = {5, 1}
	local table_cache_5 = {2, ""}
	local table_cache_7 = {20, 10}
	local table_cache_8 = {4, 4}
	local table_cache_9 = {4, 2}
	local table_cache_10 = {1, 4}
	local table_cache_12 = {10, 40}
	local table_cache_13 = {16, 16}
	local table_cache_14 = {5, 5}
	local table_cache_15 = {12, 6}
	local table_cache_16 = { left = "시전시간 1.5초" }
	local table_cache_17 = {0, 8}
	local table_cache_18 = {10, 5}
	local table_cache_19 = {30, 20}
	local table_cache_20 = {3, 1}
	local table_cache_21 = {6, 3}
	local table_cache_22 = {10, 20}
	local table_cache_23 = {4, 8}
	local table_cache_24 = {16, 8}
	local table_cache_25 = {20, 20}
	local table_cache_27 = {1, 3}
	local table_cache_28 = {3, 6}
	local table_cache_29 = {2, 6}
	local table_cache_30 = { left = "마나 300", right = "유효거리 40미터" }
	local table_cache_31 = { left = "방패 필요" }
	local table_cache_32 = {4, 33}
	local table_cache_33 = {100, 20}
	local table_cache_34 = { left = "즉시 시전" }
	local table_cache_35 = { left = "즉시 시전", right = "15초 후 재사용 가능" }
	local table_cache_36 = {15, 5}
	local table_cache_37 = { left = "분노 10" }
	local table_cache_38 = { left = "근접 무기 필요" }
	local table_cache_39 = {1, 10}
	local table_cache_40 = {1, 2}
	local table_cache_41 = {9, 3}
	local table_cache_42 = {10, 50}
	local table_cache_43 = { left = "마나 88" }
	local table_cache_44 = {2, 2}
	local table_cache_45 = {20, 2}
	local table_cache_46 = { left = "" }
	local table_cache_47 = {10, 10}
	local table_cache_48 = {6, 30}
	local table_cache_49 = {15, 15}
	local table_cache_50 = {8, 4}
	local table_cache_51 = {30, 30, 30}
	local table_cache_52 = { left = "원거리 무기 필요" }
	local table_cache_53 = {12, 12}
	local table_cache_54 = {7, 4}
	local table_cache_55 = {12, 4}
	local table_cache_56 = { left = "즉시 시전", right = "3분 후 재사용 가능" }
	local table_cache_57 = {5, 10}
	local table_cache_58 = {2, 4}
	local table_cache_59 = {2, 1}
	local table_cache_60 = {1, 6}
	local table_cache_61 = {50, 10}
	local table_cache_62 = {4, "초"}
	local table_cache_63 = {1, 5}
	local table_cache_64 = {15, 10}
	local table_cache_66 = { left = " 추가 수련에 따른 정보:" }
	local table_cache_67 = {6, 2}
	local table_cache_69 = {15, 2}
	local table_cache_70 = {3, 15}
	local table_cache_73 = { left = "재료: 영혼의 조각" }
	local table_cache_74 = {10, 2}
	local table_cache_75 = { left = "소환수를 부리고 있을 때 소환수의 종류에 따라 흑마법사와 소환수에게 다음의 효과가 주어집니다." }
	local table_cache_77 = {30, 30}
	local table_cache_78 = {15, 3}
	local table_cache_79 = {5, 25}
	local table_cache_80 = {2, 10}
	local table_cache_81 = {1, 1}
	local table_cache_83 = {2, 16}
	local table_cache_84 = {30, 4}
	local table_cache_86 = { left = "유효거리 30미터" }
	local table_cache_87 = {8, 8}
	local table_cache_88 = { left = "즉시 시전", right = "재사용 대기시간 2분" }
	local table_cache_89 = {15, 6}
	local table_cache_90 = {12, 24}
	local table_cache_91 = { left = "즉시 시전", right = "5분 후 재사용" }
	local table_cache_92 = { left = "즉시 시전", right = "재사용 대기시간 30초" }
	local table_cache_93 = {2, 3}
	local table_cache_95 = { left = "즉시 시전", right = "재사용 대기시간 6초" }
	local table_cache_96 = {6, 6}
	local table_cache_97 = { left = "마나 236", right = "유효 거리 5미터" }
	local table_cache_98 = { left = "변신을 하게 되면 변이와 이동 불가 효과에서 벗어날 수 있습니다." }
	local table_cache_99 = {15, 30}
	local table_cache_100 = { left = "분노 15", right = "사정거리 5미터" }
	local table_cache_101 = { left = "즉시 시전", right = "재사용 대기시간 45초" }
	local table_cache_102 = { left = "즉시 시전", right = "재사용 대기시간 3분" }
	local table_cache_103 = {10, 4}
	local table_cache_104 = {4, 20}
	local table_cache_105 = { left = "즉시 시전", right = "2분 후 재사용" }
	local table_cache_106 = { left = "즉시 시전", right = "재사용 대기시간 10초" }
	data = Talented_Data.HUNTER
	-- data.name = "사냥꾼"
	tree = data[1]
	tree.info.name = "야수"
	talent = tree.talents[1].info
	talent.name = "매의 상 연마"
	talent.tips = {
		format = "활성화되면 모든 일반 원거리 공격 시 10%%의 확률로 원거리 공격 속도가 12초 동안 %s%%만큼 증가됩니다.",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "지구력 훈련"
	talent.tips = {
		format = "야수의 최대 생명력이 %s%%만큼 증가하고 자신의 최대 생명력이 %s%%만큼 증가합니다.",
		table_cache_59, -- 1
		table_cache_9, -- 2
		table_cache_21, -- 3
		table_cache_50, -- 4
		table_cache_18, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "화력 집중"
	talent.tips = {
		format = "야수를 소환하고 있을 때 자신의 공격력이 %s%%만큼 증가하고 살상 명령의 치명타 적중률이 %s%%만큼 증가합니다.",
		table_cache_39, -- 1
		table_cache_1, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "원숭이의 상 연마"
	talent.tips = {
		format = "원숭이의 상으로 향상되는 회피율이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "두꺼운 가죽"
	talent.tips = {
		format = "야수의 방어도가 %s%%만큼 증가하고 아이템에 의해 증가되는 방어도가 %s%%만큼 증가합니다.",
		table_cache_54, -- 1
		{14, 7}, -- 2
		table_cache_7, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "야수 되살리기 연마"
	talent.tips = {
		format = "야수 되살리기의 시전 시간이 %s초만큼 단축되며 소비되는 마나가 %s%%만큼 감소합니다. 또한 부활할 때 %s%%만큼 추가 생명력을 지닌 채로 부활합니다.",
		{3, 20, 15}, -- 1
		{6, 40, 30}, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "길 찾기"
	talent.tips = {
		format = "치타의 상과 치타 무리의 상으로 향상되는 이동 속도가 %s%%만큼 증가합니다.",
		multiplier = 4,
	}
	talent = tree.talents[8].info
	talent.name = "야수의 신속함"
	talent.tips = {
		"야수의 야외 이동 속도가 30%만큼 증가합니다.", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "격노 폭발"
	talent.tips = {
		format = "야수의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 4,
	}
	talent = tree.talents[10].info
	talent.name = "동물 치료 연마"
	talent.tips = {
		format = "동물 치료에 소비되는 마나가 %s%%만큼 감소하고 동물 치료 시 %s%%의 확률로 매 주기마다 1개의 저주나 질병, 마법, 독 효과를 제거합니다.",
		{10, 25}, -- 1
		{20, 50}, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "야수의 본성"
	talent.tips = {
		format = "야수의 치명타 적중률이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "정신의 결속"
	talent.tips = {
		format = "야수를 소환하고 있을 때 자신과 야수 모두 10초마다 전체 생명력의 %s%%에 달하는 생명력이 회복됩니다.",
	}
	talent = tree.talents[13].info
	talent.name = "위협"
	talent.tips = {
		{ -- 1
			{ left = "마나 202", right = "유효거리 100미터" }, -- 1
			{ left = "즉시 시전", right = "1분 후 재사용" }, -- 2
			{ left = "다음 근접 공격 성공 시 적을 위협하도록 야수에게 명령합니다. 위협 수준이 크게 증가하며 3초 동안 대상을 기절시킵니다." }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "야수 훈련"
	talent.tips = {
		format = "야수의 기력 회복 속도가 %s%%만큼 증가합니다.",
		multiplier = 50,
	}
	talent = tree.talents[15].info
	talent.name = "동물 조련사"
	talent.tips = {
		format = "탈것의 속도가 %s%%만큼 증가하고 야수의 적중률이 %s%%만큼 증가합니다. 이 효과는 다른 탈것 이동 속도 증가 효과와 중복 적용되지 않습니다.",
		table_cache_9, -- 1
		table_cache_50, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "광기"
	talent.tips = {
		format = "야수의 공격이 치명타로 적중할 시 %s%%의 확률로 공격 속도가 8초 동안 30%%만큼 증가합니다.",
		multiplier = 20,
	}
	talent = tree.talents[17].info
	talent.name = "야성의 감응"
	talent.tips = {
		format = "야수의 공격이 치명타로 적중하면 10초 동안 모든 파티원의 공격력이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[18].info
	talent.name = "야수의 격노"
	talent.tips = {
		{ -- 1
			{ left = "마나 338", right = "유효거리 100미터" }, -- 1
			table_cache_105,
			{ left = "야수를 광폭하게 만들어 18초 동안 공격력을 50%만큼 증가시킵니다. 광포한 동안엔 어떠한 방법으로도 공격을 저지할 수 없습니다." }, -- 3
		},
	}
	talent = tree.talents[19].info
	talent.name = "살쾡이의 반사 신경"
	talent.tips = {
		format = "자신의 회피 확률이 %s%%만큼 야수의 회피 확률이 %s%%만큼 추가로 증가합니다.",
		table_cache_27, -- 1
		table_cache_29, -- 2
		{3, 9}, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "독사의 신속함"
	talent.tips = {
		format = "원거리 공격 속도가 %s%%만큼 증가하고 야수의 근접 공격 속도가 %s%%만큼 증가합니다.",
		table_cache_8, -- 1
		table_cache_87, -- 2
		table_cache_53, -- 3
		table_cache_13, -- 4
		table_cache_25, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "내면의 야수"
	talent.tips = {
		"자신의 야수가 야수의 격노 상태일 때, 자신도 광포한 상태가 되어 18초 동안 10%의 추가 피해를 입히고 모든 주문의 마나 소모량이 20%만큼 감소합니다. 광포한 동안엔 동정심이나 자비심, 어떠한 공포도 느끼지 못하여 죽기 전까지는 어떠한 방법으로도 공격이 저지당하지 않습니다.", -- 1
	}
	tree = data[2]
	tree.info.name = "사격"
	talent = tree.talents[1].info
	talent.name = "충격포 연마"
	talent.tips = {
		format = "충격포 사용 시 %s%%의 확률로 적을 3초 동안 기절시킵니다.",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "정밀한 사격"
	talent.tips = {
		format = "원거리 무기가 치명타로 적중할 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[3].info
	talent.name = "사냥꾼의 징표 연마"
	talent.tips = {
		format = "사냥꾼의 징표로 향상되는 원거리 전투력의 %s%%만큼 근접 전투력이 증가됩니다.",
		multiplier = 20,
	}
	talent = tree.talents[4].info
	talent.name = "사격술"
	talent.tips = {
		format = "사격 기술과 쐐기에 소비되는 마나가 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "숨통 조르기"
	talent.tips = {
		format = "원거리 공격이 치명타로 적중할 시 야수의 기력이 %s만큼 회복됩니다.",
		multiplier = 25,
	}
	talent = tree.talents[6].info
	talent.name = "신비한 사격 연마"
	talent.tips = {
		format = "신비한 사격의 재사용 대기시간이 %s초만큼 단축됩니다.",
		0.2, -- 1
		0.4, -- 2
		0.6, -- 3
		0.8, -- 4
		1, -- 5
	}
	talent = tree.talents[7].info
	talent.name = "조준 사격"
	talent.tips = {
		{ -- 1
			{ left = "마나 75", right = "유효거리 5-35미터" }, -- 1
			{ left = "시전 시간 3초" }, -- 2
			{ left = "8.9초 후 재사용 가능" }, -- 3
			table_cache_52,
			{ left = "대상을 정확하게 조준하여 70만큼의 추가 피해를 입히고 대상이 받는 치유 효과를 50%만큼 감소시킵니다. 10초 동안 지속됩니다." }, -- 5
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 마나 115, 125의 추가 피해" }, -- 8
			{ left = " 3레벨: 마나 160, 200의 추가 피해" }, -- 9
			{ left = " 4레벨: 마나 210, 330의 추가 피해" }, -- 10
			{ left = " 5레벨: 마나 260, 460의 추가 피해" }, -- 11
			{ left = " 6레벨: 마나 310, 600의 추가 피해" }, -- 12
			{ left = " 7레벨: 마나 370, 870의 추가 피해" }, -- 13
		},
	}
	talent = tree.talents[8].info
	talent.name = "신속한 사냥"
	talent.tips = {
		format = "속사의 재사용 대기시간이 %s분만큼 감소합니다. 추가로, 자신이 결정타를 가하여 적을 처치한 후 경험치 또는 명예 점수를 얻게 되면 다음 조준 사격, 신비한 사격, 자동 사격의 공격력이 %s%%만큼 증가합니다. 이 효과는 20초 동안 지속됩니다.",
		table_cache_39, -- 1
		table_cache_1, -- 2
	}
	talent = tree.talents[9].info
	talent.name = "쐐기 연마"
	talent.tips = {
		format = "독사 쐐기와 비룡 쐐기의 공격력이 %s%%만큼 증가하고 살무사 쐐기로 소진시키는 마나량이 %s%%만큼 증가합니다. 추가로 쐐기가 무효화 될 확률이 %s%%만큼 감소합니다.",
		{6, 6, 6}, -- 1
		{12, 12, 12}, -- 2
		{18, 18, 18}, -- 3
		{24, 24, 24}, -- 4
		table_cache_51, -- 5
	}
	talent = tree.talents[10].info
	talent.name = "죽음의 사격"
	talent.tips = {
		format = "원거리 무기의 치명타 피해가 %s%%만큼 증가합니다.",
		multiplier = 6,
	}
	talent = tree.talents[11].info
	talent.name = "집중 포화"
	talent.tips = {
		format = "자동 사격 적중 시 %s%%의 확률로 대상을 4초 동안 멍해지게 만듭니다.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "산탄 사격"
	talent.tips = {
		{ -- 1
			{ left = "마나 202", right = "유효거리 15미터" }, -- 1
			{ left = "즉시 시전", right = "30초 후 재사용" }, -- 2
			table_cache_52,
			{ left = "무기 공격력에 50%에 해당하는 피해를 입히고 4초 동안 적을 방향 감각 상실 상태로 만듭니다. 사정거리가 짧습니다. 대상이 피해를 입으면 효과가 사라집니다. 사용하면 자동 공격을 중단합니다." }, -- 4
		},
	}
	talent = tree.talents[13].info
	talent.name = "탄막"
	talent.tips = {
		format = "일제 사격과 연발 사격의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 4,
	}
	talent = tree.talents[14].info
	talent.name = "실전 경험"
	talent.tips = {
		format = "총 민첩성이 %s%%만큼, 지능이 %s%%만큼 증가합니다.",
		table_cache_27, -- 1
		table_cache_29, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "원거리 무기 전문화"
	talent.tips = {
		format = "원거리 무기의 공격력이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[16].info
	talent.name = "신중한 조준"
	talent.tips = {
		format = "원거리 전투력이 총 지능의 %s%%만큼 증가합니다.",
		multiplier = 15,
	}
	talent = tree.talents[17].info
	talent.name = "정조준 오라"
	talent.tips = {
		{ -- 1
			table_cache_34,
			{ left = "45미터 반경 내에 있는 파티원의 전투력이 50만큼 증가합니다. 활성화되어있는 동안 지속됩니다." }, -- 2
		},
	}
	talent = tree.talents[18].info
	talent.name = "탄막 연마"
	talent.tips = {
		format = "일제 사격이 치명타로 적중될 확률이 %s%%만큼 증가하고 연발 사격 사용 시 %s%%의 확률로 피해에 의한 주문 시전 방해를 받지 않습니다.",
		table_cache_32, -- 1
		{8, 66}, -- 2
		{12, 100}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "사격의 명수"
	talent.tips = {
		format = "원거리 전투력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "침묵의 사격"
	talent.tips = {
		{ -- 1
			{ left = "마나 202", right = "유효거리 5-35미터" }, -- 1
			{ left = "즉시 시전", right = "20초 후 재사용" }, -- 2
			{ left = "적에게 사격하여 무기 공격력의 50%에 해당하는 피해를 입히고 3초 동안 침묵시킵니다." }, -- 3
		},
	}
	tree = data[3]
	tree.info.name = "생존"
	talent = tree.talents[1].info
	talent.name = "몬스터 사냥술"
	talent.tips = {
		format = "야수와 거인, 용족에 대한 공격력이 %s%%만큼 증가하며 야수와 거인, 용족에 치명타를 입혔을 경우 피해가 %s%%만큼 증가합니다.",
		table_cache_81, -- 1
		table_cache_44, -- 2
		table_cache_3, -- 3
	}
	talent = tree.talents[2].info
	talent.name = "인간형 사냥술"
	talent.tips = {
		format = "인간형에 대한 공격력이 %s%%만큼 증가하며 인간형에 치명타를 입혔을 경우 피해가 %s%%만큼 증가합니다.",
		table_cache_81, -- 1
		table_cache_44, -- 2
		table_cache_3, -- 3
	}
	talent = tree.talents[3].info
	talent.name = "매의 눈"
	talent.tips = {
		format = "원거리 무기의 사정거리가 %s미터만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[4].info
	talent.name = "야생의 일격"
	talent.tips = {
		format = "랩터의 일격과 살쾡이의 이빨의 치명타 적중률이 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[5].info
	talent.name = "올가미"
	talent.tips = {
		format = "제물의 덫, 냉기의 덫, 폭발의 덫 사용 시 %s%%의 확률로 대상을 옭아매어 4초 동안 움직일 수 없도록 만듭니다.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "재빠른 손놀림"
	talent.tips = {
		format = "무기 막기 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[7].info
	talent.name = "날개 절단 연마"
	talent.tips = {
		format = "날개 절단 사용 시 %s%%의 확률로 대상을 5초 동안 움직이지 못하도록 만듭니다.",
		7, -- 1
		14, -- 2
		20, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "덫 개량"
	talent.tips = {
		format = "얼음의 덫과 냉기의 덫 효과의 지속시간이 %s%%만큼, 제물의 덫과 폭발의 덫 효과의 피해가 %s%%만큼, 뱀 덫에서 소환되는 뱀의 수가 %s%%만큼 증가합니다.",
		{15, 15, 15}, -- 1
		table_cache_51, -- 2
	}
	talent = tree.talents[9].info
	talent.name = "생존의 대가"
	talent.tips = {
		format = "최대 생명력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[10].info
	talent.name = "공격 저지"
	talent.tips = {
		{ -- 1
			table_cache_91,
			{ left = "활성화되면 10초 동안 회피와 무기 막기 확률이 25%만큼 증가합니다." }, -- 2
		},
	}
	talent = tree.talents[11].info
	talent.name = "덫 숙련"
	talent.tips = {
		format = "적이 덫 효과에 저항할 확률이 %s%%만큼 감소합니다.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "침착함"
	talent.tips = {
		format = "적중률이 %s%%만큼 증가하며 이동 방해 효과에 저항할 확률이 추가로 %s%%만큼 증가합니다.",
		table_cache_63, -- 1
		table_cache_80, -- 2
		table_cache_70, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "죽은척하기 연마"
	talent.tips = {
		format = "죽은척하기가 저항될 확률이 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "생존 본능"
	talent.tips = {
		format = "받는 모든 피해가 %s%%만큼 감소하고, 전투력이 %s%%만큼 증가합니다.",
		table_cache_44, -- 1
		table_cache_8, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "살수의 본능"
	talent.tips = {
		format = "모든 공격의 치명타 적중률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[16].info
	talent.name = "역습"
	talent.tips = {
		{ -- 1
			{ left = "마나 45", right = "유효거리 5미터" }, -- 1
			{ left = "즉시 시전", right = "5초 후 재사용" }, -- 2
			{ left = "이 효과는 적의 공격을 무기로 막아낸 후에 활성화됩니다. 다음 공격은 40의 피해를 입히고 대상을 5초 동안 움직일 수 없도록 만듭니다. 역습은 방어나 회피, 막을 수 없습니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 마나 65, 70의 피해" }, -- 6
			{ left = " 3레벨: 마나 85, 110의 피해" }, -- 7
			{ left = " 3레벨: 마나 110, 165의 피해" }, -- 8
		},
	}
	talent = tree.talents[17].info
	talent.name = "뛰어난 계략"
	talent.tips = {
		format = "모든 덫과 근접 기술에 소비되는 마나가 %s%%만큼 감소하고 모든 덫의 재사용 대기시간이 %s초만큼 감소합니다.",
		table_cache_45, -- 1
		{40, 4}, -- 2
		{60, 6}, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "번개같은 반사 신경"
	talent.tips = {
		format = "민첩성이 %s%%만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[19].info
	talent.name = "사냥의 전율"
	talent.tips = {
		format = "사격이 치명타로 적중했을 경우 %s%%의 확률로 소비한 마나의 40%%를 회복합니다.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "비룡 쐐기"
	talent.tips = {
		{ -- 1
			{ left = "마나 115", right = "유효거리 5-35미터" }, -- 1
			table_cache_105,
			{ left = "적에게 쐐기를 발사하여 12초 동안 잠재웁니다. 대상이 피해를 입으면 깨어납니다. 대상이 깨어나면 쐐기는 12초에 걸쳐 300의 자연 피해를 입힙니다. 한 번에 하나의 대상에게만 사용할 수 있습니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 마나 155, 420의 자연 피해" }, -- 6
			{ left = " 3레벨: 마나 205, 600의 자연 피해" }, -- 7
		},
	}
	talent = tree.talents[21].info
	talent.name = "결점 노출"
	talent.tips = {
		format = "원거리 공격이 치명타로 적중했을 때 %s%%의 확률로 적이 7초 동안 결점 노출에 걸리게 됩니다. 결점 노출이 걸린 적을 공격하는 이는 전투력이 사냥꾼의 민첩성의 25%%만큼 증가합니다.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[22].info
	talent.name = "전술의 대가"
	talent.tips = {
		format = "원거리 공격이 적중할 경우 6%%의 확률로 모든 공격의 치명타 적중률이 8초 동안 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[23].info
	talent.name = "만반의 준비"
	talent.tips = {
		{ -- 1
			table_cache_91,
			{ left = "활성화되면 다른 기술들의 재사용 대기시간이 초기화됩니다." }, -- 2
		},
	}
	data = Talented_Data.WARRIOR
	-- data.name = "전사"
	tree = data[1]
	tree.info.name = "무기"
	talent = tree.talents[1].info
	talent.name = "영웅의 일격 연마"
	talent.tips = {
		format = "영웅의 일격 사용에 소모되는 분노의 양이 %s만큼 감소합니다.",
	}
	talent = tree.talents[2].info
	talent.name = "재빠른 손놀림"
	talent.tips = {
		format = "무기 막기 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[3].info
	talent.name = "분쇄 연마"
	talent.tips = {
		format = "분쇄로 인한 출혈 피해가 %s%%만큼 증가합니다.",
		multiplier = 25,
	}
	talent = tree.talents[4].info
	talent.name = "돌진 연마"
	talent.tips = {
		format = "돌진으로 생성되는 분노가  %s만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "강건한 의지"
	talent.tips = {
		format = "기절이나 유혹 효과에 저항할 확률이 %s%%만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[6].info
	talent.name = "천둥벼락 연마"
	talent.tips = {
		format = "천둥벼락에 소비되는 분노가 %s만큼 감소하고 천둥벼락의 피해가 %s%%만큼 증가합니다. 또한 천둥벼락의 감속 효과가 %s%%만큼 향상됩니다.",
		{1, 40, 4}, -- 1
		{2, 70, 7}, -- 2
		{4, 100, 10}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "제압 연마"
	talent.tips = {
		format = "제압 사용 시 치명타 적중률이 %s%%만큼 증가합니다.",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "분노 제어"
	talent.tips = {
		"전투 중일 때 3초마다 1의 분노가 생성됩니다.", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "치명상"
	talent.tips = {
		format = "적에게 치명타를 적중시키면 12초에 걸쳐 근접 무기 공격력의 %s%%에 해당하는 피해를 입힙니다.",
		multiplier = 20,
	}
	talent = tree.talents[10].info
	talent.name = "양손 무기류 전문화"
	talent.tips = {
		format = "양손 무기의 공격력이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[11].info
	talent.name = "꿰뚫기"
	talent.tips = {
		format = "전투, 방어, 광폭 태세에서 사용하는 기술이 치명타로 적중할 경우 보너스 피해가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[12].info
	talent.name = "도끼류 및 장창류 전문화"
	talent.tips = {
		format = "도끼 및 장창 무기로 치명타를 적중시킬 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[13].info
	talent.name = "죽음의 소원"
	talent.tips = {
		{ -- 1
			table_cache_37,
			table_cache_56,
			{ left = "활성화되면 물리 공격력이 20%만큼 향상되고 공포에 면역이 되지만 받는 모든 피해가 5%만큼 증가합니다. 30초 동안 지속됩니다." }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "둔기류 전문화"
	talent.tips = {
		format = "둔기로 근접 공격 시 일정 확률로 3초 동안 적을 기절시키고 7의 분노가 생성됩니다.%s",
		"", -- 1
		" 1레벨 둔기류 전문화보다 효과가 좋습니다.", -- 2
		" 2레벨 둔기류 전문화보다 효과가 좋습니다.", -- 3
		" 3레벨 둔기류 전문화보다 효과가 좋습니다.", -- 4
		" 4레벨 둔기류 전문화보다 효과가 좋습니다.", -- 5
	}
	talent = tree.talents[15].info
	talent.name = "도검류 전문화"
	talent.tips = {
		format = "검으로 적을 적중시켰을 때 %s%%의 확률로 같은 대상에게 추가 공격을 가할 수 있습니다.",
	}
	talent = tree.talents[16].info
	talent.name = "봉쇄 연마"
	talent.tips = {
		format = "봉쇄의 재사용 대기시간이 %s초만큼 단축됩니다.",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "무력화 연마"
	talent.tips = {
		format = "무력화 사용 시 %s%%의 확률로 대상을 5초 동안 이동 불가 상태로 만듭니다.",
		multiplier = 5,
	}
	talent = tree.talents[18].info
	talent.name = "신체 단련"
	talent.tips = {
		format = "방패의 벽, 무모한 희생, 보복의 재사용 대기시간이 %s분만큼 단축되고 지속시간이 %s초만큼 증가합니다.",
		table_cache_9, -- 1
		table_cache_54, -- 2
		{10, 6}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "피의 광란"
	talent.tips = {
		format = "자신의 분쇄, 치명상이 걸린 대상은 받는 모든 물리 피해가 %s%%만큼 증가 합니다.",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "죽음의 일격"
	talent.tips = {
		{ -- 1
			{ left = "분노 30", right = "유효거리 5미터" }, -- 1
			{ left = "즉시 시전", right = "6초 후 재사용" }, -- 2
			table_cache_38,
			{ left = "무기 공격력에 추가로 85만큼의 피해를 입히고 10초 동안 모든 치유의 효과가 50%만큼 감소되도록 상처를 입힙니다." }, -- 4
			table_cache_46,
			table_cache_66,
			{ left = "  2레벨: +110 추가 피해" }, -- 7
			{ left = "  3레벨: +135 추가 피해" }, -- 8
			{ left = "  4레벨: +160 추가 피해" }, -- 9
			{ left = "  5레벨: +185 추가 피해" }, -- 10
			{ left = "  6레벨: +210 추가 피해" }, -- 11
		},
	}
	talent = tree.talents[21].info
	talent.name = "재기의 숨결"
	talent.tips = {
		format = "기절하거나 이동 방해 효과에 걸렸을 때 10초에 걸쳐 %s의 분노와 총 생명력의 %s%%에 해당하는 생명력을 회복합니다.",
		table_cache_18, -- 1
		table_cache_7, -- 2
	}
	talent = tree.talents[22].info
	talent.name = "죽음의 일격 연마"
	talent.tips = {
		format = "죽음의 일격의 재사용 대기시간이 %s초만큼 감소하고 공격력이 %s%%만큼 증가합니다.",
		{0.2, 1}, -- 1
		{0.4, 2}, -- 2
		{0.6, 3}, -- 3
		{0.8, 4}, -- 4
		table_cache_63, -- 5
	}
	talent = tree.talents[23].info
	talent.name = "끝없는 분노"
	talent.tips = {
		"피해를 입힐 때 생성되는 분노가 25%만큼 증가합니다.", -- 1
	}
	tree = data[2]
	tree.info.name = "분노"
	talent = tree.talents[1].info
	talent.name = "우렁찬 음성"
	talent.tips = {
		format = "전투의 외침과 사기의 외침, 지휘의 외침의 효과 범위와 지속시간이 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[2].info
	talent.name = "무자비함"
	talent.tips = {
		format = "근접 공격으로 치명타를 적중시킬 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[3].info
	talent.name = "사기의 외침 연마"
	talent.tips = {
		format = "사기의 외침으로 감소시키는 적의 근접 전투력 수치가 %s%%만큼 증가합니다.",
		multiplier = 8,
	}
	talent = tree.talents[4].info
	talent.name = "분노 해방"
	talent.tips = {
		format = "근접 무기로 적에게 피해를 입힐 시 일정 확률로 추가 분노를 생성합니다.%s",
		"", -- 1
		" 1레벨 분노 해방 보다 분노를 생성할 확률이 높습니다.", -- 2
		" 2레벨 분노 해방 보다 분노를 생성할 확률이 높습니다.", -- 3
		" 3레벨 분노 해방 보다 분노를 생성할 확률이 높습니다.", -- 4
		" 4레벨 분노 해방 보다 분노를 생성할 확률이 높습니다.", -- 5
	}
	talent = tree.talents[5].info
	talent.name = "회전베기 연마"
	talent.tips = {
		format = "회전베기로 입히는 추가 피해가 %s%%만큼 증가합니다.",
		multiplier = 40,
	}
	talent = tree.talents[6].info
	talent.name = "날카로운 포효"
	talent.tips = {
		{ -- 1
			table_cache_37,
			table_cache_34,
			{ left = "10 미터 내의 모든 적을 멍해지도록 만들어 6초 동안 이동 속도를 50%만큼 감소시킵니다." }, -- 3
		},
	}
	talent = tree.talents[7].info
	talent.name = "피의 광기"
	talent.tips = {
		format = "전투 시 치명타 공격을 받으면 6초에 걸쳐 전체 생명력의 %s%%가 회복됩니다.",
	}
	talent = tree.talents[8].info
	talent.name = "위엄 있는 풍채"
	talent.tips = {
		format = "전투의 외침으로 향상되는 근접 전투력과 지휘의 외침으로 향상되는 생명력이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[9].info
	talent.name = "쌍수 무기 전문화"
	talent.tips = {
		format = "보조 무기의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[10].info
	talent.name = "마무리 일격 연마"
	talent.tips = {
		format = "마무리 일격에 소비되는 분노가 %s만큼 감소합니다.",
		2, -- 1
		5, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "격노"
	talent.tips = {
		format = "치명타 공격을 받았을 때 12초동안 최대 다음 12회의 근접 공격에 %s%%의 근접 공격력 보너스를 받게 됩니다.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "격돌 연마"
	talent.tips = {
		format = "격돌의 시전 시간이 %s초만큼 단축됩니다.",
		multiplier = 0.5,
	}
	talent = tree.talents[13].info
	talent.name = "휩쓸기 일격"
	talent.tips = {
		{ -- 1
			{ left = "분노 30" }, -- 1
			table_cache_92,
			table_cache_38,
			{ left = "요구 사항: 전투 태세, 광폭 태세" }, -- 4
			{ left = "다음 10회의 근접 공격은 적 1명을 추가로 공격합니다." }, -- 5
		},
	}
	talent = tree.talents[14].info
	talent.name = "무기 전문화"
	talent.tips = {
		format = "공격 시 대상이 회피할 확률이 %s%%만큼 줄어들고 자신에게 시전되는 모든 무장 해제 효과의 지속시간이 25%%만큼 단축됩니다.다른 무장 해제 지속 시간 감소 효과와 중복 적용되지 않습니다.",
	}
	talent = tree.talents[15].info
	talent.name = "광전사의 격노 연마"
	talent.tips = {
		format = "광전사의 격노를 사용하면 %s의 분노가 생성됩니다.",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "질풍"
	talent.tips = {
		format = "근접 치명타를 적중시키면 다음 3회의 공격 동안 공격 속도가 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "정밀함"
	talent.tips = {
		format = "근접 무기의 적중률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[18].info
	talent.name = "피의 갈증"
	talent.tips = {
		{ -- 1
			{ left = "분노 30", right = "사정거리 5미터" }, -- 1
			table_cache_95,
			{ left = "즉시 적을 공격하여 221의 피해를 입힙니다. 추가로 다음 5회의 근접 공격을 성공할 시 10의 생명력을 회복합니다. 8초동안 지속됩니다. 피해는 전투력에 따라 증가합니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = "  2레벨: 13 생명력" }, -- 6
			{ left = "  3레벨: 17 생명력" }, -- 7
			{ left = "  4레벨: 20 생명력" }, -- 8
			{ left = "  5레벨: 25 생명력" }, -- 9
			{ left = "  6레벨: 30 생명력" }, -- 10
		},
	}
	talent = tree.talents[19].info
	talent.name = "소용돌이 연마"
	talent.tips = {
		format = "소용돌이의 재사용 대기시간이 %s초만큼 감소합니다.",
	}
	talent = tree.talents[20].info
	talent.name = "광폭 태세 연마"
	talent.tips = {
		format = "광폭 태세일 때 전투력이 %s%%만큼 증가하고, 위협 수준이 %s%%만큼 감소됩니다.",
		table_cache_44, -- 1
		table_cache_8, -- 2
		table_cache_96, -- 3
		table_cache_87, -- 4
		table_cache_47, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "광란"
	talent.tips = {
		{ -- 1
			{ left = "분노 20" }, -- 1
			table_cache_34,
			{ left = "광란의 상태가 되어 전투력이 30만큼 증가하며 대부분의 근접 공격이 성공할 때마다 전투력이 추가로 30만큼 증가합니다. 효과는 5번까지 중복됩니다. 30초동안 지속됩니다. 이 기술은 치명타 공격을 적중시킨 이후에만 사용할 수 있습니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = "  2레벨: +40 전투력" }, -- 6
			{ left = "  3레벨: +50 전투력" }, -- 7
		},
	}
	tree = data[3]
	tree.info.name = "방어"
	talent = tree.talents[1].info
	talent.name = "피의 분노 연마"
	talent.tips = {
		format = "피의 분노로 생성되는 초기 분노가 %s만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "전술 숙련"
	talent.tips = {
		format = "태세를 변경할 때 추가로 %s의 분노를 유지할 수 있습니다. 또한 방어 태세일 때 피의 갈증과 죽음의 일격으로 생성되는 위협 수준이 크게 증가합니다.%s",
		{5, ""}, -- 1
		{10, " 1레벨 전술 숙련보다 효과가 좋습니다."}, -- 2
		{15, " 2레벨 전술 숙련보다 효과가 좋습니다."}, -- 3
	}
	talent = tree.talents[3].info
	talent.name = "직감"
	talent.tips = {
		format = "방어 숙련도가 %s만큼 증가합니다.",
		multiplier = 4,
	}
	talent = tree.talents[4].info
	talent.name = "방패 전문화"
	talent.tips = {
		format = "적의 공격을 방패로 막을 확률이 %s%%만큼 증가하고 막을 때마다 %s%%의 확률로 분노가 1만큼 생성됩니다.",
		{1, 20}, -- 1
		{2, 40}, -- 2
		{3, 60}, -- 3
		{4, 80}, -- 4
		{5, 100}, -- 5
	}
	talent = tree.talents[5].info
	talent.name = "강인함"
	talent.tips = {
		format = "장비 착용으로 인한 방어도가 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "최후의 저항"
	talent.tips = {
		{ -- 1
			table_cache_2,
			{ left = "활성화되면 일시적으로 최대 생명력이 30%만큼 증가합니다. 20초동안 지속되며 지속 시간이 끝나면 임시 생명력은 사라집니다." }, -- 2
		},
	}
	talent = tree.talents[7].info
	talent.name = "방패 막기 연마"
	talent.tips = {
		"방패 막기 사용 시 추가 공격을 한번 더 방어하게 하고 지속시간을 1초만큼 증가시킵니다.", -- 1
	}
	talent = tree.talents[8].info
	talent.name = "복수 연마"
	talent.tips = {
		format = "복수 사용 시 %s%%의 확률로 적을 3초 동안 기절시킵니다.",
		multiplier = 15,
	}
	talent = tree.talents[9].info
	talent.name = "도전"
	talent.tips = {
		format = "방어 태세일 때 공격에 의한 위협 수준이 %s%%만큼 증가하고 숙련이 %s만큼 증가합니다.",
		{5, 2}, -- 1
		table_cache_103, -- 2
		table_cache_89, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "방어구 가르기 연마"
	talent.tips = {
		format = "방어구 가르기와 압도에 소비되는 분노가 %s만큼 감소합니다.",
	}
	talent = tree.talents[11].info
	talent.name = "무장 해제 연마"
	talent.tips = {
		format = "무장 해제의 지속시간이 %s초만큼 증가합니다.",
	}
	talent = tree.talents[12].info
	talent.name = "도발 연마"
	talent.tips = {
		format = "도발의 재사용 대기시간이 %s초만큼 단축됩니다.",
	}
	talent = tree.talents[13].info
	talent.name = "방패의 벽 연마"
	talent.tips = {
		format = "방패의 벽의 지속시간이 %s초만큼 증가합니다.",
		3, -- 1
		5, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "충격의 일격"
	talent.tips = {
		{ -- 1
			table_cache_100,
			table_cache_101,
			table_cache_38,
			{ left = "적을 5초동안 기절시킵니다." }, -- 4
		},
	}
	talent = tree.talents[15].info
	talent.name = "방패 가격 연마"
	talent.tips = {
		format = "방패 가격 시 %s%%의 확률로 3초동안 적을 침묵시킵니다.",
		multiplier = 50,
	}
	talent = tree.talents[16].info
	talent.name = "방패 전문화"
	talent.tips = {
		format = "방패로 인해 흡수되는 피해가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[17].info
	talent.name = "한손 무기류 전문화"
	talent.tips = {
		format = "한손 무기류의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "방어 태세 연마"
	talent.tips = {
		format = "방어 태세일 때 모든 주문으로부터 받는 피해가 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[19].info
	talent.name = "방패 밀쳐내기"
	talent.tips = {
		{ -- 1
			{ left = "분노 20", right = "사정거리 5미터" }, -- 1
			table_cache_95,
			table_cache_31,
			{ left = "적을 방패로 가격하여 방패 피해 방어량에 비례하여 225-235의 피해를 입히고 마법 효과 1개를 제거합니다. 위협 수준을 크게 증가시킵니다." }, -- 4
			table_cache_46,
			table_cache_66,
			{ left = "  2레벨: 264-276 피해" }, -- 7
			{ left = "  3레벨: 303-317 피해" }, -- 8
			{ left = "  4레벨: 342-358 피해" }, -- 9
			{ left = "  5레벨: 381-399 피해" }, -- 10
			{ left = "  6레벨: 420-440 피해" }, -- 11
		},
	}
	talent = tree.talents[20].info
	talent.name = "분노 집중"
	talent.tips = {
		format = "공격 기술에 소비되는 분노가 %s만큼 감소합니다.",
	}
	talent = tree.talents[21].info
	talent.name = "활력"
	talent.tips = {
		format = "전체 체력이 %s%%만큼 증가하고 전체 힘이 %s%%만큼 증가합니다.",
		table_cache_40, -- 1
		table_cache_58, -- 2
		table_cache_28, -- 3
		table_cache_23, -- 4
		table_cache_57, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "압도"
	talent.tips = {
		{ -- 1
			table_cache_100,
			table_cache_34,
			{ left = "한손 근접 무기 필요" }, -- 3
			{ left = "방어구 가르기 효과로 대상의 방어구를 가릅니다. 추가로 무기 공격력의 50%에 해당하는 피해에 대상에 걸린 방어구 가르기 숫자에 비례하여 15의 추가 피해를 입힙니다. 해당 방어구 가르기 효과는 최대 5번까지 중복됩니다." }, -- 4
			table_cache_46,
			table_cache_66,
			{ left = "  2레벨: 25 추가 피해" }, -- 7
			{ left = "  3레벨: 35 추가 피해" }, -- 8
		},
	}
	data = Talented_Data.SHAMAN
	-- data.name = "주술사"
	tree = data[1]
	tree.info.name = "정기"
	talent = tree.talents[1].info
	talent.name = "기의 흐름"
	talent.tips = {
		format = "번개 화살, 연쇄 번개, 충격 계열 주문에 소비되는 마나가 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "촉발"
	talent.tips = {
		format = "번개 화살, 연쇄 번개, 충격 계열 주문의 공격력이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[3].info
	talent.name = "대지의 올가미"
	talent.tips = {
		format = "돌발톱 토템의 생명력이 %s%%만큼 증가하고 속박의 토템의 효과 범위가 %s%%만큼 증가합니다.",
		{25, 10}, -- 1
		{50, 20}, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "정기의 수호"
	talent.tips = {
		format = "화염, 냉기, 자연 계열의 피해가 %s%%만큼 감소합니다.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "불꽃의 부름"
	talent.tips = {
		format = "불의 토템 계열의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "정기의 집중"
	talent.tips = {
		"화염, 냉기, 자연 계열 공격 주문이 극대화 효과를 발휘하면 정신 집중 상태를 취하게 됩니다. 정신 집중 상태에서는 다음 2회의 공격 주문 마나 소비량이 40%만큼 감소됩니다.", -- 1
	}
	talent = tree.talents[7].info
	talent.name = "산울림"
	talent.tips = {
		format = "충격 계열 주문의 재사용 대기시간이 %s초만큼 단축됩니다.",
		0.2, -- 1
		0.4, -- 2
		0.6, -- 3
		0.8, -- 4
		1, -- 5
	}
	talent = tree.talents[8].info
	talent.name = "천둥의 부름"
	talent.tips = {
		format = "번개 화살, 연쇄 번개 주문이 극대화 효과를 발휘할 확률이 추가로 %s%%만큼 증가합니다.",
		1, -- 1
		2, -- 2
		3, -- 3
		4, -- 4
		6, -- 5
	}
	talent = tree.talents[9].info
	talent.name = "불의 토템 연마"
	talent.tips = {
		format = "불꽃 회오리 토템을 소환한 후 발동되는 데 걸리는 대기시간이 %s초만큼 감소하고 용암 토템으로 인한 위협 수준이 %s%%만큼 감소합니다.",
		{1, 25}, -- 1
		{2, 50}, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "폭풍의 눈"
	talent.tips = {
		format = "근접 및 원거리 치명타 공격을 받았을 때 %s%%의 확률로 6초 동안 집중력 효과가 활성화됩니다. 집중력의 효과를 받을 땐 받는 피해로 인해 시전 시간이 지연되지 않습니다.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "자연의 파괴력"
	talent.tips = {
		format = "공격 주문이 극대화 효과를 발휘하면 10초동안 근접 공격의 치명타 적중률이 %s%%만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[12].info
	talent.name = "폭풍의 테두리"
	talent.tips = {
		format = "번개 화살, 연쇄 번개의 사정거리가 %s미터만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[13].info
	talent.name = "자연의 격노"
	talent.tips = {
		"불타는 토템, 용암 토템, 불꽃 회오리 토템과 화염, 냉기, 자연 주문이 치명타로 적중할 경우 보너스 피해가 100%만큼 증가합니다.", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "몰아치는 폭풍"
	talent.tips = {
		format = "시전 중에도 매 5초마다 지능의 %s%%에 해당하는 마나를 회복합니다.",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "정기의 정밀함"
	talent.tips = {
		format = "화염, 냉기, 자연 주문의 적중률이 %s%%만큼 증가하고 화염, 냉기, 자연 주문으로 인한 위협 수준이 %s%%만큼 감소합니다.",
		table_cache_58, -- 1
		{4, 7}, -- 2
		{6, 10}, -- 3
	}
	talent = tree.talents[16].info
	talent.name = "번개 전문화"
	talent.tips = {
		format = "번개 화살과 연쇄 번개의 시전 시간이 0.%s초만큼 감소합니다.",
	}
	talent = tree.talents[17].info
	talent.name = "정기의 깨달음"
	talent.tips = {
		{ -- 1
			table_cache_56,
			{ left = "활성화되면 다음 화염, 냉기, 자연 계열의 공격 주문은 100%의 확률로 치명타로 적중하고 소비되는 마나가 100%만큼 감소합니다." }, -- 2
		},
	}
	talent = tree.talents[18].info
	talent.name = "정기의 보호막"
	talent.tips = {
		format = "근접 및 원거리 치명타에 적중당할 확률이 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[19].info
	talent.name = "넘치는 정기"
	talent.tips = {
		format = "번개 화살 및 연쇄 번개 시전 시 %s%%의 확률로 마나 소비 없이 같은 대상에게 유사한 주문을 시전하여 절반의 피해를 입히고 위협 수준을 증가시키지 않습니다.",
		multiplier = 4,
	}
	talent = tree.talents[20].info
	talent.name = "격노의 토템"
	talent.tips = {
		{ -- 1
			{ left = "마나 147" }, -- 1
			table_cache_34,
			{ left = "도구: 불의 토템" }, -- 3
			{ left = "시전자의 위치에 5의 생명력을 지닌 격노의 토템을 소환하여 주위 20미터 반경 내에 있는 모든 파티원의 주문이 극대화 효과를 발휘할 확률을 3%만큼 증가시킵니다. 2분 동안 지속됩니다" }, -- 4
		},
	}
	tree = data[2]
	tree.info.name = "고양"
	talent = tree.talents[1].info
	talent.name = "선인의 지혜"
	talent.tips = {
		format = "최대 마나가 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[2].info
	talent.name = "방패 전문화"
	talent.tips = {
		format = "방패로 적의 공격을 방어할 확률이 %s%%만큼 증가하고 피해 방어량이 %s%%만큼 증가합니다.",
		table_cache_63, -- 1
		table_cache_80, -- 2
		table_cache_70, -- 3
		table_cache_104, -- 4
		table_cache_79, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "수호의 토템"
	talent.tips = {
		format = "돌가죽 토템, 바람막이 토템으로 인해 감소되는 피해가 %s%%만큼 증가하고 마법정화 토템의 재사용 대기시간이 %s초만큼 단축됩니다.",
		{10, 1}, -- 1
		table_cache_45, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "우레의 일격"
	talent.tips = {
		format = "무기로 공격할 때 치명타로 적중할 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[5].info
	talent.name = "늑대 정령 연마"
	talent.tips = {
		format = "늑대 정령 주문의 시전 시간이 %s초만큼 감소합니다.",
	}
	talent = tree.talents[6].info
	talent.name = "번개 보호막 연마"
	talent.tips = {
		format = "번개 보호막 구슬의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "강화의 토템"
	talent.tips = {
		format = "대지력 토템, 은총의 토템의 효과가 %s%%만큼 증가합니다.",
		8, -- 1
		15, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "주술의 집중"
	talent.tips = {
		"근접 치명타를 적중시키면 주술사가 집중 상태를 취하게 됩니다. 집중 상태에서는 다음 충격 계열 주문의 마나 소비량이 60%만큼 감소합니다.", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "선견지명"
	talent.tips = {
		format = "회피 확률이 추가로 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[10].info
	talent.name = "질풍"
	talent.tips = {
		format = "치명타 적중 후 다음 3회의 공격 동안 공격 속도가 %s%%만큼 증가합니다.",
		10, -- 1
		15, -- 2
		20, -- 3
		25, -- 4
		30, -- 5
	}
	talent = tree.talents[11].info
	talent.name = "강인함"
	talent.tips = {
		format = "장비 착용으로 인한 방어도가 %s%%만큼 증가하고 감속 효과의 지속 시간이 %s%%만큼 감소합니다.",
		table_cache_80, -- 1
		table_cache_104, -- 2
		table_cache_48, -- 3
		{8, 40}, -- 4
		table_cache_42, -- 5
	}
	talent = tree.talents[12].info
	talent.name = "무기 토템 연마"
	talent.tips = {
		format = "질풍의 토템으로 상승하는 근접 전투력이 %s%%만큼 증가하고 불꽃의 토템으로 증가하는 피해가 %s%%만큼 증가합니다.",
		table_cache_89, -- 1
		{30, 12}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "정기의 무기"
	talent.tips = {
		"일정 확률로 적의 근접 공격을 무기로 막아내고 근접 공격으로 인한 위협 수준이 30%만큼 감소합니다.", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "자연의 무기"
	talent.tips = {
		format = "대지의 무기의 피해가 %s%%만큼 질풍의 무기의 효과가 %s%%만큼 증가하고 불꽃의 무기, 냉기의 무기 피해가 %s%%만큼 증가합니다.",
		{7, 13, 5}, -- 1
		{14, 27, 10}, -- 2
		{20, 40, 15}, -- 3
	}
	talent = tree.talents[15].info
	talent.name = "기민한 정신"
	talent.tips = {
		format = "즉시 시전 주문에 소비되는 마나를 %s%%만큼 감소하고 주문 및 효과에 의한 공격력과 치유량이 전투력의 %s%%만큼 증가합니다.",
		table_cache_80, -- 1
		table_cache_104, -- 2
		table_cache_48, -- 3
	}
	talent = tree.talents[16].info
	talent.name = "무기 전문화"
	talent.tips = {
		format = "모든 무기의 피해가 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "쌍수 무기 전문화"
	talent.tips = {
		format = "쌍수 무기 사용 시 적중률이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "쌍수 무기"
	talent.tips = {
		"두 가지의 한손 무기를 동시에 착용할 수 있습니다.", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "폭풍의 일격"
	talent.tips = {
		{ -- 1
			table_cache_97,
			{ left = "즉시 시전", right = "10초 후 재사용 가능" }, -- 2
			table_cache_38,
			{ left = "즉시 양쪽 손에 장착한 무기로 적을 공격합니다. 대상에게 입히는 다음 2회 동안의 모든 자연 피해가 20%만큼 증가합니다. 12초 동안 지속됩니다." }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "해방된 분노"
	talent.tips = {
		format = "근접 치명타 적중 시 20미터 반경 내의 모든 파티원의 근접 전투력을 %s%%만큼 증가시킵니다. 10초 동안 지속됩니다.",
		multiplier = 2,
	}
	talent = tree.talents[21].info
	talent.name = "주술의 분노"
	talent.tips = {
		{ -- 1
			{ left = "즉시 시전", right = "2분 후 재사용 가능" }, -- 1
			{ left = "받는 모든 피해가 30%만큼 감소하고 근접 공격 성공 시 일정 확률로 전투력의 30%에 해당하는 마나를 회복합니다. 15초 동안 지속됩니다." }, -- 2
		},
	}
	tree = data[3]
	tree.info.name = "복원"
	talent = tree.talents[1].info
	talent.name = "치유의 물결 연마"
	talent.tips = {
		format = "치유의 물결의 시전 시간이 0.%s초만큼 단축됩니다.",
	}
	talent = tree.talents[2].info
	talent.name = "해일의 집중"
	talent.tips = {
		format = "치유 계열 주문에 소비되는 마나가 %s%%만큼 감소합니다.",
	}
	talent = tree.talents[3].info
	talent.name = "윤회 연마"
	talent.tips = {
		format = "윤회 주문의 재사용 대기시간이 %s분만큼 단축되고 윤회 사용 시 부활할 때의 생명력과 마나가 %s%%만큼 증가합니다.",
		table_cache_47, -- 1
		table_cache_25, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "선인의 치유력"
	talent.tips = {
		format = "치유 주문이 극대화 효과를 발휘했을 때 15초동안 대상의 방어도를 %s%%만큼 증가시킵니다.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "토템 집중"
	talent.tips = {
		format = "토템 주문에 소비되는 마나가 %s%%만큼 감소합니다.",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "자연의 가르침"
	talent.tips = {
		format = "근접 공격 및 주문의 적중률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[7].info
	talent.name = "치유의 집중"
	talent.tips = {
		format = "모든 치유 계열 주문 시전 시 %s%%의 확률로 피해를 입어도 마법 시전 방해를 받지 않습니다.",
		multiplier = 14,
	}
	talent = tree.talents[8].info
	talent.name = "토템 전문화"
	talent.tips = {
		"아군에게 영향을 주는 토템의 효과 범위가 30미터로 증가합니다.", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "치유의 은총"
	talent.tips = {
		format = "치유 주문의 위협 수준이 %s%%만큼 감소하고 자신의 주문이 무효화될 확률이 %s%%만큼 감소합니다.",
		table_cache_57, -- 1
		table_cache_22, -- 2
		table_cache_99, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "회복의 토템"
	talent.tips = {
		format = "마나샘 토템, 치유의 토템의 효과가 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "해일의 깨달음"
	talent.tips = {
		format = "치유와 번개 계열 주문이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[12].info
	talent.name = "치유의 길"
	talent.tips = {
		format = "치유의 물결 주문 사용 시 %s%%의 확률로 뒤이은 치유의 물결의 효과가 15초 동안 6%%만큼 증가합니다. 효과는 3번까지 중복될 수 있습니다.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "자연의 신속함"
	talent.tips = {
		{ -- 1
			table_cache_56,
			{ left = "활성화되면 시전 시간이 10초 미만인 다음 자연계 주문은 시전 시간 없이 바로 발동됩니다." }, -- 2
		},
	}
	talent = tree.talents[14].info
	talent.name = "흐트러짐 없는 마음"
	talent.tips = {
		format = "주술사에게 걸린 침묵과 주문방해 효과의 지속시간이 %s%%만큼 단축됩니다. 이 효과는 다른 지속 시간 감소 효과와 중복 적용되지 않습니다.",
		multiplier = 10,
	}
	talent = tree.talents[15].info
	talent.name = "심신의 정화"
	talent.tips = {
		format = "치유 주문의 효과가 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "마나 해일 토템"
	talent.tips = {
		{ -- 1
			table_cache_43,
			{ left = "즉시 시전", right = "5분 후 재사용 가능" }, -- 2
			{ left = "도구: 물의 토템" }, -- 3
			{ left = "시전자의 위치에 5의 생명력을 지닌 마나 해일 토템을 소환하여 주위 20미터 반경 내의 파티원의 마나를 매 3초마다 전체 마나의 6%만큼 회복시킵니다. 12초 동안 지속됩니다." }, -- 4
		},
	}
	talent = tree.talents[17].info
	talent.name = "자연의 수호자"
	talent.tips = {
		format = "공격을 받아 생명력이 30%% 미만으로 감소할 시 %s%%의 확률로 전체 생명력의 10%%만큼을 회복하고 대상에 대한 위협 수준이 감소합니다. 재사용 대기시간 5초.",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "자연의 축복"
	talent.tips = {
		format = "주문의 공격력과 치유량이 지능의 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[19].info
	talent.name = "연쇄 치유 연마"
	talent.tips = {
		format = "연쇄 치유 주문의 치유 효과가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[20].info
	talent.name = "대지의 보호막"
	talent.tips = {
		{ -- 1
			table_cache_30,
			table_cache_34,
			{ left = "대상을 대지의 보호막으로 감싸 피해를 입을 시 30%의 확률로 주문 시전이 지연되지 않도록 하고 보호막이 걸린 대상이 근접 공격을 받을 시 150의 생명력을 회복하도록 합니다. 이 효과는 몇초마다 한번씩만 발휘됩니다. 6회 사용가능하며 10분 동안 지속됩니다. 대지의 보호막은 동시에 한 대상에게만 걸 수 있으며 주술사의 보호막은 대상마다 동시에 하나만 효과를 발휘할 수 있습니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2 레벨: 마나 745, 생명력 205 만큼 회복" }, -- 6
			{ left = " 3 레벨: 마나 900, 생명력 270 만큼 회복" }, -- 7
		},
	}
	data = Talented_Data.MAGE
	-- data.name = "마법사"
	tree = data[1]
	tree.info.name = "비전"
	talent = tree.talents[1].info
	talent.name = "신비한 미묘함"
	talent.tips = {
		format = "자신의 모든 주문에 대한 대상의 마법 저항력이 %s만큼 감소하고 비전 주문으로 발생되는 위협 수준이 %s%%만큼 감소합니다.",
		{5, 20}, -- 1
		table_cache_12, -- 2
	}
	talent = tree.talents[2].info
	talent.name = "신비한 집중"
	talent.tips = {
		format = "적이 자신의 비전 마법을 저항할 확률이 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "신비한 화살 연마"
	talent.tips = {
		format = "신비한 화살 시전 시 %s%%의 확률로 마법 시전 방해를 받지 않습니다.",
		multiplier = 20,
	}
	talent = tree.talents[4].info
	talent.name = "마법봉류 전문화"
	talent.tips = {
		format = "마법봉의 공격력이 %s%%만큼 증가합니다.",
		13, -- 1
		25, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "마법 흡수"
	talent.tips = {
		format = "모든 마법 저항력이 %s만큼 증가하고 주문을 저항할 때마다 전체 마나의 %s%%에 달하는 마나를 회복합니다.%s1초마다 1번씩만 발동됩니다.",
		{2, 1, " "}, -- 1
		{4, 2, " "}, -- 2
		{6, 3, " "}, -- 3
		{8, 4, " "}, -- 4
		{10, 5, ""}, -- 5
	}
	talent = tree.talents[6].info
	talent.name = "신비한 정신집중"
	talent.tips = {
		format = "공격 마법이 대상에 적중한 이후 %s%%의 확률로 정신 집중 상태를 취하게 됩니다. 정신 집중 상태에서는 다음 공격 주문의 마나 소비량이 100%%만큼 감소됩니다.%s",
		table_cache_5, -- 1
		{4, ""}, -- 2
		{6, ""}, -- 3
		{8, "."}, -- 4
		{10, ""}, -- 5
	}
	talent = tree.talents[7].info
	talent.name = "마법의 조화"
	talent.tips = {
		format = "마법 증폭과 마법 감쇠의 효과가 %s%%만큼 증가합니다.",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "신비한 충돌"
	talent.tips = {
		format = "신비한 폭발, 비전 작열이 극대화 효과를 발휘할 확률이 추가로 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "신비한 인내력"
	talent.tips = {
		"지능의 100%만큼 방어도가 증가합니다.", -- 1
	}
	talent = tree.talents[10].info
	talent.name = "마나 보호막 연마"
	talent.tips = {
		format = "마나 보호막 사용 시 피해를 입었을 때 감소되는 마나량이 %s%%만큼 감소합니다.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "마법 차단 연마"
	talent.tips = {
		format = "마법 차단의 대상이 되는 적을 %s%%의 확률로 4초 동안 침묵시킵니다.",
		multiplier = 50,
	}
	talent = tree.talents[12].info
	talent.name = "신비한 명상"
	talent.tips = {
		format = "시전 중에도 평소의 %s%%에 달하는 속도로 마나가 회복됩니다.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "점멸 연마"
	talent.tips = {
		format = "점멸 시전 후 2초 동안 모든 공격과 주문에 적중당할 확률이 %s%%만큼 감소합니다.%s",
		{25, ""}, -- 1
		{50, " ."}, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "냉정"
	talent.tips = {
		{ -- 1
			table_cache_102,
			{ left = "활성화되면 시전 시간이 10초 미만인 다음 주문은 시전 시간 없이 바로 발동됩니다." }, -- 2
		},
	}
	talent = tree.talents[15].info
	talent.name = "신비한 정신"
	talent.tips = {
		format = "지능이 %s%%만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[16].info
	talent.name = "굴절의 망토"
	talent.tips = {
		format = "받는 모든 피해가 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "신비한 불안정성"
	talent.tips = {
		format = "주문 공격력이 증가하고 공격 주문이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[18].info
	talent.name = "신비한 잠재력"
	talent.tips = {
		format = "정신 집중 상태일 때 사용하는 모든 주문이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[19].info
	talent.name = "신비한 화살 강화"
	talent.tips = {
		format = "신비한 화살 사용 시 주문 공격력 증가 효과를 %s%%만큼 추가로 받습니다. 하지만 마나 소비량이 %s%%만큼 증가합니다.",
		table_cache_69, -- 1
		table_cache_84, -- 2
		{45, 6}, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "신비의 마법 강화"
	talent.tips = {
		{ -- 1
			table_cache_102,
			{ left = "활성화되면 30%만큼의 마나를 더 소비하여 30%의 추가 피해를 입힙니다. 이 효과는 15초 동안 지속됩니다." }, -- 2
		},
	}
	talent = tree.talents[21].info
	talent.name = "주문 강화"
	talent.tips = {
		format = "모든 주문이 치명타로 적중할 경우 보너스 피해가 %s%%만큼 증가합니다.",
		multiplier = 25,
	}
	talent = tree.talents[22].info
	talent.name = "정신 단련"
	talent.tips = {
		format = "주문 공격력이 최대 총 지능의 %s%%까지 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[23].info
	talent.name = "감속"
	talent.tips = {
		{ -- 1
			{ left = "마나 627", right = "유효거리 30미터" }, -- 1
			table_cache_34,
			{ left = "대상의 이동 속도를 50%만큼 감소시키고 원거리 공격 속도를 50%만큼 감소시키며 시전 시간을 50%만큼 지연시킵니다. 15초 동안 지속됩니다. 동시에 한 대상에게만 걸 수 있습니다." }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "화염"
	talent = tree.talents[1].info
	talent.name = "화염구 연마"
	talent.tips = {
		format = "화염구의 시전 시간이 0.%s초만큼 단축됩니다.",
	}
	talent = tree.talents[2].info
	talent.name = "충돌"
	talent.tips = {
		format = "화염 주문 적중 시 %s%%의 확률로 적을 2초 동안 기절시킵니다.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "작열"
	talent.tips = {
		format = "화염 주문이 치명타로 적중했을 때, 4초에 걸쳐 마법 공격력의 %s%%에 해당하는 추가 피해를 입힙니다.",
		multiplier = 8,
	}
	talent = tree.talents[4].info
	talent.name = "화염 발사"
	talent.tips = {
		format = "화염 주문의 사정 거리가 %s미터만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "화염 작열 연마"
	talent.tips = {
		format = "화염 작열의 재사용 대기시간이 %s초만큼 단축됩니다.",
		multiplier = 0.5,
	}
	talent = tree.talents[6].info
	talent.name = "소각"
	talent.tips = {
		format = "화염 작열과 불태우기가 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "불기둥 연마"
	talent.tips = {
		format = "불기둥이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "불덩이 작렬"
	talent.tips = {
		{ -- 1
			{ left = "마나 121", right = "사정거리 35미터" }, -- 1
			{ left = "시전시간 6초" }, -- 2
			{ left = "엄청난 크기의 불덩이를 던져 148~ 195의 화염 피해를 입히고 추가로 12초에 걸쳐 총 56의 화염 피해를 입힙니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 150 마나, 화염피해 193-250, 12초에 걸쳐 72의 추가 화염피해" }, -- 6
			{ left = " 3레벨: 195 마나, 화염피해 270-343, 12초에 걸쳐 96의 추가 화염피해" }, -- 7
			{ left = " 4레벨: 240 마나, 화염피해 347-437, 12초에 걸쳐 124의 추가 화염피해" }, -- 8
			{ left = " 5레벨: 285 마나, 화염피해 427-536, 12초에 걸쳐 156의 추가 화염피해" }, -- 9
			{ left = " 6레벨: 335 마나, 화염피해 525-654, 12초에 걸쳐 188의 추가 화염피해" }, -- 10
			{ left = " 7레벨: 385 마나, 화염피해 625-776, 12초에 걸쳐 228의 추가 화염피해" }, -- 11
			{ left = " 8레벨: 440 마나, 화염피해 743-918, 12초에 걸쳐 268의 추가 화염피해" }, -- 12
			{ left = " 9레벨: 460 마나, 화염피해 877-1087, 12초에 걸쳐 324의 추가 화염피해" }, -- 13
		},
	}
	talent = tree.talents[9].info
	talent.name = "불타는 영혼"
	talent.tips = {
		format = "화염 주문 사용 시 피해를 입어도 %s%%의 확률로 시전 시간이 지연되지 않으며 화염 주문으로 발생되는 위협 수준이 %s%%만큼 감소합니다.",
		{35, 5}, -- 1
		{70, 10}, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "불태우기 연마"
	talent.tips = {
		format = "불태우기 사용 시 %s%%의 확률로 대상이 받는 화염 피해를 30초 동안 3%%만큼 증가시킵니다. 최대 5번까지 중복됩니다.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "타오르는 보호막"
	talent.tips = {
		format = "화염계 수호가 활성화되어 있는 동안 %s%%의 확률로 화염 주문을 반사합니다. 추가로 타오르는 갑옷은 50%% 확률로 원거리 및 주문 공격에 영향을 줍니다.",
		multiplier = 10,
	}
	talent = tree.talents[12].info
	talent.name = "원소 마법의 대가"
	talent.tips = {
		format = "화염 및 냉기 주문이 극대화 효과를 발휘할 경우 해당 주문 마나 소비량의 %s%%만큼을 다시 돌려받습니다.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "불장난"
	talent.tips = {
		format = "모든 주문 공격력이 %s%%만큼 증가하지만 받는 모든 주문 피해도 %s%%만큼 증가합니다.",
		table_cache_81, -- 1
		table_cache_44, -- 2
		table_cache_3, -- 3
	}
	talent = tree.talents[14].info
	talent.name = "화염 결집"
	talent.tips = {
		format = "화염 주문이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "화염 폭풍"
	talent.tips = {
		{ -- 1
			{ left = "마나 215" }, -- 1
			table_cache_92,
			{ left = "불의 파도가 시전자 주위로 뿜어져 나와 모든 적을 불길로 감싸 160~ 192의 화염 피해를 입히고 6초 동안 멍해지게 만듭니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 레벨2: 270 마나, 화염피해 201-241" }, -- 6
			{ left = " 레벨3: 355 마나, 화염피해 277-329" }, -- 7
			{ left = " 레벨4: 450 마나, 화염피해 365-433" }, -- 8
			{ left = " 레벨5: 545 마나, 화염피해 462-544" }, -- 9
			{ left = " 레벨6: 595 마나, 화염피해 640-754" }, -- 10
		},
	}
	talent = tree.talents[16].info
	talent.name = "불타는 속도"
	talent.tips = {
		format = "근접 및 원거리 공격에 적중당했을 경우 %s%%의 확률로 8초 동안 이동 속도가 50%%만큼 증가하고 모든 이동 방해 효과를 제거합니다.",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "화염 마법 강화"
	talent.tips = {
		format = "화염 계열 주문의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "광기의 화염술사"
	talent.tips = {
		format = "화염 주문의 극대화 적중률이 %s%%만큼 추가로 증가하고 마나 소비량이 %s%%만큼 감소합니다.",
		table_cache_81, -- 1
		table_cache_44, -- 2
		table_cache_3, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "발화"
	talent.tips = {
		{ -- 1
			table_cache_102,
			{ left = "활성화되면 화염 공격 주문이 적중할 때마다 화염 공격 주문이 극대화 효과를 발휘할 확률이 10%만큼 증가합니다. 3회 극대화 효과를 발휘할 때까지 지속됩니다." }, -- 2
		},
	}
	talent = tree.talents[20].info
	talent.name = "타오르는 격노"
	talent.tips = {
		format = "생명력이 20%% 미만인 적에 대해 모든 계열의 주문 공격력이 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[21].info
	talent.name = "화염구 강화"
	talent.tips = {
		format = "화염구 사용 시 주문 공격력 증가 효과를 %s%%만큼 추가로 받습니다.",
		multiplier = 3,
	}
	talent = tree.talents[22].info
	talent.name = "용의 숨결"
	talent.tips = {
		{ -- 1
			{ left = "마나 475" }, -- 1
			{ left = "즉시 시전", right = "20초 후 재사용 가능" }, -- 2
			{ left = "시전자 전방의 적에게 382-442의 화염 피해를 입히고 3초동안 방황하게 만듭니다. 직접 피해를 입으면 효과가 사라집니다. 사용하면 자동 공격을 중단합니다" }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 575 마나, 화염피해 463-536" }, -- 6
			{ left = " 3레벨: 660 마나, 화염피해 584-677" }, -- 7
			{ left = " 4레벨: 700 마나, 화염피해 680-790" }, -- 8
		},
	}
	tree = data[3]
	tree.info.name = "냉기"
	talent = tree.talents[1].info
	talent.name = "냉기의 수호"
	talent.tips = {
		format = "냉기 갑옷과 얼음 갑옷으로 증가하는 방어도와 저항력이 %s%%만큼 증가합니다. 추가로 냉기계 수호가 활성화되어 있는 동안 %s%%의 확률로 냉기 주문을 반사합니다.",
		table_cache_64, -- 1
		table_cache_19, -- 2
	}
	talent = tree.talents[2].info
	talent.name = "얼음 화살 연마"
	talent.tips = {
		format = "얼음 화살의 시전 시간이 0.%s초만큼 단축됩니다.",
	}
	talent = tree.talents[3].info
	talent.name = "원소의 정밀함"
	talent.tips = {
		format = "적이 자신의 냉기 및 화염 주문을 저항할 확률과 냉기 및 화염 주문의 마나 소비량이 %s%%만큼 감소합니다.",
	}
	talent = tree.talents[4].info
	talent.name = "얼음 파편"
	talent.tips = {
		format = "냉기 주문이 치명타로 적중할 경우 보너스 피해가 %s%%만큼 증가합니다.",
		multiplier = 20,
	}
	talent = tree.talents[5].info
	talent.name = "동상"
	talent.tips = {
		format = "%s%%의 확률로 빙결 효과에 걸린 적을 5초 동안 움직이지 못하도록 만듭니다.",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "얼음 회오리 연마"
	talent.tips = {
		format = "얼음 회오리의 재사용 대기시간이 %s초만큼 단축됩니다.",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "영구 결빙"
	talent.tips = {
		format = "빙결 효과의 지속시간을 %s초만큼 증가시키고 대상의 이동 속도를 추가로 %s%%만큼 더 감소시킵니다.",
		table_cache_10, -- 1
		{2, 7}, -- 2
		{3, 10}, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "사무치는 냉기"
	talent.tips = {
		format = "냉기 주문의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "얼음의 핏줄"
	talent.tips = {
		{ -- 1
			{ left = "마나 67" }, -- 1
			table_cache_102,
			{ left = "주문 시전을 빠르게 하여, 주문 시전 가속도를 20%만큼 증가시키고 시전 중 피해를 입어도 100%의 확률로 마법 시전 방해를 받지 않습니다. 20초 동안 지속됩니다." }, -- 3
		},
	}
	talent = tree.talents[10].info
	talent.name = "눈보라 연마"
	talent.tips = {
		format = "눈보라 주문에 피해를 입을 때 빙결에 걸리도록 합니다. 빙결 효과는 적의 이동 속도를 %s%%만큼 감소시킵니다. 1.50초 동안 지속됩니다.",
		30, -- 1
		50, -- 2
		65, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "혹한의 손길"
	talent.tips = {
		format = "얼음 화살, 얼음창, 눈보라의 사정거리와 얼음 회오리, 냉기 돌풍의 범위가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[12].info
	talent.name = "냉기계 정신집중"
	talent.tips = {
		format = "냉기 마법을 시전하는 데 필요한 마나가 %s%%만큼 감소하고 냉기 주문으로 발생되는 위협 수준이 %s%%만큼 감소합니다.",
		{5, 4}, -- 1
		{10, 7}, -- 2
		table_cache_64, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "산산조각"
	talent.tips = {
		format = "얼어붙은 적을 주문으로 공격했을 때 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.%s",
		{10, "."}, -- 1
		{20, ""}, -- 2
		{30, "."}, -- 3
		{40, ""}, -- 4
		{50, ""}, -- 5
	}
	talent = tree.talents[14].info
	talent.name = "얼어붙은 핵"
	talent.tips = {
		format = "받는 냉기 및 화염 피해가 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "매서운 한파"
	talent.tips = {
		{ -- 1
			table_cache_2,
			{ left = "최근 사용한 모든 냉기 주문의 재사용 대기시간을 초기화시켜 바로 사용할 수 있도록 합니다." }, -- 2
		},
	}
	talent = tree.talents[16].info
	talent.name = "냉기 돌풍 연마"
	talent.tips = {
		format = "냉기 돌풍의 공격력이 %s%%만큼 증가합니다.",
		15, -- 1
		25, -- 2
		35, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "빙하"
	talent.tips = {
		format = "냉기 돌풍, 매서운 한파, 얼음 보호막, 얼음 방패의 재사용 대기시간이 %s%%만큼 단축됩니다.",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "혹한의 추위"
	talent.tips = {
		format = "냉기 공격 주문 사용 시 %s%%의 확률로 혹한의 추위 효과를 얻게 됩니다. 혹한의 추위 효과는 15초 동안 냉기 주문이 극대화 효과를 발휘할 확률을 2%%만큼 증가시킵니다. 효과는 5번까지 중복될 수 있습니다.",
		multiplier = 20,
	}
	talent = tree.talents[19].info
	talent.name = "얼음 보호막"
	talent.tips = {
		{ -- 1
			{ left = "마나 305" }, -- 1
			table_cache_92,
			{ left = "자신 주위에 즉시 보호막을 생성하여 454의 피해를 흡수합니다. 1분 동안 지속됩니다. 보호막이 지속되는 동안은 마법이 취소되지 않습니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 568의 피해 흡수" }, -- 6
			{ left = " 3레벨: 699의 피해 흡수" }, -- 7
			{ left = " 4레벨: 842의 피해 흡수" }, -- 8
			{ left = " 5레벨: 951의 피해 흡수" }, -- 9
			{ left = " 6레벨: 1075의 피해 흡수" }, -- 10
		},
	}
	talent = tree.talents[20].info
	talent.name = "북극의 바람"
	talent.tips = {
		format = "냉기 공격력이 %s%%만큼 증가하고 근접 및 원거리 공격에 적중당할 확률이 %s%%만큼 감소합니다.",
		table_cache_81, -- 1
		table_cache_44, -- 2
		table_cache_3, -- 3
		table_cache_8, -- 4
		table_cache_14, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "얼음 화살 강화"
	talent.tips = {
		format = "얼음 화살 사용 시 주문 공격력 증가 효과를 %s%%만큼 추가로 받고 치명타 적중률이 %s%%만큼 추가로 증가합니다.",
		table_cache_59, -- 1
		table_cache_9, -- 2
		table_cache_21, -- 3
		table_cache_50, -- 4
		table_cache_18, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "물의 정령 소환"
	talent.tips = {
		{ -- 1
			{ left = "마나 358" }, -- 1
			table_cache_102,
			{ left = "45초 동안 시전자의 명령을 따르는 물의 정령을 소환합니다." }, -- 3
		},
	}
	data = Talented_Data.PRIEST
	-- data.name = "사제"
	tree = data[1]
	tree.info.name = "수양"
	talent = tree.talents[1].info
	talent.name = "굳은 의지"
	talent.tips = {
		format = "기절과 공포, 침묵 효과에 저항할 확률이 추가로 %s%%만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "마법봉류 전문화"
	talent.tips = {
		format = "마법봉의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[3].info
	talent.name = "무언의 결심"
	talent.tips = {
		format = "신성 및 수양 주문으로 인한 위협 수준이 %s%%만큼 감소하고 자신의 주문이 무효화 될 확률이 추가로 %s%%만큼 감소합니다.",
		table_cache_8, -- 1
		table_cache_87, -- 2
		table_cache_53, -- 3
		table_cache_13, -- 4
		table_cache_25, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "신의 권능: 인내 연마"
	talent.tips = {
		format = "신의 권능: 인내와 인내의 기원의 효과가 %s%%만큼 증가합니다.",
		multiplier = 15,
	}
	talent = tree.talents[5].info
	talent.name = "신의 권능: 보호막 연마"
	talent.tips = {
		format = "신의 권능: 보호막으로 흡수되는 피해가 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "헌신"
	talent.tips = {
		format = "근접 및 원거리 치명타 공격을 받았을 때 %s%%의 확률로 6초 동안 집중력 효과가 활성화됩니다. 집중력의 효과를 받을 땐 받는 피해로 인해 시전 시간이 지연되지 않으며 방해 효과에 저항할 확률이 %s%%만큼 증가합니다.",
		table_cache_61, -- 1
		table_cache_33, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "사면"
	talent.tips = {
		format = "마법 무효화, 질병 치료, 질병 해제, 대규모 무효화에 소비되는 마나가 %s%%만큼 감소합니다.",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "내면의 집중력"
	talent.tips = {
		{ -- 1
			table_cache_102,
			{ left = "활성화되면 다음 주문에 소비되는 마나를 100%만큼 감소시키고 해당 주문이 극대화 효과를 낼 수 있는 마법이라면 25%의 확률로 극대화 효과를 발휘합니다." }, -- 2
		},
	}
	talent = tree.talents[9].info
	talent.name = "명상"
	talent.tips = {
		format = "시전 중에도 평소의 %s%%에 달하는 속도로 마나가 회복됩니다.",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "내면의 열정 연마"
	talent.tips = {
		format = "내면의 열정으로 향상되는 방어도가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "마음의 기민함"
	talent.tips = {
		format = "즉시 시전 주문에 소비되는 마나를 %s%%만큼 감소시킵니다.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "마나 연소 연마"
	talent.tips = {
		format = "마나 연소의 시전 시간이 %s초만큼 단축됩니다.",
		multiplier = 0.5,
	}
	talent = tree.talents[13].info
	talent.name = "정신력"
	talent.tips = {
		format = "최대 마나가 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "천상의 정신"
	talent.tips = {
		{ -- 1
			{ left = "마나 250", right = "유효거리 30미터" }, -- 1
			table_cache_34,
			{ left = "신성한 힘이 대상을 감싸 30분동안 정신력을 17만큼 증가시킵니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 마나 350, 정신력 23 증가" }, -- 6
			{ left = " 3레벨: 마나 450, 정신력 33 증가" }, -- 7
			{ left = " 4레벨: 마나 555, 정신력 40 증가" }, -- 8
			{ left = " 5레벨: 마나 680, 정신력 50 증가" }, -- 9
		},
	}
	talent = tree.talents[15].info
	talent.name = "천상의 정신 연마"
	talent.tips = {
		format = "천상의 정신, 정신력의 기원 사용 시 대상의 주문 공격력 및 치유량이 대상의 전체 정신력의 %s%%에 해당하는 만큼 추가로 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "집중된 마력"
	talent.tips = {
		format = "성스러운 일격, 정신 분열, 대규모 무효화 주문의 적중률이 %s%%만큼 증가합니다. 추가로, 대규모 무효화의 시전 시간이 %s초만큼 단축됩니다.",
		{2, 0.5}, -- 1
		{4, 1}, -- 2
	}
	talent = tree.talents[17].info
	talent.name = "의지의 힘"
	talent.tips = {
		format = "주문 공격력이 %s%%만큼, 공격 주문이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
		table_cache_81, -- 1
		table_cache_44, -- 2
		table_cache_3, -- 3
		table_cache_8, -- 4
		table_cache_14, -- 5
	}
	talent = tree.talents[18].info
	talent.name = "의지 집중"
	talent.tips = {
		format = "치명타 공격을 받은 후 받는 모든 피해를 %s%%만큼 감소시키고 치유 효과를 %s%%만큼 증가시켜주는 의지 집중 효과를 얻습니다. 3번까지 중복됩니다. 8초동안 지속됩니다.",
		table_cache_10, -- 1
		{3, 7}, -- 2
		table_cache_57, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "마력 주입"
	talent.tips = {
		{ -- 1
			{ left = "마나 419", right = "유효거리 30미터" }, -- 1
			table_cache_102,
			{ left = "대상에게 마력을 주입하여 주문 시전 속도를 20%만큼 증가시키고 주문을 시전하는 데 필요한 마나가 20%만큼 감소시킵니다. 15초 동안 지속됩니다." }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "반사의 보호막"
	talent.tips = {
		format = "신의 권능: 보호막으로 흡수된 피해의 %s%%에 해당하는 피해를 공격자에게 되돌립니다. 이로 인한 피해는 위협 수준을 발생시키지 않습니다.",
		multiplier = 10,
	}
	talent = tree.talents[21].info
	talent.name = "깨달음"
	talent.tips = {
		format = "총 체력, 지능, 정신력이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[22].info
	talent.name = "고통 억제"
	talent.tips = {
		{ -- 1
			{ left = "", right = "유효 거리 40미터" }, -- 1
			table_cache_88,
			{ left = "시전 즉시 우호적인 대상의 위협 수준이 5%만큼 감소되고, 8초 동안 모든 받는 피해가 40%만큼 감소되며 무효화에 대한 저항력이 65%만큼 증가합니다." }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "신성"
	talent = tree.talents[1].info
	talent.name = "치유의 정신집중"
	talent.tips = {
		format = "모든 치유 주문 시전 시 %s%%의 확률로 마법 시전 방해를 받지 않습니다.",
		multiplier = 35,
	}
	talent = tree.talents[2].info
	talent.name = "소생 연마"
	talent.tips = {
		format = "소생으로 치유되는 생명력이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[3].info
	talent.name = "신성 마법 전문화"
	talent.tips = {
		format = "신성 주문이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[4].info
	talent.name = "주문 수호"
	talent.tips = {
		format = "모든 주문으로부터 받는 피해가 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "신의 격노"
	talent.tips = {
		format = "성스러운 일격과 신성한 불꽃, 치유, 상급 치유의 시전 시간이 0.%s초만큼 단축됩니다.",
	}
	talent = tree.talents[6].info
	talent.name = "신성한 폭발"
	talent.tips = {
		{ -- 1
			{ left = "마나 185" }, -- 1
			table_cache_34,
			{ left = "시전자의 주위를 감싸고 있는 신성한 빛을 폭발시켜 10미터 반경의 모든 적에게 29-34의 신성 피해를 입히고 10미터 반경 내의 파티원의 생명력을 54-63만큼 치유합니다. 이 주문은 위협 수준을 생성하지 않습니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨:  마나 290, 52-61 신성 피해, 89-101 생명력 치유" }, -- 6
			{ left = " 3레벨:  마나 400, 79-92 신성 피해, 124-143 생명력 치유" }, -- 7
			{ left = " 4레벨:  마나 520, 110-127 신성 피해, 165-192 생명력 치유" }, -- 8
			{ left = " 5레벨:  마나 635, 146-168 신성 피해, 239-276 생명력 치유" }, -- 9
			{ left = " 6레벨:  마나 750, 188-217 신성 피해, 307-356 생명력 치유" }, -- 10
			{ left = " 7레벨:  마나 875, 244-283 신성 피해, 386-448 생명력 치유" }, -- 11
		},
	}
	talent = tree.talents[7].info
	talent.name = "축복받은 회복력"
	talent.tips = {
		format = "근접 및 원거리 치명타 공격을 받았을 때 6초에 걸쳐 받은 피해의 %s%%에 해당하는 생명력을 회복합니다.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "신의 계시"
	talent.tips = {
		format = "순간 치유, 치유, 상급 치유, 결속의 치유, 치유의 기원, 치유의 마법진 주문이 극대화 효과를 발휘했을 때 15초 동안 대상의 방어도를 %s%%만큼 증가시킵니다.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[9].info
	talent.name = "신성한 테두리"
	talent.tips = {
		format = "성스러운 일격, 신성한 불꽃 주문의 사정거리와 치유의 기원, 신성한 폭발, 치유의 마법진의 적용 반경이 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "치유 연마"
	talent.tips = {
		format = "하급 치유, 치유, 상급 치유에 소비되는 마나가 %s%%만큼 감소됩니다.",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "타오르는 빛"
	talent.tips = {
		format = "성스러운 일격 및 신성한 불꽃의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "치유의 기원 연마"
	talent.tips = {
		format = "치유의 기원, 회복의 기원에 소비되는 마나가 %s%%만큼 감소합니다.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "구원의 영혼"
	talent.tips = {
		"총 정신력이 5%만큼 증가하며 사제가 생명력을 모두 잃으면 15초 동안 구원의 영혼으로 변합니다. 구원의 영혼은 이동하거나 공격하거나 공격받거나 어떠한 주문이나 효과의 대상이 될 수 없습니다. 이 형태에서는 모든 치유 주문을 마나 소비 없이 사용할 수 있습니다. 효과가 종료되면 사제는 죽습니다.", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "영혼의 길잡이"
	talent.tips = {
		format = "모든 주문 및 효과에 의한 공격력과 치유량을 최대 총 정신력의 %s%%까지 증가시킵니다.",
		multiplier = 5,
	}
	talent = tree.talents[15].info
	talent.name = "빛의 쇄도"
	talent.tips = {
		format = "주문이 극대화 효과를 발휘했을 시 %s%%의 확률로 다음 성스러운 일격 주문은 시전 시간 없이 바로 발동되며 마나를 소비하지 않습니다. 하지만 이 때 극대화 효과는 발휘되지 않습니다. 효과는 10초 동안 지속됩니다.",
		multiplier = 25,
	}
	talent = tree.talents[16].info
	talent.name = "영혼의 치유"
	talent.tips = {
		format = "자신의 모든 치유 주문으로 회복되는 생명력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "신성한 정신집중"
	talent.tips = {
		format = "순간 치유, 결속의 치유, 상급 치유 주문을 시전한 이후 %s%%의 확률로 정신 집중 상태를 취하게 됩니다. 정신 집중 상태에서는 다음 순간 치유, 결속의 치유, 상급 치유 주문의 마나 소비량이 100%%만큼 감소됩니다.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "빛샘"
	talent.tips = {
		{ -- 1
			{ left = "마나 225", right = "유효거리 40미터" }, -- 1
			{ left = "시전시간 1.5초", right = "재사용 대기시간 6분" }, -- 2
			{ left = "사제 주위에 성스러운 빛샘을 생성합니다. 파티원이나 공격대원이 빛샘을 클릭하면 6초에 걸쳐 801의 생명력을 회복할 수 있습니다. 피해를 입게 되면 효과가 취소됩니다. 빛샘은 5번 사용하거나 3분이 지나면 사라집니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨:  마나 295, 1164 생명력" }, -- 6
			{ left = " 3레벨:  마나 365, 1599 생명력" }, -- 7
			{ left = " 4레벨:  마나 445, 2361 생명력" }, -- 8
		},
	}
	talent = tree.talents[19].info
	talent.name = "축복받은 탄력성"
	talent.tips = {
		format = "치명타 공격을 받을 시 %s%%의 확률로 6초 내에 다시 치명타 공격에 적중당하지 않도록 보호받습니다.",
		multiplier = 20,
	}
	talent = tree.talents[20].info
	talent.name = "치유 강화"
	talent.tips = {
		format = "상급 치유 사용 시 주문 치유량 증가 효과를 %s%%만큼, 순간 치유 및 결속의 치유 사용 시 주문 치유량 증가 효과를 %s%%만큼 추가로 받습니다.",
		table_cache_9, -- 1
		table_cache_50, -- 2
		table_cache_15, -- 3
		table_cache_24, -- 4
		table_cache_7, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "치유의 마법진"
	talent.tips = {
		{ -- 1
			table_cache_30,
			table_cache_34,
			{ left = "아군 대상과 그로부터 15미터 반경 내에 있는 대상과 같은 소속인 파티원의 생명력을 250-274만큼 회복시킵니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 마나 337, 292-323 만큼 회복" }, -- 6
			{ left = " 3레벨: 마나 375, 332-367 만큼 회복" }, -- 7
			{ left = " 4레벨: 마나 412, 376-415 만큼 회복" }, -- 8
			{ left = " 5레벨: 마나 450, 409-451 만큼 회복" }, -- 9
		},
	}
	tree = data[3]
	tree.info.name = "암흑"
	talent = tree.talents[1].info
	talent.name = "정신력 누출"
	talent.tips = {
		format = "적을 처치한 후 경험치를 받게 되면 %s%%의 확률로 정신력이 100%%만큼 증가합니다. 이 동안은 주문 시전 중 마나가 50%%의 속도로 회복됩니다. 15초 동안 지속됩니다.",
		multiplier = 20,
	}
	talent = tree.talents[2].info
	talent.name = "의식 상실"
	talent.tips = {
		format = "암흑 공격 주문 사용 시 %s%%의 확률로 대상을 3초 동안 기절시킵니다.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "암흑 마법 친화"
	talent.tips = {
		format = "암흑 주문의 위협 수준이 %s%%만큼 감소합니다.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[4].info
	talent.name = "어둠의 권능: 고통 연마"
	talent.tips = {
		format = "어둠의 권능: 고통의 지속시간이 %s초만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "암흑 마법 집중"
	talent.tips = {
		format = "대상이 암흑 마법을 저항할 확률을 %s%%만큼 감소시킵니다.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "영혼의 절규 연마"
	talent.tips = {
		format = "영혼의 절규 주문의 재사용 대기시간이 %s초만큼 단축됩니다.",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "정신 분열 연마"
	talent.tips = {
		format = "정신 분열의 재사용 대기시간이 %s초만큼 단축됩니다.",
		multiplier = 0.5,
	}
	talent = tree.talents[8].info
	talent.name = "정신의 채찍"
	talent.tips = {
		{ -- 1
			{ left = "마나 45", right = "유효거리 20미터" }, -- 1
			{ left = "정신 집중 상태" }, -- 2
			{ left = "대상의 정신을 암흑의 기운으로 공격하여 3초에 걸쳐 75의 암흑 피해를 입히고 이동 속도를 평소의 50%로 감소시킵니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨:  마나 70, 126 암흑 피해" }, -- 6
			{ left = " 3레벨:  마나 100, 186 암흑 피해" }, -- 7
			{ left = " 4레벨:  마나 135, 261 암흑 피해" }, -- 8
			{ left = " 5레벨:  마나 165, 330 암흑 피해" }, -- 9
			{ left = " 6레벨:  마나 205, 426 암흑 피해" }, -- 10
			{ left = " 7레벨: 마나 230, 528 암흑 피해" }, -- 11
		},
	}
	talent = tree.talents[9].info
	talent.name = "소실 연마"
	talent.tips = {
		format = "소실의 재사용 대기시간이 %s초만큼 단축됩니다.",
		multiplier = 3,
	}
	talent = tree.talents[10].info
	talent.name = "어둠의 테두리"
	talent.tips = {
		format = "암흑 공격 주문의 사정거리가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "어둠의 매듭"
	talent.tips = {
		format = "암흑 계열 공격 주문 사용 시 %s%%의 확률로 대상이 받는 암흑 피해를 15초동안 2%%만큼 증가시킵니다. 최대 5번까지 중복됩니다.",
		multiplier = 20,
	}
	talent = tree.talents[12].info
	talent.name = "침묵"
	talent.tips = {
		{ -- 1
			{ left = "마나 225", right = "유효거리 20미터" }, -- 1
			table_cache_101,
			{ left = "대상을 침묵시켜 5초동안 주문을 시전하지 못하도록 만듭니다." }, -- 3
		},
	}
	talent = tree.talents[13].info
	talent.name = "흡혈의 선물"
	talent.tips = {
		{ -- 1
			{ left = "마나 52", right = "유효거리 30미터" }, -- 1
			table_cache_106,
			{ left = "대상을 암흑의 기운으로 감싸 자신이 입히는 암흑 주문 피해의 15%만큼 모든 파티원의 생명력을 회복시킵니다. 1분 동안 지속됩니다." }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "흡혈의 선물 연마"
	talent.tips = {
		format = "흡혈의 선물로 회복되는 생명력의 비율이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[15].info
	talent.name = "흐트러짐 없는 마음"
	talent.tips = {
		format = "정신 분열, 정신 지배, 정신의 채찍 주문에 소비되는 마나가 %s%%만큼 감소합니다.",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "암흑의 탄력성"
	talent.tips = {
		format = "모든 주문 치명타에 적중당할 확률이 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "어둠"
	talent.tips = {
		format = "암흑 주문의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "어둠의 형상"
	talent.tips = {
		{ -- 1
			{ left = "마나 838" }, -- 1
			{ left = "즉시 시전", right = "재사용 대기시간 1.5초" }, -- 2
			{ left = "어둠의 형상을 취해 암흑 공격력을 15%만큼 증가시키고 받는 물리 피해를 15%만큼 감소시킵니다. 하지만 이 상태에서는 신성 주문을 사용할 수 없습니다." }, -- 3
		},
	}
	talent = tree.talents[19].info
	talent.name = "어둠의 힘"
	talent.tips = {
		format = "정신 분열, 어둠의 권능: 죽음이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[20].info
	talent.name = "불행"
	talent.tips = {
		format = "어둠의 권능: 고통, 정신의 채찍, 흡혈의 손길 사용 시 추가로 대상이 받는 모든 주문 피해가 %s%%만큼 증가하도록 만듭니다.",
	}
	talent = tree.talents[21].info
	talent.name = "흡혈의 손길"
	talent.tips = {
		{ -- 1
			{ left = "마나 325", right = "유효거리 36미터" }, -- 1
			table_cache_16,
			{ left = "대상을 암흑의 기운으로 감싸 대상에게 15초에 걸쳐 450의 암흑 피해를 입히고 자신이 입히는 암흑 주문 피해의 5%만큼 모든 파티원의 마나를 회복시킵니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 마나 400, 600 암흑 피해" }, -- 6
			{ left = " 3레벨: 마나 425, 650 암흑 피해" }, -- 7
		},
	}
	data = Talented_Data.WARLOCK
	-- data.name = "흑마법사"
	tree = data[1]
	tree.info.name = "고통"
	talent = tree.talents[1].info
	talent.name = "억제"
	talent.tips = {
		format = "적이 고통 계열 주문을 저항할 확률이 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "부패 연마"
	talent.tips = {
		format = "부패의 시전 시간이 %s.%s초만큼 단축됩니다.",
		{0, 4}, -- 1
		table_cache_17, -- 2
		table_cache_40, -- 3
		table_cache_60, -- 4
		{2, 0}, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "무력화 저주 연마"
	talent.tips = {
		format = "무력화 저주의 효과가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[4].info
	talent.name = "영혼 흡수 연마"
	talent.tips = {
		format = "영혼 흡수 중 대상이 자신에 의해 죽었을 때 최대 마나의 %s%%에 해당하는 마나를 회복합니다. 추가로 고통 계열 주문의 위협 수준이 %s%%만큼 감소합니다.",
		{7, 5}, -- 1
		table_cache_64, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "생명력 전환 연마"
	talent.tips = {
		format = "생명력 전환으로 얻는 마나가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "영혼 착취"
	talent.tips = {
		format = "생명력 흡수와 마나 흡수로 흡수하는 생명력과 마나가 대상에 걸려 있는 고통 효과 마다 %s%%만큼씩 증가합니다. 추가 효과는 최대 %s%%까지 증가합니다.",
		{2, 24}, -- 1
		{4, 60}, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "고통의 저주 연마"
	talent.tips = {
		format = "고통의 저주로 인한 피해가 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "마의 정신집중"
	talent.tips = {
		format = "생명력 흡수, 마나 흡수, 영혼 흡수 시전 시 %s%%의 확률로 마법 시전 방해를 받지 않습니다.",
		multiplier = 14,
	}
	talent = tree.talents[9].info
	talent.name = "저주 증폭"
	talent.tips = {
		{ -- 1
			table_cache_102,
			{ left = "다음 사용하는 파멸의 저주, 고통의 저주 효과를 50%만큼 증가시키거나 피로의 저주 효과를 20%만큼 증가시킵니다. 30초동안 지속됩니다." }, -- 2
		},
	}
	talent = tree.talents[10].info
	talent.name = "냉혹의 테두리"
	talent.tips = {
		format = "고통 계열 주문의 사정거리가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "일몰"
	talent.tips = {
		format = "부패, 생명력 흡수로 적에게 피해를 입힌 직후 %s%%의 확률로 어둠의 무아지경 상태로 빠져들게 합니다. 이 상태에선 다음 어둠의 화살의 시전 시간이 100%%만큼 단축됩니다.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "부패 강화"
	talent.tips = {
		format = "부패 사용 시 주문 공격력 증가 효과를 %s%%만큼 추가로 받습니다.",
		multiplier = 12,
	}
	talent = tree.talents[13].info
	talent.name = "어둠의 선물"
	talent.tips = {
		format = "고통의 저주, 생명력 착취, 부패의 씨앗 시전 시 물리 공격력을 %s%%만큼 감소시키는 어둠의 선물 효과가 추가로 걸립니다.",
	}
	talent = tree.talents[14].info
	talent.name = "생명력 착취"
	talent.tips = {
		{ -- 1
			{ left = "마나 140", right = "사정거리 30미터" }, -- 1
			table_cache_34,
			{ left = "대상으로부터 매 3초마다 15의 생명력을 흡수합니다. 30초동안 지속됩니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 마나 190, 22 생명력 흡수" }, -- 6
			{ left = " 3레벨: 마나 250, 33 생명력 흡수" }, -- 7
			{ left = " 4레벨: 마나 310, 45 생명력 흡수" }, -- 8
			{ left = " 5레벨: 마나 350, 52 생명력 흡수" }, -- 9
			{ left = " 6레벨: 마나 410, 63 생명력 흡수" }, -- 10
		},
	}
	talent = tree.talents[15].info
	talent.name = "피로의 저주"
	talent.tips = {
		{ -- 1
			{ left = "마나 156", right = "사정거리 30미터" }, -- 1
			table_cache_34,
			{ left = "12초동안 대상의 이동 속도를 30%만큼 감소시킵니다. 흑마법사마다 한 대상에 하나의 저주만 걸 수 있습니다." }, -- 3
		},
	}
	talent = tree.talents[16].info
	talent.name = "암흑 마법 전문화"
	talent.tips = {
		format = "암흑 계열 주문으로 인한 피해나 흡수되는 생명력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "전염"
	talent.tips = {
		format = "고통의 저주, 부패, 부패의 씨앗의 피해가 %s%%만큼 증가하고 추가로 고통 계열 주문이 무효화될 확률이 %s%%만큼 감소됩니다.",
		table_cache_60, -- 1
		{2, 12}, -- 2
		{3, 18}, -- 3
		{4, 24}, -- 4
		{5, 30}, -- 5
	}
	talent = tree.talents[18].info
	talent.name = "암흑의 계약"
	talent.tips = {
		{ -- 1
			{ left = "사정거리 30미터" }, -- 1
			table_cache_34,
			{ left = "소환수에게서 305의 마나를 흡수하여 그의 100%에 해당하는 마나를 자신의 것으로 만듭니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 마나 440" }, -- 6
			{ left = " 3레벨: 마나 545" }, -- 7
			{ left = " 4레벨: 마나 700" }, -- 8
		},
	}
	talent = tree.talents[19].info
	talent.name = "공포의 울부짖음 연마"
	talent.tips = {
		format = "공포의 울부짖음의 시전 시간이 %s.%s초만큼 단축됩니다.",
		table_cache_17, -- 1
		table_cache_63, -- 2
	}
	talent = tree.talents[20].info
	talent.name = "재앙의 저주"
	talent.tips = {
		format = "어둠의 저주, 원소의 저주로 증가하는 피해가 추가로 %s%%만큼 더 증가합니다.",
	}
	talent = tree.talents[21].info
	talent.name = "불안정한 고통"
	talent.tips = {
		{ -- 1
			{ left = "마나 270", right = "사정거리 30미터" }, -- 1
			table_cache_16,
			{ left = "어둠의 기운이 천천히 대상을 파괴하여 18초에 걸쳐 660의 피해를 입힙니다. 추가로, 누군가가 불안정한 고통을 무효화할 경우 해당 시전자는 990의 피해를 입고 5초동안 침묵 상태가 됩니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 마나 330, 840 피해, 무효화 시 시전자에게 1260 피해" }, -- 6
			{ left = " 3레벨: 마나 400, 1050 피해, 무효화 시 시전자에게 1575 피해" }, -- 7
		},
	}
	tree = data[2]
	tree.info.name = "악마"
	talent = tree.talents[1].info
	talent.name = "생명석 연마"
	talent.tips = {
		format = "생명석으로 인해 회복되는 생명력이 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[2].info
	talent.name = "임프 연마"
	talent.tips = {
		format = "임프의 불화살, 화염 보호막, 피의 서약 주문의 효과가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[3].info
	talent.name = "악마의 은총"
	talent.tips = {
		format = "최대 체력이 %s%%만큼 증가하지만 최대 정신력은 %s%%만큼 감소됩니다.",
		table_cache_20, -- 1
		table_cache_67, -- 2
		table_cache_41, -- 3
		table_cache_55, -- 4
		table_cache_36, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "생명력 집중 연마"
	talent.tips = {
		format = "생명력 집중 주문으로 이전되는 생명력이 %s%%만큼 증가하고 처음 소비되는 생명력이 %s%%만큼 감소합니다.",
		table_cache_47, -- 1
		table_cache_25, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "보이드워커 연마"
	talent.tips = {
		format = "보이드워커의 고문, 어둠 흡수, 희생, 고통 주문의 효과가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "마의 지능"
	talent.tips = {
		format = "임프와 보이드워커, 서큐버스, 지옥사냥개, 지옥수호병의 지능이 %s%%만큼 증가하고 자신의 최대 마나가 %s%%만큼 증가합니다.",
		table_cache_4, -- 1
		table_cache_74, -- 2
		table_cache_78, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "서큐버스 연마"
	talent.tips = {
		format = "서큐버스의 고통의 채찍과 유혹의 입맞춤 주문의 효과가 %s%%만큼 증가하며 유혹과 하급 투명화의 지속시간이 %s%%만큼 증가합니다.",
		table_cache_47, -- 1
		table_cache_25, -- 2
		table_cache_77, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "마의 지배"
	talent.tips = {
		{ -- 1
			{ left = "즉시 시전", right = "재사용 대기시간 15분" }, -- 1
			{ left = "다음 임프와 보이드워커, 서큐버스, 지옥사냥개, 지옥수호병 소환 주문의 시전 시간이 5.5초만큼 단축되고 소비되는 마나가 50%만큼 감소합니다." }, -- 2
		},
	}
	talent = tree.talents[9].info
	talent.name = "마의 체력"
	talent.tips = {
		format = "임프와 보이드워커, 서큐버스, 지옥사냥개, 지옥수호병의 체력이 %s%%만큼 증가하고 자신의 최대 생명력이 %s%%만큼 증가합니다.",
		table_cache_4, -- 1
		table_cache_74, -- 2
		table_cache_78, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "악마의 보호"
	talent.tips = {
		format = "악마의 갑옷, 마의 갑옷의 효과가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "소환의 대가"
	talent.tips = {
		format = "임프와 보이드워커, 서큐버스, 지옥사냥개, 지옥수호병소환의 시전 시간이 %s초만큼 단축되고 소비되는 마나가 %s%%만큼 감소됩니다.",
		table_cache_1, -- 1
		{4, 40}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "부정의 힘"
	talent.tips = {
		format = "보이드워커와 서큐버스, 지옥사냥개, 지옥수호병의 근접 공격력 및 임프의 불화살 공격력이 %s%%만큼 증가합니다.",
		multiplier = 4,
	}
	talent = tree.talents[13].info
	talent.name = "악마 지배 연마"
	talent.tips = {
		format = "악마 지배로 인한 공격 속도 및 시전 속도 저하 효과가 %s%%만큼 감소하며 악마 지배에 저항할 확률이 %s%%만큼 감소합니다.",
		table_cache_14, -- 1
		table_cache_47, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "악의 제물"
	talent.tips = {
		{ -- 1
			{ left = "사정 거리 100미터" }, -- 1
			table_cache_34,
			{ left = "활성화되면 소환된 악마를 제물로 바쳐 30분동안 아래의 효과를 받게 됩니다. 이로 인한 효과는 소환수를 소환하면 사라집니다." }, -- 3
			table_cache_46,
			{ left = "임프: 화염 주문의 피해가 15%만큼 증가합니다." }, -- 5
			table_cache_46,
			{ left = "보이드워커: 매 4초마다 전체 생명력의 2%에 달하는 생명력을 회복합니다." }, -- 7
			table_cache_46,
			{ left = "서큐버스: 암흑 주문의 피해가 15%만큼 증가합니다." }, -- 9
			table_cache_46,
			{ left = "지옥사냥개: 매 4초마다 전체 마나의 3%에 달하는 마나를 회복합니다." }, -- 11
			table_cache_46,
			{ left = "지옥수호병: 암흑 주문의 피해가 10%만큼 증가하고 매 4초마다 전체 마나의 2%에 해당하는 마나를 회복합니다." }, -- 13
		},
	}
	talent = tree.talents[15].info
	talent.name = "창조의 대가"
	talent.tips = {
		format = "화염석 착용으로 증가하는 화염 주문의 피해와 화염석의 효과가 %s%%만큼 증가하고 주문석으로 인한 주문 극대화 적중도 보너스가 %s%%만큼 증가합니다.",
		table_cache_49, -- 1
		table_cache_77, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "마나 섭취"
	talent.tips = {
		format = "마나 흡수나 생명력 전환 주문으로 마나를 얻을 때마다 소환수도 해당 마나의 %s%%만큼을 얻습니다.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "악령술의 대가"
	talent.tips = {
		{ -- 1
			table_cache_75,
			table_cache_46,
			{ left = "임프 - 위협 수준 4%만큼 감소" }, -- 3
			table_cache_46,
			{ left = "보이드워커 - 받는 물리 피해 2%만큼 감소" }, -- 5
			table_cache_46,
			{ left = "서큐버스 - 모든 공격력 2%만큼 증가" }, -- 7
			table_cache_46,
			{ left = "지옥사냥개 - 모든 마법 저항력 레벨 당 0.2만큼 증가" }, -- 9
			table_cache_46,
			{ left = "지옥수호병: 모든 공격력 1%만큼 증가 및 모든 저항력 레벨 당 0.1만큼 증가" }, -- 11
		},
		{ -- 2
			table_cache_75,
			table_cache_46,
			{ left = "임프 - 위협 수준 8%만큼 감소" }, -- 3
			table_cache_46,
			{ left = "보이드워커 - 받는 물리 피해 4%만큼 감소" }, -- 5
			table_cache_46,
			{ left = "서큐버스 - 모든 공격력 4%만큼 증가" }, -- 7
			table_cache_46,
			{ left = "지옥사냥개 - 모든 마법 저항력 레벨 당 0.4만큼 증가" }, -- 9
			table_cache_46,
			{ left = "지옥수호병: 모든 공격력 2%만큼 증가 및 모든 저항력 레벨 당 0.2만큼 증가" }, -- 11
		},
		{ -- 3
			table_cache_75,
			table_cache_46,
			{ left = "임프 - 위협 수준 12%만큼 감소" }, -- 3
			table_cache_46,
			{ left = "보이드워커 - 받는 물리 피해 6%만큼 감소" }, -- 5
			table_cache_46,
			{ left = "서큐버스 - 모든 공격력 6%만큼 증가" }, -- 7
			table_cache_46,
			{ left = "지옥사냥개 - 모든 마법 저항력 레벨 당 0.6만큼 증가" }, -- 9
			table_cache_46,
			{ left = "지옥수호병: 모든 공격력 3%만큼 증가 및 모든 저항력 레벨 당 0.3만큼 증가" }, -- 11
		},
		{ -- 4
			table_cache_75,
			table_cache_46,
			{ left = "임프 - 위협 수준 16%만큼 감소" }, -- 3
			table_cache_46,
			{ left = "보이드워커 - 받는 물리 피해 8%만큼 감소" }, -- 5
			table_cache_46,
			{ left = "서큐버스 - 모든 공격력 8%만큼 증가" }, -- 7
			table_cache_46,
			{ left = "지옥사냥개 - 모든 마법 저항력 레벨 당 0.8만큼 증가" }, -- 9
			table_cache_46,
			{ left = "지옥수호병: 모든 공격력 4%만큼 증가 및 모든 저항력 레벨 당 0.4만큼 증가" }, -- 11
		},
		{ -- 5
			table_cache_75,
			table_cache_46,
			{ left = "임프 - 위협 수준 20%만큼 감소" }, -- 3
			table_cache_46,
			{ left = "보이드워커 - 받는 물리 피해 10%만큼 감소" }, -- 5
			table_cache_46,
			{ left = "서큐버스 - 모든 공격력 10%만큼 증가" }, -- 7
			table_cache_46,
			{ left = "지옥사냥개 - 모든 마법 저항력 레벨 당 1만큼 증가" }, -- 9
			table_cache_46,
			{ left = "지옥수호병: 모든 공격력 5%만큼 증가 및 모든 저항력 레벨 당 0.5만큼 증가" }, -- 11
		},
	}
	talent = tree.talents[18].info
	talent.name = "악마의 탄력성"
	talent.tips = {
		format = "근접 및 주문 치명타에 적중당할 확률이 %s%%만큼 감소하고 소환수가 받는 모든 피해가 %s%%만큼 감소합니다.",
		table_cache_63, -- 1
		table_cache_80, -- 2
		table_cache_70, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "영혼의 고리"
	talent.tips = {
		{ -- 1
			{ left = "마나 418", right = "사정거리 100미터" }, -- 1
			table_cache_34,
			{ left = "활성화되면 시전자가 받는 모든 피해의 20%는 소환한 임프나 보이드워커, 서큐버스, 지옥사냥개, 지옥수호병, 지배한 악마가 대신 입게 됩니다. 이로 인한 피해는 막을 수 없습니다. 추가로 흑마법사와 소환수의 공격력이 5%만큼 증가합니다. 소환수를 부리는 동안 지속됩니다." }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "악마의 지식"
	talent.tips = {
		format = "주문 공격력이 소환한 소환수의 총 체력과 지능을 합한 수의 %s%%만큼 증가합니다.",
		multiplier = 4,
	}
	talent = tree.talents[21].info
	talent.name = "악마의 술책"
	talent.tips = {
		format = "자신 및 자신이 부리는 소환수의 근접 치명타 적중률과 주문 극대화 적중률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[22].info
	talent.name = "지옥수호병 소환"
	talent.tips = {
		{ -- 1
			{ left = "마나 2092" }, -- 1
			{ left = "시전시간 10초" }, -- 2
			table_cache_73,
			{ left = "지옥수호병을 소환하여 부립니다." }, -- 4
		},
	}
	tree = data[3]
	tree.info.name = "파괴"
	talent = tree.talents[1].info
	talent.name = "어둠의 화살 연마"
	talent.tips = {
		format = "어둠의 화살이 치명타로 적중할 시 대상이 주기적인 피해를 제외한 암흑 피해를 4번 입을때까지 받는 암흑계 피해가 %s%%만큼 증가합니다. 효과는 최대 12초 동안 지속됩니다.",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "재앙"
	talent.tips = {
		format = "파괴 계열 주문의 마나 소비량이 %s%%만큼 감소합니다.",
	}
	talent = tree.talents[3].info
	talent.name = "파멸"
	talent.tips = {
		format = "어둠의 화살과 제물의 시전 시간이 0.%s초만큼, 영혼의 불꽃의 시전 시간이 %s.%s초만큼 단축됩니다.",
		{1, 0, 4}, -- 1
		{2, 0, 8}, -- 2
		{3, 1, 2}, -- 3
		{4, 1, 6}, -- 4
		{5, 2, 0}, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "재앙의 여파"
	talent.tips = {
		format = "파괴 계열 주문 사용 시 %s%%의 확률로 5초 동안 대상을 멍하게 만듭니다.",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "불화살 연마"
	talent.tips = {
		format = "임프의 불화살 시전 시간이 0.%s초만큼 단축됩니다.",
		25, -- 1
		5, -- 2
	}
	talent = tree.talents[6].info
	talent.name = "고통의 채찍 연마"
	talent.tips = {
		format = "고통의 채찍의 재사용 대기시간이 %s초만큼 감소합니다.",
		multiplier = 3,
	}
	talent = tree.talents[7].info
	talent.name = "황폐"
	talent.tips = {
		format = "파괴 계열 주문이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[8].info
	talent.name = "어둠의 연소"
	talent.tips = {
		{ -- 1
			{ left = "마나 105", right = "유효 거리 20미터" }, -- 1
			table_cache_35,
			table_cache_73,
			{ left = "즉시 적을 강타하여 91-104의 암흑 피해를 입힙니다. 이 주문이 걸린 지 5초 내에 대상이 죽고 경험치나 명예 점수를 받게되면 영혼의 조각 1개를 얻습니다" }, -- 4
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 마나 130, 123-140 암흑 피해" }, -- 7
			{ left = " 3레벨: 마나 190, 196-221 암흑 피해" }, -- 8
			{ left = " 4레벨: 마나 245, 274-307 암흑 피해" }, -- 9
			{ left = " 5레벨: 마나 305, 365-408 암흑 피해" }, -- 10
			{ left = " 6레벨: 마나 365, 468-520 암흑 피해" }, -- 11
			{ left = " 7레벨: 마나 435, 538-599 암흑 피해" }, -- 12
			{ left = " 8레벨: 마나 515, 597-665 암흑 피해" }, -- 13
		},
	}
	talent = tree.talents[9].info
	talent.name = "격렬"
	talent.tips = {
		format = "모든 파괴 계열 주문 시전 시 %s%%의 확률로 마법 시전 방해를 받지 않습니다.",
		multiplier = 35,
	}
	talent = tree.talents[10].info
	talent.name = "파괴의 테두리"
	talent.tips = {
		format = "파괴 계열 주문의 사정거리가 %s%%만큼 증가하고 파괴 계열 주문의 위협 수준이 %s%%만큼 감소합니다.",
		table_cache_18, -- 1
		table_cache_7, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "불타는 고통 연마"
	talent.tips = {
		format = "불타는 고통이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "화염 파열"
	talent.tips = {
		format = "불의 비, 지옥의 불길, 영혼의 불꽃 사용 시 %s%%의 확률로 3초 동안 대상을 기절시킵니다.",
		multiplier = 13,
	}
	talent = tree.talents[13].info
	talent.name = "제물 연마"
	talent.tips = {
		format = "제물 주문의 첫 화염 피해가 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[14].info
	talent.name = "붕괴"
	talent.tips = {
		"파괴 주문이 극대화 효과를 발휘했을 경우 피해가 100%만큼 증가합니다.", -- 1
	}
	talent = tree.talents[15].info
	talent.name = "황천의 보호"
	talent.tips = {
		format = "암흑 주문이나 화염 주문에 의해 적중당했을 때 %s%%의 확률로 4초동안 암흑 및 화염 주문에 대해 면역이 됩니다.",
		multiplier = 10,
	}
	talent = tree.talents[16].info
	talent.name = "불보라"
	talent.tips = {
		format = "화염 계열 주문의 공격력이 %s%%만큼 증가하고 소각의 시전 시간이 %s%%만큼 감소합니다.",
		table_cache_44, -- 1
		table_cache_8, -- 2
		table_cache_96, -- 3
		table_cache_87, -- 4
		table_cache_47, -- 5
	}
	talent = tree.talents[17].info
	talent.name = "반발력"
	talent.tips = {
		format = "주문이 극대화 효과를 발휘할 확률이 %s%%만큼 추가로 증가하고 물리 공격을 받았을 때 %s%%의 확률로 다음 어둠의 화살 및 소각의 시전 시간이 100%%만큼 단축됩니다. 이 효과는 8초동안 지속되며 8초마다 1번씩만 발동됩니다.",
		{1, 8}, -- 1
		table_cache_83, -- 2
		{3, 25}, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "점화"
	talent.tips = {
		{ -- 1
			{ left = "마나 165", right = "사정거리 30미터" }, -- 1
			table_cache_106,
			{ left = "자신의 제물에 걸린 대상에 사용하여 249-316의 화염 피해를 입힙니다. 점화를 사용하면 기존 제물의 효과가 사라집니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 마나 200, 326-407 화염 피해" }, -- 6
			{ left = " 3레벨: 마나 230, 395-491 화염 피해" }, -- 7
			{ left = " 4레벨: 마나 255, 455-566 화염 피해" }, -- 8
			{ left = " 5레벨: 마나 280, 521-648 화염 피해" }, -- 9
			{ left = " 6레벨: 마나 305, 579-721 화염 피해" }, -- 10
		},
	}
	talent = tree.talents[19].info
	talent.name = "영혼 갈취"
	talent.tips = {
		format = "어둠의 화살, 어둠의 연소, 영혼의 불꽃, 소각, 불타는 고통, 점화 시전 시 %s%%의 확률로 입힌 피해의 20%%만큼의 생명력을 회복합니다.",
		multiplier = 10,
	}
	talent = tree.talents[20].info
	talent.name = "어둠과 불길"
	talent.tips = {
		format = "어둠의 화살, 소각 시전 시 주문 공격력 증가 효과를 %s%%만큼 추가로 받습니다.",
		multiplier = 4,
	}
	talent = tree.talents[21].info
	talent.name = "어둠의 격노"
	talent.tips = {
		{ -- 1
			{ left = "마나 440", right = "사정거리 30미터" }, -- 1
			{ left = "시전시간 0.5초", right = "재사용 대기시간 20초" }, -- 2
			{ left = "어둠의 격노를 주위로 방출하여 8미터 반경 내의 모든 적에게 357~422의 암흑 피해를 입히고 2초동안 기절시킵니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 마나 545, 476-565 암흑 피해" }, -- 6
			{ left = " 3레벨: 마나 710, 612-728 암흑 피해" }, -- 7
		},
	}
	data = Talented_Data.DRUID
	-- data.name = "드루이드"
	tree = data[1]
	tree.info.name = "조화"
	talent = tree.talents[1].info
	talent.name = "별빛 천벌"
	talent.tips = {
		format = "천벌과 별빛 섬광 주문의 시전 시간이 0.%s초만큼 감소됩니다.",
	}
	talent = tree.talents[2].info
	talent.name = "자연의 손아귀"
	talent.tips = {
		{ -- 1
			table_cache_34,
			{ left = "요구 사항: 휘감는 뿌리", right = "1분 후 재사용 가능" }, -- 2
			{ left = "활성화되면 시전자를 공격한 적은 35%의 확률로 휘감는 뿌리(1 레벨)의 공격을 받게 됩니다. 야외에서만 효과가 있습니다. 45초 동안 지속됩니다. 1회 발동." }, -- 3
			table_cache_46,
			table_cache_46,
			table_cache_66,
			{ left = " 2 레벨: 휘감는 뿌리 (2 레벨)" }, -- 7
			{ left = " 3 레벨: 휘감는 뿌리 (3 레벨)" }, -- 8
			{ left = " 4 레벨: 휘감는 뿌리 (4 레벨)" }, -- 9
			{ left = " 5 레벨: 휘감는 뿌리 (5 레벨)" }, -- 10
			{ left = " 6 레벨: 휘감는 뿌리 (6 레벨)" }, -- 11
			{ left = " 7 레벨: 휘감는 뿌리 (7 레벨)" }, -- 12
		},
	}
	talent = tree.talents[3].info
	talent.name = "자연의 손아귀 연마"
	talent.tips = {
		format = "자연의 손아귀의 발동 확률이 %s%%만큼 증가합니다.",
		15, -- 1
		30, -- 2
		45, -- 3
		65, -- 4
	}
	talent = tree.talents[4].info
	talent.name = "자연의 지배"
	talent.tips = {
		format = "휘감는 뿌리, 회오리바람 시전 시 %s%%의 확률로 마법 시전 방해를 받지 않습니다.",
		40, -- 1
		70, -- 2
		100, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "별빛 집중"
	talent.tips = {
		format = "천벌과 별빛 섬광이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "달빛 섬광 연마"
	talent.tips = {
		format = "달빛 섬광의 공격력과 치명타 적중률이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "가시나무"
	talent.tips = {
		format = "가시와 휘감는 뿌리 주문의 피해가 %s%%만큼 증가합니다.",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "곤충 떼"
	talent.tips = {
		{ -- 1
			{ left = "마나 50", right = "유효거리 30미터" }, -- 1
			table_cache_34,
			{ left = "적이 곤충 떼에게 둘러싸여 적중률이 2%만큼 감소되고 12초에 걸쳐 총 108의 자연 피해를 입습니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2 레벨: 85마나, 192의 자연 피해" }, -- 6
			{ left = " 3 레벨: 110마나, 300의 자연 피해" }, -- 7
			{ left = " 4 레벨: 135마나, 432의 자연 피해" }, -- 8
			{ left = " 5 레벨: 155마나, 594의 자연 피해" }, -- 9
			{ left = " 6 레벨: 175마나, 792의 자연 피해" }, -- 10
		},
	}
	talent = tree.talents[9].info
	talent.name = "자연의 테두리"
	talent.tips = {
		format = "조화 계열 주문과 요정의 불꽃 (야성)의 사정거리가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "복수"
	talent.tips = {
		format = "별빛 섬광, 달빛 섬광, 천벌 주문이 치명타로 적중할 경우 보너스 피해가 %s%%만큼 증가합니다.",
		multiplier = 20,
	}
	talent = tree.talents[11].info
	talent.name = "하늘의 정신 집중"
	talent.tips = {
		format = "별빛 섬광 사용 시 %s%%의 확률로 적을 3초 동안 기절시킬 수 있도록 하고 천벌 주문 사용 시 피해를 입어도 시전 시간이 지연되지 않을 확률이 %s%%만큼 증가합니다.",
		table_cache_79, -- 1
		table_cache_42, -- 2
		{15, 70}, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "달의 인도"
	talent.tips = {
		format = "주문의 공격력과 치유량이 지능의 %s%%만큼 증가합니다.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "자연의 은혜"
	talent.tips = {
		"주문이 극대화 효과를 발휘하게 되면 자연의 은혜 효과를 받게 됩니다. 이 효과는 다음 주문의 시전 시간을 0.5초만큼 단축시킵니다.", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "달빛"
	talent.tips = {
		format = "달빛 섬광과 별빛 섬광, 천벌, 치유의 손길, 재생, 회복 주문에 소비되는 마나가 %s%%만큼 감소합니다.",
		multiplier = 3,
	}
	talent = tree.talents[15].info
	talent.name = "달의 분노"
	talent.tips = {
		format = "별빛 섬광과 달빛 섬광, 천벌 주문의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "힘의 균형"
	talent.tips = {
		format = "모든 주문의 적중률이 %s%%만큼 증가하고 주문에 적중당할 확률이 %s%%만큼 감소합니다.",
		table_cache_44, -- 1
		table_cache_8, -- 2
	}
	talent = tree.talents[17].info
	talent.name = "꿈결"
	talent.tips = {
		format = "시전 중에도 매 5초마다 지능의 %s%%에 해당하는 마나를 회복합니다.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "달빛야수 변신"
	talent.tips = {
		{ -- 1
			{ left = "마나 521" }, -- 1
			table_cache_34,
			{ left = "달빛야수의 모습으로 변신합니다. 아이템에 의해 증가되는 방어도가 400%만큼 증가 증가하며 전투력이 레벨의 150%만큼 증가합니다. 또한 30미터 반경의 모든 파티원의 주문 극대화 확률이 5%만큼 증가합니다. 달빛야수로 변신 중일 때는 가격 시 일정 확율로 전투력에 비례하여 마나를 회복할 수 있으며 조화 계열 주문과 저주 해제만 사용할 수 있습니다." }, -- 3
			table_cache_46,
			table_cache_98,
		},
	}
	talent = tree.talents[19].info
	talent.name = "요정의 불꽃 연마"
	talent.tips = {
		format = "요정의 불꽃이 걸린 대상은 근접 및 원거리 공격에 적중당할 확률이 %s%%만큼 추가로 증가합니다.",
	}
	talent = tree.talents[20].info
	talent.name = "세나리우스의 천벌"
	talent.tips = {
		format = "별빛 섬광 사용 시 %s%%만큼, 천벌 사용 시 %s%%만큼 주문 공격력 증가 효과를 추가로 받습니다.",
		table_cache_9, -- 1
		table_cache_50, -- 2
		table_cache_15, -- 3
		table_cache_24, -- 4
		table_cache_7, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "자연의 군대"
	talent.tips = {
		{ -- 1
			{ left = "마나 284", right = "유효 거리 30미터" }, -- 1
			table_cache_56,
			{ left = "나무 정령 3마리를 소환하여 전투를 돕도록 만듭니다. 30초동안 지속됩니다." }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "야성"
	talent = tree.talents[1].info
	talent.name = "야수의 본성"
	talent.tips = {
		format = "후려치기. 휘둘러치기, 할퀴기, 갈퀴 발톱, 짓이기기 기술에 소모되는 기력 또는 분노가 %s만큼 감소합니다.",
	}
	talent = tree.talents[2].info
	talent.name = "야생의 공격성"
	talent.tips = {
		format = "위협의 포효로 감소되는 전투력이 %s%%만큼 증가하고 흉포한 이빨의 피해가 %s%%만큼 증가합니다.",
		{8, 3}, -- 1
		{16, 6}, -- 2
		{24, 9}, -- 3
		{32, 12}, -- 4
		{40, 15}, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "야생의 본능"
	talent.tips = {
		format = "곰이나 광포한 곰 변신 상태의 위협 수준이 %s%%만큼 증가하며 숨은 상태에서 적이 자신을 발견할 확률이 감소합니다.",
		multiplier = 5,
	}
	talent = tree.talents[4].info
	talent.name = "야수의 습격"
	talent.tips = {
		format = "강타와 암습의 기절 지속시간이 %s초만큼 증가합니다.",
		multiplier = 0.5,
	}
	talent = tree.talents[5].info
	talent.name = "두꺼운 가죽"
	talent.tips = {
		format = "아이템에 의해 증가되는 방어도가 %s%%만큼 증가합니다.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "야생의 기민함"
	talent.tips = {
		format = "표범 변신의 이동 속도가 야외 에서 %s%%만큼 증가하고 표범 변신, 곰 변신, 광포한 곰 변신 상태에서의 회피율이 %s%%만큼 증가합니다.",
		table_cache_69, -- 1
		table_cache_84, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "야성의 돌진"
	talent.tips = {
		{ -- 1
			{ left = "분노 5", right = "사정거리 8-25미터" }, -- 1
			table_cache_35,
			{ left = "곰 또는 광포한 곰 변신 필요" }, -- 3
			{ left = "적에게 돌진하여 이동 불가 상태로 만들고 4초동안 주문 시전을 방해합니다." }, -- 4
		},
	}
	talent = tree.talents[8].info
	talent.name = "날카로운 발톱"
	talent.tips = {
		format = "곰이나 광포한 곰 또는 표범 변신의 치명타 적중률이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "죽음의 발톱"
	talent.tips = {
		format = "칼날 발톱에 소비되는 기력이 %s만큼 감소하고 가르기에 소비되는 분노가 %s만큼 감소합니다.",
		{9, 1}, -- 1
		{18, 2}, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "야생의 포식자"
	talent.tips = {
		format = "표범과 곰, 광포한 곰, 달빛야수 변신 기술의 근접 전투력이 레벨의 %s%%만큼 증가합니다.",
		multiplier = 50,
	}
	talent = tree.talents[11].info
	talent.name = "야수의 분노"
	talent.tips = {
		format = "곰이나 광포한 곰 변신 상태에서 치명타 공격이 적중할 경우 %s%%의 확률로 5의 추가 분노를 얻습니다. 표범 변신 상태에서 치명타 공격이 적중할 경우 %s%%의 확률로 추가 연계 점수가 주어집니다.",
		{50, 50}, -- 1
		{100, 100}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "맹렬한 격노"
	talent.tips = {
		format = "할퀴기, 갈퀴 발톱, 짓이기기(표범)의 피해가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "요정의 불꽃 (야성)"
	talent.tips = {
		{ -- 1
			table_cache_86,
			{ left = "즉시 시전", right = "6초 후 재사용 가능" }, -- 2
			{ left = "표범, 곰, 광포한 곰 변신 필요" }, -- 3
			{ left = "40초 동안 대상의 방어도를 175만큼 감소시킵니다. 효과가 지속되는 동안은 은신이나 투명화가 불가능합니다." }, -- 4
			table_cache_46,
			table_cache_66,
			{ left = " 2 레벨: 방어도 285 감소" }, -- 7
			{ left = " 3 레벨: 방어도 395 감소" }, -- 8
			{ left = " 4 레벨: 방어도 505 감소" }, -- 9
			{ left = " 5 레벨: 방어도 610 감소" }, -- 10
		},
	}
	talent = tree.talents[14].info
	talent.name = "회복의 본능"
	talent.tips = {
		format = "주문 치유량이 민첩성의 %s%%만큼 증가하고 표범 변신 상태에서 받는 치유 효과가 %s%%만큼 증가합니다.",
		table_cache_61, -- 1
		table_cache_33, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "야생의 정수"
	talent.tips = {
		format = "지능이 %s%%만큼 증가합니다. 추가로 곰이나 광포한 곰 변신 상태에서 체력이 %s%%만큼 증가하며 표범 변신 상태에서 전투력이 %s%%만큼 증가합니다.",
		{4, 4, 2}, -- 1
		{8, 8, 4}, -- 2
		{12, 12, 6}, -- 3
		{16, 16, 8}, -- 4
		{20, 20, 10}, -- 5
	}
	talent = tree.talents[16].info
	talent.name = "적자 생존"
	talent.tips = {
		format = "모든 능력치가 %s%%만큼 증가하고 근접 치명타 공격에 적중당할 확률이 %s%%만큼 감소합니다.",
		table_cache_81, -- 1
		table_cache_44, -- 2
		table_cache_3, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "태고의 강인함"
	talent.tips = {
		format = "기절과 공포에 저항할 확률이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[18].info
	talent.name = "무리의 우두머리"
	talent.tips = {
		"표범이나 곰, 광포한 곰 변신 상태에서 주위 45미터 반경 내에 있는 모든 파티원의 원거리 및 근접 치명타 적중률이 5%만큼 증가합니다.", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "무리의 우두머리 연마"
	talent.tips = {
		format = "무리의 우두머리 사용 시 근접 및 원거리 치명타 공격을 적중시켰을 때 100%%의 확률로 생명력이 총 생명력의 %s%%만큼 회복됩니다. 생명력 회복 효과는 6초마다 1번씩만 발동됩니다.",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "포식자의 본능"
	talent.tips = {
		format = "표범, 곰, 광포한 곰 변신 시 근접 공격이 치명타로 적중했을 경우 피해가 %s%%만큼 증가하고 광역 공격을 회피할 확률이 %s%%만큼 증가합니다.",
		table_cache_93, -- 1
		table_cache_96, -- 2
		{9, 9}, -- 3
		table_cache_53, -- 4
		table_cache_49, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "짓이기기"
	talent.tips = {
		{ -- 1
			{ left = "대상을 짓이겨 피해를 입히고 12초 동안 출혈로 인한 피해가 증가되도록 만듭니다. 이 기술은 표범이나 곰, 광포함 곰 변신 상태에서만 사용할 수 있습니다." }, -- 1
			table_cache_46,
			{ left = " 곰:" }, -- 3
			{ left = " 분노 20, 유효거리 9미터, 즉시 시전, 6초후 재사용 가능" }, -- 4
			{ left = " 일반 공격력의 115%와 추가로 x의 피해를 입히고 12초 동안 칼날 발톱 및 출혈로 인한 피해가 30%만큼 증가합니다." }, -- 5
			{ left = " 1 레벨: 추가 피해 86" }, -- 6
			{ left = " 2 레벨: 추가 피해 121" }, -- 7
			{ left = " 3 레벨: 추가 피해 155" }, -- 8
			table_cache_46,
			{ left = " 표범:" }, -- 10
			{ left = " 기력 45, 유효거리 9미터, 즉시 시전, 1의 연계 점수가 주어집니다." }, -- 11
			{ left = " 일반 공격력의 160%와 추가로 x의 피해를 입히고 12초 동안 칼날 발톱 및 출혈로 인한 피해가 30%만큼 증가합니다." }, -- 12
			{ left = " 1 레벨: 추가피해 158" }, -- 13
			{ left = " 2 레벨: 추가피해 205" }, -- 14
			{ left = " 3 레벨: 추가피해 264" }, -- 15
		},
	}
	tree = data[3]
	tree.info.name = "회복"
	talent = tree.talents[1].info
	talent.name = "야생의 징표 연마"
	talent.tips = {
		format = "야생의 징표와 야생의 선물의 효과가 %s%%만큼 증가합니다.",
		multiplier = 7,
	}
	talent = tree.talents[2].info
	talent.name = "광란"
	talent.tips = {
		format = "곰이나 광포한 곰으로 변신할 때 %s%%의 확률로 10의 분노를, 표범 변신 시 40의 기력을 얻습니다.",
		multiplier = 20,
	}
	talent = tree.talents[3].info
	talent.name = "자연의 탐구자"
	talent.tips = {
		format = "치유의 손길의 시전 시간이 0.%s초만큼 감소하고 모든 상태의 물리 공격력이 %s%%만큼 증가합니다.",
		table_cache_40, -- 1
		table_cache_58, -- 2
		table_cache_28, -- 3
		table_cache_23, -- 4
		table_cache_57, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "자연의 정신 집중"
	talent.tips = {
		format = "치유의 손길, 재생, 평온 주문 시전 시 %s%%의 확률로 마법 시전 방해를 받지 않습니다.",
		multiplier = 14,
	}
	talent = tree.talents[5].info
	talent.name = "변신의 대가"
	talent.tips = {
		format = "모든 변신에 소비되는 마나가 %s%%만큼 감소합니다.",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "격렬"
	talent.tips = {
		format = "시전 중에도 평소의 %s%%에 달하는 속도로 마나가 회복되고 분노 사용 시 즉시 %s의 분노를 회복하도록 합니다.",
		table_cache_103, -- 1
		{20, 7}, -- 2
		{30, 10}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "미묘함"
	talent.tips = {
		format = "주문의 위협 수준이 %s%%만큼 감소하고 주문이 무효화될 확률이 %s%%만큼 감소됩니다.",
		{4, 6}, -- 1
		{8, 12}, -- 2
		{12, 18}, -- 3
		{16, 24}, -- 4
		{20, 30}, -- 5
	}
	talent = tree.talents[8].info
	talent.name = "청명의 전조"
	talent.tips = {
		{ -- 1
			{ left = "마나 120" }, -- 1
			table_cache_34,
			{ left = "드루이드에게 자연의 기운을 부여합니다. 주문이 지속되는 동안 매번 근접 공격 시 일정 확률로 정신 집중 상태를 취하게 됩니다. 정신 집중 상태에서는 다음 공격 주문이나 치유 주문, 공격 기술에 소비되는 마나나 기력, 분노가 100%만큼 감소됩니다. 30분 동안 지속됩니다." }, -- 3
		},
	}
	talent = tree.talents[9].info
	talent.name = "평온한 정신"
	talent.tips = {
		format = "치유의 손길과 평온 주문에 소비되는 마나가 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[10].info
	talent.name = "회복 연마"
	talent.tips = {
		format = "회복 주문의 효과가 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "자연의 신속함"
	talent.tips = {
		{ -- 1
			table_cache_56,
			{ left = "활성화 되면 다음 자연계 주문은 시전 시간 없이 바로 발동됩니다." }, -- 2
		},
	}
	talent = tree.talents[12].info
	talent.name = "자연의 선물"
	talent.tips = {
		format = "모든 치유 주문의 치유 효과가 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[13].info
	talent.name = "평온 연마"
	talent.tips = {
		format = "평온에 의한 위협 수준이 %s%%만큼 감소됩니다.",
		multiplier = 50,
	}
	talent = tree.talents[14].info
	talent.name = "자연의 손길 강화"
	talent.tips = {
		format = "치유의 손길 사용 시 주문 치유량 증가 효과를 %s%%만큼 추가로 받습니다.",
		multiplier = 10,
	}
	talent = tree.talents[15].info
	talent.name = "재생 연마"
	talent.tips = {
		format = "재생 주문이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[16].info
	talent.name = "강렬한 영혼"
	talent.tips = {
		format = "전체 정신력이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "신속한 치유"
	talent.tips = {
		{ -- 1
			{ left = "마나 379", right = "사정거리 40미터" }, -- 1
			table_cache_35,
			{ left = "아군 대상에게 걸린 회복 또는 재생 효과를 흡수하여 회복의 12초, 재생의 18초에 해당하는 생명력을 회복시킵니다." }, -- 3
		},
	}
	talent = tree.talents[18].info
	talent.name = "자연의 완전무결함"
	talent.tips = {
		format = "모든 주문의 극대화 적중률이 %s%%만큼 증가하고 치명타 공격에 적중당했을 때 받는 모든 피해를 %s%%만큼 감소시켜주는 자연의 완전무결함 효과를 얻습니다. 3번까지 중복됩니다. 8초동안 지속됩니다.",
		table_cache_40, -- 1
		table_cache_93, -- 2
		{3, 4}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "회복 강화"
	talent.tips = {
		format = "지속적인 치유 주문 사용 시 주문 치유량 증가 효과를 %s%%만큼 추가로 받습니다.",
		multiplier = 4,
	}
	talent = tree.talents[20].info
	talent.name = "생명의 나무"
	talent.tips = {
		{ -- 1
			{ left = "마나 663" }, -- 1
			table_cache_34,
			{ left = "생명의 나무로 변신합니다. 이 동안은 45미터 반경 내에 있는 파티원이 받는 치유 효과가 자신의 총 정신력의 25%만큼 증가하고 자신의 이동 속도는 20%만큼 감소합니다. 생명의 나무로 변신 중일 때는 신속한 치유, 정신 자극, 자연의 신속함, 환생, 독 해제와 지속적인 치유 효과 주문만 사용할 수 있지만 이에 소비되는 마나가 20%만큼 감소합니다." }, -- 3
			table_cache_46,
			table_cache_98,
		},
	}
	data = Talented_Data.ROGUE
	-- data.name = "도적"
	tree = data[1]
	tree.info.name = "암살"
	talent = tree.talents[1].info
	talent.name = "절개 연마"
	talent.tips = {
		format = "절개의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[2].info
	talent.name = "냉혹함"
	talent.tips = {
		format = "자신이 결정타를 가하여 적을 처치한 후 경험치나 명예 점수를 받게 되면 다음 사악한 일격, 과다 출혈, 기습, 절단, 매복, 그림자 일격의 치명타 적중률이 %s%%만큼 증가합니다. 20초동안 지속됩니다.",
		multiplier = 20,
	}
	talent = tree.talents[3].info
	talent.name = "원한"
	talent.tips = {
		format = "치명타 적중률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[4].info
	talent.name = "무정함"
	talent.tips = {
		format = "%s%%의 확률로 마무리 일격 사용 후 대상에 대한 연계 포인트 1점이 추가됩니다.",
		multiplier = 20,
	}
	talent = tree.talents[5].info
	talent.name = "학살"
	talent.tips = {
		format = "인간형과 거인, 야수, 용족에게 입히는 모든 피해가 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[6].info
	talent.name = "상처 꿰뚫기"
	talent.tips = {
		format = "기습으로 치명타를 적중시킬 확률이 %s%%만큼 증가하고 절단으로 치명타를 적중시킬 확률이 %s%%만큼 증가합니다.",
		table_cache_18, -- 1
		table_cache_7, -- 2
		{30, 15}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "가혹한 일격"
	talent.tips = {
		"연계 포인트 당 20%의 확률로 마무리 일격 사용 후 25의 기력을 회복합니다.", -- 1
	}
	talent = tree.talents[8].info
	talent.name = "약점 노출 연마"
	talent.tips = {
		format = "약점 노출로 감소되는 방어도가 %s%%만큼 증가합니다.",
		multiplier = 25,
	}
	talent = tree.talents[9].info
	talent.name = "치명상"
	talent.tips = {
		format = "사악한 일격, 후려치기, 기습, 그림자 일격, 절단, 독칼, 과다출혈이 치명타로 적중할 경우 보너스 피해가 %s%%만큼 증가합니다.",
		multiplier = 6,
	}
	talent = tree.talents[10].info
	talent.name = "치명적인 독"
	talent.tips = {
		format = "독과 독살로 인한 피해가 %s%%만큼 증가하고 자신의 독이 주문이나 효과에 의해 해제될 확률이 %s%%만큼 감소합니다.",
		table_cache_23, -- 1
		{8, 16}, -- 2
		table_cache_90, -- 3
		{16, 32}, -- 4
		{20, 40}, -- 5
	}
	talent = tree.talents[11].info
	talent.name = "독 연마"
	talent.tips = {
		format = "대상이 중독될 확률이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "쾌속"
	talent.tips = {
		format = "이동 방해 효과에 저항할 확률이 %s%%만큼 증가하고 이동 속도가 %s%%만큼 증가합니다. 다른 이동 속도 증가 효과와 중복 적용되지 않습니다.",
		{5, 8}, -- 1
		{10, 15}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "냉혈"
	talent.tips = {
		{ -- 1
			table_cache_102,
			{ left = "활성화되면 다음 공격 기술의 치명타 적중률이 100%만큼 증가합니다." }, -- 2
		},
	}
	talent = tree.talents[14].info
	talent.name = "급소 가격 연마"
	talent.tips = {
		format = "급소 가격에 걸린 대상은 받는 모든 피해가 %s%%만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[15].info
	talent.name = "신속한 회복력"
	talent.tips = {
		format = "자신을 대상으로 하는 모든 치유 효과가 %s%%만큼 증가합니다. 추가로, 마무리 일격이 빗나갔을 때의 기력 소비량이 %s%%만큼 감소합니다.",
		table_cache_12, -- 1
		{20, 80}, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "운명의 낙인"
	talent.tips = {
		format = "기술로 적에게 치명타 공격을 적중시킬 경우 %s%%의 확률로 연계 포인트가 추가됩니다.",
		multiplier = 20,
	}
	talent = tree.talents[17].info
	talent.name = "독의 대가"
	talent.tips = {
		format = "적이 자신의 독에 저항할 확률이 %s%%만큼 감소하고 자신이 독 효과에 저항할 확률이 %s%%만큼 추가로 증가합니다.%s",
		{5, 15, ""}, -- 1
		{10, 30, "."}, -- 2
	}
	talent = tree.talents[18].info
	talent.name = "강한 체력"
	talent.tips = {
		"기력 최대치를 10만큼 증가시킵니다.", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "무감각한 신경"
	talent.tips = {
		format = "받는 모든 물리 피해가 %s%%만큼 감소합니다.",
	}
	talent = tree.talents[20].info
	talent.name = "약점 포착"
	talent.tips = {
		format = "마무리 일격 사용 시 10초 동안 자신이 사용하는 모든 공격 기술의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[21].info
	talent.name = "절단"
	talent.tips = {
		{ -- 1
			{ left = "기력 60", right = "사정거리 5미터" }, -- 1
			table_cache_34,
			{ left = "단검 필요" }, -- 3
			{ left = "즉시 양쪽 손에 장착한 무기로 적을 공격하여 각 무기마다 44의 추가 피해를 입힙니다. 독에 걸린 대상을 가격할 시 공격력이 50%만큼 증가합니다. 적의 배후에서 공격해야 합니다. 연계 포인트 2점이 주어집니다." }, -- 4
			table_cache_46,
			{ left = " 추가 수련에 대한 정보:" }, -- 6
			{ left = " 2레벨: 63 추가 피해" }, -- 7
			{ left = " 3레벨: 88 추가 피해" }, -- 8
			{ left = " 4레벨: 101 추가 피해" }, -- 9
		},
	}
	tree = data[2]
	tree.info.name = "전투"
	talent = tree.talents[1].info
	talent.name = "후려치기 연마"
	talent.tips = {
		format = "후려치기의 지속시간이 %s초만큼 증가합니다.",
		multiplier = 0.5,
	}
	talent = tree.talents[2].info
	talent.name = "사악한 일격 연마"
	talent.tips = {
		format = "사악한 일격에 소모되는 기력이 %s만큼 감소합니다.",
		3, -- 1
		5, -- 2
	}
	talent = tree.talents[3].info
	talent.name = "번개같은 반사 신경"
	talent.tips = {
		format = "회피율이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[4].info
	talent.name = "난도질 연마"
	talent.tips = {
		format = "난도질의 지속시간이 %s%%만큼 증가합니다.",
		multiplier = 15,
	}
	talent = tree.talents[5].info
	talent.name = "재빠른 손놀림"
	talent.tips = {
		format = "무기 막기 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[6].info
	talent.name = "정밀함"
	talent.tips = {
		format = "근접 무기의 적중률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[7].info
	talent.name = "인내력"
	talent.tips = {
		format = "전력 질주와 회피의 재사용 대기시간이%s5%s만큼 단축됩니다.",
		table_cache_62, -- 1
		{" 1.", "분"}, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "반격"
	talent.tips = {
		{ -- 1
			{ left = "기력 10", right = "유효거리 5미터" }, -- 1
			table_cache_95,
			{ left = "이 효과는 적의 공격을 무기로 막아낸 후에 활성화됩니다. 다음 공격은 무기 공격력의 150%에 해당하는 피해를 입히고 대상을 6초 동안 무장 해제시킵니다." }, -- 3
		},
	}
	talent = tree.talents[9].info
	talent.name = "전력 질주 연마"
	talent.tips = {
		format = "전력 질주 사용 시 %s%%의 확률로 모든 이동 방해 효과에서 벗어납니다.",
		multiplier = 50,
	}
	talent = tree.talents[10].info
	talent.name = "발차기 연마"
	talent.tips = {
		format = "발차기에 적중한 적을 %s%%의 확률로 2초 동안 침묵하도록 만듭니다.",
		multiplier = 50,
	}
	talent = tree.talents[11].info
	talent.name = "단검류 전문화"
	talent.tips = {
		format = "단검으로 치명타를 적중시킬 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[12].info
	talent.name = "쌍수 무기 전문화"
	talent.tips = {
		format = "보조 무기의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "둔기류 전문화"
	talent.tips = {
		format = "둔기로 공격 시 치명타 공격으로 입히는 피해가 %s%%만큼 증가하고 %s%%의 확률로 3초 동안 기절 시킵니다.",
		table_cache_81, -- 1
		table_cache_44, -- 2
		table_cache_3, -- 3
		table_cache_8, -- 4
		{5, 6}, -- 5
	}
	talent = tree.talents[14].info
	talent.name = "폭풍의 칼날"
	talent.tips = {
		{ -- 1
			{ left = "기력 25" }, -- 1
			table_cache_88,
			table_cache_38,
			{ left = "공격 속도가 20%만큼 증가합니다. 추가로 공격 시 주위의 적 하나를 추가로 공격합니다. 15초 동안 지속됩니다." }, -- 4
		},
	}
	talent = tree.talents[15].info
	talent.name = "도검류 전문화"
	talent.tips = {
		format = "검으로 적을 적중시켰을 때 %s%%의 확률로 같은 대상에게 추가 공격을 가할 수 있습니다.",
	}
	talent = tree.talents[16].info
	talent.name = "장착 무기류 전문화"
	talent.tips = {
		format = "장착 무기로 치명타를 적중시킬 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[17].info
	talent.name = "칼날 비틀기"
	talent.tips = {
		format = "사악한 일격, 기습, 후려치기, 독칼 사용 시 %s%%의 확률로 8초 동안 대상을 멍해지게 만듭니다.",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "무기 전문가"
	talent.tips = {
		format = "숙련이 %s만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[19].info
	talent.name = "공격성"
	talent.tips = {
		format = "사악한 일격과 기습 및 절개의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "활력"
	talent.tips = {
		format = "총 체력이 %s%%만큼 증가하고 총 민첩성이 %s%%만큼 증가합니다.",
		table_cache_59, -- 1
		table_cache_9, -- 2
	}
	talent = tree.talents[21].info
	talent.name = "아드레날린 촉진"
	talent.tips = {
		{ -- 1
			{ left = "즉시 시전", right = "재사용 대기 시간 5분" }, -- 1
			{ left = "15초 동안 기력의 회복 속도가 100%만큼 증가됩니다." }, -- 2
		},
	}
	talent = tree.talents[22].info
	talent.name = "강철 신경"
	talent.tips = {
		format = "기절 및 공포 효과에 저항할 확률이 추가로 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[23].info
	talent.name = "전투 능력"
	talent.tips = {
		format = "보조 무기로 공격을 적중시켰을 경우 20%%의 확률로 %s의 기력이 회복됩니다.",
		multiplier = 3,
	}
	talent = tree.talents[24].info
	talent.name = "급습"
	talent.tips = {
		"상대방이 자신의 마무리 일격을 회피할 수 없게 되며 사악한 일격, 기습, 독칼, 후려치기의 공격력이 10%만큼 증가합니다.", -- 1
	}
	tree = data[3]
	tree.info.name = "잠행"
	talent = tree.talents[1].info
	talent.name = "속임수의 대가"
	talent.tips = {
		format = "은신 상태에서 적이 자신을 발견할 확률이 감소합니다.%s",
		"", -- 1
		" 속임수의 대가 (1레벨) 보다 효과가 좋습니다.", -- 2
		" 속임수의 대가 (2레벨) 보다 효과가 좋습니다.", -- 3
		" 속임수의 대가 (3레벨) 보다 효과가 좋습니다.", -- 4
		" 속임수의 대가 (4레벨) 보다 효과가 좋습니다.", -- 5
	}
	talent = tree.talents[2].info
	talent.name = "기회 포착"
	talent.tips = {
		format = "적의 배후에서 기습이나 절단, 목 조르기, 매복을 사용할 때 공격력이 %s%%만큼 증가합니다.",
		multiplier = 4,
	}
	talent = tree.talents[3].info
	talent.name = "손재주"
	talent.tips = {
		format = "근접 및 원거리 치명타에 적중당할 확률이 %s%%만큼 감소하고 교란으로 감소되는 위협 수준이 %s%%만큼 증가합니다.",
		table_cache_39, -- 1
		table_cache_1, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "비열한 속임수"
	talent.tips = {
		format = "기절시키기와 실명의 사정거리가 %s미터만큼 증가하고 기절시키기와 실명에 소비되는 기력이 %s%%만큼 감소합니다.",
		{2, 25}, -- 1
		{5, 50}, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "위장"
	talent.tips = {
		format = "은신 상태의 이동 속도가 %s%%만큼 증가하고 은신의 재사용 대기시간이 %s초만큼 단축됩니다.",
		table_cache_20, -- 1
		table_cache_67, -- 2
		table_cache_41, -- 3
		table_cache_55, -- 4
		table_cache_36, -- 5
	}
	talent = tree.talents[6].info
	talent.name = "선제 공격"
	talent.tips = {
		format = "매복, 목조르기, 비열한 습격 사용 시 %s%%의 확률로 대상에 대한 연계 포인트 1점이 추가됩니다.",
		multiplier = 25,
	}
	talent = tree.talents[7].info
	talent.name = "그림자 일격"
	talent.tips = {
		{ -- 1
			{ left = "기력 40", right = "유효거 5미터" }, -- 1
			{ left = "즉시 시전", right = "재사용 대기 시간 20초" }, -- 2
			{ left = "적을 공격하여 무기 공격력의 125%에 해당하는 피해를 입히고 7초 동안 자신의 회피 확률을 15%만큼 증가시킵니다. 1의 연계 포인트가 주어집니다." }, -- 3
		},
	}
	talent = tree.talents[8].info
	talent.name = "매복 연마"
	talent.tips = {
		format = "매복으로 치명타를 성공시킬 확률이 %s%%만큼 증가합니다.",
		multiplier = 15,
	}
	talent = tree.talents[9].info
	talent.name = "사전 준비"
	talent.tips = {
		format = "적의 공격을 회피하거나 주문을 완전히 저항했을 때 %s%%의 확률로 대상에 대한 연계 포인트 1점이 추가됩니다.",
		multiplier = 15,
	}
	talent = tree.talents[10].info
	talent.name = "약삭빠름"
	talent.tips = {
		format = "소멸과 실명의 재사용 대기시간이 %s5%s만큼 단축됩니다.",
		table_cache_62, -- 1
		{"1.", "분"}, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "톱니 칼날"
	talent.tips = {
		format = "공격 시 대상의 방어도가 %s만큼 무시되며 파열의 피해가 %s%%만큼 증가합니다. 무시되는 방어도는 자신의 레벨에 따라 증가합니다.",
		{186, 10}, -- 1
		{373, 20}, -- 2
		{560, 30}, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "감지력 향상"
	talent.tips = {
		format = "은신 감지 능력이 증가하고 주문 및 원거리 공격에 적중당할 확률이 %s%%만큼 감소합니다.%s",
		table_cache_5, -- 1
		{4, " 1레벨 보다 효과가 좋습니다."}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "마음가짐"
	talent.tips = {
		{ -- 1
			{ left = "즉시 시전", right = "재사용 대기 시간 10분" }, -- 1
			{ left = "활성화되면 회피, 전력 질주, 소멸, 냉혈, 그림자 밟기, 사전계획의 재사용 대기시간이 초기화됩니다." }, -- 2
		},
	}
	talent = tree.talents[14].info
	talent.name = "비열한 행위"
	talent.tips = {
		format = "비열한 습격과 목조르기에 소비되는 기력이 %s만큼 감소합니다. 추가로, 대상의 생명력이 35%%이하일 경우 특수 기술로 %s%%의 추가 피해를 줍니다.",
		table_cache_47, -- 1
		table_cache_25, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "과다출혈"
	talent.tips = {
		{ -- 1
			{ left = "기력 35", right = "유효거리 5미터" }, -- 1
			table_cache_34,
			table_cache_38,
			{ left = "적에게 즉시 일격을 가하여 무기 공격력의 110%만큼 피해를 입히고 과다출혈을 일으킵니다. 이후에 입히는 모든 물리 공격의 피해가 최대 13만큼 증가합니다. 15초 동안 10회 유효합니다. 1의 연계 포인트가 주어집니다." }, -- 4
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 공격의 피해 18만큼 증가" }, -- 7
			{ left = " 3레벨: 공격의 피해 25만큼 증가" }, -- 8
			{ left = " 4레벨: 공격의 피해 36만큼 증가" }, -- 9
		},
	}
	talent = tree.talents[16].info
	talent.name = "잠행의 대가"
	talent.tips = {
		format = "은신 중에 가한 공격과 은신이 풀린 후 6초 동안에 가한 공격은 %s%%의 추가 피해를 입힙니다.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "적개심"
	talent.tips = {
		format = "전투력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "장막의 그림자"
	talent.tips = {
		format = "광역 공격을 회피할 확률이 추가로 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[19].info
	talent.name = "사전계획"
	talent.tips = {
		{ -- 1
			table_cache_86,
			{ left = "즉시 시전", right = "재사용 대기 시간 2분" }, -- 2
			{ left = "|cffeb0504은신 필요|r" }, -- 3
			{ left = "대상에 대한 연계 포인트 2점이 추가됩니다. 10초 내에 연계 포인트를 추가하거나 추가된 연계 포인트를 사용하지 않으면 연계 포인트가 사라집니다." }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "구사일생"
	talent.tips = {
		format = "%s%%의 확률로 자신을 죽음에 이르도록 만들 수 있는 공격을 완전히 회피합니다. 또한 3초동안 받는 모든 피해가 90%%만큼 감소됩니다. 이 효과는 1분에 1번씩만 발동됩니다.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[21].info
	talent.name = "사악한 충동"
	talent.tips = {
		format = "총 민첩성이 %s%%만큼 증가합니다. 기습과 과다출혈로 증가하는 백분율 피해가 추가로 2%%만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[22].info
	talent.name = "그림자 밟기"
	talent.tips = {
		{ -- 1
			{ left = "기력 10", right = "유효 거리 25 미터" }, -- 1
			table_cache_92,
			{ left = "그림자 사이로 숨어 들어 적의 배후에서 나타납니다. 3초 동안 이동 속도가 70%만큼 증가합니다. 다음 기술의 공격력이 20%만큼 증가하고 생성되는 위협 수준이 50%만큼 감소합니다. 10초 동안 지속됩니다." }, -- 3
		},
	}
	data = Talented_Data.PALADIN
	-- data.name = "성기사"
	tree = data[1]
	tree.info.name = "신성"
	talent = tree.talents[1].info
	talent.name = "천상의 힘"
	talent.tips = {
		format = "전체 힘이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "천상의 지능"
	talent.tips = {
		format = "지능이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "영적인 집중력"
	talent.tips = {
		format = "빛의 섬광이나 성스러운 빛 시전 시 피해를 입어도 %s%%의 확률로 시전 시간이 지연되지 않습니다.",
		multiplier = 14,
	}
	talent = tree.talents[4].info
	talent.name = "정의의 문장 연마"
	talent.tips = {
		format = "정의의 문장과 정의의 심판으로 인한 피해가 %s%%만큼 증가합니다.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "치유의 빛"
	talent.tips = {
		format = "성스러운 빛과 빛의 섬광으로 치유되는 생명력이 %s%%만큼 증가합니다.",
		multiplier = 4,
	}
	talent = tree.talents[6].info
	talent.name = "오라 숙련"
	talent.tips = {
		"모든 오라의 범위가 40미터로 증가합니다.", -- 1
	}
	talent = tree.talents[7].info
	talent.name = "신의 축복 연마"
	talent.tips = {
		format = "신의 축복 사용 시 2분 동안 대상의 장비 착용으로 인한 방어도를 %s%%만큼 증가시킵니다. 추가로 신의 축복의 재사용 대기시간이 %s분만큼 감소합니다.",
		table_cache_64, -- 1
		table_cache_19, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "굳은 신념"
	talent.tips = {
		format = "공포와 방향 감각 상실 효과에 저항할 확률이 추가로 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[9].info
	talent.name = "계시"
	talent.tips = {
		format = "빛의 섬광이나 성스러운 빛, 신성 충격의 치유 효과가 극대화 효과를 발휘한 이후 %s%%의 확률로 소비된 마나의 60%%를 다시 회복 합니다.",
		multiplier = 20,
	}
	talent = tree.talents[10].info
	talent.name = "지혜의 축복 연마"
	talent.tips = {
		format = "지혜의 축복의 효과가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "순결한 마음"
	talent.tips = {
		format = "저주나 질병 효과에 대한 저항력이 %s%%만큼 증가합니다.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "신의 은총 연마"
	talent.tips = {
		{ -- 1
			table_cache_43,
			{ left = "즉시 시전", right = "2분 후 재 사용 가능" }, -- 2
			{ left = "활성화되면 다음 빛의 섬광, 성스러운 빛, 신성 충격 주문이 100%의 확률로 극대화 효과를 발휘합니다." }, -- 3
		},
	}
	talent = tree.talents[13].info
	talent.name = "축복받은 빛"
	talent.tips = {
		format = "성스러운 빛 주문이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "정화의 힘"
	talent.tips = {
		format = "정화, 신성화 주문에 소비되는 마나가 %s%%만큼 감소하고 퇴마술, 신의 격노가 치명타로 적중할 확률이 %s%%만큼 증가합니다.",
		table_cache_57, -- 1
		table_cache_22, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "신성 마법 강화"
	talent.tips = {
		format = "신성 주문이 극대화 효과를 발휘할 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[16].info
	talent.name = "빛의 은총"
	talent.tips = {
		format = "성스러운 빛 시전 시 %s%%의 확률로 다음 성스러운 빛 주문의 시전 시간을 0.5초만큼 단축시키는 빛의 은총 효과를 받게 됩니다. 이 효과는 15초 동안 지속됩니다.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "신성 충격"
	talent.tips = {
		{ -- 1
			{ left = "마나 335", right = "유효 거리20미터" }, -- 1
			table_cache_35,
			{ left = "대상을 성스러운 기운으로 강타하여 277-299의 신성 피해를 입힙니다. 또는 아군 대상의 생명력을 351-379만큼 회복시킵니다." }, -- 3
		},
	}
	talent = tree.talents[18].info
	talent.name = "축복받은 생명"
	talent.tips = {
		format = "모든 공격에 대해 %s%%의 확률로 절반의 피해만 입습니다.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "신성한 인도"
	talent.tips = {
		format = "주문의 공격력과 치유량이 지능의 %s%%만큼 증가합니다.",
		multiplier = 7,
	}
	talent = tree.talents[20].info
	talent.name = "신의 계시"
	talent.tips = {
		{ -- 1
			{ left = "즉시 시전", right = "3 분 후 재 사용 가능" }, -- 1
			{ left = "15초 동안 모든 주문에 소비되는 마나가 50%만큼 감소합니다." }, -- 2
		},
	}
	tree = data[2]
	tree.info.name = "보호"
	talent = tree.talents[1].info
	talent.name = "기원의 오라 연마"
	talent.tips = {
		format = "기원의 오라로 향상되는 방어도가 %s%%만큼 증가합니다.",
		multiplier = 8,
	}
	talent = tree.talents[2].info
	talent.name = "보루"
	talent.tips = {
		format = "근접 및 원거리 공격에 적중당해 피해를 입었을 경우 10%%의 확률로 방패로 공격을 방어할 확률이 %s%%만큼 증가합니다. 10초동안 또는 5회 방어할 때까지 지속됩니다.",
		multiplier = 6,
	}
	talent = tree.talents[3].info
	talent.name = "정밀함"
	talent.tips = {
		format = "근접 무기와 주문의 적중률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[4].info
	talent.name = "수호신의 은총"
	talent.tips = {
		format = "보호의 축복의 재사용 대기시간이 %s초만큼 단축되고 자유의 축복 지속시간이 %s만큼 증가합니다.",
		{60, 2}, -- 1
		{120, 4}, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "강인함"
	talent.tips = {
		format = "장비 착용으로 인한 방어도가 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "왕의 축복"
	talent.tips = {
		{ -- 1
			{ left = "마나 177", right = "유효 거리 30 미터" }, -- 1
			table_cache_34,
			{ left = "파티원에게 왕의 축복을 걸어 10분 동안 모든 능력치를 10%만큼 증가시킵니다. 성기사마다 하나의 대상에게 하나의 축복만 효력을 발휘합니다." }, -- 3
		},
	}
	talent = tree.talents[7].info
	talent.name = "정의의 격노 연마"
	talent.tips = {
		format = "정의의 격노가 활성화되어 있는 동안 받는 모든 피해가 %s%%만큼 감소하고 정의의 격노로 생성되는 위협 수준이 %s%%만큼 증가합니다.",
		table_cache_83, -- 1
		table_cache_32, -- 2
		{6, 50}, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "방패 전문화"
	talent.tips = {
		format = "방패로 인해 흡수되는 피해가 %s%%만큼 증가합니다.",
		multiplier = 10,
	}
	talent = tree.talents[9].info
	talent.name = "직감"
	talent.tips = {
		format = "방어 숙련이 %s만큼 증가합니다.",
		multiplier = 4,
	}
	talent = tree.talents[10].info
	talent.name = "극기"
	talent.tips = {
		format = "기절 효과에 저항할 확률이 추가로 %s%%만큼 증가하고 자신의 주문이 무효화될 확률이 추가로 %s%%만큼 감소합니다.",
		{5, 15}, -- 1
		{10, 30}, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "심판의 망치 연마"
	talent.tips = {
		format = "심판의 망치의 재사용 대기시간이 %s초만큼 감소합니다.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "집중의 오라 연마"
	talent.tips = {
		format = "집중의 오라의 효과가 %s%%만큼 증가하고 오라의 효과를 받는 모든 파티원에게 걸린 침묵과 방해 효과의 지속 시간이 %s%%만큼 단축됩니다. 지속시간 감소 효과는 다른 효과와 중복 적용되지 않습니다.",
		table_cache_57, -- 1
		table_cache_22, -- 2
		table_cache_99, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "주문 수호"
	talent.tips = {
		format = "모든 주문으로부터 받는 피해가 %s%%만큼 감소합니다.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "성역의 축복"
	talent.tips = {
		{ -- 1
			{ left = "마나 60", right = "유효 거리 30 미터" }, -- 1
			table_cache_34,
			{ left = "파티원에게 성역의 축복을 걸어 10분 동안 모든 계열로부터 받는 피해를 최대 10만큼 감소시킵니다. 추가로 근접 공격을 방어할 경우 공격자에게 14의 신성 피해를 입힙니다. 성기사마다 하나의 대상에게 하나의 축복만 효력을 발휘합니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 85 마나, 14의 피해 감소, 21의 신성 피해" }, -- 6
			{ left = " 3레벨: 110 마나, 19의 피해 감소, 28의 신성 피해" }, -- 7
			{ left = " 4레벨: 135 마나, 24의 피해 감소, 35의 신성 피해" }, -- 8
			{ left = " 5레벨: 180 마나, 80의 피해 감소, 46의 신성 피해" }, -- 9
		},
	}
	talent = tree.talents[15].info
	talent.name = "징벌"
	talent.tips = {
		format = "공격을 받아 피해를 입었을 때 %s%%의 확률로 다음 8초 내에 가하는 4회의 무기 공격마다 추가 공격 기회를 얻게 됩니다.",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "성스러운 임무"
	talent.tips = {
		format = "체력이 %s%%만큼 증가하고 천상의 보호막의 재사용 대기시간이 %s초만큼 감소하며 공격 속도 저하 효과가 %s%%만큼 감소합니다.",
		{3, 30, 50}, -- 1
		{6, 60, 100}, -- 2
	}
	talent = tree.talents[17].info
	talent.name = "한손 무기류 전문화"
	talent.tips = {
		format = "한손 무기류를 착용하고 있을 때 모든 공격력이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[18].info
	talent.name = "신성한 방패 연마"
	talent.tips = {
		format = "신성한 방패로 입히는 피해가 %s%%만큼 증가하고 신성한 방패의 발동 횟수가 %s만큼 증가합니다.",
		table_cache_74, -- 1
		{20, 4}, -- 2
	}
	talent = tree.talents[19].info
	talent.name = "신성한 방패"
	talent.tips = {
		{ -- 1
			{ left = "마나 135" }, -- 1
			{ left = "즉시 시전", right = "10초 후 재 사용 가능" }, -- 2
			table_cache_31,
			{ left = "10초 동안 방어 확률이 30%만큼 증가합니다. 이 동안 방어하는 모든 공격은 공격자에게 59의 신성 피해를 입힙니다. 신성한 방패로 인한 피해는 35%의 추가 위협 수준을 발생시킵니다. 4회만큼 발동됩니다." }, -- 4
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 175 마나, 86의 신성 피해" }, -- 7
			{ left = " 3레벨: 215 마나, 117의 신성 피해" }, -- 8
			{ left = " 4레벨: 280 마나, 155의 신성 피해" }, -- 9
		},
	}
	talent = tree.talents[20].info
	talent.name = "헌신적인 수호자"
	talent.tips = {
		format = "생명력이 35%% 미만일 때 받는 모든 피해가 %s%%만큼 감소합니다.",
		multiplier = 6,
	}
	talent = tree.talents[21].info
	talent.name = "전투 숙련"
	talent.tips = {
		format = "총 체력이 %s%%만큼 숙련이 %s만큼 증가합니다.",
		table_cache_59, -- 1
		table_cache_9, -- 2
		table_cache_21, -- 3
		table_cache_50, -- 4
		table_cache_18, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "응징의 방패"
	talent.tips = {
		{ -- 1
			{ left = "마나 500", right = "유효거리 5-30미터" }, -- 1
			{ left = "시전 시간 1초", right = "30 초 후 재 사용 가능" }, -- 2
			{ left = "적에게 신성한 방패를 날려 270-330의 신성 피해를 입히고 멍해지도록 만듭니다. 주위 적을 연쇄적으로 가격하며 최대 3명의 대상을 공격합니다. 6초 동안 지속됩니다." }, -- 3
			table_cache_46,
			table_cache_66,
			{ left = " 2레벨: 615 마나, 370-452의 신성 피해" }, -- 6
			{ left = " 3레벨: 780 마나, 494-602의 신성 피해" }, -- 7
		},
	}
	tree = data[3]
	tree.info.name = "징벌"
	talent = tree.talents[1].info
	talent.name = "힘의 축복 연마"
	talent.tips = {
		format = "힘의 축복으로 향상되는 근접 전투력이 %s%%만큼 증가합니다.",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "축복의 기도"
	talent.tips = {
		format = "심판 및 문장에 소비되는 마나가 %s%%만큼 감소합니다.",
		multiplier = 3,
	}
	talent = tree.talents[3].info
	talent.name = "심판 연마"
	talent.tips = {
		format = "심판의 재사용 대기시간이 %s초만큼 감소합니다.",
	}
	talent = tree.talents[4].info
	talent.name = "성전사의 문장 연마"
	talent.tips = {
		format = "성전사의 심판의 일반 효과와 더불어, 해당 대상에게 가해지는 모든 공격이 치명타로 적중될 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[5].info
	talent.name = "재빠른 손놀림"
	talent.tips = {
		format = "무기 막기 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[6].info
	talent.name = "비호"
	talent.tips = {
		format = "성기사가 근접 공격으로 피해를 입혔을 때 일정 확률로 15초 동안 대상의 모든 능력치를 %s%%만큼 감소시키게 합니다.",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "자각"
	talent.tips = {
		format = "근접 공격으로 치명타를 적중시킬 확률이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[8].info
	talent.name = "지휘의 문장"
	talent.tips = {
		{ -- 1
			{ left = "마나 65" }, -- 1
			table_cache_34,
			{ left = "30초 동안 성기사를 지휘의 기운으로 감싸 일정 확률로 무기 피해의 70%만큼에 해당하는 추가 신성 피해를 입힙니다. 성기사마다 하나의 문장만 효력을 발휘합니다." }, -- 3
			table_cache_46,
			{ left = "문장의 에너지를 폭발시키면 즉시 해당 적에게 46-51의 신성 피해를 입히고 만약 적이 기절 또는 행동 불가 상태였다면 93-101의 피해를 입힙니다." }, -- 5
		},
	}
	talent = tree.talents[9].info
	talent.name = "심판의 추격"
	talent.tips = {
		format = "주문에 적중당할 확률이 %s%%만큼 감소하고 이동 속도와 탈것의 이동 속도가 %s%%만큼 증가합니다. 다른 이동 속도 증가 효과와 중복 적용되지 않습니다.",
		table_cache_63, -- 1
		table_cache_80, -- 2
		table_cache_70, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "눈에는 눈"
	talent.tips = {
		format = "자신이 주문 치명타 피해를 입었을 때 주문의 시전자도 주문 피해의 %s%%에 해당하는 피해를 입게 됩니다. 눈에는 눈 특성으로 인한 피해는 성기사 최대 생명력의 50%%를 초과하지 않습니다.",
		multiplier = 15,
	}
	talent = tree.talents[11].info
	talent.name = "응보의 오라 연마"
	talent.tips = {
		format = "응보의 오라로 입히는 피해가 %s%%만큼 증가합니다.",
		multiplier = 25,
	}
	talent = tree.talents[12].info
	talent.name = "성전"
	talent.tips = {
		format = "인간형, 악마, 언데드, 정령에 대한 모든 공격력이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[13].info
	talent.name = "양손 무기류 전문화"
	talent.tips = {
		format = "양손 무기의 공격력이 %s%%만큼 증가합니다.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "고결의 오라"
	talent.tips = {
		{ -- 1
			table_cache_34,
			{ left = "30미터 반경 내에 있는 파티원의 신성 공격력을 10%만큼 증가시킵니다. 오라는 성기사마다 동시에 하나만 유지할 수 있습니다." }, -- 2
		},
	}
	talent = tree.talents[15].info
	talent.name = "고결의 오라 연마"
	talent.tips = {
		format = "고결의 오라로 인해 증가되는 대상의 공격력이 %s%%만큼 증가합니다.",
	}
	talent = tree.talents[16].info
	talent.name = "복수"
	talent.tips = {
		format = "무기나 주문, 기술에 의한 치명타 적중 후 다음 30초 동안 물리 및 신성 공격력이 %s%%만큼 증가합니다. 최대 3번까지 중복됩니다.",
	}
	talent = tree.talents[17].info
	talent.name = "신성한 심판"
	talent.tips = {
		format = "심판 사용 시 %s%%의 확률로 심판에 소비된 마나 소비량의 80%%만큼을 되돌려받습니다.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "신성한 성전사"
	talent.tips = {
		format = "모든 주문과 근접 공격이 치명타로 적중될 확률이 %s%%만큼 증가하고 문장이 무효화될 확률이 %s%%만큼 감소합니다.",
		{1, 33}, -- 1
		{2, 66}, -- 2
		{3, 100}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "참회"
	talent.tips = {
		{ -- 1
			{ left = "마나 60", right = "유효 거리 20미터" }, -- 1
			{ left = "즉시 시전", right = "1분 후 재 사용 가능" }, -- 2
			{ left = "적을 최대 6초 동안 회고의 시간을 가지게 하여 행동 불가 상태로 만듭니다. 대상이 피해를 입으면 깨어납니다. 인간형에게만 사용할 수 있습니다." }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "신성한 목적"
	talent.tips = {
		format = "근접 및 원거리 치명타 공격에 적중당할 경우 받는 피해가 %s%%만큼 감소합니다.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[21].info
	talent.name = "광신"
	talent.tips = {
		format = "극대화 효과를 낼 수 있는 심판 주문이 극대화 효과를 발휘할 확률이 %s%%만큼 증가하고 정의의 격노가 활성화되어 있지 않을 때 모든 기술 및 주문으로 생성되는 위협 수준이 %s%%만큼 감소합니다.",
		table_cache_28, -- 1
		{6, 12}, -- 2
		{9, 18}, -- 3
		table_cache_90, -- 4
		table_cache_99, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "성전사의 일격"
	talent.tips = {
		{ -- 1
			table_cache_97,
			{ left = "즉시 시전", right = "6초 후 재 사용 가능" }, -- 2
			table_cache_38,
			{ left = "적에게 즉시 일격을 가하여 무기 공격력에 신성 주문 피해의 110%만큼의 추가 피해를 입히고 대상에 걸려 있는 모든 심판을 초기화시킵니다." }, -- 4
		},
	}
end
