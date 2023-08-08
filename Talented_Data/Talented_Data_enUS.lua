-- Generated Data : Do Not Modify
if Talented_Data and GetLocale() == "enUS" then
	local data, tree, talent
	local table_cache_1 = { left = "Instant cast" }
	local table_cache_2 = { left = "Instant", right = "2 min cooldown" }
	local table_cache_3 = { left = "1.5 sec cast" }
	local table_cache_4 = {2, 20}
	local table_cache_5 = { left = "Instant", right = "5 min cooldown" }
	local table_cache_6 = { left = "Instant", right = "8 min cooldown" }
	local table_cache_7 = {1, ""}
	local table_cache_8 = {3, 3}
	local table_cache_9 = {30, 30, 30}
	local table_cache_10 = {8, 8}
	local table_cache_11 = {5, 1}
	local table_cache_12 = {1, 25}
	local table_cache_13 = {15, 6}
	local table_cache_14 = {15, 10}
	local table_cache_15 = {2, 4}
	local table_cache_16 = { left = "Requires Shields" }
	local table_cache_17 = { left = "Instant", right = "30 sec cooldown" }
	local table_cache_18 = {20, 10}
	local table_cache_19 = { left = "Requires Ranged Weapon" }
	local table_cache_20 = {4, 4}
	local table_cache_21 = { left = "88 Mana" }
	local table_cache_22 = { left = "30 yd range" }
	local table_cache_23 = {2, 50}
	local table_cache_24 = {4, 2}
	local table_cache_25 = {1, 4}
	local table_cache_26 = {12, 12}
	local table_cache_27 = {5, 5}
	local table_cache_28 = {12, 6}
	local table_cache_29 = { left = "Instant", right = "3 min cooldown" }
	local table_cache_30 = { left = "Instant" }
	local table_cache_31 = {10, 5}
	local table_cache_32 = {30, 20}
	local table_cache_33 = {1, 5}
	local table_cache_34 = {3, 1}
	local table_cache_35 = {6, 3}
	local table_cache_36 = {10, 20}
	local table_cache_37 = {4, 8}
	local table_cache_38 = {20, 20}
	local table_cache_39 = {2, 3}
	local table_cache_40 = {4, 6}
	local table_cache_41 = {3, 6}
	local table_cache_42 = { left = " Trainable Ranks Listed Below:" }
	local table_cache_43 = { left = "Reagents: Soul Shard" }
	local table_cache_44 = {10, 15}
	local table_cache_45 = {4, "sec"}
	local table_cache_46 = { left = "Requires Melee Weapon" }
	local table_cache_47 = {16, 16}
	local table_cache_48 = {8, 12}
	local table_cache_49 = { left = "Instant cast", right = "15 sec cooldown" }
	local table_cache_50 = {15, 5}
	local table_cache_51 = {10, 4}
	local table_cache_52 = {10, 30}
	local table_cache_53 = {1, 10}
	local table_cache_54 = {2, "s"}
	local table_cache_55 = {3, "s"}
	local table_cache_56 = {4, 33}
	local table_cache_57 = { left = "Grants both the Warlock and the summoned demon an effect as long as that demon is active." }
	local table_cache_58 = { left = " Trainable Ranks Listed Below" }
	local table_cache_59 = { left = "" }
	local table_cache_60 = {10, 10}
	local table_cache_61 = {8, 4}
	local table_cache_62 = { left = "Instant cast", right = "1 min cooldown" }
	local table_cache_63 = { left = "The act of shapeshifting frees the caster of Polymorph and Movement Impairing effects." }
	local table_cache_64 = {7, 4}
	local table_cache_65 = {5, 15}
	local table_cache_66 = {12, 4}
	local table_cache_67 = { left = "Instant", right = "6 sec cooldown" }
	local table_cache_68 = {5, 10}
	local table_cache_69 = {6, 2}
	local table_cache_70 = {2, 1}
	local table_cache_71 = {10, 40}
	local table_cache_72 = { left = "Instant cast", right = "10 sec cooldown" }
	local table_cache_73 = {10, 50}
	local table_cache_74 = { left = "10 Rage" }
	local table_cache_75 = {6, 6}
	local table_cache_76 = {15, 2}
	local table_cache_77 = {4, 20}
	local table_cache_78 = {3, 15}
	local table_cache_79 = {9, 3}
	local table_cache_80 = {20, 2}
	local table_cache_81 = {30, 4}
	local table_cache_82 = {10, 2}
	local table_cache_83 = {30, 30}
	local table_cache_84 = {15, 3}
	local table_cache_85 = { left = "Instant cast", right = "3 min cooldown" }
	local table_cache_86 = {"1.", "min"}
	local table_cache_87 = { left = "Instant cast", right = "2 min cooldown" }
	local table_cache_88 = {5, 25}
	local table_cache_89 = { left = "225 Mana", right = "20 yd range" }
	local table_cache_90 = {2, 10}
	local table_cache_91 = {16, 8}
	local table_cache_92 = {1, 2}
	local table_cache_93 = {1, 1}
	local table_cache_94 = {2, 16}
	local table_cache_95 = {2, 2}
	local table_cache_96 = { left = "15 Rage", right = "Melee Range" }
	local table_cache_97 = {12, 24}
	local table_cache_98 = {1, 3}
	local table_cache_99 = {2, 6}
	local table_cache_100 = {15, 30}
	local table_cache_101 = { left = "30 Rage", right = "Melee range" }
	local table_cache_102 = {100, 20}
	local table_cache_103 = {50, 10}
	data = Talented_Data.HUNTER
	-- data.name = "Hunter Talents"
	tree = data[1]
	tree.info.name = "Beast Mastery"
	talent = tree.talents[1].info
	talent.name = "Improved Aspect of the Hawk"
	talent.tips = {
		format = "While Aspect of the Hawk is active, all normal ranged attacks have a 10%% chance of increasing ranged attack speed by %s%% for 12 sec.",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "Endurance Training"
	talent.tips = {
		format = "Increases the Health of your pets by %s%% and your total health by %s%%.",
		table_cache_70, -- 1
		table_cache_24, -- 2
		table_cache_35, -- 3
		table_cache_61, -- 4
		table_cache_31, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "Focused Fire"
	talent.tips = {
		format = "All damage caused by you is increased by %s%% while your pet is active and the critical strike chance of your Kill Command Ability is increased by %s%%.",
		table_cache_53, -- 1
		table_cache_4, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "Improved Aspect of the Monkey"
	talent.tips = {
		format = "Increases the Dodge bonus of your Aspect of the Monkey by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "Thick Hide"
	talent.tips = {
		format = "Increases the armor rating of your pets by %s%% and your armor contributions from items by %s%%.",
		table_cache_64, -- 1
		{14, 7}, -- 2
		table_cache_18, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "Improved Revive Pet"
	talent.tips = {
		format = "Revive Pet's casting time is reduced by %s sec, mana cost is reduced by %s%%, and increases the health your pet returns with by an additional %s%%.",
		{3, 20, 15}, -- 1
		{6, 40, 30}, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "Pathfinding"
	talent.tips = {
		format = "Increases the speed bonus of your Aspect of the Cheetah and Aspect of the Pack by %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[8].info
	talent.name = "Bestial Swiftness"
	talent.tips = {
		"Increases the outdoor movement speed of your pets by 30%.", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "Unleashed Fury"
	talent.tips = {
		format = "Increases the damage done by your pets by %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[10].info
	talent.name = "Improved Mend Pet"
	talent.tips = {
		format = "Reduces the mana cost of your Mend Pet spell by %s%% and gives the Mend Pet spell a %s%% chance of cleansing 1 Curse, Disease, Magic or Poison effect from the pet each tick.",
		{10, 25}, -- 1
		{20, 50}, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "Ferocity"
	talent.tips = {
		format = "Increases the critical strike chance of your pets by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "Spirit Bond"
	talent.tips = {
		format = "While your pet is active, you and your pet will regenerate %s%% of total health every 10 sec.",
	}
	talent = tree.talents[13].info
	talent.name = "Intimidation"
	talent.tips = {
		{ -- 1
			{ left = "202 Mana", right = "100 yd range" }, -- 1
			table_cache_62,
			{ left = "Command your pet to intimidate the target on the next successful melee attack, causing a high amount of threat and stunning the target for 3 sec." }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "Bestial Discipline"
	talent.tips = {
		format = "Increases the Focus regeneration of your pets by %s%%.",
		multiplier = 50,
	}
	talent = tree.talents[15].info
	talent.name = "Animal Handler"
	talent.tips = {
		format = "Increases your speed while mounted by %s%% and your pet's chance to hit by %s%%. The mounted movement speed increase does not stack with other effects.",
		table_cache_24, -- 1
		table_cache_61, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "Frenzy"
	talent.tips = {
		format = "Gives your pet a %s%% chance to gain a 30%% attack speed increase for 8 sec after dealing a critical strike.",
		multiplier = 20,
	}
	talent = tree.talents[17].info
	talent.name = "Ferocious Inspiration"
	talent.tips = {
		format = "When your pet scores a critical hit, all party members have all damage increased by %s%% for 10 sec.",
	}
	talent = tree.talents[18].info
	talent.name = "Bestial Wrath"
	talent.tips = {
		{ -- 1
			{ left = "338 Mana", right = "100 yd range" }, -- 1
			table_cache_87,
			{ left = "Send your pet into a rage causing 50% additional damage for 18 sec. While enraged, the beast cannot be stopped unless killed." }, -- 3
		},
	}
	talent = tree.talents[19].info
	talent.name = "Catlike Reflexes"
	talent.tips = {
		format = "Increases your chance to dodge by %s%% and your pet's chance to dodge by an additional %s%%.",
		table_cache_98, -- 1
		table_cache_99, -- 2
		{3, 9}, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "Serpent's Swiftness"
	talent.tips = {
		format = "Increases ranged combat attack speed by %s%% and your pet's melee attack speed by %s%%.",
		table_cache_20, -- 1
		table_cache_10, -- 2
		table_cache_26, -- 3
		table_cache_47, -- 4
		table_cache_38, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "The Beast Within"
	talent.tips = {
		"When your pet is under the effects of Bestial Wrath, you also go into a rage causing 10% additional damage and reducing mana costs of all spells by 20% for 18 sec. While enraged, you do not feel pity or remorse or fear and you cannot be stopped unless killed.", -- 1
	}
	tree = data[2]
	tree.info.name = "Marksmanship"
	talent = tree.talents[1].info
	talent.name = "Improved Concussive Shot"
	talent.tips = {
		format = "Gives your Concussive Shot a %s%% chance to stun the target for 3 sec.",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "Lethal Shots"
	talent.tips = {
		format = "Increases your critical strike chance with ranged weapons by %s%%.",
	}
	talent = tree.talents[3].info
	talent.name = "Improved Hunter's Mark"
	talent.tips = {
		format = "Causes %s%% of your Hunter's Mark ability's base attack power to apply to melee attack power as well.",
		multiplier = 20,
	}
	talent = tree.talents[4].info
	talent.name = "Efficiency"
	talent.tips = {
		format = "Reduces the Mana cost of your Shots and Stings by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "Go for the Throat"
	talent.tips = {
		format = "Your ranged critical hits cause your pet to generate %s Focus.",
		multiplier = 25,
	}
	talent = tree.talents[6].info
	talent.name = "Improved Arcane Shot"
	talent.tips = {
		format = "Reduces the cooldown of your Arcane Shot by %s sec.",
		0.2, -- 1
		0.4, -- 2
		0.6, -- 3
		0.8, -- 4
		1, -- 5
	}
	talent = tree.talents[7].info
	talent.name = "Aimed Shot"
	talent.tips = {
		{ -- 1
			{ left = "75 Mana", right = "5-35 yd range" }, -- 1
			{ left = "3 sec cast" }, -- 2
			{ left = "6 sec cooldown" }, -- 3
			table_cache_59,
			table_cache_19,
			{ left = "An aimed shot that increases ranged damage by 870 and reduces healing done to that target by 50%. Lasts 10 sec." }, -- 6
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 115 Mana, 125 Damage" }, -- 9
			{ left = " Rank 3: 160 Mana, 200 Damage" }, -- 10
			{ left = " Rank 4: 210 Mana, 330 Damage" }, -- 11
			{ left = " Rank 5: 260 Mana, 460 Damage" }, -- 12
			{ left = " Rank 6: 310 Mana, 600 Damage" }, -- 13
			{ left = " Rank 7: 370 Mana, 870 Damage" }, -- 14
		},
	}
	talent = tree.talents[8].info
	talent.name = "Rapid Killing"
	talent.tips = {
		format = "Reduces the cooldown of your Rapid Fire ability by %s min.  In addition, after killing an opponent that yields experience or honor, your next Aimed Shot, Arcane Shot or Auto Shot causes %s%% additional damage.  Lasts 20 sec.",
		table_cache_53, -- 1
		table_cache_4, -- 2
	}
	talent = tree.talents[9].info
	talent.name = "Improved Stings"
	talent.tips = {
		format = "Increases the damage done by your Serpent Sting and Wyvern Sting by %s%%, increases the mana drained by your Viper Sting by %s%%, and reduces the chance Stings will be dispelled by %s%%.",
		{6, 6, 6}, -- 1
		{12, 12, 12}, -- 2
		{18, 18, 18}, -- 3
		{24, 24, 24}, -- 4
		table_cache_9, -- 5
	}
	talent = tree.talents[10].info
	talent.name = "Mortal Shots"
	talent.tips = {
		format = "Increases your ranged weapon critical strike damage bonus by %s%%.",
		multiplier = 6,
	}
	talent = tree.talents[11].info
	talent.name = "Concussive Barrage"
	talent.tips = {
		format = "Your successful Auto Shot attacks have a %s%% chance to Daze the target for 4 sec.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "Scatter Shot"
	talent.tips = {
		{ -- 1
			{ left = "202 Mana", right = "15 yd range" }, -- 1
			table_cache_17,
			table_cache_19,
			{ left = "A short-range shot that deals 50% weapon damage and disorients the target for 4 sec. Any damage caused will remove the effect. Turns off your attack when used." }, -- 4
		},
	}
	talent = tree.talents[13].info
	talent.name = "Barrage"
	talent.tips = {
		format = "Increases the damage done by your Multi-Shot and Volley spells by %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[14].info
	talent.name = "Combat Experience"
	talent.tips = {
		format = "Increases your total Agility by %s%% and your total Intellect by %s%%.",
		table_cache_98, -- 1
		table_cache_99, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "Ranged Weapon Specialization"
	talent.tips = {
		format = "Increases the damage you deal with ranged weapons by %s%%.",
	}
	talent = tree.talents[16].info
	talent.name = "Careful Aim"
	talent.tips = {
		format = "Increases your ranged attack power by an amount equal to %s%% of your total Intellect.",
		multiplier = 15,
	}
	talent = tree.talents[17].info
	talent.name = "Trueshot Aura"
	talent.tips = {
		{ -- 1
			table_cache_1,
			{ left = "Increases the attack power of party members within 45 yards by 50. Lasts until cancelled." }, -- 2
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 425 Mana, 75 Attack Power" }, -- 5
			{ left = " Rank 3: 525 Mana, 100 Attack Power" }, -- 6
			{ left = " Rank 4: 620 Mana, 125 Attack Power" }, -- 7
		},
	}
	talent = tree.talents[18].info
	talent.name = "Improved Barrage"
	talent.tips = {
		format = "Increases the critical strike chance of your Multi-Shot ability by %s%% and gives you a %s%% chance to avoid interruption caused by damage while channeling Volley.",
		table_cache_56, -- 1
		{8, 66}, -- 2
		{12, 100}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Master Marksman"
	talent.tips = {
		format = "Increases your ranged attack power by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "Silencing Shot"
	talent.tips = {
		{ -- 1
			{ left = "202 Mana", right = "5-35 yd range" }, -- 1
			{ left = "Instant Cast", right = "20 sec cooldown" }, -- 2
			{ left = "A shot that deals 50% weapon damage and Silences the target for 3 sec." }, -- 3
		},
	}
	tree = data[3]
	tree.info.name = "Survival"
	talent = tree.talents[1].info
	talent.name = "Monster Slaying"
	talent.tips = {
		format = "Increases all damage caused against Beast, Giants and Dragonkin targets by %s%% and increases critical damage caused against Beasts, Giants, and Dragonkin targets by an additional %s%%.",
		table_cache_93, -- 1
		table_cache_95, -- 2
		table_cache_8, -- 3
	}
	talent = tree.talents[2].info
	talent.name = "Humanoid Slaying"
	talent.tips = {
		format = "Increases all damage caused against Humanoid targets by %s%% and increases critical damage caused against Humanoid targets by an additional %s%%.",
		table_cache_93, -- 1
		table_cache_95, -- 2
		table_cache_8, -- 3
	}
	talent = tree.talents[3].info
	talent.name = "Hawk Eye"
	talent.tips = {
		format = "Increases the range of your ranged weapons by %s yards.",
		multiplier = 2,
	}
	talent = tree.talents[4].info
	talent.name = "Savage Strikes"
	talent.tips = {
		format = "Increases the critical strike chance of Raptor Strike and Mongoose Bite by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[5].info
	talent.name = "Entrapment"
	talent.tips = {
		format = "Gives your Immolation Trap, Frost Trap, Explosive Trap, and Snake Trap a %s%% chance to entrap the target, preventing them from moving for 4 sec.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "Deflection"
	talent.tips = {
		format = "Increases your Parry chance by %s%%.",
	}
	talent = tree.talents[7].info
	talent.name = "Improved Wing Clip"
	talent.tips = {
		format = "Gives your Wing Clip ability a %s%% chance to immobilize the target for 5 sec.",
		7, -- 1
		14, -- 2
		20, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "Clever Traps"
	talent.tips = {
		format = "Increases the duration of Freezing and Frost trap effects by %s%%, the damage of Immolation and Explosive trap effects by %s%%, and the number of snakes summoned from Snake Traps by %s%%.",
		{15, 15, 15}, -- 1
		table_cache_9, -- 2
	}
	talent = tree.talents[9].info
	talent.name = "Survivalist"
	talent.tips = {
		format = "Increases total health by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[10].info
	talent.name = "Deterrence"
	talent.tips = {
		{ -- 1
			table_cache_5,
			{ left = "When activated, increases your Dodge and Parry chance by 25% for 10 sec." }, -- 2
		},
	}
	talent = tree.talents[11].info
	talent.name = "Trap Mastery"
	talent.tips = {
		format = "Decreases the chance enemies will resist trap effects by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "Surefooted"
	talent.tips = {
		format = "Increases hit chance by %s%% and increases the chance movement impairing effects will be resisted by an additional %s%%.",
		table_cache_33, -- 1
		table_cache_90, -- 2
		table_cache_78, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "Improved Feign Death"
	talent.tips = {
		format = "Reduces the chance your Feign Death ability will be resisted by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "Survival Instincts"
	talent.tips = {
		format = "Reduces all damage taken by %s%% and increases attack power by %s%%.",
		table_cache_95, -- 1
		table_cache_20, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "Killer Instinct"
	talent.tips = {
		format = "Increases your critical strike chance with all attacks by %s%%.",
	}
	talent = tree.talents[16].info
	talent.name = "Counterattack"
	talent.tips = {
		{ -- 1
			{ left = "45 Mana", right = "Melee range" }, -- 1
			{ left = "Instant cast", right = "5 sec cooldown" }, -- 2
			{ left = "A strike that becomes active after parrying an opponent's attack. This attack deals 40 damage and immobilizes the target for 5 sec. Counterattack cannot be blocked, dodged, or parried." }, -- 3
			table_cache_59,
			table_cache_58,
			{ left = " Rank 2: 65 Mana, 70 Damage" }, -- 6
			{ left = " Rank 3: 85 Mana, 110 Damage" }, -- 7
			{ left = " Rank 4: 110 Mana, 165 Damage" }, -- 8
		},
	}
	talent = tree.talents[17].info
	talent.name = "Resourcefulness"
	talent.tips = {
		format = "Reduces the mana cost of all traps and melee abilities by %s%% and reduces the cooldown of all traps by %s sec.",
		table_cache_80, -- 1
		{40, 4}, -- 2
		{60, 6}, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "Lightning Reflexes"
	talent.tips = {
		format = "Increases your Agility by %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[19].info
	talent.name = "Thrill of the Hunt"
	talent.tips = {
		format = "Gives you a %s%% chance to regain 40%% of the mana cost of any shot when it critically hits.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "Wyvern Sting"
	talent.tips = {
		{ -- 1
			{ left = "115 Mana", right = "8-35 yd range" }, -- 1
			table_cache_87,
			{ left = "A stinging shot that puts the target to sleep for 12 sec. Any damage will cancel the effect. When the target wakes up, the Sting causes 300 Nature damage over 12 sec. Only one Sting per Hunter can be active on the target at a time." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 155 Mana, 420 Damage" }, -- 6
			{ left = " Rank 3: 205 Mana, 600 Damage" }, -- 7
		},
	}
	talent = tree.talents[21].info
	talent.name = "Expose Weakness"
	talent.tips = {
		format = "Your ranged criticals have a %s%% chance to apply an Expose Weakness effect to the target. Expose Weakness increases the Attack Power of all attackers against that target by 25%% of your Agility for 7 sec.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[22].info
	talent.name = "Master Tactician"
	talent.tips = {
		format = "Your successful ranged attacks have a 6%% chance to increase your critical strike chance with all attacks by %s%% for 8 sec.",
		multiplier = 2,
	}
	talent = tree.talents[23].info
	talent.name = "Readiness"
	talent.tips = {
		{ -- 1
			table_cache_5,
			{ left = "When activated, this ability immediately finishes the cooldown on your other Hunter abilities." }, -- 2
		},
	}
	data = Talented_Data.WARRIOR
	-- data.name = "Warrior Talents"
	tree = data[1]
	tree.info.name = "Arms"
	talent = tree.talents[1].info
	talent.name = "Improved Heroic Strike"
	talent.tips = {
		format = "Reduces the cost of your Heroic Strike ability by %s rage point%s.",
		table_cache_7, -- 1
		table_cache_54, -- 2
		table_cache_55, -- 3
	}
	talent = tree.talents[2].info
	talent.name = "Deflection"
	talent.tips = {
		format = "Increases your Parry chance by %s%%.",
	}
	talent = tree.talents[3].info
	talent.name = "Improved Rend"
	talent.tips = {
		format = "Increases the bleed damage done by your Rend ability by %s%%.",
		multiplier = 25,
	}
	talent = tree.talents[4].info
	talent.name = "Improved Charge"
	talent.tips = {
		format = "Increases the amount of rage generated by your Charge ability by %s.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "Iron Will"
	talent.tips = {
		format = "Increases your chance to resist Stun and Charm effects by an additional %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[6].info
	talent.name = "Improved Thunder Clap"
	talent.tips = {
		format = "Reduces the cost of your Thunder Clap ability by %s rage point%s and increases the damage by %s%% and the slowing effect by an additional %s%%.",
		{1, "", 40, 4}, -- 1
		{2, "s", 70, 7}, -- 2
		{4, "s", 100, 10}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "Improved Overpower"
	talent.tips = {
		format = "Increases the critical strike chance of your Overpower ability by %s%%.",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "Anger Management"
	talent.tips = {
		"Generates 1 rage per 3 seconds.", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "Deep Wounds"
	talent.tips = {
		format = "Your critical strikes cause the opponent to bleed, dealing %s%% of your melee weapon's average damage over 12 sec.",
		multiplier = 20,
	}
	talent = tree.talents[10].info
	talent.name = "Two-Handed Weapon Specialization"
	talent.tips = {
		format = "Increases the damage you deal with two-handed melee weapons by %s%%.",
	}
	talent = tree.talents[11].info
	talent.name = "Impale"
	talent.tips = {
		format = "Increases the critical strike damage bonus of your abilities in Battle, Defensive, and Berserker stance by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[12].info
	talent.name = "Poleaxe Specialization"
	talent.tips = {
		format = "Increases your chance to get a critical strike with Axes and Polearms by %s%%.",
	}
	talent = tree.talents[13].info
	talent.name = "Death Wish"
	talent.tips = {
		{ -- 1
			table_cache_74,
			table_cache_29,
			{ left = "When activated, increases your physical damage by 20% and makes you immune to Fear effects, but increases all damage taken by 5%. Lasts 30 sec." }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "Mace Specialization"
	talent.tips = {
		format = "Gives your melee attacks a chance to stun your target for 3 sec and generate 7 rage when using a Mace.%s",
		"", -- 1
		" More effective than Mace Specialization (Rank 1).", -- 2
		" More effective than Mace Specialization (Rank 2).", -- 3
		" More effective than Mace Specialization (Rank 3).", -- 4
		" More effective than Mace Specialization (Rank 4).", -- 5
	}
	talent = tree.talents[15].info
	talent.name = "Sword Specialization"
	talent.tips = {
		format = "Gives you a %s%% chance to get an extra attack on the same target after hitting your target with your Sword.",
	}
	talent = tree.talents[16].info
	talent.name = "Improved Intercept"
	talent.tips = {
		format = "Reduces the cooldown of your Intercept ability by %s sec.",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "Improved Hamstring"
	talent.tips = {
		format = "Gives your Hamstring ability a %s%% chance to immobilize the target for 5 sec.",
		multiplier = 5,
	}
	talent = tree.talents[18].info
	talent.name = "Improved Disciplines"
	talent.tips = {
		format = "Reduces the cooldown of your Retaliation, Recklessness and Shield Wall abilities by %s min and increases their duration by %s sec.",
		table_cache_24, -- 1
		table_cache_64, -- 2
		{10, 6}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Blood Frenzy"
	talent.tips = {
		format = "Your Rend and Deep Wounds abilities also increase all melee damage caused to that target by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "Mortal Strike"
	talent.tips = {
		{ -- 1
			table_cache_101,
			table_cache_67,
			table_cache_46,
			{ left = "A vicious strike that deals weapon damage plus 85 and wounds the target, reducing the effectiveness of any healing by 50% for 10 sec." }, -- 4
			table_cache_59,
			table_cache_42,
			{ left = "  Rank 2: +110 Damage" }, -- 7
			{ left = "  Rank 3: +135 Damage" }, -- 8
			{ left = "  Rank 4: +160 Damage" }, -- 9
			{ left = "  Rank 5: +185 Damage" }, -- 10
			{ left = "  Rank 6: +210 Damage" }, -- 11
		},
	}
	talent = tree.talents[21].info
	talent.name = "Second Wind"
	talent.tips = {
		format = "Whenever you are struck by a Stun or Immobilize effect you will generate %s rage and %s%% of your total health over 10 sec.",
		table_cache_31, -- 1
		table_cache_18, -- 2
	}
	talent = tree.talents[22].info
	talent.name = "Improved Mortal Strike"
	talent.tips = {
		format = "Reduces the cooldown of your Mortal Strike ability by %s sec and increases the damage it causes by %s%%.",
		{0.2, 1}, -- 1
		{0.4, 2}, -- 2
		{0.6, 3}, -- 3
		{0.8, 4}, -- 4
		table_cache_33, -- 5
	}
	talent = tree.talents[23].info
	talent.name = "Endless Rage"
	talent.tips = {
		"You generate 25% more rage from damage dealt.", -- 1
	}
	tree = data[2]
	tree.info.name = "Fury"
	talent = tree.talents[1].info
	talent.name = "Booming Voice"
	talent.tips = {
		format = "Increases the area of effect and duration of your Battle Shout, Demoralizing Shout, and Commanding Shout by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[2].info
	talent.name = "Cruelty"
	talent.tips = {
		format = "Increases your chance to get a critical strike with melee weapons by %s%%.",
	}
	talent = tree.talents[3].info
	talent.name = "Improved Demoralizing Shout"
	talent.tips = {
		format = "Increases the melee attack power reduction of your Demoralizing Shout by %s%%.",
		multiplier = 8,
	}
	talent = tree.talents[4].info
	talent.name = "Unbridled Wrath"
	talent.tips = {
		format = "Gives you a chance to generate an additional rage point when you deal melee damage with a weapon.%s",
		"", -- 1
		"  Effect occurs more often than Unbridled Wrath (Rank 1).", -- 2
		"  Effect occurs more often than Unbridled Wrath (Rank 2).", -- 3
		"  Effect occurs more often than Unbridled Wrath (Rank 3).", -- 4
		"  Effect occurs more often than Unbridled Wrath (Rank 4).", -- 5
	}
	talent = tree.talents[5].info
	talent.name = "Improved Cleave"
	talent.tips = {
		format = "Increases the bonus damage done by your Cleave ability by %s%%.",
		multiplier = 40,
	}
	talent = tree.talents[6].info
	talent.name = "Piercing Howl"
	talent.tips = {
		{ -- 1
			table_cache_74,
			table_cache_30,
			{ left = "Causes all enemies within 10 yards to be Dazed, reducing movement speed by 50% for 6 sec." }, -- 3
		},
	}
	talent = tree.talents[7].info
	talent.name = "Blood Craze"
	talent.tips = {
		format = "Regenerates %s%% of your total Health over 6 sec after being the victim of a critical strike.",
	}
	talent = tree.talents[8].info
	talent.name = "Commanding Presence"
	talent.tips = {
		format = "Increases the melee attack power bonus of your Battle Shout and the health bonus of your Commanding Shout by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[9].info
	talent.name = "Dual Wield Specialization"
	talent.tips = {
		format = "Increases the damage done by your offhand weapon by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[10].info
	talent.name = "Improved Execute"
	talent.tips = {
		format = "Reduces the rage cost of your Execute ability by %s.",
		2, -- 1
		5, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "Enrage"
	talent.tips = {
		format = "Gives you a %s%% melee damage bonus for 12 sec up to a maximum of 12 swings after being the victim of a critical strike.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "Improved Slam"
	talent.tips = {
		format = "Decreases the casting time of your Slam ability by %s sec.",
		multiplier = 0.5,
	}
	talent = tree.talents[13].info
	talent.name = "Sweeping Strikes"
	talent.tips = {
		{ -- 1
			{ left = "30 Rage" }, -- 1
			table_cache_17,
			table_cache_46,
			{ left = "Requires Battle Stance, Berserker Stance" }, -- 4
			{ left = "Your next 10 melee weapon swings strike an additional nearby opponent." }, -- 5
		},
	}
	talent = tree.talents[14].info
	talent.name = "Weapon Mastery"
	talent.tips = {
		format = "Reduces the chance for your attacks to be dodged by %s%% and reduces the duration of all Disarm effects used against you by %s%%. This does not stack with other Disarm duration reducing effects.",
		table_cache_12, -- 1
		table_cache_23, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "Improved Berserker Rage"
	talent.tips = {
		format = "The Berserker Rage ability will generate %s rage when used.",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "Flurry"
	talent.tips = {
		format = "Increases your attack speed by %s%% for your next 3 swings after dealing a melee critical strike.",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "Precision"
	talent.tips = {
		format = "Increases your chance to hit with melee weapons by %s%%.",
	}
	talent = tree.talents[18].info
	talent.name = "Bloodthirst"
	talent.tips = {
		{ -- 1
			table_cache_101,
			table_cache_67,
			{ left = "Instantly attack the target causing 217 damage. In addition, the next 5 successful melee attacks will restore 10 health. This effect lasts 8 sec. Damage is based on your attack power." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = "  Rank 2: 13 Health" }, -- 6
			{ left = "  Rank 3: 17 Health" }, -- 7
			{ left = "  Rank 4: 20 Health" }, -- 8
			{ left = "  Rank 5: 25 Health" }, -- 9
			{ left = "  Rank 6: 30 Health" }, -- 10
		},
	}
	talent = tree.talents[19].info
	talent.name = "Improved Whirlwind"
	talent.tips = {
		format = "Reduces the cooldown of your Whirlwind ability by %s sec.",
	}
	talent = tree.talents[20].info
	talent.name = "Improved Berserker Stance"
	talent.tips = {
		format = "Increases attack power by %s%% and reduces threat caused by %s%% while in Berserker Stance.",
		table_cache_95, -- 1
		table_cache_20, -- 2
		table_cache_75, -- 3
		table_cache_10, -- 4
		table_cache_60, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "Rampage"
	talent.tips = {
		{ -- 1
			{ left = "20 Rage" }, -- 1
			table_cache_30,
			{ left = "Warrior goes on a rampage, increasing attack power by 30 and causing most successful melee attacks to increase attack power by an additional 30. This effect will stack up to 5 times. Lasts 30 sec. This ability can only be used after scoring a critical hit." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = "  Rank 2: +40 Attack Power" }, -- 6
			{ left = "  Rank 3: +50 Attack Power" }, -- 7
		},
	}
	tree = data[3]
	tree.info.name = "Protection"
	talent = tree.talents[1].info
	talent.name = "Improved Bloodrage"
	talent.tips = {
		format = "Increases the instant rage generated by your Bloodrage ability by %s.",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "Tactical Mastery"
	talent.tips = {
		format = "You retain up to an additional %s of your rage points when you change stances. Also greatly increases the threat generated by your Bloodthirst and Mortal Strike abilities when you are in Defensive Stance%s.",
		{5, ""}, -- 1
		{10, " (More effective than Rank 1)"}, -- 2
		{15, " (More effective than Rank 2)"}, -- 3
	}
	talent = tree.talents[3].info
	talent.name = "Anticipation"
	talent.tips = {
		format = "Increases your Defense skill by %s.",
		multiplier = 4,
	}
	talent = tree.talents[4].info
	talent.name = "Shield Specialization"
	talent.tips = {
		format = "Increases your chance to block attacks with a shield by %s%% and has a %s%% chance to generate 1 rage when a block occurs.",
		{1, 20}, -- 1
		{2, 40}, -- 2
		{3, 60}, -- 3
		{4, 80}, -- 4
		{5, 100}, -- 5
	}
	talent = tree.talents[5].info
	talent.name = "Toughness"
	talent.tips = {
		format = "Increases your armor value from items by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "Last Stand"
	talent.tips = {
		{ -- 1
			table_cache_6,
			{ left = "When activated, this ability temporarily grants you 30% of your maximum hit points for 20 sec. After the effect expires, the hit points are lost." }, -- 2
		},
	}
	talent = tree.talents[7].info
	talent.name = "Improved Shield Block"
	talent.tips = {
		"Allows your Shield Block ability to block an additional attack, and increases the duration by 1 sec.", -- 1
	}
	talent = tree.talents[8].info
	talent.name = "Improved Revenge"
	talent.tips = {
		format = "Gives your Revenge ability a %s%% chance to stun the target for 3 sec.",
		multiplier = 15,
	}
	talent = tree.talents[9].info
	talent.name = "Defiance"
	talent.tips = {
		format = "Increases the threat generated by your attacks by %s%% while in Defensive Stance and increases your expertise by %s.",
		{5, 2}, -- 1
		table_cache_51, -- 2
		table_cache_13, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "Improved Sunder Armor"
	talent.tips = {
		format = "Reduces the cost of your Sunder Armor and Devastate abilities by %s rage point%s.",
		table_cache_7, -- 1
		table_cache_54, -- 2
		table_cache_55, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "Improved Disarm"
	talent.tips = {
		format = "Increases the duration of your Disarm ability by %s secs.",
	}
	talent = tree.talents[12].info
	talent.name = "Improved Taunt"
	talent.tips = {
		format = "Reduces the cooldown of your Taunt ability by %s sec.",
	}
	talent = tree.talents[13].info
	talent.name = "Improved Shield Wall"
	talent.tips = {
		format = "Increases the effect duration of your Shield Wall ability by %s secs.",
		3, -- 1
		5, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "Concussion Blow"
	talent.tips = {
		{ -- 1
			table_cache_96,
			{ left = "Instant", right = "45 sec cooldown" }, -- 2
			table_cache_46,
			{ left = "Stuns the opponent for 5 sec." }, -- 4
		},
	}
	talent = tree.talents[15].info
	talent.name = "Improved Shield Bash"
	talent.tips = {
		format = "Gives your Shield Bash ability a %s%% chance to silence the target for 3 sec.",
		multiplier = 50,
	}
	talent = tree.talents[16].info
	talent.name = "Shield Mastery"
	talent.tips = {
		format = "Increases the amount of damage absorbed by your shield by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[17].info
	talent.name = "One-Handed Weapon Specialization"
	talent.tips = {
		format = "Increases physical damage you deal when a one-handed melee weapon is equipped by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "Improved Defensive Stance"
	talent.tips = {
		format = "Reduces all spell damage taken while in Defensive Stance by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[19].info
	talent.name = "Shield Slam"
	talent.tips = {
		{ -- 1
			{ left = "20 Rage", right = "Melee Range" }, -- 1
			table_cache_67,
			table_cache_16,
			{ left = "Slam the target with your shield, causing 225 to 235 damage, modified by your shield block value, and dispels 1 magic effect on the target. Also causes a high amount of threat." }, -- 4
			table_cache_59,
			table_cache_42,
			{ left = "  Rank 2: 264-276 Damage" }, -- 7
			{ left = "  Rank 3: 303-317 Damage" }, -- 8
			{ left = "  Rank 4: 342-358 Damage" }, -- 9
			{ left = "  Rank 5: 381-399 Damage" }, -- 10
			{ left = "  Rank 6: 420-440 Damage" }, -- 11
		},
	}
	talent = tree.talents[20].info
	talent.name = "Focused Rage"
	talent.tips = {
		format = "Reduces the rage cost of your offensive abilities by %s.",
	}
	talent = tree.talents[21].info
	talent.name = "Vitality"
	talent.tips = {
		format = "Increases your total Stamina by %s%% and your total Strength by %s%%.",
		table_cache_92, -- 1
		table_cache_15, -- 2
		table_cache_41, -- 3
		table_cache_37, -- 4
		table_cache_68, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "Devastate"
	talent.tips = {
		{ -- 1
			table_cache_96,
			table_cache_30,
			{ left = "Requires One-Handed Melee Weapon" }, -- 3
			{ left = "Sunder the target's armor causing the Sunder Armor effect.  In addition, causes 50% of weapon damage plus 15 for each application of Sunder Armor on the target.  The Sunder Armor effect can stack up to 5 times." }, -- 4
			table_cache_59,
			table_cache_42,
			{ left = "  Rank 2: +25 Damage" }, -- 7
			{ left = "  Rank 3: +35 Damage" }, -- 8
		},
	}
	data = Talented_Data.SHAMAN
	-- data.name = "Shaman Talents"
	tree = data[1]
	tree.info.name = "Elemental"
	talent = tree.talents[1].info
	talent.name = "Convection"
	talent.tips = {
		format = "Reduces the mana cost of your Shock, Lightning Bolt and Chain Lightning spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "Concussion"
	talent.tips = {
		format = "Increases the damage done by your Lightning Bolt, Chain Lightning and Shock spells by %s%%.",
	}
	talent = tree.talents[3].info
	talent.name = "Earth's Grasp"
	talent.tips = {
		format = "Increases the health of your Stoneclaw Totem by %s%% and the radius of your Earthbind Totem by %s%%.",
		{25, 10}, -- 1
		{50, 20}, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "Elemental Warding"
	talent.tips = {
		format = "Reduces damage taken from Fire, Frost and Nature effects by %s%%.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "Call of Flame"
	talent.tips = {
		format = "Increases the damage done by your Fire Totems by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "Elemental Focus"
	talent.tips = {
		"After landing a critical strike with a Fire, Frost, or Nature damage spell, you enter a Clearcasting state.  The Clearcasting state reduces the mana cost of your next 2 damage spells by 40%.", -- 1
	}
	talent = tree.talents[7].info
	talent.name = "Reverberation"
	talent.tips = {
		format = "Reduces the cooldown of your Shock spells by %s sec.",
		0.2, -- 1
		0.4, -- 2
		0.6, -- 3
		0.8, -- 4
		1, -- 5
	}
	talent = tree.talents[8].info
	talent.name = "Call of Thunder"
	talent.tips = {
		format = "Increases the critical strike chance of your Lightning Bolt and Chain Lightning spells by an additional %s%%.",
	}
	talent = tree.talents[9].info
	talent.name = "Improved Fire Nova Totem"
	talent.tips = {
		format = "Reduces the delay before your Fire Nova Totem activates by %s sec. and decreases the threat generated by your Magma Totem by %s%%.",
		table_cache_12, -- 1
		table_cache_23, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "Eye of the Storm"
	talent.tips = {
		format = "Gives you%s a %s%% chance to gain the Focused Casting effect that lasts for 6 sec after being the victim of a melee or ranged critical strike. The Focused Casting effect prevents you from losing casting time on Shaman spells when taking damage.",
		{"", 33}, -- 1
		{"r", 66}, -- 2
		{"r", 100}, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "Elemental Devastation"
	talent.tips = {
		format = "Your offensive spell crits will increase your chance to get a critical strike with melee attacks by %s%% for 10 sec.",
		multiplier = 3,
	}
	talent = tree.talents[12].info
	talent.name = "Storm Reach"
	talent.tips = {
		format = "Increases the range of your Lightning Bolt and Chain Lightning spells by %s yards.",
		multiplier = 3,
	}
	talent = tree.talents[13].info
	talent.name = "Elemental Fury"
	talent.tips = {
		"Increases the critical strike damage bonus of your Searing, Magma, and Fire Nova Totems and your Fire, Frost, and Nature spells by 100%.", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "Unrelenting Storm"
	talent.tips = {
		format = "Regenerate mana equal to %s%% of your Intellect every 5 sec, even while casting.",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "Elemental Precision"
	talent.tips = {
		format = "Increases your chance to hit with Fire, Frost, and Nature spells by %s%% and reduces the threat caused by Fire, Frost, and Nature spells by %s%%.",
		table_cache_15, -- 1
		{4, 7}, -- 2
		{6, 10}, -- 3
	}
	talent = tree.talents[16].info
	talent.name = "Lightning Mastery"
	talent.tips = {
		format = "Reduces the cast time of your Lightning Bolt and Chain Lightning spells by 0.%s sec.",
	}
	talent = tree.talents[17].info
	talent.name = "Elemental Mastery"
	talent.tips = {
		{ -- 1
			table_cache_29,
			{ left = "When activated, this spell gives your next Fire, Frost, or Nature damage spell a 100% critical strike chance and reduces the mana cost by 100%." }, -- 2
		},
	}
	talent = tree.talents[18].info
	talent.name = "Elemental Shields"
	talent.tips = {
		format = "Reduces the chance you will be critically hit by melee and ranged attacks by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[19].info
	talent.name = "Lightning Overload"
	talent.tips = {
		format = "Gives your Lightning Bolt and Chain Lightning spells a %s%% chance to cast a second, similar spell on the same target at no additional cost that causes half damage and no threat.",
		multiplier = 4,
	}
	talent = tree.talents[20].info
	talent.name = "Totem of Wrath"
	talent.tips = {
		{ -- 1
			{ left = "147 Mana" }, -- 1
			table_cache_1,
			{ left = "Tools: Fire Totem" }, -- 3
			{ left = "Summons a Totem of Wrath with 5 health at the feet of the caster. The totem increases the chance to hit and critically hit with spells by 3% to all party members if they are within 20 yards. Lasts 2 min." }, -- 4
		},
	}
	tree = data[2]
	tree.info.name = "Enhancement"
	talent = tree.talents[1].info
	talent.name = "Ancestral Knowledge"
	talent.tips = {
		format = "Increases your maximum Mana by %s%%.",
	}
	talent = tree.talents[2].info
	talent.name = "Shield Specialization"
	talent.tips = {
		format = "Increases your chance to block attacks with a shield by %s%% and increases the amount blocked by %s%%.",
		table_cache_33, -- 1
		table_cache_90, -- 2
		table_cache_78, -- 3
		table_cache_77, -- 4
		table_cache_88, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "Guardian Totems"
	talent.tips = {
		format = "Increases the amount of damage reduced by your Stoneskin Totem and Windwall Totem by %s%% and reduces the cooldown of your Grounding Totem by %s sec.",
		{10, 1}, -- 1
		table_cache_80, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "Thundering Strikes"
	talent.tips = {
		format = "Improves your chance to get a critical strike with your weapon attacks by %s%%.",
	}
	talent = tree.talents[5].info
	talent.name = "Improved Ghost Wolf"
	talent.tips = {
		format = "Reduces the cast time of your Ghost Wolf spell by %s sec.",
	}
	talent = tree.talents[6].info
	talent.name = "Improved Lightning Shield"
	talent.tips = {
		format = "Increases the damage done by your Lightning Shield orbs by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "Enhancing Totems"
	talent.tips = {
		format = "Increases the effect of your Strength of Earth and Grace of Air Totems by %s%%.",
		8, -- 1
		15, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "Shamanistic Focus"
	talent.tips = {
		"After landing a melee critical strike, you enter a Focused state. The Focused state reduces the mana cost of your next Shock spell by 60%.", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "Anticipation"
	talent.tips = {
		format = "Increases your chance to dodge by an additional %s%%.",
	}
	talent = tree.talents[10].info
	talent.name = "Flurry"
	talent.tips = {
		format = "Increases your attack speed by %s%% for your next 3 swings after dealing a critical strike.",
		10, -- 1
		15, -- 2
		20, -- 3
		25, -- 4
		30, -- 5
	}
	talent = tree.talents[11].info
	talent.name = "Toughness"
	talent.tips = {
		format = "Increases your armor value from items by %s%%, and reduces the duration of movement slowing effects on you by %s%%.",
		table_cache_90, -- 1
		table_cache_77, -- 2
		{6, 30}, -- 3
		{8, 40}, -- 4
		table_cache_73, -- 5
	}
	talent = tree.talents[12].info
	talent.name = "Improved Weapon Totems"
	talent.tips = {
		format = "Increases the melee attack power bonus of your Windfury Totem by %s%% and increases the damage caused by your Flametongue Totem by %s%%",
		table_cache_13, -- 1
		{30, 12}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "Spirit Weapons"
	talent.tips = {
		"Gives a chance to parry enemy melee attacks and reduces the threat generated by your melee attacks by 30%.", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "Elemental Weapons"
	talent.tips = {
		format = "Increases the damage caused by your Rockbiter Weapon by %s%%, your Windfury Weapon effect by %s%% and increases the damage caused by your Flametongue Weapon and Frostbrand Weapon by %s%%.",
		{7, 13, 5}, -- 1
		{14, 27, 10}, -- 2
		{20, 40, 15}, -- 3
	}
	talent = tree.talents[15].info
	talent.name = "Mental Quickness"
	talent.tips = {
		format = "Reduces the mana cost of your instant cast spells by %s%% and increases your spell damage and healing by an amount equal to %s%% of your attack power.%s",
		{2, 10, ""}, -- 1
		{4, 20, "."}, -- 2
		{6, 30, "."}, -- 3
	}
	talent = tree.talents[16].info
	talent.name = "Weapon Mastery"
	talent.tips = {
		format = "Increases the damage you deal with all weapons by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "Dual Wield Specialization"
	talent.tips = {
		format = "Increases your chance to hit while dual wielding by an additional %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "Dual Wield"
	talent.tips = {
		"Allows one-hand and off-hand weapons to be equipped in the off-hand.", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "Stormstrike"
	talent.tips = {
		{ -- 1
			{ left = "236 Mana", right = "Melee Range" }, -- 1
			table_cache_72,
			table_cache_46,
			{ left = "Instantly attack with both weapons. In addition, the next 2 sources of Nature damage dealt to the target are increased by 20%. Lasts 12 sec." }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "Unleashed Rage"
	talent.tips = {
		format = "Causes your critical hits with melee attacks to increase all party members' attack power by %s%% if within 20 yards of the Shaman. Lasts 10 sec.",
		multiplier = 2,
	}
	talent = tree.talents[21].info
	talent.name = "Shamanistic Rage"
	talent.tips = {
		{ -- 1
			table_cache_2,
			{ left = "Reduces all damage taken by 30% and gives your successful melee attacks a chance to regenerate mana equal to 15% of your attack power.  Lasts 15 sec." }, -- 2
		},
	}
	tree = data[3]
	tree.info.name = "Restoration"
	talent = tree.talents[1].info
	talent.name = "Improved Healing Wave"
	talent.tips = {
		format = "Reduces the casting time of your Healing Wave spell by 0.%s sec.",
	}
	talent = tree.talents[2].info
	talent.name = "Tidal Focus"
	talent.tips = {
		format = "Reduces the Mana cost of your healing spells by %s%%.",
	}
	talent = tree.talents[3].info
	talent.name = "Improved Reincarnation"
	talent.tips = {
		format = "Reduces the cooldown of your Reincarnation spell by %s min and increases the amount of health and mana you reincarnate with by an additional %s%%.",
		table_cache_60, -- 1
		table_cache_38, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "Ancestral Healing"
	talent.tips = {
		format = "Increases your target's armor value by %s%% for 15 sec after getting a critical effect from one of your healing spells.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "Totemic Focus"
	talent.tips = {
		format = "Reduces the Mana cost of your totems by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "Nature's Guidance"
	talent.tips = {
		format = "Increases your chance to hit with melee attacks and spells by %s%%",
	}
	talent = tree.talents[7].info
	talent.name = "Healing Focus"
	talent.tips = {
		format = "Gives you a %s%% chance to avoid interruption caused by damage while casting any Shaman healing spell.",
		multiplier = 14,
	}
	talent = tree.talents[8].info
	talent.name = "Totemic Mastery"
	talent.tips = {
		"The radius of your totems that affect friendly targets is increased to 30 yd.", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "Healing Grace"
	talent.tips = {
		format = "Reduces the threat generated by your healing spells by %s%% and reduces the chance your spells will be dispelled by %s%%.",
		table_cache_68, -- 1
		table_cache_36, -- 2
		table_cache_100, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "Restorative Totems"
	talent.tips = {
		format = "Increases the effect of your Mana Spring and Healing Stream Totems by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "Tidal Mastery"
	talent.tips = {
		format = "Increases the critical effect chance of your healing and lightning spells by %s%%.",
	}
	talent = tree.talents[12].info
	talent.name = "Healing Way"
	talent.tips = {
		format = "Your Healing Wave spells have a %s%% chance to increase the effect of subsequent Healing Wave spells on that target by 6%% for 15 sec. This effect will stack up to 3 times.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "Nature's Swiftness"
	talent.tips = {
		{ -- 1
			table_cache_29,
			{ left = "When activated, your next Nature spell with a casting time less than 10 sec becomes an instant cast spell." }, -- 2
		},
	}
	talent = tree.talents[14].info
	talent.name = "Focused Mind"
	talent.tips = {
		format = "Reduces the duration of any Silence or Interrupt effects used against the Shaman by %s%%. This effect does not stack with other similar effects.",
		multiplier = 10,
	}
	talent = tree.talents[15].info
	talent.name = "Purification"
	talent.tips = {
		format = "Increases the effectiveness of your healing spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "Mana Tide Totem"
	talent.tips = {
		{ -- 1
			table_cache_21,
			{ left = "Instant cast", right = "5 min cooldown" }, -- 2
			{ left = "Tools: Water Totem" }, -- 3
			{ left = "Summons a Mana Tide Totem with 5 health at the feet of the caster for 12 sec that restores 6% of total mana every 3 seconds to group members within 20 yards." }, -- 4
		},
	}
	talent = tree.talents[17].info
	talent.name = "Nature's Guardian"
	talent.tips = {
		format = "Whenever a damaging attack is taken that reduces you below 30%% health, you have a %s%% chance to heal 10%% of your total health and reduce your threat level on that target. 5 second cooldown.",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "Nature's Blessing"
	talent.tips = {
		format = "Increases your spell damage and healing by an amount equal to %s%% of your Intellect.",
		multiplier = 10,
	}
	talent = tree.talents[19].info
	talent.name = "Improved Chain Heal"
	talent.tips = {
		format = "Increases the amount healed by your Chain Heal spell by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[20].info
	talent.name = "Earth Shield"
	talent.tips = {
		{ -- 1
			{ left = "600 Mana", right = "40 yd range" }, -- 1
			{ left = "Instant Cast" }, -- 2
			{ left = "Protects the target with an earthen shield, giving a 30% chance of ignoring spell interruption when damaged and causing melee attacks to heal the shielded target for 150. This effect can only occur once every few seconds. 6 charges. Lasts 10 min. Earth Shield can only be placed on one target at a time and only one Elemental Shield can be active on a target at a time." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 745 Mana, Heals for 205" }, -- 6
			{ left = " Rank 3: 900 Mana, Heals for 270" }, -- 7
		},
	}
	data = Talented_Data.MAGE
	-- data.name = "Mage Talents"
	tree = data[1]
	tree.info.name = "Arcane"
	talent = tree.talents[1].info
	talent.name = "Arcane Subtlety"
	talent.tips = {
		format = "Reduces your target's resistance to all your spells by %s and reduces threat of Arcane spells by %s%%.",
		{5, 20}, -- 1
		table_cache_71, -- 2
	}
	talent = tree.talents[2].info
	talent.name = "Arcane Focus"
	talent.tips = {
		format = "Reduces the chance that the opponent can resist your Arcane spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "Improved Arcane Missiles"
	talent.tips = {
		format = "Gives you a %s%% chance to avoid interruption caused by damage while channeling Arcane Missiles.",
		multiplier = 20,
	}
	talent = tree.talents[4].info
	talent.name = "Wand Specialization"
	talent.tips = {
		format = "Increases your damage with Wands by %s%%.",
		13, -- 1
		25, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "Magic Absorption"
	talent.tips = {
		format = "Increases all resistances by %s and causes all spells you fully resist to restore %s%% of your total mana.  1 sec. cooldown.",
		table_cache_70, -- 1
		table_cache_24, -- 2
		table_cache_35, -- 3
		table_cache_61, -- 4
		table_cache_31, -- 5
	}
	talent = tree.talents[6].info
	talent.name = "Arcane Concentration"
	talent.tips = {
		format = "Gives you a %s%% chance of entering a Clearcasting state after any damage spell hits a target. The Clearcasting state reduces the mana cost of your next damage%sspell by 100%%.",
		{2, "	"}, -- 1
		{4, " "}, -- 2
		{6, " "}, -- 3
		{8, " "}, -- 4
		{10, " "}, -- 5
	}
	talent = tree.talents[7].info
	talent.name = "Magic Attunement"
	talent.tips = {
		format = "Increases the effect of your Amplify Magic and Dampen Magic spells by %s%%.",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "Arcane Impact"
	talent.tips = {
		format = "Increases the critical strike chance of your Arcane Explosion and Arcane Blast spells by an additional %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "Arcane Fortitude"
	talent.tips = {
		"Increases your armor by an amount equal to 100% of your Intellect.", -- 1
	}
	talent = tree.talents[10].info
	talent.name = "Improved Mana Shield"
	talent.tips = {
		format = "Decreases the mana lost per point of damage taken when Mana Shield is active by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "Improved Counterspell"
	talent.tips = {
		format = "Gives your Counterspell a %s%% chance to silence the target for 4 sec.",
		multiplier = 50,
	}
	talent = tree.talents[12].info
	talent.name = "Arcane Meditation"
	talent.tips = {
		format = "Allows %s%% of your Mana regeneration to continue while casting.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "Improved Blink"
	talent.tips = {
		format = "For 4 sec after casting Blink, your chance to be hit by all attacks and spells is reduced by %s%%.",
		13, -- 1
		25, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "Presence of Mind"
	talent.tips = {
		{ -- 1
			table_cache_29,
			{ left = "When activated, your next Mage spell with a casting time less than 10 sec becomes an instant cast spell." }, -- 2
		},
	}
	talent = tree.talents[15].info
	talent.name = "Arcane Mind"
	talent.tips = {
		format = "Increases your total Intellect by %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[16].info
	talent.name = "Prismatic Cloak"
	talent.tips = {
		format = "Reduces all damage taken by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "Arcane Instability"
	talent.tips = {
		format = "Increases your spell damage and critical strike chance by %s%%.",
	}
	talent = tree.talents[18].info
	talent.name = "Arcane Potency"
	talent.tips = {
		format = "Increases the critical strike chance of any spell cast while Clearcasting by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[19].info
	talent.name = "Empowered Arcane Missiles"
	talent.tips = {
		format = "Your Arcane Missiles spell gains an additional %s%% of your bonus spell damage effects, but mana cost is increased by %s%%.",
		table_cache_76, -- 1
		table_cache_81, -- 2
		{45, 6}, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "Arcane Power"
	talent.tips = {
		{ -- 1
			table_cache_29,
			{ left = "When activated, your spells deal 30% more damage while costing 30% more mana to cast. This effect lasts 15 sec." }, -- 2
		},
	}
	talent = tree.talents[21].info
	talent.name = "Spell Power"
	talent.tips = {
		format = "Increases critical strike damage bonus of all spells by %s%%.",
		multiplier = 25,
	}
	talent = tree.talents[22].info
	talent.name = "Mind Mastery"
	talent.tips = {
		format = "Increases spell damage by up to %s%% of your total intellect.",
		multiplier = 5,
	}
	talent = tree.talents[23].info
	talent.name = "Slow"
	talent.tips = {
		{ -- 1
			{ left = "627 Mana", right = "30 yd range" }, -- 1
			table_cache_1,
			{ left = "Reduces target's movement speed by 50%, increases the time between ranged attacks by 50% and increases casting time by 50%. Lasts 15 sec. Slow can only affect one target at a time." }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "Fire"
	talent = tree.talents[1].info
	talent.name = "Improved Fireball"
	talent.tips = {
		format = "Reduces the casting time of your Fireball spell by 0.%s sec.",
	}
	talent = tree.talents[2].info
	talent.name = "Impact"
	talent.tips = {
		format = "Gives your Fire spells a %s%% chance to stun the target for 2 sec.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "Ignite"
	talent.tips = {
		format = "Your critical strikes from Fire damage spells cause the target to burn for an additional %s%% of your spell's damage over 4 sec.",
		multiplier = 8,
	}
	talent = tree.talents[4].info
	talent.name = "Flame Throwing"
	talent.tips = {
		format = "Increases the range of your fire spells by %s yards.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "Improved Fire Blast"
	talent.tips = {
		format = "Reduces the cooldown of your Fire Blast spell by %s sec.",
		multiplier = 0.5,
	}
	talent = tree.talents[6].info
	talent.name = "Incinerate"
	talent.tips = {
		format = "Increases the critical strike chance of your Fire Blast and Scorch spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "Improved Flamestrike"
	talent.tips = {
		format = "Increases the critical strike chance of your Flamestrike spell by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "Pyroblast"
	talent.tips = {
		{ -- 1
			{ left = "125 Mana", right = "35 yd range" }, -- 1
			{ left = "6 sec cast" }, -- 2
			{ left = "Hurls an immense fiery boulder that causes 148 to 195 Fire damage and an additional 56 Fire damage over 12 sec." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 150 Mana, 193-250 Damage, 72/12 sec" }, -- 6
			{ left = " Rank 3: 195 Mana, 270-343 Damage, 96/12 sec" }, -- 7
			{ left = " Rank 4: 240 Mana, 347-437 Damage, 124/12 sec" }, -- 8
			{ left = " Rank 5: 285 Mana, 427-536 Damage, 156/12 sec" }, -- 9
			{ left = " Rank 6: 335 Mana, 525-654 Damage, 188/12 sec" }, -- 10
			{ left = " Rank 7: 385 Mana, 625-776 Damage, 228/12 sec" }, -- 11
			{ left = " Rank 8: 440 Mana, 743-918 Damage, 268/12 sec" }, -- 12
			{ left = " Rank 9: 460 Mana, 877-1087 Damage, 324/12 sec" }, -- 13
		},
	}
	talent = tree.talents[9].info
	talent.name = "Burning Soul"
	talent.tips = {
		format = "Gives your Fire spells a %s%% chance to not lose casting time when you take damage and reduces the threat caused by your Fire spells by %s%%.",
		{35, 5}, -- 1
		{70, 10}, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "Improved Scorch"
	talent.tips = {
		format = "Your Scorch spells have a %s%% chance to cause your target to be vulnerable to Fire damage. This vulnerability increases the Fire damage dealt to your target by 3%% and lasts 30 sec.  Stacks up to 5 times.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "Molten Shields"
	talent.tips = {
		format = "Causes your Fire Ward to have a %s%% chance to reflect Fire spells while active. In addition, your Molten Armor has a %s%% chance to affect ranged and spell attacks.",
		table_cache_73, -- 1
		{20, 100}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "Master of Elements"
	talent.tips = {
		format = "Your Fire and Frost spell criticals will refund %s%% of their base mana cost.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "Playing with Fire"
	talent.tips = {
		format = "Increases all spell damage caused by %s%% and all spell damage taken by %s%%.",
		table_cache_93, -- 1
		table_cache_95, -- 2
		table_cache_8, -- 3
	}
	talent = tree.talents[14].info
	talent.name = "Critical Mass"
	talent.tips = {
		format = "Increases the critical strike chance of your fire spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "Blast Wave"
	talent.tips = {
		{ -- 1
			{ left = "215 Mana" }, -- 1
			table_cache_17,
			{ left = "A wave of flame radiates outward from the caster, damaging all enemies caught within the blast for 160 to 192 Fire damage, and dazing them for 6 sec." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 270 Mana, 201-241 Damage" }, -- 6
			{ left = " Rank 3: 355 Mana, 277-329 Damage" }, -- 7
			{ left = " Rank 4: 450 Mana, 365-433 Damage" }, -- 8
			{ left = " Rank 5: 545 Mana, 462-544 Damage" }, -- 9
			{ left = " Rank 6: 595 Mana, 640-754 Damage" }, -- 10
		},
	}
	talent = tree.talents[16].info
	talent.name = "Blazing Speed"
	talent.tips = {
		format = "Gives you a %s%% chance when hit by a melee or ranged attack to increase your movement speed by 50%% and dispel all movement impairing effects. This effect lasts 8 sec.",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "Fire Power"
	talent.tips = {
		format = "Increases the damage done by your fire spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "Pyromaniac"
	talent.tips = {
		format = "Increases chance to critically hit and reduces the mana cost of all Fire spells by an additional %s%%.",
	}
	talent = tree.talents[19].info
	talent.name = "Combustion"
	talent.tips = {
		{ -- 1
			table_cache_29,
			{ left = "When activated, this spell causes each of your Fire damage spell hits to increase your critical strike chance with Fire damage spells by 10%. This effect lasts until you have caused 3 critical strikes with Fire spells." }, -- 2
		},
	}
	talent = tree.talents[20].info
	talent.name = "Molten Fury"
	talent.tips = {
		format = "Increases damage of all spells against targets with less than 20%% health by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[21].info
	talent.name = "Empowered Fireball"
	talent.tips = {
		format = "Your Fireball spell gains an additional %s%% of your bonus spell damage effects.",
		multiplier = 3,
	}
	talent = tree.talents[22].info
	talent.name = "Dragon's Breath"
	talent.tips = {
		{ -- 1
			{ left = "475 Mana" }, -- 1
			{ left = "Instant cast", right = "20 sec cooldown" }, -- 2
			{ left = "Targets in a cone in front of the caster take 382 to 442 Fire damage and are Disoriented for 3 sec. Any direct damaging attack will revive targets. Turns off your attack when used." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 575 Mana, 463-536 Damage" }, -- 6
			{ left = " Rank 3: 660 Mana, 584-677 Damage" }, -- 7
			{ left = " Rank 4: 700 Mana, 680-790 Damage" }, -- 8
		},
	}
	tree = data[3]
	tree.info.name = "Frost"
	talent = tree.talents[1].info
	talent.name = "Frost Warding"
	talent.tips = {
		format = "Increases the armor and resistances given by your Frost Armor and Ice Armor spells by %s%%. In addition, gives your Frost Ward a %s%% chance to reflect Frost spells and effects while active.",
		table_cache_14, -- 1
		table_cache_32, -- 2
	}
	talent = tree.talents[2].info
	talent.name = "Improved Frostbolt"
	talent.tips = {
		format = "Reduces the casting time of your Frostbolt spell by 0.%s sec.",
	}
	talent = tree.talents[3].info
	talent.name = "Elemental Precision"
	talent.tips = {
		format = "Reduces the mana cost and chance targets resist your Frost and Fire spells by %s%%.",
	}
	talent = tree.talents[4].info
	talent.name = "Ice Shards"
	talent.tips = {
		format = "Increases the critical strike damage bonus of your Frost spells by %s%%.",
		multiplier = 20,
	}
	talent = tree.talents[5].info
	talent.name = "Frostbite"
	talent.tips = {
		format = "Gives your Chill effects a %s%% chance to freeze the target for 5 sec.",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "Improved Frost Nova"
	talent.tips = {
		format = "Reduces the cooldown of your Frost Nova spell by %s sec.",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "Permafrost"
	talent.tips = {
		format = "Increases the duration of your Chill effects by %s sec and reduces the target's speed by an additional %s%%.",
		table_cache_25, -- 1
		{2, 7}, -- 2
		{3, 10}, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "Piercing Ice"
	talent.tips = {
		format = "Increases the damage done by your Frost spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "Icy Veins"
	talent.tips = {
		{ -- 1
			{ left = "67 Mana" }, -- 1
			table_cache_29,
			{ left = "Hastens your spellcasting, increasing spell casting speed by 20% and gives you 100% chance to avoid interruption caused by damage while casting. Lasts 20 sec." }, -- 3
		},
	}
	talent = tree.talents[10].info
	talent.name = "Improved Blizzard"
	talent.tips = {
		format = "Adds a chill effect to your Blizzard spell. This effect lowers the target's movement speed by %s%%. Lasts 1.50 sec.",
		30, -- 1
		50, -- 2
		65, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "Arctic Reach"
	talent.tips = {
		format = "Increases the range of your Frostbolt and Blizzard spells and the radius of your Frost Nova and Cone of Cold spells by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[12].info
	talent.name = "Frost Channeling"
	talent.tips = {
		format = "Reduces the mana cost of your frost spells by %s%% and reduces the threat caused by your Frost spells by %s%%.",
		{5, 4}, -- 1
		{10, 7}, -- 2
		table_cache_14, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "Shatter"
	talent.tips = {
		format = "Increases the critical strike chance of all your spells against frozen targets by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[14].info
	talent.name = "Frozen Core"
	talent.tips = {
		format = "Reduces the damage taken by Frost and Fire effects by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "Cold Snap"
	talent.tips = {
		{ -- 1
			table_cache_6,
			{ left = "When activated, this spell finishes the cooldown on all Frost spells you recently cast." }, -- 2
		},
	}
	talent = tree.talents[16].info
	talent.name = "Improved Cone of Cold"
	talent.tips = {
		format = "Increases the damage dealt by your Cone of Cold spell by %s%%.",
		15, -- 1
		25, -- 2
		35, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "Ice Floes"
	talent.tips = {
		format = "Reduces the cooldown of your Cone of Cold, Cold Snap, Ice Barrier and Ice Block spells by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "Winter's Chill"
	talent.tips = {
		format = "Gives your Frost damage spells a %s%% chance to apply the Winter's Chill effect, which increases the chance a Frost spell will critically hit the target by 2%% for 15 sec. Stacks up to 5 times.",
		multiplier = 20,
	}
	talent = tree.talents[19].info
	talent.name = "Ice Barrier"
	talent.tips = {
		{ -- 1
			{ left = "305 Mana" }, -- 1
			{ left = "Instant cast", right = "30 sec cooldown" }, -- 2
			{ left = "Instantly shields you, absorbing 454 damage. Lasts 1 min. While the shield holds, spells will not be interrupted." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: Absorbs 568 Damage" }, -- 6
			{ left = " Rank 3: Absorbs 699 Damage" }, -- 7
			{ left = " Rank 4: Absorbs 842 Damage" }, -- 8
			{ left = " Rank 5: Absorbs 951 Damage" }, -- 9
			{ left = " Rank 6: Absorbs 1075 Damage" }, -- 10
		},
	}
	talent = tree.talents[20].info
	talent.name = "Arctic Winds"
	talent.tips = {
		format = "Increases all Frost damage you cause by %s%% and reduces the chance melee and ranged attacks will hit you by %s%%.",
		table_cache_93, -- 1
		table_cache_95, -- 2
		table_cache_8, -- 3
		table_cache_20, -- 4
		table_cache_27, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "Empowered Frostbolt"
	talent.tips = {
		format = "Your Frostbolt spell gains an additional %s%% of your bonus spell damage effects and an additional %s%% chance to critically strike.",
		table_cache_70, -- 1
		table_cache_24, -- 2
		table_cache_35, -- 3
		table_cache_61, -- 4
		table_cache_31, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "Summon Water Elemental"
	talent.tips = {
		{ -- 1
			{ left = "358 Mana" }, -- 1
			table_cache_85,
			{ left = "Summon a Water Elemental to fight for the caster for 45 sec." }, -- 3
		},
	}
	data = Talented_Data.PRIEST
	-- data.name = "Priest Talents"
	tree = data[1]
	tree.info.name = "Discipline"
	talent = tree.talents[1].info
	talent.name = "Unbreakable Will"
	talent.tips = {
		format = "Increases your chance to resist Stun, Fear, and Silence effects by an additional %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "Wand Specialization"
	talent.tips = {
		format = "Increases your damage with Wands by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[3].info
	talent.name = "Silent Resolve"
	talent.tips = {
		format = "Reduces the threat generated by your Holy and Discipline spells by %s%% and reduces the chance your spells will be dispelled by %s%%.",
		table_cache_20, -- 1
		table_cache_10, -- 2
		table_cache_26, -- 3
		table_cache_47, -- 4
		table_cache_38, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "Improved Power Word: Fortitude"
	talent.tips = {
		format = "Increases the effect of your Power Word: Fortitude and Prayer of Fortitude spells by %s%%.",
		multiplier = 15,
	}
	talent = tree.talents[5].info
	talent.name = "Improved Power Word: Shield"
	talent.tips = {
		format = "Increases the damage absorbed by your Power Word: Shield by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "Martyrdom"
	talent.tips = {
		format = "Gives you a %s%% chance to gain the Focused Casting effect that lasts for 6 sec after being the victim of a melee or ranged critical strike. The Focused Casting effect prevents you from losing casting time when taking damage and increases resistance to Interrupt effects by %s%%.",
		table_cache_103, -- 1
		table_cache_102, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "Absolution"
	talent.tips = {
		format = "Reduces the mana cost of your Dispel Magic, Cure Disease, Abolish Disease and Mass Dispel spells by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "Inner Focus"
	talent.tips = {
		{ -- 1
			table_cache_29,
			{ left = "When activated, reduces the Mana cost of your next spell by 100% and increases its critical effect chance by 25% if it is capable of a critical effect." }, -- 2
		},
	}
	talent = tree.talents[9].info
	talent.name = "Meditation"
	talent.tips = {
		format = "Allows %s%% of your Mana regeneration to continue while casting.",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "Improved Inner Fire"
	talent.tips = {
		format = "Increases the Armor bonus of your Inner Fire spell by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "Mental Agility"
	talent.tips = {
		format = "Reduces the mana cost of your instant cast spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "Improved Mana Burn"
	talent.tips = {
		format = "Reduces the casting time of your Mana Burn spell by %s.%s sec.",
		{0, 5}, -- 1
		{1, 0}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "Mental Strength"
	talent.tips = {
		format = "Increases your maximum Mana by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "Divine Spirit"
	talent.tips = {
		{ -- 1
			{ left = "250 Mana", right = "30 yd range" }, -- 1
			table_cache_1,
			{ left = "Holy power infuses the target, increasing their Spirit by 17 for 30 min." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 350 Mana, 23 Spirit" }, -- 6
			{ left = " Rank 3: 450 Mana, 33 Spirit" }, -- 7
			{ left = " Rank 4: 555 Mana, 40 Spirit" }, -- 8
			{ left = " Rank 5: 680 Mana, 50 Spirit" }, -- 9
		},
	}
	talent = tree.talents[15].info
	talent.name = "Improved Divine Spirit"
	talent.tips = {
		format = "Your Divine Spirit and Prayer of Spirit spells also increase the target's spell damage and healing by an amount equal to %s%% of their total Spirit.",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "Focused Power"
	talent.tips = {
		format = "Your Smite, Mind Blast and Mass Dispel spells have an additional %s%% chance to hit.  In addition, your Mass Dispel cast time is reduced by %s sec.",
		{2, 0.5}, -- 1
		{4, 1}, -- 2
	}
	talent = tree.talents[17].info
	talent.name = "Force of Will"
	talent.tips = {
		format = "Increases your spell damage by %s%% and the critical strike chance of your offensive spells by %s%%.",
		table_cache_93, -- 1
		table_cache_95, -- 2
		table_cache_8, -- 3
		table_cache_20, -- 4
		table_cache_27, -- 5
	}
	talent = tree.talents[18].info
	talent.name = "Focused Will"
	talent.tips = {
		format = "After taking a critical hit you gain the Focused Will effect, reducing all damage taken by %s%% and increasing healing effects on you by %s%%.  Stacks up to 3 times.  Lasts 8 sec.",
		table_cache_25, -- 1
		{3, 7}, -- 2
		table_cache_68, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Power Infusion"
	talent.tips = {
		{ -- 1
			{ left = "419 Mana", right = "30 yd range" }, -- 1
			table_cache_85,
			{ left = "Infuses the target with power, increasing spell casting speed by 20% and reducing the mana cost of all spells by 20%. Lasts 15 sec." }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "Reflective Shield"
	talent.tips = {
		format = "Causes %s%% of the damage absorbed by your Power Word: Shield to reflect back at the attacker. This damage causes no threat.",
		multiplier = 10,
	}
	talent = tree.talents[21].info
	talent.name = "Enlightenment"
	talent.tips = {
		format = "Increases your total Stamina, Intellect, and Spirit by %s%%.",
	}
	talent = tree.talents[22].info
	talent.name = "Pain Suppression"
	talent.tips = {
		{ -- 1
			{ left = "209 Mana", right = "40 yd range" }, -- 1
			table_cache_87,
			{ left = "Instantly reduces a friendly target's threat by 5%, reduces all damage taken by 40% and increases resistance to Dispel mechanics by 65% for 8 sec." }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "Holy"
	talent = tree.talents[1].info
	talent.name = "Healing Focus"
	talent.tips = {
		format = "Gives you a %s%% chance to avoid interruption caused by damage while casting any healing spell.",
		multiplier = 35,
	}
	talent = tree.talents[2].info
	talent.name = "Improved Renew"
	talent.tips = {
		format = "Increases the amount healed by your Renew spell by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[3].info
	talent.name = "Holy Specialization"
	talent.tips = {
		format = "Increases the critical effect chance of your Holy spells by %s%%.",
	}
	talent = tree.talents[4].info
	talent.name = "Spell Warding"
	talent.tips = {
		format = "Reduces all spell damage taken by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "Divine Fury"
	talent.tips = {
		format = "Reduces the casting time of your Smite, Holy Fire, Heal and Greater Heal spells by 0.%s sec.",
	}
	talent = tree.talents[6].info
	talent.name = "Holy Nova"
	talent.tips = {
		{ -- 1
			{ left = "185 Mana" }, -- 1
			table_cache_1,
			{ left = "Causes an explosion of holy light around the caster, causing 29 to 34 Holy damage to all enemy targets within 10 yards and healing all party members within 10 yards for 54 to 63. These effects cause no threat." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 290 Mana, 52-61 Damage, 89-101 Health" }, -- 6
			{ left = " Rank 3: 400 Mana, 79-92 Damage, 124-143 Health" }, -- 7
			{ left = " Rank 4: 520 Mana, 110-127 Damage, 165-192 Health" }, -- 8
			{ left = " Rank 5: 635 Mana, 146-168 Damage, 239-276 Health" }, -- 9
			{ left = " Rank 6: 750 Mana, 188-217 Damage, 307-356 Health" }, -- 10
			{ left = " Rank 7: 875 Mana, 244-283 Damage, 386-448 Health" }, -- 11
		},
	}
	talent = tree.talents[7].info
	talent.name = "Blessed Recovery"
	talent.tips = {
		format = "After being struck by a melee or ranged critical hit, heal %s%% of the damage taken over 6 sec.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "Inspiration"
	talent.tips = {
		format = "Increases your target's armor by %s%% for 15 sec after getting a critical effect from your Flash Heal, Heal, Greater Heal, Binding Heal, Prayer of Healing, or Circle of Healing spell.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[9].info
	talent.name = "Holy Reach"
	talent.tips = {
		format = "Increases the range of your Smite and Holy Fire spells and the radius of your Prayer of Healing, Holy Nova, and Circle of Healing spells by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "Improved Healing"
	talent.tips = {
		format = "Reduces the Mana cost of your Lesser Heal, Heal, and Greater Heal spells by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "Searing Light"
	talent.tips = {
		format = "Increases the damage of your Smite and Holy Fire spells by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "Healing Prayers"
	talent.tips = {
		format = "Reduces the Mana cost of your Prayer of Healing and Prayer of Mending spells by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "Spirit of Redemption"
	talent.tips = {
		"Increases total Spirit by 5% and upon death, the priest becomes the Spirit of Redemption for 15 sec.  The Spirit of Redemption cannot move, attack, be attacked or targeted by any spells or effects.  While in this form, the priest can cast any healing spell free of cost.  When the effect ends, the priest dies.", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "Spiritual Guidance"
	talent.tips = {
		format = "Increases spell damage and healing by up to %s%% of your total Spirit.",
		multiplier = 5,
	}
	talent = tree.talents[15].info
	talent.name = "Surge of Light"
	talent.tips = {
		format = "Your spell criticals have a %s%% chance to cause your next Smite spell to be instant cast, cost no mana but be incapable of a critical hit. This effect lasts 10 sec.",
		multiplier = 25,
	}
	talent = tree.talents[16].info
	talent.name = "Spiritual Healing"
	talent.tips = {
		format = "Increases the amount healed by your healing spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "Holy Concentration"
	talent.tips = {
		format = "Gives you a %s%% chance to enter a Clearcasting state after casting any Flash Heal, Binding Heal, or Greater Heal spell.  The Clearcasting state reduces the mana cost of your next Flash Heal, Binding Heal, or Greater Heal spell by 100%%.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "Lightwell"
	talent.tips = {
		{ -- 1
			{ left = "225 Mana", right = "40 yd range" }, -- 1
			{ left = "1.5 sec cast", right = "6 min cooldown" }, -- 2
			{ left = "Creates a holy Lightwell.  Members of your raid or party can click the Lightwell to restore 801 health over 6 sec. Any damage taken will cancel the effect.  Lightwell lasts for 3 min or 5 charges." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 295 Mana, 1164 Health" }, -- 6
			{ left = " Rank 3: 365 Mana, 1599 Health" }, -- 7
			{ left = " Rank 4: 445 Mana, 2361 Health" }, -- 8
		},
	}
	talent = tree.talents[19].info
	talent.name = "Blessed Resilience"
	talent.tips = {
		format = "Critical hits made against you have a %s%% chance to prevent you from being critically hit again for 6 sec.",
		multiplier = 20,
	}
	talent = tree.talents[20].info
	talent.name = "Empowered Healing"
	talent.tips = {
		format = "Your Greater Heal spell gains an additional %s%% and your Flash Heal and Binding Heal gains an additional %s%% of your bonus healing effects.",
		table_cache_24, -- 1
		table_cache_61, -- 2
		table_cache_28, -- 3
		table_cache_91, -- 4
		table_cache_18, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "Circle of Healing"
	talent.tips = {
		{ -- 1
			{ left = "300 Mana", right = "40 yd range" }, -- 1
			table_cache_1,
			{ left = "Heals friendly target and that target's party members within 15 yards of the target for 250 to 274." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 337 Mana, 292 to 323 Healing" }, -- 6
			{ left = " Rank 3: 375 Mana, 332 to 367 Healing" }, -- 7
			{ left = " Rank 4: 412 Mana, 376 to 415 Healing" }, -- 8
			{ left = " Rank 5: 450 Mana, 409 to 451 Healing" }, -- 9
		},
	}
	tree = data[3]
	tree.info.name = "Shadow"
	talent = tree.talents[1].info
	talent.name = "Spirit Tap"
	talent.tips = {
		format = "Gives you a %s%% chance to gain a 100%% bonus to your Spirit after killing a target that yields experience or honor.  For the duration, your Mana %s regenerate at a 50%% rate while casting. Lasts 15 sec.",
		{20, "will"}, -- 1
		{40, "may"}, -- 2
		{60, "may"}, -- 3
		{80, "may"}, -- 4
		{100, "may"}, -- 5
	}
	talent = tree.talents[2].info
	talent.name = "Blackout"
	talent.tips = {
		format = "Gives your Shadow damage spells a %s%% chance to stun the target for 3 sec.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "Shadow Affinity"
	talent.tips = {
		format = "Reduces the threat generated by your Shadow spells by %s%%.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[4].info
	talent.name = "Improved Shadow Word: Pain"
	talent.tips = {
		format = "Increases the duration of your Shadow Word: Pain spell by %s sec.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "Shadow Focus"
	talent.tips = {
		format = "Reduces your target's chance to resist your Shadow spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "Improved Psychic Scream"
	talent.tips = {
		format = "Reduces the cooldown of your Psychic Scream spell by %s sec.",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "Improved Mind Blast"
	talent.tips = {
		format = "Reduces the cooldown of your Mind Blast spell by %s sec.",
		multiplier = 0.5,
	}
	talent = tree.talents[8].info
	talent.name = "Mind Flay"
	talent.tips = {
		{ -- 1
			{ left = "45 Mana", right = "20 yd range" }, -- 1
			{ left = "Channeled" }, -- 2
			{ left = "Assault the target's mind with Shadow energy, causing 75 damage over 3 sec and slowing their movement speed by 50%." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 70 Mana, 126 Damage" }, -- 6
			{ left = " Rank 3: 100 Mana, 186 Damage" }, -- 7
			{ left = " Rank 4: 135 Mana, 261 Damage" }, -- 8
			{ left = " Rank 5: 165 Mana, 330 Damage" }, -- 9
			{ left = " Rank 6: 205 Mana, 426 Damage" }, -- 10
			{ left = " Rank 7: 230 Mana, 528 Damage" }, -- 11
		},
	}
	talent = tree.talents[9].info
	talent.name = "Improved Fade"
	talent.tips = {
		format = "Decreases the cooldown of your Fade ability by %s sec.",
		multiplier = 3,
	}
	talent = tree.talents[10].info
	talent.name = "Shadow Reach"
	talent.tips = {
		format = "Increases the range of your offensive Shadow spells by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "Shadow Weaving"
	talent.tips = {
		format = "Your Shadow damage spells have a %s%% chance to cause your target to be vulnerable to Shadow damage. This vulnerability increases the Shadow damage dealt to your target by 2%% and lasts 15 sec. Stacks up to 5 times.",
		multiplier = 20,
	}
	talent = tree.talents[12].info
	talent.name = "Silence"
	talent.tips = {
		{ -- 1
			table_cache_89,
			{ left = "Instant cast", right = "45 sec cooldown" }, -- 2
			{ left = "Silences the target, preventing them from casting spells for 5 sec." }, -- 3
		},
	}
	talent = tree.talents[13].info
	talent.name = "Vampiric Embrace"
	talent.tips = {
		{ -- 1
			{ left = "52 Mana", right = "30 yd range" }, -- 1
			table_cache_72,
			{ left = "Afflicts your target with Shadow energy that causes all party members to be healed for 15% of any Shadow damage you deal for 1 min." }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "Improved Vampiric Embrace"
	talent.tips = {
		format = "Increases the percentage healed by Vampiric Embrace by an additional %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[15].info
	talent.name = "Focused Mind"
	talent.tips = {
		format = "Reduces the mana cost of your Mind Blast, Mind Control and Mind Flay spells by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "Shadow Resilience"
	talent.tips = {
		format = "Reduces the chance you'll be critically hit by all spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "Darkness"
	talent.tips = {
		format = "Increases your Shadow spell damage by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "Shadowform"
	talent.tips = {
		{ -- 1
			{ left = "838 Mana" }, -- 1
			{ left = "Instant cast", right = "1.5 sec cooldown" }, -- 2
			{ left = "Assume a Shadowform, increasing your Shadow damage by 15% and reducing Physical damage done to you by 15%.  However, you may not cast Holy spells while in this form." }, -- 3
		},
	}
	talent = tree.talents[19].info
	talent.name = "Shadow Power"
	talent.tips = {
		format = "Increases the critical strike chance of your Mind Blast and Shadow Word: Death spells by %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[20].info
	talent.name = "Misery"
	talent.tips = {
		format = "Your Shadow Word: Pain, Mind Flay and Vampiric Touch spells also cause the target to take an additional %s%% spell damage.",
	}
	talent = tree.talents[21].info
	talent.name = "Vampiric Touch"
	talent.tips = {
		{ -- 1
			{ left = "325 Mana", right = "30 yd range" }, -- 1
			table_cache_3,
			{ left = "Causes 450 Shadow damage over 15 sec to your target and causes all party members to gain mana equal to 5% of any Shadow spell damage you deal." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 400 Mana, 600 Damage" }, -- 6
			{ left = " Rank 3: 425 Mana, 650 Damage" }, -- 7
		},
	}
	data = Talented_Data.WARLOCK
	-- data.name = "Warlock Talents"
	tree = data[1]
	tree.info.name = "Affliction"
	talent = tree.talents[1].info
	talent.name = "Suppression"
	talent.tips = {
		format = "Reduces the chance for enemies to resist your Affliction spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "Improved Corruption"
	talent.tips = {
		format = "Reduces the casting time of your Corruption spell by %s sec.",
		0.4, -- 1
		0.8, -- 2
		1.2, -- 3
		1.6, -- 4
		2, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "Improved Curse of Weakness"
	talent.tips = {
		format = "Increases the effect of your Curse of Weakness by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[4].info
	talent.name = "Improved Drain Soul"
	talent.tips = {
		format = "Returns %s%% of your maximum mana if the target is killed by you while you drain its soul. In addition, your Affliction spells generate %s%% less threat.",
		{7, 5}, -- 1
		table_cache_14, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "Improved Life Tap"
	talent.tips = {
		format = "Increases the amount of Mana awarded by your Life Tap spell by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "Soul Siphon"
	talent.tips = {
		format = "Increases the amount drained by your Drain Life spell by an additional %s%% for each Affliction effect on the target, up to a maximum of %s%% additional effect.",
		{2, 24}, -- 1
		{4, 60}, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "Improved Curse of Agony"
	talent.tips = {
		format = "Increases the damage done by your Curse of Agony by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "Fel Concentration"
	talent.tips = {
		format = "Gives you a %s%% chance to avoid interruption caused by damage while channeling the Drain Life, Drain Mana, or Drain Soul spell.",
		multiplier = 14,
	}
	talent = tree.talents[9].info
	talent.name = "Amplify Curse"
	talent.tips = {
		{ -- 1
			table_cache_29,
			{ left = "Increases the effect of your next Curse of Doom or Curse of Agony by 50%, or your next Curse of Exhaustion by 20%. Lasts 30 sec." }, -- 2
		},
	}
	talent = tree.talents[10].info
	talent.name = "Grim Reach"
	talent.tips = {
		format = "Increases the range of your Affliction spells by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "Nightfall"
	talent.tips = {
		format = "Gives your Corruption and Drain Life spells a %s%% chance to cause you to enter a Shadow Trance state after damaging the opponent. The Shadow Trance state reduces the casting time of your next Shadow Bolt spell by 100%%.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "Empowered Corruption"
	talent.tips = {
		format = "Your Corruption spell gains an additional %s%% of your bonus spell damage effects.",
		multiplier = 12,
	}
	talent = tree.talents[13].info
	talent.name = "Shadow Embrace"
	talent.tips = {
		format = "Your Corruption, Curse of Agony, Siphon Life and Seed of Corruption spells also cause the Shadow Embrace effect, which reduces physical damage caused by %s%%.",
	}
	talent = tree.talents[14].info
	talent.name = "Siphon Life"
	talent.tips = {
		{ -- 1
			{ left = "140 Mana", right = "30 yd range" }, -- 1
			table_cache_1,
			{ left = "Transfers 15 health from the target to the caster every 3 sec. Lasts 30 sec." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 190 Mana, 22 Health" }, -- 6
			{ left = " Rank 3: 250 Mana, 33 Health" }, -- 7
			{ left = " Rank 4: 310 Mana, 45 Health" }, -- 8
			{ left = " Rank 5: 350 Mana, 52 Health" }, -- 9
			{ left = " Rank 6: 410 Mana, 63 Health" }, -- 10
		},
	}
	talent = tree.talents[15].info
	talent.name = "Curse of Exhaustion"
	talent.tips = {
		{ -- 1
			{ left = "156 Mana", right = "30 yd range" }, -- 1
			table_cache_1,
			{ left = "Reduces the target's movement speed by 30% for 12 sec. Only one Curse per Warlock can be active on any one target." }, -- 3
		},
	}
	talent = tree.talents[16].info
	talent.name = "Shadow Mastery"
	talent.tips = {
		format = "Increases the damage dealt or life drained by your Shadow spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "Contagion"
	talent.tips = {
		format = "Increases the damage of Curse of Agony, Corruption and Seed of Corruption by %s%% and reduces the chance your Affliction spells will be dispelled by an additional %s%%.",
		{1, 6}, -- 1
		{2, 12}, -- 2
		{3, 18}, -- 3
		{4, 24}, -- 4
		{5, 30}, -- 5
	}
	talent = tree.talents[18].info
	talent.name = "Dark Pact"
	talent.tips = {
		{ -- 1
			table_cache_22,
			table_cache_30,
			{ left = "Drains 305 of your pet's Mana, returning 100% to you." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 440 Mana" }, -- 6
			{ left = " Rank 3: 545 Mana" }, -- 7
			{ left = " Rank 4: 700 Mana" }, -- 8
		},
	}
	talent = tree.talents[19].info
	talent.name = "Improved Howl of Terror"
	talent.tips = {
		format = "Reduces the casting time of your Howl of Terror spell by %s.%s sec.",
		{0, 8}, -- 1
		table_cache_33, -- 2
	}
	talent = tree.talents[20].info
	talent.name = "Malediction"
	talent.tips = {
		format = "Increases the damage bonus effect of your Curse of the Elements spells by an additional %s%%.",
	}
	talent = tree.talents[21].info
	talent.name = "Unstable Affliction"
	talent.tips = {
		{ -- 1
			{ left = "270 Mana", right = "30 yd range" }, -- 1
			table_cache_3,
			{ left = "Shadow energy slowly destroys the target, causing 660 damage over 18 sec. In addition, if the Unstable Affliction is dispelled it will cause 990 damage to the dispeller and silence them for 5 sec." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 330 Mana, 840 DoT, 1260 damage to dispeller" }, -- 6
			{ left = " Rank 3: 400 Mana, 1050 DoT, 1575 damage to dispeller" }, -- 7
		},
	}
	tree = data[2]
	tree.info.name = "Demonology"
	talent = tree.talents[1].info
	talent.name = "Improved Healthstone"
	talent.tips = {
		format = "Increases the amount of Health restored by your Healthstone by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[2].info
	talent.name = "Improved Imp"
	talent.tips = {
		format = "Increases the effect of your Imp's Firebolt, Fire Shield, and Blood Pact spells by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[3].info
	talent.name = "Demonic Embrace"
	talent.tips = {
		format = "Increases your total Stamina by %s%% but reduces your total Spirit by %s%%.",
		table_cache_34, -- 1
		table_cache_69, -- 2
		table_cache_79, -- 3
		table_cache_66, -- 4
		table_cache_50, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "Improved Health Funnel"
	talent.tips = {
		format = "Increases the amount of Health transfered by your Health Funnel spell by %s%% and reduces the initial health cost by %s%%.",
		table_cache_60, -- 1
		table_cache_38, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "Improved Voidwalker"
	talent.tips = {
		format = "Increases the effectiveness of your Voidwalker's Torment, Consume Shadows, Sacrifice and Suffering spells by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "Fel Intellect"
	talent.tips = {
		format = "Increases the Intellect of your Imp, Voidwalker, Succubus, Felhunter and Felguard by %s%% and increases your maximum mana by %s%%.",
		table_cache_11, -- 1
		table_cache_82, -- 2
		table_cache_84, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "Improved Succubus"
	talent.tips = {
		format = "Increases the effect of your Succubus' Lash of Pain and Soothing Kiss spells by %s%%, and increases the duration of your Succubus' Seduction and Lesser Invisibility spells by %s%%.",
		table_cache_60, -- 1
		table_cache_38, -- 2
		table_cache_83, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "Fel Domination"
	talent.tips = {
		{ -- 1
			{ left = "Instant", right = "15 min cooldown" }, -- 1
			{ left = "Your next Imp, Voidwalker, Succubus, Felhunter or Felguard Summon spell has its casting time reduced by 5.5 sec and its Mana cost reduced by 50%." }, -- 2
		},
	}
	talent = tree.talents[9].info
	talent.name = "Fel Stamina"
	talent.tips = {
		format = "Increases the Stamina of your Imp, Voidwalker, Succubus, Felhunter and Felguard by %s%% and increases your maximum health by %s%%.",
		table_cache_11, -- 1
		table_cache_82, -- 2
		table_cache_84, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "Demonic Aegis"
	talent.tips = {
		format = "Increases the effectiveness of your Demon Armor and Fel Armor spells by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "Master Summoner"
	talent.tips = {
		format = "Reduces the casting time of your Imp, Voidwalker, Succubus, Felhunter and Felguard Summoning spells by %s sec and the Mana cost by %s%%.",
		table_cache_4, -- 1
		{4, 40}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "Unholy Power"
	talent.tips = {
		format = "Increases the damage done by your Voidwalker, Succubus, Felhunter and Felguard's melee attacks and your Imp's Firebolt by %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[13].info
	talent.name = "Improved Enslave Demon"
	talent.tips = {
		format = "Reduces the Attack Speed and Casting Speed penalty of your Enslave Demon spell by %s%% and reduces the resist chance by %s%%.",
		table_cache_27, -- 1
		table_cache_60, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "Demonic Sacrifice"
	talent.tips = {
		{ -- 1
			{ left = "100 yd range" }, -- 1
			table_cache_30,
			{ left = "When activated, sacrifices your summoned demon to grant you an effect that lasts 30 min. The effect is canceled if any Demon is summoned." }, -- 3
			table_cache_59,
			{ left = "Imp: Increases your Fire damage by 15%." }, -- 5
			table_cache_59,
			{ left = "Voidwalker: Restores 2% of total health every 4 sec." }, -- 7
			table_cache_59,
			{ left = "Succubus: Increases your Shadow damage by 15%." }, -- 9
			table_cache_59,
			{ left = "Felhunter: Restores 3% of total Mana every 4 sec." }, -- 11
			table_cache_59,
			{ left = "Felguard: Increases your Shadow damage by 10% and restores 2% of total mana every 4 sec." }, -- 13
		},
	}
	talent = tree.talents[15].info
	talent.name = "Master Conjuror"
	talent.tips = {
		format = "Increases the bonus Fire damage from Firestones and the Firestone effect by %s%% and increases the spell critical strike rating bonus of your Spellstone by %s%%.",
		{15, 15}, -- 1
		table_cache_83, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "Mana Feed"
	talent.tips = {
		format = "When you gain mana from Drain Mana or Life Tap spells, your pet gains %s%% of the mana you gain",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "Master Demonologist"
	talent.tips = {
		{ -- 1
			table_cache_57,
			table_cache_59,
			{ left = "Imp - Reduces threat caused by 4%." }, -- 3
			table_cache_59,
			{ left = "Voidwalker - Reduces physical damage taken by 2%." }, -- 5
			table_cache_59,
			{ left = "Succubus - Increases all damage caused by 2%." }, -- 7
			table_cache_59,
			{ left = "Felhunter - Increases all resistances by .2 per level." }, -- 9
			table_cache_59,
			{ left = "Felguard - Increases all damage caused by 1% and all resistances by .1 per level." }, -- 11
		},
		{ -- 2
			table_cache_57,
			table_cache_59,
			{ left = "Imp - Reduces threat caused by 8%." }, -- 3
			table_cache_59,
			{ left = "Voidwalker - Reduces physical damage taken by 4%." }, -- 5
			table_cache_59,
			{ left = "Succubus - Increases all damage caused by 4%." }, -- 7
			table_cache_59,
			{ left = "Felhunter - Increases all resistances by .4 per level." }, -- 9
			table_cache_59,
			{ left = "Felguard - Increases all damage caused by 2% and all resistances by .2 per level." }, -- 11
		},
		{ -- 3
			table_cache_57,
			table_cache_59,
			{ left = "Imp - Reduces threat caused by 12%." }, -- 3
			table_cache_59,
			{ left = "Voidwalker - Reduces physical damage taken by 6%." }, -- 5
			table_cache_59,
			{ left = "Succubus - Increases all damage caused by 6%." }, -- 7
			table_cache_59,
			{ left = "Felhunter - Increases all resistances by .6 per level." }, -- 9
			table_cache_59,
			{ left = "Felguard - Increases all damage caused by 3% and all resistances by .3 per level." }, -- 11
		},
		{ -- 4
			table_cache_57,
			table_cache_59,
			{ left = "Imp - Reduces threat caused by 16%." }, -- 3
			table_cache_59,
			{ left = "Voidwalker - Reduces physical damage taken by 8%." }, -- 5
			table_cache_59,
			{ left = "Succubus - Increases all damage caused by 8%." }, -- 7
			table_cache_59,
			{ left = "Felhunter - Increases all resistances by .8 per level." }, -- 9
			table_cache_59,
			{ left = "Felguard - Increases all damage caused by 4% and all resistances by .4 per level." }, -- 11
		},
		{ -- 5
			table_cache_57,
			table_cache_59,
			{ left = "Imp - Reduces threat caused by 20%." }, -- 3
			table_cache_59,
			{ left = "Voidwalker - Reduces physical damage taken by 10%." }, -- 5
			table_cache_59,
			{ left = "Succubus - Increases all damage caused by 10%." }, -- 7
			table_cache_59,
			{ left = "Felhunter - Increases all resistances by 1 per level." }, -- 9
			table_cache_59,
			{ left = "Felguard - Increases all damage caused by 5% and all resistances by .5 per level." }, -- 11
		},
	}
	talent = tree.talents[18].info
	talent.name = "Demonic Resilience"
	talent.tips = {
		format = "Reduces the chance you'll be critically hit by melee and spells by %s%% and reduces all damage your summoned demon takes by %s%%.",
		table_cache_33, -- 1
		table_cache_90, -- 2
		table_cache_78, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Soul Link"
	talent.tips = {
		{ -- 1
			{ left = "418 Mana", right = "100 yd range" }, -- 1
			table_cache_1,
			{ left = "When active, 20% of all damage taken by the caster is taken by your Imp, Voidwalker, Succubus, Felhunter, Felguard, or enslaved demon instead.  That damage cannot be prevented.  In addition, both the demon and master will inflict 5% more damage.  Lasts as long as the demon is active and controlled." }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "Demonic Knowledge"
	talent.tips = {
		format = "Increases your spell damage by an amount equal to %s%% of the total of your active demon's Stamina plus Intellect.",
		multiplier = 4,
	}
	talent = tree.talents[21].info
	talent.name = "Demonic Tactics"
	talent.tips = {
		format = "Increases melee and spell critical strike chance for you and your summoned demon by %s%%.",
	}
	talent = tree.talents[22].info
	talent.name = "Summon Felguard"
	talent.tips = {
		{ -- 1
			{ left = "2092 Mana" }, -- 1
			{ left = "10 sec cast" }, -- 2
			table_cache_43,
			{ left = "Summons a Felguard under the command of the Warlock." }, -- 4
		},
	}
	tree = data[3]
	tree.info.name = "Destruction"
	talent = tree.talents[1].info
	talent.name = "Improved Shadow Bolt"
	talent.tips = {
		format = "Your Shadow Bolt critical strikes increase Shadow damage dealt to the target by %s%% until 4 non-periodic damage sources are applied. Effect lasts a maximum of 12 sec.",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "Cataclysm"
	talent.tips = {
		format = "Reduces the Mana cost of your Destruction spells by %s%%.",
	}
	talent = tree.talents[3].info
	talent.name = "Bane"
	talent.tips = {
		format = "Reduces the casting time of your Shadow Bolt and Immolate spells by 0.%s sec and your Soul Fire spell by %s.%s sec.",
		{1, 0, 4}, -- 1
		{2, 0, 8}, -- 2
		{3, 1, 2}, -- 3
		{4, 1, 6}, -- 4
		{5, 2, 0}, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "Aftermath"
	talent.tips = {
		format = "Gives your Destruction spells a %s%% chance to daze the target for 5 sec.",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "Improved Firebolt"
	talent.tips = {
		format = "Reduces the casting time of your Imp's Firebolt spell by 0.%s sec.",
		25, -- 1
		5, -- 2
	}
	talent = tree.talents[6].info
	talent.name = "Improved Lash of Pain"
	talent.tips = {
		format = "Reduces the cooldown of your Succubus' Lash of Pain spell by %s sec.",
		multiplier = 3,
	}
	talent = tree.talents[7].info
	talent.name = "Devastation"
	talent.tips = {
		format = "Increases the critical strike chance of your Destruction spells by %s%%.",
	}
	talent = tree.talents[8].info
	talent.name = "Shadowburn"
	talent.tips = {
		{ -- 1
			{ left = "105 Mana", right = "20 yd range" }, -- 1
			table_cache_49,
			table_cache_43,
			{ left = "Instantly blasts the target for 91 to 104 Shadow damage. If the target dies within 5 secs of Shadowburn, and yields experience or honor, the caster gains a Soul Shard." }, -- 4
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 130 Mana, 123-140 Damage" }, -- 7
			{ left = " Rank 3: 190 Mana, 196-221 Damage" }, -- 8
			{ left = " Rank 4: 245 Mana, 274-307 Damage" }, -- 9
			{ left = " Rank 5: 305 Mana, 365-408 Damage" }, -- 10
			{ left = " Rank 6: 365 Mana, 468-520 Damage" }, -- 11
			{ left = " Rank 7: 435 Mana, 538-599 Damage" }, -- 12
			{ left = " Rank 8: 515 Mana, 597-665 Damage" }, -- 13
		},
	}
	talent = tree.talents[9].info
	talent.name = "Intensity"
	talent.tips = {
		format = "Gives you a %s%% chance to resist interruption caused by damage while casting or channeling any Destruction spell.",
		multiplier = 35,
	}
	talent = tree.talents[10].info
	talent.name = "Destructive Reach"
	talent.tips = {
		format = "Increases the range of your Destruction spells by %s%% and reduces threat caused by Destruction spells by %s%%.",
		table_cache_31, -- 1
		table_cache_18, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "Improved Searing Pain"
	talent.tips = {
		format = "Increases the critical strike chance of your Searing Pain spell by %s%%.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "Pyroclasm"
	talent.tips = {
		format = "Gives your Rain of Fire, Hellfire, and Soul Fire spells a %s%% chance to stun the target for 3 sec.",
		multiplier = 13,
	}
	talent = tree.talents[13].info
	talent.name = "Improved Immolate"
	talent.tips = {
		format = "Increases the initial damage of your Immolate spell by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[14].info
	talent.name = "Ruin"
	talent.tips = {
		"Increases the critical strike damage bonus of your Destruction spells by 100%.", -- 1
	}
	talent = tree.talents[15].info
	talent.name = "Nether Protection"
	talent.tips = {
		format = "After being hit with a Shadow or Fire spell, you have a %s%% chance to become immune to Shadow and Fire spells for 4 sec.",
		multiplier = 10,
	}
	talent = tree.talents[16].info
	talent.name = "Emberstorm"
	talent.tips = {
		format = "Increases the damage done by your Fire spells by %s%% and reduces the cast time of your Incinerate spell by %s%%.",
		table_cache_95, -- 1
		table_cache_20, -- 2
		table_cache_75, -- 3
		table_cache_10, -- 4
		table_cache_60, -- 5
	}
	talent = tree.talents[17].info
	talent.name = "Backlash"
	talent.tips = {
		format = "Increases your critical strike chance with spells by an additional %s%% and gives you a %s%% chance when hit by a physical attack to reduce the cast time of your next Shadow Bolt or Incinerate spell by 100%%. This effect lasts 8 sec and will not occur more than once every 8 seconds.",
		{1, 8}, -- 1
		table_cache_94, -- 2
		{3, 25}, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "Conflagrate"
	talent.tips = {
		{ -- 1
			{ left = "165 Mana", right = "30 yd range" }, -- 1
			{ left = "Instant Cast", right = "10 sec cooldown" }, -- 2
			{ left = "Ignites a target that is already afflicted by your Immolate, dealing 249 to 316 Fire damage and consuming the Immolate spell." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 200 Mana, 326-407 Damage" }, -- 6
			{ left = " Rank 3: 230 Mana, 395-491 Damage" }, -- 7
			{ left = " Rank 4: 255 Mana, 455-566 Damage" }, -- 8
			{ left = " Rank 5: 280 Mana, 521-648 Damage" }, -- 9
			{ left = " Rank 6: 305 Mana, 579-721 Damage" }, -- 10
		},
	}
	talent = tree.talents[19].info
	talent.name = "Soul Leech"
	talent.tips = {
		format = "Gives your Shadow Bolt, Shadowburn, Soul Fire, Incinerate, Searing Pain and Conflagrate spells a %s%% chance to return health equal to 20%% of the damage caused.",
		multiplier = 10,
	}
	talent = tree.talents[20].info
	talent.name = "Shadow and Flame"
	talent.tips = {
		format = "Your Shadow Bolt and Incinerate spells gain an additional %s%% of your bonus spell damage effects.",
		multiplier = 4,
	}
	talent = tree.talents[21].info
	talent.name = "Shadowfury"
	talent.tips = {
		{ -- 1
			{ left = "440 Mana", right = "30 yd range" }, -- 1
			{ left = "0.5 sec cast", right = "20 sec cooldown" }, -- 2
			{ left = "Shadowfury is unleashed, causing 357 to 422 Shadow damage and stunning all enemies within 8 yds for 2 sec." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 545 Mana, 476-565 Damage" }, -- 6
			{ left = " Rank 3: 710 Mana, 612-728 Damage" }, -- 7
		},
	}
	data = Talented_Data.DRUID
	-- data.name = "Druid Talents"
	tree = data[1]
	tree.info.name = "Balance"
	talent = tree.talents[1].info
	talent.name = "Starlight Wrath"
	talent.tips = {
		format = "Reduces the cast time of your Wrath and Starfire spells by 0.%s sec.",
	}
	talent = tree.talents[2].info
	talent.name = "Nature's Grasp"
	talent.tips = {
		{ -- 1
			{ left = "Instant", right = "1 min cooldown" }, -- 1
			{ left = "While active, any time an enemy strikes the caster they have a 35% chance to become afflicted by Entangling Roots (Rank 1).  Only useable outdoors. 1 charge. Lasts 45 sec." }, -- 2
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: Entangling Roots (Rank 2)" }, -- 5
			{ left = " Rank 3: Entangling Roots (Rank 3)" }, -- 6
			{ left = " Rank 4: Entangling Roots (Rank 4)" }, -- 7
			{ left = " Rank 5: Entangling Roots (Rank 5)" }, -- 8
			{ left = " Rank 6: Entangling Roots (Rank 6)" }, -- 9
			{ left = " Rank 7: Entangling Roots (Rank 7)" }, -- 10
		},
	}
	talent = tree.talents[3].info
	talent.name = "Improved Nature's Grasp"
	talent.tips = {
		format = "Increases the chance for your Nature's Grasp to entangle an enemy by %s%%.",
		15, -- 1
		30, -- 2
		45, -- 3
		65, -- 4
	}
	talent = tree.talents[4].info
	talent.name = "Control of Nature"
	talent.tips = {
		format = "Gives you a %s%% chance to avoid interruption caused by damage while casting Entangling Roots and Cyclone.",
		40, -- 1
		70, -- 2
		100, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "Focused Starlight"
	talent.tips = {
		format = "Increases the critical strike chance of your Wrath and Starfire spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "Improved Moonfire"
	talent.tips = {
		format = "Increases the damage and critical strike chance of your Moonfire spell by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "Brambles"
	talent.tips = {
		format = "Increases damage caused by your Thorns and Entangling Roots spells by %s%%.",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "Insect Swarm"
	talent.tips = {
		{ -- 1
			{ left = "50 Mana", right = "30 yd range" }, -- 1
			table_cache_1,
			{ left = "The enemy target is swarmed by insects, decreasing their chance to hit by 2% and causing 108 Nature damage over 12 sec." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 85 Mana, 192 Damage" }, -- 6
			{ left = " Rank 3: 110 Mana, 300 Damage" }, -- 7
			{ left = " Rank 4: 135 Mana, 432 Damage" }, -- 8
			{ left = " Rank 5: 155 Mana, 594 Damage" }, -- 9
			{ left = " Rank 6: 175 Mana, 792 Damage" }, -- 10
		},
	}
	talent = tree.talents[9].info
	talent.name = "Nature's Reach"
	talent.tips = {
		format = "Increases the range of your Balance spells and Faerie Fire (Feral) ability by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "Vengeance"
	talent.tips = {
		format = "Increases the critical strike damage bonus of your Starfire, Moonfire, and Wrath spells by %s%%.",
		multiplier = 20,
	}
	talent = tree.talents[11].info
	talent.name = "Celestial Focus"
	talent.tips = {
		format = "Gives your Starfire spell a %s%% chance to stun the target for 3 sec and increases the chance you'll resist spell interruption when casting your Wrath spell by %s%%.",
		table_cache_88, -- 1
		table_cache_73, -- 2
		{15, 70}, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "Lunar Guidance"
	talent.tips = {
		format = "Increases your spell damage and healing by %s%% of your total Intellect.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "Nature's Grace"
	talent.tips = {
		"All spell criticals grace you with a blessing of nature, reducing the casting time of your next spell by 0.5 sec.", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "Moonglow"
	talent.tips = {
		format = "Reduces the Mana cost of your Moonfire, Starfire, Wrath, Healing Touch, Regrowth and Rejuvenation spells by %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[15].info
	talent.name = "Moonfury"
	talent.tips = {
		format = "Increases the damage done by your Starfire, Moonfire and Wrath spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "Balance of Power"
	talent.tips = {
		format = "Increases your chance to hit with all spells and reduces the chance you'll be hit by spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "Dreamstate"
	talent.tips = {
		format = "Regenerate mana equal to %s%% of your Intellect every 5 sec, even while casting.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "Moonkin Form"
	talent.tips = {
		{ -- 1
			{ left = "521 Mana" }, -- 1
			table_cache_1,
			{ left = "Transforms the Druid into Moonkin Form. While in this form the armor contribution from items is increased by 400%, attack power is increased by 150% of your level and all party members within 30 yards have their spell critical chance increased by 5%. Melee attacks in this form have a chance on hit to regenerate mana based on attack power. The Moonkin can only cast Balance and Remove Curse spells while shapeshifted." }, -- 3
			table_cache_59,
			table_cache_63,
		},
	}
	talent = tree.talents[19].info
	talent.name = "Improved Faerie Fire"
	talent.tips = {
		format = "Your Faerie Fire spell also increases the chance the target will be hit by melee and ranged attacks by %s%%.",
	}
	talent = tree.talents[20].info
	talent.name = "Wrath of Cenarius"
	talent.tips = {
		format = "Your Starfire spell gains an additional %s%% and your Wrath gains an additional %s%% of your bonus damage effects.",
		table_cache_24, -- 1
		table_cache_61, -- 2
		table_cache_28, -- 3
		table_cache_91, -- 4
		table_cache_18, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "Force of Nature"
	talent.tips = {
		{ -- 1
			{ left = "284 Mana", right = "30 yd range" }, -- 1
			table_cache_85,
			{ left = "Summons 3 treants to attack the enemy target for 30 sec." }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "Feral Combat"
	talent = tree.talents[1].info
	talent.name = "Ferocity"
	talent.tips = {
		format = "Reduces the cost of your Maul, Swipe, Claw, Rake and Mangle abilities by %s Rage or Energy.",
	}
	talent = tree.talents[2].info
	talent.name = "Feral Aggression"
	talent.tips = {
		format = "Increases the Attack Power reduction of your Demoralizing Roar by %s%% and the damage caused by your Ferocious Bite by %s%%.",
		{8, 3}, -- 1
		{16, 6}, -- 2
		{24, 9}, -- 3
		{32, 12}, -- 4
		{40, 15}, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "Feral Instinct"
	talent.tips = {
		format = "Increases threat caused in Bear and Dire Bear Form by %s%% and reduces the chance enemies have to detect you while Prowling.",
		multiplier = 5,
	}
	talent = tree.talents[4].info
	talent.name = "Brutal Impact"
	talent.tips = {
		format = "Increases the stun duration of your Bash and Pounce abilities by %s sec.",
		multiplier = 0.5,
	}
	talent = tree.talents[5].info
	talent.name = "Thick Hide"
	talent.tips = {
		format = "Increases your Armor contribution from items by %s%%.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "Feral Swiftness"
	talent.tips = {
		format = "Increases your movement speed by %s%% while outdoors in Cat Form and increases your chance to dodge while in Cat Form, Bear Form and Dire Bear Form by %s%%.",
		table_cache_76, -- 1
		table_cache_81, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "Feral Charge"
	talent.tips = {
		{ -- 1
			{ left = "5 Rage", right = "8-25 yd range" }, -- 1
			{ left = "Instant", right = "15 sec cooldown" }, -- 2
			{ left = "Requires Bear Form, Dire Bear Form" }, -- 3
			{ left = "Causes you to charge an enemy, immobilizing and interrupting any spell being cast for 4 sec." }, -- 4
		},
	}
	talent = tree.talents[8].info
	talent.name = "Sharpened Claws"
	talent.tips = {
		format = "Increases your critical strike chance while in Bear, Dire Bear or Cat Form by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "Shredding Attacks"
	talent.tips = {
		format = "Reduces the energy cost of your Shred ability by %s and the rage cost of your Lacerate ability by %s.",
		{9, 1}, -- 1
		{18, 2}, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "Predatory Strikes"
	talent.tips = {
		format = "Increases your melee attack power in Cat, Bear, Dire Bear and Moonkin Forms by %s%% of your level.",
		multiplier = 50,
	}
	talent = tree.talents[11].info
	talent.name = "Primal Fury"
	talent.tips = {
		format = "Gives you a %s%% chance to gain an additional 5 Rage anytime you get a critical strike while in Bear and Dire Bear Form and your critical strikes from Cat Form abilities that add combo points have a %s%% chance to add an additional combo point.",
		{50, 50}, -- 1
		{100, 100}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "Savage Fury"
	talent.tips = {
		format = "Increases the damage caused by your Claw, Rake and Mangle (Cat) abilities by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "Faerie Fire (Feral)"
	talent.tips = {
		{ -- 1
			table_cache_22,
			table_cache_67,
			{ left = "Requires Cat Form, Bear Form, Dire Bear Form" }, -- 3
			{ left = "Decrease the armor of the target by 175 for 40 sec. While affected, the target cannot stealth or turn invisible." }, -- 4
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: -285 Armor" }, -- 7
			{ left = " Rank 3: -395 Armor" }, -- 8
			{ left = " Rank 4: -505 Armor" }, -- 9
			{ left = " Rank 5: -610 Armor" }, -- 10
		},
	}
	talent = tree.talents[14].info
	talent.name = "Nurturing Instinct"
	talent.tips = {
		format = "Increases your healing spells by up to %s%% of your Agility, and increases healing done to you by %s%% while in Cat form.",
		table_cache_103, -- 1
		table_cache_102, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "Heart of the Wild"
	talent.tips = {
		format = "Increases your Intellect by %s%%. In addition, while in Bear or Dire Bear Form your Stamina is increased by %s%% and while in Cat Form your attack power is increased by %s%%.",
		{4, 4, 2}, -- 1
		{8, 8, 4}, -- 2
		{12, 12, 6}, -- 3
		{16, 16, 8}, -- 4
		{20, 20, 10}, -- 5
	}
	talent = tree.talents[16].info
	talent.name = "Survival of the Fittest"
	talent.tips = {
		format = "Increases all attributes by %s%% and reduces the chance you'll be critically hit by melee attacks by %s%%.",
		table_cache_93, -- 1
		table_cache_95, -- 2
		table_cache_8, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "Primal Tenacity"
	talent.tips = {
		format = "Increases your chance to resist Stun and Fear mechanics by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[18].info
	talent.name = "Leader of the Pack"
	talent.tips = {
		"While in Cat, Bear or Dire Bear Form, the Leader of the Pack increases ranged and melee critical chance of all party members within 45 yards by 5%.", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "Improved Leader of the Pack"
	talent.tips = {
		format = "Your Leader of the Pack ability also causes affected targets to have a 100%% chance to heal themselves for %s%% of their total health when they critically hit with a melee or ranged attack. The healing effect cannot occur more than once every 6 sec.",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "Predatory Instincts"
	talent.tips = {
		format = "While in Cat Form, Bear Form, or Dire Bear Form, increases your damage from melee critical strikes by %s%% and your chance to avoid area effect attacks by %s%%.",
		table_cache_39, -- 1
		table_cache_40, -- 2
		{6, 9}, -- 3
		table_cache_48, -- 4
		table_cache_44, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "Mangle"
	talent.tips = {
		{ -- 1
			{ left = "Mangle the target, inflicting damage and causing the target to take additional damage from bleed effects for 12 sec. This ability can be used in Cat Form or Dire Bear Form." }, -- 1
			table_cache_59,
			{ left = " Bear Form:" }, -- 3
			{ left = " 20 Rage, Melee range, Instant, 6 sec cooldown, 1.5 sec global cooldown." }, -- 4
			{ left = " 115% normal damage plus x, and 30% additional damage from Shred and bleed effects for 12 sec." }, -- 5
			{ left = " Rank 1: +86" }, -- 6
			{ left = " Rank 2: +121" }, -- 7
			{ left = " Rank 3: +155" }, -- 8
			table_cache_59,
			{ left = " Cat Form:" }, -- 10
			{ left = " 45 Energy, Melee range, Instant, Awards 1 combo point." }, -- 11
			{ left = " 160% damage plus x, and 30% additional damage from Shred and bleed effects for 12 sec." }, -- 12
			{ left = " Rank 1: +158" }, -- 13
			{ left = " Rank 2: +205" }, -- 14
			{ left = " Rank 3: +264" }, -- 15
		},
	}
	tree = data[3]
	tree.info.name = "Restoration"
	talent = tree.talents[1].info
	talent.name = "Improved Mark of the Wild"
	talent.tips = {
		format = "Increases the effects of your Mark of the Wild and Gift of the Wild spells by %s%%.",
		multiplier = 7,
	}
	talent = tree.talents[2].info
	talent.name = "Furor"
	talent.tips = {
		format = "Gives you %s%% chance to gain 10 Rage when you shapeshift into Bear and Dire Bear Form or 40 Energy when you shapeshift into Cat Form.",
		multiplier = 20,
	}
	talent = tree.talents[3].info
	talent.name = "Naturalist"
	talent.tips = {
		format = "Reduces the cast time of your Healing Touch spell by 0.%s sec and increases the damage you deal with physical attacks in all forms by %s%%.",
		table_cache_92, -- 1
		table_cache_15, -- 2
		table_cache_41, -- 3
		table_cache_37, -- 4
		table_cache_68, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "Nature's Focus"
	talent.tips = {
		format = "Gives you a %s%% chance to avoid interruption caused by damage while casting the Healing Touch, Regrowth and Tranquility spells.",
		multiplier = 14,
	}
	talent = tree.talents[5].info
	talent.name = "Natural Shapeshifter"
	talent.tips = {
		format = "Reduces the mana cost of all shapeshifting by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "Intensity"
	talent.tips = {
		format = "Allows %s%% of your Mana regeneration to continue while casting and causes your Enrage ability to instantly generate %s rage.",
		table_cache_51, -- 1
		{20, 7}, -- 2
		{30, 10}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "Subtlety"
	talent.tips = {
		format = "Reduces the threat generated by your spells by %s%% and reduces the chance your spells will be dispelled by %s%%.",
		table_cache_40, -- 1
		table_cache_48, -- 2
		{12, 18}, -- 3
		{16, 24}, -- 4
		{20, 30}, -- 5
	}
	talent = tree.talents[8].info
	talent.name = "Omen of Clarity"
	talent.tips = {
		{ -- 1
			{ left = "120 Mana" }, -- 1
			table_cache_1,
			{ left = "Imbues the Druid with natural energy. Each of the Druid's melee attacks has a chance of causing the caster to enter a Clearcasting state. The Clearcasting state reduces the Mana, Rage or Energy cost of your next damage or healing spell or offensive ability by 100%. Lasts 30 min." }, -- 3
		},
	}
	talent = tree.talents[9].info
	talent.name = "Tranquil Spirit"
	talent.tips = {
		format = "Reduces the mana cost of your Healing Touch and Tranquility spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[10].info
	talent.name = "Improved Rejuvenation"
	talent.tips = {
		format = "Increases the effect of your Rejuvenation spell by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "Nature's Swiftness"
	talent.tips = {
		{ -- 1
			table_cache_29,
			{ left = "When activated, your next Nature spell becomes an instant cast spell." }, -- 2
		},
	}
	talent = tree.talents[12].info
	talent.name = "Gift of Nature"
	talent.tips = {
		format = "Increases the effect of all healing spells by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[13].info
	talent.name = "Improved Tranquility"
	talent.tips = {
		format = "Reduces threat caused by Tranquility by %s%%.",
		multiplier = 50,
	}
	talent = tree.talents[14].info
	talent.name = "Empowered Touch"
	talent.tips = {
		format = "Your Healing Touch spell gains an additional %s%% of your bonus healing effects.",
		multiplier = 10,
	}
	talent = tree.talents[15].info
	talent.name = "Improved Regrowth"
	talent.tips = {
		format = "Increases the critical effect chance of your Regrowth spell by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[16].info
	talent.name = "Living Spirit"
	talent.tips = {
		format = "Increases your total Spirit by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "Swiftmend"
	talent.tips = {
		{ -- 1
			{ left = "379 Mana", right = "40 yd range" }, -- 1
			table_cache_49,
			{ left = "Consumes a Rejuvenation or Regrowth effect on a friendly target to instantly heal them an amount equal to 12 sec. of Rejuvenation or 18 sec. of Regrowth." }, -- 3
		},
	}
	talent = tree.talents[18].info
	talent.name = "Natural Perfection"
	talent.tips = {
		format = "Your critical strike chance with all spells is increased by %s%% and critical strikes against you give you the Natural Perfection effect reducing all damage taken by %s%%.  Stacks up to 3 times.  Lasts 8 sec.",
		table_cache_92, -- 1
		table_cache_39, -- 2
		{3, 4}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Empowered Rejuvenation"
	talent.tips = {
		format = "The bonus healing effects of your healing over time spells is increased by %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[20].info
	talent.name = "Tree of Life"
	talent.tips = {
		{ -- 1
			{ left = "663 Mana" }, -- 1
			table_cache_1,
			{ left = "Transforms the Druid into the Tree of Life Form.  While in this form you increase healing received by 25% of your total Spirit for all party members within 45 yards, your movement speed is reduced by 20%, and you can only cast Swiftmend, Innervate, Nature's Swiftness, Rebirth, poison removing and healing over time spells, but the mana cost of these spells is reduced by 20%." }, -- 3
			table_cache_59,
			table_cache_63,
		},
	}
	data = Talented_Data.ROGUE
	-- data.name = "Rogue Talents"
	tree = data[1]
	tree.info.name = "Assassination"
	talent = tree.talents[1].info
	talent.name = "Improved Eviscerate"
	talent.tips = {
		format = "Increases the damage done by your Eviscerate ability by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[2].info
	talent.name = "Remorseless Attacks"
	talent.tips = {
		format = "After killing an opponent that yields experience or honor, gives you a %s%% increased critical strike chance on your next Sinister Strike, Backstab, Mutilate, Hemorrhage, Ambush, or Ghostly Strike. Lasts 20 sec.",
		multiplier = 20,
	}
	talent = tree.talents[3].info
	talent.name = "Malice"
	talent.tips = {
		format = "Increases your critical strike chance by %s%%.",
	}
	talent = tree.talents[4].info
	talent.name = "Ruthlessness"
	talent.tips = {
		format = "Gives your melee finishing moves a %s%% chance to add a combo point to your target.",
		multiplier = 20,
	}
	talent = tree.talents[5].info
	talent.name = "Murder"
	talent.tips = {
		format = "Increases all damage caused against Humanoid, Giant, Beast, and Dragonkin targets by %s%%",
	}
	talent = tree.talents[6].info
	talent.name = "Puncturing Wounds"
	talent.tips = {
		format = "Increases the critical strike chance of your Backstab ability by %s%%, and the critical strike chance of your Mutilate ability by %s%%.",
		table_cache_31, -- 1
		table_cache_18, -- 2
		{30, 15}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "Relentless Strikes"
	talent.tips = {
		"Your finishing moves have a 20% chance per combo point to restore 25 energy.", -- 1
	}
	talent = tree.talents[8].info
	talent.name = "Improved Expose Armor"
	talent.tips = {
		format = "Increases the armor reduced by your Expose Armor ability by %s%%.",
		multiplier = 25,
	}
	talent = tree.talents[9].info
	talent.name = "Lethality"
	talent.tips = {
		format = "Increases the critical strike damage bonus of your Sinister Strike, Gouge, Backstab, Ghostly Strike, Mutilate, Shiv, and Hemorrhage abilites by %s%%.",
		multiplier = 6,
	}
	talent = tree.talents[10].info
	talent.name = "Vile Poisons"
	talent.tips = {
		format = "Increases the damage dealt by your poisons and Envenom ability by %s%% and gives your poisons an additional %s%% chance to resist dispel effects.",
		table_cache_37, -- 1
		{8, 16}, -- 2
		table_cache_97, -- 3
		{16, 32}, -- 4
		{20, 40}, -- 5
	}
	talent = tree.talents[11].info
	talent.name = "Improved Poisons"
	talent.tips = {
		format = "Increases the chance to apply poisons to your target by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "Fleet Footed"
	talent.tips = {
		format = "Increases your chance to resist movement impairing effects by %s%% and increases your movement speed by %s%%. This does not stack with other movement speed increasing effects.",
		{5, 8}, -- 1
		table_cache_44, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "Cold Blood"
	talent.tips = {
		{ -- 1
			table_cache_29,
			{ left = "When activated, increases the critical strike chance of your next offensive ability by 100%." }, -- 2
		},
	}
	talent = tree.talents[14].info
	talent.name = "Improved Kidney Shot"
	talent.tips = {
		format = "While affected by your Kidney Shot ability, target receives an additional %s%% damage from all sources.",
		multiplier = 3,
	}
	talent = tree.talents[15].info
	talent.name = "Quick Recovery"
	talent.tips = {
		format = "All healing effects on you are increased by %s%%. In addition, your finishing moves cost %s%% less Energy when they fail to hit.",
		table_cache_71, -- 1
		{20, 80}, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "Seal Fate"
	talent.tips = {
		format = "Your critical strikes from abilities that add combo points have a %s%% chance to add an additional combo point.",
		multiplier = 20,
	}
	talent = tree.talents[17].info
	talent.name = "Master Poisoner"
	talent.tips = {
		format = "Reduces the chance your poisons will be resisted by %s%% and increases your chance to resist Poison effects by an additional %s%%.",
		table_cache_65, -- 1
		table_cache_52, -- 2
	}
	talent = tree.talents[18].info
	talent.name = "Vigor"
	talent.tips = {
		"Increases your maximum Energy by 10.", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "Deadened Nerves"
	talent.tips = {
		format = "Decreases all physical damage taken by %s%%.",
	}
	talent = tree.talents[20].info
	talent.name = "Find Weakness"
	talent.tips = {
		format = "Your finishing moves increase the damage of all offensive abilities by %s%% for 10 sec.",
		multiplier = 2,
	}
	talent = tree.talents[21].info
	talent.name = "Mutilate"
	talent.tips = {
		{ -- 1
			{ left = "60 Energy", right = "Melee range" }, -- 1
			table_cache_30,
			{ left = "Requires Daggers" }, -- 3
			{ left = "Instantly attacks with both weapons for an additional 44 with each weapon. Damage is increased by 50% against Poisoned targets. Must be behind the target. Awards 2 combo points." }, -- 4
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 63 with each weapon" }, -- 7
			{ left = " Rank 3: 88 with each weapon" }, -- 8
			{ left = " Rank 4: 101 with each weapon" }, -- 9
		},
	}
	tree = data[2]
	tree.info.name = "Combat"
	talent = tree.talents[1].info
	talent.name = "Improved Gouge"
	talent.tips = {
		format = "Increases the effect duration of your Gouge ability by %s sec.",
		multiplier = 0.5,
	}
	talent = tree.talents[2].info
	talent.name = "Improved Sinister Strike"
	talent.tips = {
		format = "Reduces the Energy cost of your Sinister Strike ability by %s.",
		3, -- 1
		5, -- 2
	}
	talent = tree.talents[3].info
	talent.name = "Lightning Reflexes"
	talent.tips = {
		format = "Increases your Dodge chance by %s%%.",
	}
	talent = tree.talents[4].info
	talent.name = "Improved Slice and Dice"
	talent.tips = {
		format = "Increases the duration of your Slice and Dice ability by %s%%.",
		multiplier = 15,
	}
	talent = tree.talents[5].info
	talent.name = "Deflection"
	talent.tips = {
		format = "Increases your Parry chance by %s%%.",
	}
	talent = tree.talents[6].info
	talent.name = "Precision"
	talent.tips = {
		format = "Increases your chance to hit with weapons by %s%%.",
	}
	talent = tree.talents[7].info
	talent.name = "Endurance"
	talent.tips = {
		format = "Reduces the cooldown of your Sprint and Evasion abilities by %s5 %s.",
		table_cache_45, -- 1
		table_cache_86, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "Riposte"
	talent.tips = {
		{ -- 1
			{ left = "10 Energy", right = "Melee range" }, -- 1
			table_cache_67,
			{ left = "A strike that becomes active after parrying an opponent's attack. This attack deals 150% weapon damage and disarms the target for 6 sec." }, -- 3
		},
	}
	talent = tree.talents[9].info
	talent.name = "Improved Sprint"
	talent.tips = {
		format = "Gives a %s%% chance to remove all movement imparing effects when you activate your Sprint ability.",
		multiplier = 50,
	}
	talent = tree.talents[10].info
	talent.name = "Improved Kick"
	talent.tips = {
		format = "Gives your Kick ability a %s%% chance to silence the target for 2 sec.",
		multiplier = 50,
	}
	talent = tree.talents[11].info
	talent.name = "Dagger Specialization"
	talent.tips = {
		format = "Increases your chance to get a critical strike with Daggers by %s%%.",
	}
	talent = tree.talents[12].info
	talent.name = "Dual Wield Specialization"
	talent.tips = {
		format = "Increases the damage done by your offhand weapon by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "Mace Specialization"
	talent.tips = {
		format = "Increases the damage dealt by your critical strikes with maces by %s%%, and gives you a %s%% chance to stun your target for 3 sec with a mace.",
		table_cache_93, -- 1
		table_cache_95, -- 2
		table_cache_8, -- 3
		table_cache_20, -- 4
		{5, 6}, -- 5
	}
	talent = tree.talents[14].info
	talent.name = "Blade Flurry"
	talent.tips = {
		{ -- 1
			{ left = "25 Energy" }, -- 1
			table_cache_2,
			{ left = "Increases your attack speed by 20%. In addition, attacks strike an additional nearby opponent. Lasts 15 sec." }, -- 3
		},
	}
	talent = tree.talents[15].info
	talent.name = "Sword Specialization"
	talent.tips = {
		format = "Gives you a %s%% chance to get an extra attack on the same target after dealing damage with your Sword.",
	}
	talent = tree.talents[16].info
	talent.name = "Fist Weapon Specialization"
	talent.tips = {
		format = "Increases your chance to get a critical strike with Fist Weapons by %s%%.",
	}
	talent = tree.talents[17].info
	talent.name = "Blade Twisting"
	talent.tips = {
		format = "Gives your Sinister Strike, Backstab, Gouge and Shiv abilities a %s%% chance to Daze the target for 8 sec.",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "Weapon Expertise"
	talent.tips = {
		format = "Increases your expertise by %s.",
		multiplier = 5,
	}
	talent = tree.talents[19].info
	talent.name = "Aggression"
	talent.tips = {
		format = "Increases the damage of your Sinister Strike, Backstab, and Eviscerate abilities by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "Vitality"
	talent.tips = {
		format = "Increases your total Stamina by %s%% and your total Agility by %s%%.",
		table_cache_70, -- 1
		table_cache_24, -- 2
	}
	talent = tree.talents[21].info
	talent.name = "Adrenaline Rush"
	talent.tips = {
		{ -- 1
			table_cache_5,
			{ left = "Increases your Energy regeneration rate by 100% for 15 sec." }, -- 2
		},
	}
	talent = tree.talents[22].info
	talent.name = "Nerves of Steel"
	talent.tips = {
		format = "Increases your chance to resist Stun and Fear effects by an additional %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[23].info
	talent.name = "Combat Potency"
	talent.tips = {
		format = "Gives your successful off-hand melee attacks a 20%% chance to generate %s Energy.",
		multiplier = 3,
	}
	talent = tree.talents[24].info
	talent.name = "Surprise Attacks"
	talent.tips = {
		"Your finishing moves can no longer be dodged, and the damage dealt by your Sinister Strike, Backstab, Shiv and Gouge abilities is increased by 10%.", -- 1
	}
	tree = data[3]
	tree.info.name = "Subtlety"
	talent = tree.talents[1].info
	talent.name = "Master of Deception"
	talent.tips = {
		format = "Reduces the chance enemies have to detect you while in Stealth mode.%s",
		"", -- 1
		" More effective than Master of Deception (Rank 1).", -- 2
		" More effective than Master of Deception (Rank 2).", -- 3
		" More effective than Master of Deception (Rank 3).", -- 4
		" More effective than Master of Deception (Rank 4).", -- 5
	}
	talent = tree.talents[2].info
	talent.name = "Opportunity"
	talent.tips = {
		format = "Increases the damage dealt when striking from behind with your Backstab, Garrote, Mutilate, and Ambush abilities by %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[3].info
	talent.name = "Sleight of Hand"
	talent.tips = {
		format = "Reduces the chance you are critically hit by melee and ranged attacks by %s%% and increases the threat reduction of your Feint ability by %s%%.",
		table_cache_53, -- 1
		table_cache_4, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "Dirty Tricks"
	talent.tips = {
		format = "Increases the range of your Blind and Sap abilities by %s yards and reduces the energy cost of your Blind and Sap abilities by %s%%.",
		{2, 25}, -- 1
		{5, 50}, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "Camouflage"
	talent.tips = {
		format = "Increases your speed while stealthed by %s%% and reduces the cooldown of your Stealth ability by %s sec.",
		table_cache_34, -- 1
		table_cache_69, -- 2
		table_cache_79, -- 3
		table_cache_66, -- 4
		table_cache_50, -- 5
	}
	talent = tree.talents[6].info
	talent.name = "Initiative"
	talent.tips = {
		format = "Gives you a %s%% chance to add an additional combo point to your target when using your Ambush, Garrote, or Cheap Shot ability.",
		multiplier = 25,
	}
	talent = tree.talents[7].info
	talent.name = "Ghostly Strike"
	talent.tips = {
		{ -- 1
			{ left = "40 Energy", right = "5 yd range" }, -- 1
			{ left = "Instant", right = "20 sec cooldown" }, -- 2
			table_cache_46,
			{ left = "A strike that deals 125% weapon damage and increases your chance to dodge by 15% for 7 sec. Awards 1 combo point." }, -- 4
		},
	}
	talent = tree.talents[8].info
	talent.name = "Improved Ambush"
	talent.tips = {
		format = "Increases the critical strike chance of your Ambush ability by %s%%.",
		multiplier = 15,
	}
	talent = tree.talents[9].info
	talent.name = "Setup"
	talent.tips = {
		format = "Gives you a %s%% chance to add a combo point to your target after dodging their attack or fully resisting one of their spells.",
		multiplier = 15,
	}
	talent = tree.talents[10].info
	talent.name = "Elusiveness"
	talent.tips = {
		format = "Reduces the cooldown of your Vanish and Blind abilities by %s5 %s.",
		table_cache_45, -- 1
		table_cache_86, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "Serrated Blades"
	talent.tips = {
		format = "Causes your attacks to ignore %s of your target's Armor and increases the damage dealt by your Rupture ability by %s%%.  The amount of Armor reduced increases with your level.",
		{186, 10}, -- 1
		{373, 20}, -- 2
		{560, 30}, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "Heightened Senses"
	talent.tips = {
		format = "Increases your Stealth detection and reduces the chance you are hit by spells and ranged attacks by %s%%.%s",
		{2, ""}, -- 1
		{4, " More effective than Heightened Senses (Rank 1)."}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "Preparation"
	talent.tips = {
		{ -- 1
			{ left = "Instant", right = "10 min cooldown" }, -- 1
			{ left = "When activated, this ability immediately finishes the cooldown on your Evasion, Sprint, Vanish, Cold Blood, Shadowstep and Premeditation abilities." }, -- 2
		},
	}
	talent = tree.talents[14].info
	talent.name = "Dirty Deeds"
	talent.tips = {
		format = "Reduces the Energy Cost of your Cheap Shot and Garrote abilities by %s. Additionally, your special abilities cause %s%% more damage against targets below 35%% health.",
		table_cache_60, -- 1
		table_cache_38, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "Hemorrhage"
	talent.tips = {
		{ -- 1
			{ left = "35 Energy", right = "Melee range" }, -- 1
			table_cache_30,
			table_cache_46,
			{ left = "An instant strike that deals 110% weapon damage and causes the target to hemorrhage, increasing any Physical damage dealt to the target by up to 13.  Lasts 10 charges or 15 sec.  Awards 1 combo point." }, -- 4
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 18 Damage" }, -- 7
			{ left = " Rank 3: 25 Damage" }, -- 8
			{ left = " Rank 4: 36 Damage" }, -- 9
		},
	}
	talent = tree.talents[16].info
	talent.name = "Master of Subtlety"
	talent.tips = {
		format = "Attacks made while stealthed and for 6 seconds after breaking stealth cause an additional %s%% damage.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "Deadliness"
	talent.tips = {
		format = "Increases your Attack Power by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "Enveloping Shadows"
	talent.tips = {
		format = "Increases your chance to avoid area of effect attacks by an additional %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[19].info
	talent.name = "Premeditation"
	talent.tips = {
		{ -- 1
			table_cache_22,
			table_cache_2,
			{ left = "|cffeb0504Requires Stealth|r" }, -- 3
			{ left = "When used, adds 2 combo points to your target. You must add to or use those combo points within 10 sec or the combo points are lost." }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "Cheat Death"
	talent.tips = {
		format = "You have a %s%% chance to completely avoid any damaging attack that would otherwise kill you and reduce all damage taken by 90%% for 3 sec.  This effect cannot occur more than once per minute.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[21].info
	talent.name = "Sinister Calling"
	talent.tips = {
		format = "Increases your total Agility by %s%% and increases the percentage damage bonus of Backstab and Hemorrhage by an additional %s%%.",
		{3, 2}, -- 1
		{6, 4}, -- 2
		{9, 6}, -- 3
		{12, 8}, -- 4
		table_cache_14, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "Shadowstep"
	talent.tips = {
		{ -- 1
			{ left = "10 Energy", right = "25 yd range" }, -- 1
			table_cache_17,
			{ left = "Attempts to step through the shadows and reappear behind your enemy and increases movement speed by 70% for 3 sec. The damage of your next ability is increased by 20% and the threat caused is reduced by 50%. Lasts 10 sec." }, -- 3
		},
	}
	data = Talented_Data.PALADIN
	-- data.name = "Paladin Talents"
	tree = data[1]
	tree.info.name = "Holy"
	talent = tree.talents[1].info
	talent.name = "Divine Strength"
	talent.tips = {
		format = "Increases your total Strength by %s%%",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "Divine Intellect"
	talent.tips = {
		format = "Increases your total Intellect by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "Spiritual Focus"
	talent.tips = {
		format = "Gives your Flash of Light and Holy Light spells a %s%% chance to not lose casting time when you take damage.",
		multiplier = 14,
	}
	talent = tree.talents[4].info
	talent.name = "Improved Seal of Righteousness"
	talent.tips = {
		format = "Increases the damage done by your Seal of Righteousness and Judgement of Righteousness by %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "Healing Light"
	talent.tips = {
		format = "Increases the amount healed by your Holy Light and Flash of Light spells by %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[6].info
	talent.name = "Aura Mastery"
	talent.tips = {
		"Increases the radius of your Auras to 40 yards.", -- 1
	}
	talent = tree.talents[7].info
	talent.name = "Improved Lay on Hands"
	talent.tips = {
		format = "Gives the target of your Lay on Hands spell a %s%% bonus to their armor value from items for 2 min. In addition, the cooldown for your Lay on Hands spell is reduced by %s min.",
		table_cache_14, -- 1
		table_cache_32, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "Unyielding Faith"
	talent.tips = {
		format = "Increases your chance to resist Fear and Disorient effects by an additional %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[9].info
	talent.name = "Illumination"
	talent.tips = {
		format = "After getting a critical effect from your Flash of Light, Holy Light, or Holy Shock heal spell, gives you a %s%% chance to gain Mana equal to 60%% of the base cost of your spell.",
		multiplier = 20,
	}
	talent = tree.talents[10].info
	talent.name = "Improved Blessing of Wisdom"
	talent.tips = {
		format = "Increases the effect of your Blessing of Wisdom spell by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "Pure of Heart"
	talent.tips = {
		format = "Increases your resistance to Curse and Disease effects by %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "Divine Favor"
	talent.tips = {
		{ -- 1
			table_cache_21,
			table_cache_87,
			{ left = "When activated, gives your next Flash of Light, Holy Light, or Holy Shock spell a 100% critical effect chance." }, -- 3
		},
	}
	talent = tree.talents[13].info
	talent.name = "Sanctified Light"
	talent.tips = {
		format = "Increases the critical strike chance of your Holy Light spell by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "Purifying Power"
	talent.tips = {
		format = "Reduces the mana cost of your Cleanse, Purify, and Consecration spells by %s%% and increases the critical strike chance of your Exorcism and Holy Wrath spells by %s%%.",
		table_cache_68, -- 1
		table_cache_36, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "Holy Power"
	talent.tips = {
		format = "Increases the critical effect chance of your Holy spells by %s%%.",
	}
	talent = tree.talents[16].info
	talent.name = "Light's Grace"
	talent.tips = {
		format = "Gives your Holy Light spell a %s%% chance to reduce the cast time of your next Holy Light spell by 0.5 sec. This effect lasts 15 sec.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "Holy Shock"
	talent.tips = {
		{ -- 1
			table_cache_89,
			table_cache_49,
			{ left = "Blasts the target with Holy energy, causing 204 to 220 Holy damage to an enemy, or 204 to 220 healing to an ally." }, -- 3
			table_cache_59,
			table_cache_58,
			{ left = " Rank 2: 275 Mana, 279-302 Damage or Healing" }, -- 6
			{ left = " Rank 3: 325 Mana, 365-396 Damage or Healing" }, -- 7
			{ left = " Rank 4: 385 Mana, 452-488 Damage or Healing" }, -- 8
			{ left = " Rank 5: 435 Mana, 530-574 Damage or Healing" }, -- 9
		},
	}
	talent = tree.talents[18].info
	talent.name = "Blessed Life"
	talent.tips = {
		format = "All attacks against you have a %s%% chance to cause half damage.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Holy Guidance"
	talent.tips = {
		format = "Increases your spell damage and healing by %s%% of your total Intellect.",
		multiplier = 7,
	}
	talent = tree.talents[20].info
	talent.name = "Divine Illumination"
	talent.tips = {
		{ -- 1
			table_cache_29,
			{ left = "Reduces the mana cost of all spells by 50% for 15 sec." }, -- 2
		},
	}
	tree = data[2]
	tree.info.name = "Protection"
	talent = tree.talents[1].info
	talent.name = "Improved Devotion Aura"
	talent.tips = {
		format = "Increases the armor bonus of your Devotion Aura by %s%%.",
		multiplier = 8,
	}
	talent = tree.talents[2].info
	talent.name = "Redoubt"
	talent.tips = {
		format = "Damaging melee and ranged attacks against you have a 10%% chance to increase your chance to block by %s%%.  Lasts 10 sec or 5 blocks.",
		multiplier = 6,
	}
	talent = tree.talents[3].info
	talent.name = "Precision"
	talent.tips = {
		format = "Increases your chance to hit with melee weapons and spells by %s%%.",
	}
	talent = tree.talents[4].info
	talent.name = "Guardian's Favor"
	talent.tips = {
		format = "Reduces the cooldown of your Blessing of Protection by %s sec and increases the duration of your Blessing of Freedom by %s sec.",
		{60, 2}, -- 1
		{120, 4}, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "Toughness"
	talent.tips = {
		format = "Increases your armor value from items by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "Blessing of Kings"
	talent.tips = {
		{ -- 1
			{ left = "177 Mana", right = "30 yd range" }, -- 1
			table_cache_1,
			{ left = "Places a Blessing on the friendly target, increasing total stats by 10% for 10 min. Players may only have one Blessing on them per Paladin at any one time." }, -- 3
		},
	}
	talent = tree.talents[7].info
	talent.name = "Improved Righteous Fury"
	talent.tips = {
		format = "While Righteous Fury is active, all damage taken is reduced by %s%% and increases the amount of threat generated by your Righteous Fury spell by %s%%.",
		table_cache_94, -- 1
		table_cache_56, -- 2
		{6, 50}, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "Shield Specialization"
	talent.tips = {
		format = "Increases the amount of damage absorbed by your shield by %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[9].info
	talent.name = "Anticipation"
	talent.tips = {
		format = "Increases your Defense skill by %s.",
		multiplier = 4,
	}
	talent = tree.talents[10].info
	talent.name = "Stoicism"
	talent.tips = {
		format = "Increases your resistance to Stun effects by an additional %s%% and reduces the chance your spells will be dispelled by an additional %s%%.",
		table_cache_65, -- 1
		table_cache_52, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "Improved Hammer of Justice"
	talent.tips = {
		format = "Decreases the cooldown of your Hammer of Justice spell by %s sec.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "Improved Concentration Aura"
	talent.tips = {
		format = "Increases the effect of your Concentration Aura by an additional %s%% and reduces the duration of any Silence or Interrupt effect used against an affected group member by %s%%.  The duration reduction does not stack with any other effects.",
		table_cache_68, -- 1
		table_cache_36, -- 2
		table_cache_100, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "Spell Warding"
	talent.tips = {
		format = "All spell damage taken is reduced by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "Blessing of Sanctuary"
	talent.tips = {
		{ -- 1
			{ left = "60 Mana", right = "30 yd range" }, -- 1
			table_cache_1,
			{ left = "Places a Blessing on the friendly target, reducing damage dealt from all sources by up to 10 for 10 min.  In addition, when the target blocks a melee attack the attacker will take 14 Holy damage. Players may only have one Blessing on them per Paladin at any one time." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 85 Mana, 14 Damage Reduction, 21 Holy Damage" }, -- 6
			{ left = " Rank 3: 110 Mana, 19 Damage Reduction, 28 Holy Damage" }, -- 7
			{ left = " Rank 4: 135 Mana, 24 Damage Reduction, 35 Holy Damage" }, -- 8
			{ left = " Rank 5: 180 Mana, 80 Damage Reduction, 46 Holy Damage" }, -- 9
		},
	}
	talent = tree.talents[15].info
	talent.name = "Reckoning"
	talent.tips = {
		format = "Gives you a %s%% chance after being hit by any damaging attack that the next 4 weapon swings within 8 sec will generate an additional attack.",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "Sacred Duty"
	talent.tips = {
		format = "Increases your total Stamina by %s%%, reduces the cooldown of your Divine Shield spell by %s sec and reduces the attack speed penalty by %s%%.",
		{3, 30, 50}, -- 1
		{6, 60, 100}, -- 2
	}
	talent = tree.talents[17].info
	talent.name = "One-Handed Weapon Specialization"
	talent.tips = {
		format = "Increases all damage you deal when a one-handed melee weapon is equipped by %s%%.",
	}
	talent = tree.talents[18].info
	talent.name = "Improved Holy Shield"
	talent.tips = {
		format = "Increases damage caused by your Holy Shield by %s%% and increases the number of charges of your Holy Shield by %s.",
		table_cache_82, -- 1
		{20, 4}, -- 2
	}
	talent = tree.talents[19].info
	talent.name = "Holy Shield"
	talent.tips = {
		{ -- 1
			{ left = "135 Mana" }, -- 1
			table_cache_72,
			table_cache_16,
			{ left = "Increases chance to block by 30% for 10 sec and deals 59 Holy damage for each attack blocked while active. Damage caused by Holy Shield causes 35% additional threat. Each block expends a charge. 4 charges." }, -- 4
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 175 Mana, 86 Holy Damage" }, -- 7
			{ left = " Rank 3: 215 Mana, 117 Holy Damage" }, -- 8
			{ left = " Rank 4: 280 Mana, 155 Holy Damage" }, -- 9
		},
	}
	talent = tree.talents[20].info
	talent.name = "Ardent Defender"
	talent.tips = {
		format = "When you have less than 35%% health, all damage taken is reduced by %s%%.",
		multiplier = 6,
	}
	talent = tree.talents[21].info
	talent.name = "Combat Expertise"
	talent.tips = {
		format = "Increases your expertise by %s and your total Stamina by %s%%.",
		table_cache_92, -- 1
		table_cache_15, -- 2
		table_cache_41, -- 3
		table_cache_37, -- 4
		table_cache_68, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "Avenger's Shield"
	talent.tips = {
		{ -- 1
			{ left = "500 Mana", right = "8-30yd range" }, -- 1
			{ left = "1 sec cast", right = "30 sec cooldown" }, -- 2
			{ left = "Hurls a holy shield at the enemy, dealing 270 to 330 Holy damage, dazing them and then jumping to nearby enemies. Affects 3 total targets. Lasts 6 sec." }, -- 3
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 615 Mana, 370-452 Holy Damage" }, -- 6
			{ left = " Rank 3: 780 Mana, 494-602 Holy Damage" }, -- 7
		},
	}
	tree = data[3]
	tree.info.name = "Retribution"
	talent = tree.talents[1].info
	talent.name = "Improved Blessing of Might"
	talent.tips = {
		format = "Increases the attack power bonus of your Blessing of Might by %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "Benediction"
	talent.tips = {
		format = "Reduces the Mana cost of your Judgement and Seal spells by %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[3].info
	talent.name = "Improved Judgement"
	talent.tips = {
		format = "Decreases the cooldown of your Judgement spell by %s sec.",
	}
	talent = tree.talents[4].info
	talent.name = "Improved Seal of the Crusader"
	talent.tips = {
		format = "In addition to the normal effect, your Judgement of the Crusader spell will also increase the critical strike chance of all attacks made against that target by an additional %s%%.",
	}
	talent = tree.talents[5].info
	talent.name = "Deflection"
	talent.tips = {
		format = "Increases your Parry chance by %s%%.",
	}
	talent = tree.talents[6].info
	talent.name = "Vindication"
	talent.tips = {
		format = "Gives the Paladin's damaging melee attacks a chance to reduce the target's attributes by %s%% for 10 sec.",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "Conviction"
	talent.tips = {
		format = "Increases your chance to get a critical strike with melee weapons by %s%%.",
	}
	talent = tree.talents[8].info
	talent.name = "Seal of Command"
	talent.tips = {
		{ -- 1
			{ left = "65 Mana" }, -- 1
			table_cache_1,
			{ left = "Gives the Paladin a chance to deal additional Holy damage equal to 70% of normal weapon damage. Only one Seal can be active on the Paladin at any one time. Lasts 30 sec." }, -- 3
			table_cache_59,
			{ left = "Unleashing this Seal's energy will judge an enemy, instantly causing 68 to 73 Holy damage, 137 to 146 if the target is stunned or incapacitated." }, -- 5
			table_cache_59,
			table_cache_42,
			{ left = " Rank 2: 110 Mana, 97-105 / 194-209 Damage" }, -- 8
			{ left = " Rank 3: 140 Mana, 124-135 / 248-269 Damage" }, -- 9
			{ left = " Rank 4: 180 Mana, 154-168 / 309-336 Damage" }, -- 10
			{ left = " Rank 5: 210 Mana, 193-211 / 387-422 Damage" }, -- 11
			{ left = " Rank 6: 280 Mana, 228-252 / 456-504 Damage" }, -- 12
		},
	}
	talent = tree.talents[9].info
	talent.name = "Pursuit of Justice"
	talent.tips = {
		format = "Reduces the chance you'll be hit by spells by %s%% and increases movement and mounted movement speed by %s%%.  This does not stack with other movement speed increasing effects.",
		table_cache_33, -- 1
		table_cache_90, -- 2
		table_cache_78, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "Eye for an Eye"
	talent.tips = {
		format = "All spell criticals against you cause %s%% of the damage taken to the caster as well. The damage caused by Eye for an Eye will not exceed 50%% of the Paladin's total health.",
		multiplier = 15,
	}
	talent = tree.talents[11].info
	talent.name = "Improved Retribution Aura"
	talent.tips = {
		format = "Increases the damage done by your Retribution Aura by %s%%.",
		multiplier = 25,
	}
	talent = tree.talents[12].info
	talent.name = "Crusade"
	talent.tips = {
		format = "Increases all damage caused against Humanoids, Demons, Undead and Elementals by %s%%.",
	}
	talent = tree.talents[13].info
	talent.name = "Two-Handed Weapon Specialization"
	talent.tips = {
		format = "Increases the damage you deal with two-handed melee weapons by %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "Sanctity Aura"
	talent.tips = {
		{ -- 1
			table_cache_30,
			{ left = "Increases Holy damage done by party members within 30 yards by 10%. Players may only have one Aura on them per Paladin at any one time." }, -- 2
		},
	}
	talent = tree.talents[15].info
	talent.name = "Improved Sanctity Aura"
	talent.tips = {
		format = "The amount of damage caused by targets affected by Sanctity Aura is increased by %s%%.",
	}
	talent = tree.talents[16].info
	talent.name = "Vengeance"
	talent.tips = {
		format = "Gives you a %s%% bonus to Physical and Holy damage you deal for 30 sec after dealing a critical strike from a weapon swing, spell or ability. This effect stacks up to 3 times",
	}
	talent = tree.talents[17].info
	talent.name = "Sanctified Judgement"
	talent.tips = {
		format = "Gives your Judgement spell a %s%% chance to return 80%% of the mana cost of the judged seal.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "Sanctified Seals"
	talent.tips = {
		format = "Increases your chance to critically hit with all spells and melee attacks by %s%% and reduces the chance your Seals will be dispelled by %s%%.",
		{1, 33}, -- 1
		{2, 66}, -- 2
		{3, 100}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Repentance"
	talent.tips = {
		{ -- 1
			{ left = "60 Mana", right = "20 yd range" }, -- 1
			table_cache_62,
			{ left = "Puts the enemy target in a state of meditation, incapacitating them for up to 6 sec. Any damage caused will awaken the target. Only works against Humanoids." }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "Divine Purpose"
	talent.tips = {
		format = "Melee and ranged critical strikes against you cause %s%% less damage.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[21].info
	talent.name = "Fanaticism"
	talent.tips = {
		format = "Increases the critical strike chance of all Judgements capable of a critical hit by %s%% and reduces threat caused by all actions by %s%% except when under the effects of Righteous Fury.",
		table_cache_41, -- 1
		{6, 12}, -- 2
		{9, 18}, -- 3
		table_cache_97, -- 4
		table_cache_100, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "Crusader Strike"
	talent.tips = {
		{ -- 1
			{ left = "236 Mana", right = "5 yd range" }, -- 1
			{ left = "Instant cast", right = "6 sec cooldown" }, -- 2
			table_cache_46,
			{ left = "An instant strike that causes 110% weapon damage and refreshes all Judgements on the target." }, -- 4
		},
	}
end
