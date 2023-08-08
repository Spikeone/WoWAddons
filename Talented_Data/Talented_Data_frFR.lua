-- Generated Data : Do Not Modify
if Talented_Data and GetLocale() == "frFR" then
	local data, tree, talent
	local table_cache_1 = { left = "Instantané", right = "Recharge 5 min" }
	local table_cache_2 = {2, 20}
	local table_cache_3 = { left = "Composants : Fragment d'âme" }
	local table_cache_4 = {3, 3}
	local table_cache_5 = {30, 30, 30}
	local table_cache_6 = {8, 8}
	local table_cache_7 = {5, 1}
	local table_cache_8 = {15, 10}
	local table_cache_9 = {2, 4}
	local table_cache_10 = {20, 10}
	local table_cache_11 = {6, 2}
	local table_cache_12 = { left = "30 Rage", right = "Allonge" }
	local table_cache_13 = {4, 4}
	local table_cache_14 = {4, 2}
	local table_cache_15 = {1, 4}
	local table_cache_16 = {5, 5}
	local table_cache_17 = { left = "Instantané", right = "Recharge 8 min" }
	local table_cache_18 = { left = "Portée 30 m" }
	local table_cache_19 = {10, 30}
	local table_cache_20 = {2, 3}
	local table_cache_21 = {10, 5}
	local table_cache_22 = { left = " Rangs suivants achetables :" }
	local table_cache_23 = {30, 20}
	local table_cache_24 = {1, 5}
	local table_cache_25 = {3, 1}
	local table_cache_26 = {6, 3}
	local table_cache_27 = {10, 20}
	local table_cache_28 = {10, 50}
	local table_cache_29 = {20, 20}
	local table_cache_30 = {6, 30}
	local table_cache_31 = {1, 3}
	local table_cache_32 = { left = "Instantané", right = "Recharge 30 sec" }
	local table_cache_33 = {3, 6}
	local table_cache_34 = { left = "Incantation immédiate", right = "Recharge 20 sec" }
	local table_cache_35 = { left = "Instantané", right = "Recharge 6 sec" }
	local table_cache_36 = {2, 6}
	local table_cache_37 = { left = "15 Rage", right = "Allonge" }
	local table_cache_38 = {4, 33}
	local table_cache_39 = { left = "Arme de mêlée requis" }
	local table_cache_40 = {4, "sec"}
	local table_cache_41 = { left = "Incantation immédiate", right = "Recharge 2 min" }
	local table_cache_42 = {16, 16}
	local table_cache_43 = {8, 12}
	local table_cache_44 = { left = "88 mana" }
	local table_cache_45 = {15, 5}
	local table_cache_46 = {4, 6}
	local table_cache_47 = {1, 10}
	local table_cache_48 = {2, "s"}
	local table_cache_49 = {3, "s"}
	local table_cache_50 = {6, 6}
	local table_cache_51 = { left = " Rangs suivants achetables" }
	local table_cache_52 = {15, 30}
	local table_cache_53 = { left = "" }
	local table_cache_54 = {10, 10}
	local table_cache_55 = {3, 15}
	local table_cache_56 = {1, ""}
	local table_cache_57 = {8, 4}
	local table_cache_58 = {100, 20}
	local table_cache_59 = { left = "Arme à distance requis" }
	local table_cache_60 = {15, 3}
	local table_cache_61 = { left = "Instantané", right = "Recharge 3 min" }
	local table_cache_62 = {7, 4}
	local table_cache_63 = {5, 15}
	local table_cache_64 = { left = "Incantation immédiate", right = "Recharge 10 sec" }
	local table_cache_65 = {50, 10}
	local table_cache_66 = { left = "Incantation immédiate" }
	local table_cache_67 = {5, 10}
	local table_cache_68 = { left = "Incantation immédiate", right = "Recharge 1 min" }
	local table_cache_69 = {30, 30}
	local table_cache_70 = {2, 1}
	local table_cache_72 = {12, 12}
	local table_cache_73 = { left = "10 Rage" }
	local table_cache_74 = {10, 40}
	local table_cache_75 = {1, 2}
	local table_cache_76 = {9, 3}
	local table_cache_77 = {2, 2}
	local table_cache_78 = {15, 2}
	local table_cache_79 = { left = "Instantané", right = "Recharge 2 min" }
	local table_cache_80 = {30, 4}
	local table_cache_82 = { left = "Incantation immédiate", right = "Recharge 15 sec" }
	local table_cache_83 = {10, 2}
	local table_cache_84 = {20, 2}
	local table_cache_85 = { left = "Fait bénéficier le démoniste et le démon invoqué d'un effet aussi longtemps que le démon est actif." }
	local table_cache_86 = { left = "Instantané" }
	local table_cache_87 = {5, 25}
	local table_cache_88 = {1, 1}
	local table_cache_89 = {2, 10}
	local table_cache_90 = { left = "Incantation immédiate", right = "Recharge 3 min" }
	local table_cache_91 = {12, 4}
	local table_cache_92 = {"1,", "min"}
	local table_cache_93 = {2, 16}
	local table_cache_94 = {4, 8}
	local table_cache_95 = {1, 25}
	local table_cache_96 = {2, 50}
	local table_cache_97 = {10, 15}
	local table_cache_98 = {10, 4}
	local table_cache_99 = {15, 6}
	local table_cache_100 = {4, 20}
	data = Talented_Data.HUNTER
	-- data.name = "Talents de chasseur"
	tree = data[1]
	tree.info.name = "Maîtrise des bêtes"
	talent = tree.talents[1].info
	talent.name = "Aspect du faucon amélioré"
	talent.tips = {
		format = "Pendant qu'Aspect du faucon est activé, toutes les attaques à distance normales ont 10%% de chances d'augmenter la vitesse d'attaque à distance de %s%% pendant 12 sec.",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "Entraînement à l'Endurance"
	talent.tips = {
		format = "Augmente les points de vie de votre familier de %s%% et votre total de points de vie de %s%%.",
		table_cache_70, -- 1
		table_cache_14, -- 2
		table_cache_26, -- 3
		table_cache_57, -- 4
		table_cache_21, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "Feu focalisé"
	talent.tips = {
		format = "Tous les dégâts que vous infligez sont augmentés de %s%% tant que votre familier est actif et les chances de coup critique de votre technique Ordre de tuer sont augmentées de %s%%.",
		table_cache_47, -- 1
		table_cache_2, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "Aspect du singe amélioré"
	talent.tips = {
		format = "Augmente le bonus d'Esquive conféré par Aspect du singe de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "Peau épaisse"
	talent.tips = {
		format = "Augmente le score d'armure de vos familiers de %s%% et le score d'armure que vous apportent les objets de %s%%.",
		table_cache_62, -- 1
		{14, 7}, -- 2
		table_cache_10, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "Ressusciter le familier amélioré"
	talent.tips = {
		format = "Le temps d'incantation du sort Ressusciter le familier est réduit de %s sec, son coût en mana est diminué de %s%%, et le familier revient avec %s%% points de vie supplémentaires.",
		{3, 20, 15}, -- 1
		{6, 40, 30}, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "Science des chemins"
	talent.tips = {
		format = "Augmente le bonus d'accélération de vos Aspects de la meute et du guépard de %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[8].info
	talent.name = "Rapidité bestiale"
	talent.tips = {
		"Augmente la vitesse de déplacement en extérieur de vos familiers de 30%.", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "Fureur libérée"
	talent.tips = {
		format = "Augmente les dégâts infligés par vos familiers de %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[10].info
	talent.name = "Guérison du familier améliorée"
	talent.tips = {
		format = "Réduit le coût en mana de votre sort Guérison du familier de 10%% et lui donne %s%% de chances de faire disparaître 1 effet(s) de Malédiction, Maladie, Magie ou Poison à chaque augmentation de points de vie.",
		multiplier = 25,
	}
	talent = tree.talents[11].info
	talent.name = "Ferocité"
	talent.tips = {
		format = "Augmente de %s%% les chances de votre familier d'infliger un coup critique.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "Engagement spirituel"
	talent.tips = {
		format = "Tant que votre familier est actif, vous et votre familier retrouvez %s%% du total de vos points de vie toutes les 10 sec.",
	}
	talent = tree.talents[13].info
	talent.name = "Intimidation"
	talent.tips = {
		{ -- 1
			{ left = "202 mana", right = "Portée 100 m" }, -- 1
			table_cache_68,
			{ left = "Ordonne à votre familier d'intimider la cible à la prochaine attaque en mêlée réussie, générant un haut niveau de menace et étourdissant la cible pendant 3 sec." }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "Discipline bestiale"
	talent.tips = {
		format = "Augmente de %s%% la régénération de focalisation de vos Familiers.",
		multiplier = 50,
	}
	talent = tree.talents[15].info
	talent.name = "Dresseur"
	talent.tips = {
		format = "Augmente de %s%% votre vitesse lorsque vous êtes sur une monture et de %s%% les chances de toucher de votre familier. L'augmentation de la vitesse de la monture ne s'additionne pas avec d'autres effets.",
		table_cache_14, -- 1
		table_cache_57, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "Frénésie"
	talent.tips = {
		format = "Confère à votre familier %s%% de chances de bénéficier d'un bonus de 30%% à la vitesse d'attaque pendant 8 sec après qu'il a infligé un coup critique.",
		multiplier = 20,
	}
	talent = tree.talents[17].info
	talent.name = "Inspiration féroce"
	talent.tips = {
		format = "Quand votre familier réussit un coup critique, les dégâts infligés par tous les membres du groupe augmentent de %s%% pendant 10 sec.",
	}
	talent = tree.talents[18].info
	talent.name = "Courroux bestial"
	talent.tips = {
		{ -- 1
			{ left = "338 mana", right = "Portée 100 m" }, -- 1
			table_cache_41,
			{ left = "Votre familier, fou de rage, inflige 50% de points de dégâts supplémentaires pendant 18 sec. Lorsqu’il est dans cet état, il n'éprouve ni pitié, ni remords, ni peur et ne peut plus être arrêté à moins d'être tué." }, -- 3
		},
	}
	talent = tree.talents[19].info
	talent.name = "Réflexes félins"
	talent.tips = {
		format = "Augmente vos chances d'esquiver de %s%% et celles de votre familier de %s%% supplémentaires.",
		table_cache_31, -- 1
		table_cache_36, -- 2
		{3, 9}, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "Rapidité du serpent"
	talent.tips = {
		format = "Augmente votre vitesse d'attaque en combat à distance de %s%% et la vitesse d'attaque en mêlée de votre familier de %s%%.",
		table_cache_13, -- 1
		table_cache_6, -- 2
		table_cache_72, -- 3
		table_cache_42, -- 4
		table_cache_29, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "La bête intérieure"
	talent.tips = {
		"Lorsque votre familier est sous l'effet de Courroux bestial, vous aussi devenez fou de rage. Vous infligez 10% de points de dégâts supplémentaires et le coût en mana de tous vos sorts est réduit de 20% pendant 18 sec. Tant que vous êtes dans cet état, vous n'éprouvez ni pitié, ni remords, ni peur, et vous ne pouvez plus être arrêté à moins d'être tué.", -- 1
	}
	tree = data[2]
	tree.info.name = "Précision"
	talent = tree.talents[1].info
	talent.name = "Trait de choc amélioré"
	talent.tips = {
		format = "Confère à votre technique Trait de choc %s%% de chances d'étourdir la cible pendant 3 sec.",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "Coups fatals"
	talent.tips = {
		format = "Augmente vos chances d'infliger un coup critique avec vos armes à distance de %s%%.",
	}
	talent = tree.talents[3].info
	talent.name = "Marque du chasseur améliorée"
	talent.tips = {
		format = "%s%% de la puissance d'attaque de base de votre technique Marque du chasseur s'applique également à la puissance d'attaque en mêlée.",
		multiplier = 20,
	}
	talent = tree.talents[4].info
	talent.name = "Efficacité"
	talent.tips = {
		format = "Réduit le coût en mana de vos Tirs, Morsures et Piqûres de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "Flèches dentelées"
	talent.tips = {
		format = "Vos coups critiques à distance font générer à votre familier %s points de focalisation.",
		multiplier = 25,
	}
	talent = tree.talents[6].info
	talent.name = "Tir des arcanes amélioré"
	talent.tips = {
		format = "Réduit le temps de recharge de votre Tir des arcanes de %s sec.",
		"0,2", -- 1
		"0,4", -- 2
		"0,6", -- 3
		"0,8", -- 4
		1, -- 5
	}
	talent = tree.talents[7].info
	talent.name = "Visée"
	talent.tips = {
		{ -- 1
			{ left = "75 mana", right = "Portée 5-35 m" }, -- 1
			{ left = "Incantation 3 sec", right = "Recharge 6 sec" }, -- 2
			table_cache_59,
			{ left = "Un tir précis qui augmente les points de dégâts infligés par votre attaque à distance de 70 et réduit les soins prodigués à cette cible de 50%. Dure 10 sec." }, -- 4
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 115 mana, 125 pts de dégâts" }, -- 7
			{ left = " Rang 3 : 160 mana, 200 pts de dégâts" }, -- 8
			{ left = " Rang 4 : 210 mana, 330 pts de dégâts" }, -- 9
			{ left = " Rang 5 : 260 mana, 460 pts de dégâts" }, -- 10
			{ left = " Rang 6 : 310 mana, 600 pts de dégâts" }, -- 11
			{ left = " Rang 7 : 370 mana, 870 pts de dégâts" }, -- 12
		},
	}
	talent = tree.talents[8].info
	talent.name = "Métabolisme rapide"
	talent.tips = {
		format = "Réduit le temps de recharge de votre technique Tir rapide de %s min. De plus, lorsque vous tuez un adversaire qui vous fait gagner de l'expérience ou de l'honneur, votre prochaine utilisation de Visée, Tir des arcanes ou Tir automatique inflige %s%% de dégâts supplémentaires. Dure 20 sec.",
		table_cache_47, -- 1
		table_cache_2, -- 2
	}
	talent = tree.talents[9].info
	talent.name = "Morsures et piqûres améliorées"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par Morsure de serpent et Piqûre de wyverne de %s%% et les points de mana drainés par votre Morsure de vipère de %s%%. De plus, réduit la probabilité que vos morsures et piqûres soient dissipées de %s%%.",
		{6, 6, 6}, -- 1
		{12, 12, 12}, -- 2
		{18, 18, 18}, -- 3
		{24, 24, 24}, -- 4
		table_cache_5, -- 5
	}
	talent = tree.talents[10].info
	talent.name = "Coups mortels"
	talent.tips = {
		format = "Augmente le bonus de dégâts de vos coups critiques avec les armes à distance de %s%%.",
		multiplier = 6,
	}
	talent = tree.talents[11].info
	talent.name = "Barrage commotionnant"
	talent.tips = {
		format = "Vos attaques réussies avec Tir automatique vous confèrent %s%% de chances d'hébéter la cible pendant 4 sec.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "Flèche de dispersion"
	talent.tips = {
		{ -- 1
			{ left = "202 mana", right = "Portée 15 m" }, -- 1
			table_cache_32,
			table_cache_59,
			{ left = "Un tir à courte distance qui inflige 50% des points de dégâts de l'arme et désoriente la cible pendant 4 sec. Si la cible subit des dégâts, l'effet est annulé. Interrompt l'attaque lors de son utilisation." }, -- 4
		},
	}
	talent = tree.talents[13].info
	talent.name = "Barrage"
	talent.tips = {
		format = "Augmente les dégâts infligés par vos sorts Flèches multiples et Salve de %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[14].info
	talent.name = "Expérience du combat"
	talent.tips = {
		format = "Augmente votre total d'Agilité de %s%% et votre total d'Intelligence de %s%%.",
		table_cache_31, -- 1
		table_cache_36, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "Spécialisation Armes à distance"
	talent.tips = {
		format = "Augmente les points de dégâts que vous infligez avec les armes à distance de %s%%.",
	}
	talent = tree.talents[16].info
	talent.name = "Visée minutieuse"
	talent.tips = {
		format = "Augmente votre puissance d'attaque à distance d'un montant égal à %s%% de votre total d'Intelligence.",
		multiplier = 15,
	}
	talent = tree.talents[17].info
	talent.name = "Aura de précision"
	talent.tips = {
		{ -- 1
			table_cache_66,
			{ left = "Augmente de 50 la puissance d'attaque des membres du groupe se trouvant dans un rayon de 45 mètres. Dure jusqu’à annulation." }, -- 2
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 425 mana, +75 puissance d'attaque" }, -- 5
			{ left = " Rang 3 : 525 mana, +100 puissance d'attaque" }, -- 6
			{ left = " Rang 4 : 620 mana, +125 puissance d'attaque" }, -- 7
		},
	}
	talent = tree.talents[18].info
	talent.name = "Barrage amélioré"
	talent.tips = {
		format = "Augmente vos chances de réaliser un coup critique avec votre technique Flèches multiples de %s%% et vous confère %s%% de chances d'éviter d'être interrompu par les dégâts subis pendant que vous canalisez Salve.",
		table_cache_38, -- 1
		{8, 66}, -- 2
		{12, 100}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Maître tireur"
	talent.tips = {
		format = "Augmente votre puissance d'attaque à distance de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "Flèche-baîllon"
	talent.tips = {
		{ -- 1
			{ left = "202 mana", right = "Portée 5-35 m" }, -- 1
			table_cache_34,
			{ left = "Un tir qui inflige 50% des dégâts de l'arme et réduit la cible au silence pendant 3 sec." }, -- 3
		},
	}
	tree = data[3]
	tree.info.name = "Survie"
	talent = tree.talents[1].info
	talent.name = "Tueur de monstres"
	talent.tips = {
		format = "Augmente tous les dégâts infligés aux bêtes, aux géants et aux draconiens de %s%% et augmente les dégâts infligés par les coups critiques aux bêtes, aux géants et aux draconiens de %s%% supplémentaires.",
		table_cache_88, -- 1
		table_cache_77, -- 2
		table_cache_4, -- 3
	}
	talent = tree.talents[2].info
	talent.name = "Tueur d'humanoïdes"
	talent.tips = {
		format = "Augmente tous les dégâts infligés aux humanoïdes de %s%% et augmente les dégâts infligés par les coups critiques aux humanoïdes de %s%% supplémentaires.",
		table_cache_88, -- 1
		table_cache_77, -- 2
		table_cache_4, -- 3
	}
	talent = tree.talents[3].info
	talent.name = "Oeil de faucon"
	talent.tips = {
		format = "Augmente la portée de vos armes à distance de %s mètres.",
		multiplier = 2,
	}
	talent = tree.talents[4].info
	talent.name = "Frappes sauvages"
	talent.tips = {
		format = "Augmente de %s%% les chances d'infliger un coup critique avec Attaque du raptor et Morsure de la mangouste.",
		multiplier = 10,
	}
	talent = tree.talents[5].info
	talent.name = "Piège"
	talent.tips = {
		format = "Confère à vos Piège d'immolation, Piège de givre, Piège explosif et Piège à serpent %s%% de chances d'emprisonner la cible, l'empêchant de se déplacer pendant 4 sec.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "Déviation"
	talent.tips = {
		format = "Augmente vos chances de Parer de %s%%.",
	}
	talent = tree.talents[7].info
	talent.name = "Coupure d'ailes améliorée"
	talent.tips = {
		format = "Confère à votre technique Coupure d'ailes %s%% de chances d'immobiliser la cible pendant 5 sec.",
		7, -- 1
		14, -- 2
		20, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "Pièges astucieux"
	talent.tips = {
		format = "Augmente la durée des effets de Piège givrant et Piège de givre de %s%%, les dégâts infligés par les effets de Piège d'immolation et Piège explosif de %s%% ainsi que le nombre de serpents invoqués par Piège à serpent de %s%%.",
		{15, 15, 15}, -- 1
		table_cache_5, -- 2
	}
	talent = tree.talents[9].info
	talent.name = "Survivant"
	talent.tips = {
		format = "Augmente les points de vie totaux de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[10].info
	talent.name = "Dissuasion"
	talent.tips = {
		{ -- 1
			table_cache_1,
			{ left = "Une fois activé, augmente vos chances d'Esquiver et de Parer de 25% pendant 10 sec." }, -- 2
		},
	}
	talent = tree.talents[11].info
	talent.name = "Maîtrise des pièges"
	talent.tips = {
		format = "Réduit de %s%% les chances de vos ennemis de résister aux effets de vos pièges.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "Pied sûr"
	talent.tips = {
		format = "Augmente vos chances de toucher votre cible de %s%% et vos chances de résister aux effets affectant le mouvement de %s%%.",
		table_cache_24, -- 1
		table_cache_89, -- 2
		table_cache_55, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "Feindre la mort amélioré"
	talent.tips = {
		format = "Réduit la probabilité que l'on résiste à votre technique Feindre la mort de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "Instincts de survie"
	talent.tips = {
		format = "Réduit tous les dégâts subis de %s%% et augmente la puissance d'attaque de %s%%.",
		table_cache_77, -- 1
		table_cache_13, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "Instinct du tueur"
	talent.tips = {
		format = "Augmente vos chances d'infliger un coup critique avec toutes vos attaques de %s%%.",
	}
	talent = tree.talents[16].info
	talent.name = "Contre-attaque"
	talent.tips = {
		{ -- 1
			{ left = "45 mana", right = "Allonge" }, -- 1
			{ left = "Incantation immédiate", right = "Recharge 5 sec" }, -- 2
			{ left = "Une attaque disponible après avoir paré une attaque de l'adversaire. Elle inflige 40 points de dégâts et immobilise la cible pendant 5 sec. Contre-attaque ne peut pas être bloquée, esquivée ou parée." }, -- 3
			table_cache_53,
			table_cache_51,
			{ left = " Rang 2 : 65 mana, 70 pts de dégâts" }, -- 6
			{ left = " Rang 3 : 85 mana, 110 pts de dégâts" }, -- 7
			{ left = " Rang 4 : 110 mana, 165 pts de dégâts" }, -- 8
		},
	}
	talent = tree.talents[17].info
	talent.name = "Ressource"
	talent.tips = {
		format = "Réduit le coût en mana de tous les pièges et techniques de mêlée de %s%% et réduit le temps de recharge de tous les pièges de %s sec.",
		table_cache_84, -- 1
		{40, 4}, -- 2
		{60, 6}, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "Réflexes éclairs"
	talent.tips = {
		format = "Augmente votre Agilité de %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[19].info
	talent.name = "Frisson de la chasse"
	talent.tips = {
		format = "Vous confère %s%% de chances de récupérer 40%% du coût en mana de n'importe quel tir lorsqu'il inflige un coup critique.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "Piqûre de wyverne"
	talent.tips = {
		{ -- 1
			{ left = "115 mana", right = "Portée 8-35 m" }, -- 1
			table_cache_41,
			{ left = "Une piqûre qui endort la cible pendant 12 sec. Tout point de dégâts subi par la cible annule l'effet. Quand la cible se réveille, la Piqûre inflige 300 points de dégâts de Nature en 12 sec. Une seule technique de Morsure ou de Piqûre par chasseur peut être active sur la cible en même temps." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 155 mana, 420 pts de dégâts" }, -- 6
			{ left = " Rang 3 : 205 mana, 600 pts de dégâts" }, -- 7
		},
	}
	talent = tree.talents[21].info
	talent.name = "Perce-faille"
	talent.tips = {
		format = "Vos coups critiques à distance ont %s%% de chances d'infliger un effet Perce-faille à la cible. Perce-faille augmente la puissance d'attaque de tous ceux qui attaquent cette cible de 25%% de votre Agilité pendant 7 sec.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[22].info
	talent.name = "Maître tacticien"
	talent.tips = {
		format = "Vos attaques à distance réussies ont 6%% de chances d'augmenter vos chances de coup critique avec toutes les attaques de %s%% pendant 8 sec.",
		multiplier = 2,
	}
	talent = tree.talents[23].info
	talent.name = "Promptitude"
	talent.tips = {
		{ -- 1
			table_cache_1,
			{ left = "Quand on active cette technique, le temps de recharge de vos autres techniques de chasseur prend immédiatement fin." }, -- 2
		},
	}
	data = Talented_Data.WARRIOR
	-- data.name = "Talents de guerrier"
	tree = data[1]
	tree.info.name = "Armes"
	talent = tree.talents[1].info
	talent.name = "Frappe héroïque améliorée"
	talent.tips = {
		format = "Réduit le coût en rage de votre technique Frappe héroïque de %s point%s.",
		table_cache_56, -- 1
		table_cache_48, -- 2
		table_cache_49, -- 3
	}
	talent = tree.talents[2].info
	talent.name = "Déviation"
	talent.tips = {
		format = "Augmente vos chances de parer de %s%%.",
	}
	talent = tree.talents[3].info
	talent.name = "Pourfendre amélioré"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts infligés par la technique Pourfendre.",
		multiplier = 25,
	}
	talent = tree.talents[4].info
	talent.name = "Charge améliorée"
	talent.tips = {
		format = "Augmente la quantité de Rage générée par votre technique Charge de %s.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "Volonté de fer"
	talent.tips = {
		format = "Augmente de %s%% vos chances de résister aux effets d'étourdissements et aux charmes.",
		multiplier = 3,
	}
	talent = tree.talents[6].info
	talent.name = "Coup de tonnerre amélioré"
	talent.tips = {
		format = "Réduit le coût de votre technique Coup de tonnerre de %s point%s de rage et augmente les dégâts de %s%% et l'effet de ralentissement de %s%% supplémentaires.",
		{1, "", 40, 4}, -- 1
		{2, "s", 70, 7}, -- 2
		{4, "s", 100, 10}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "Fulgurance améliorée"
	talent.tips = {
		format = "Augmente de %s%% vos chances d'infliger un coup critique avec la technique Fulgurance.",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "Maîtrise de la Rage"
	talent.tips = {
		"Génère 1 point de rage toutes les 3 secondes.", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "Blessures profondes"
	talent.tips = {
		format = "Vos coups critiques font saigner l'adversaire et lui infligent %s%% des points de dégâts moyens de votre arme en 12 sec.",
		multiplier = 20,
	}
	talent = tree.talents[10].info
	talent.name = "Spécialisation Arme 2M"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts que vous infligez avec les armes à deux mains.",
	}
	talent = tree.talents[11].info
	talent.name = "Empaler"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts supplémentaires infligés par vos coups critiques, lorsque vous utilisez vos techniques en postures de combat, défensive et berserker.",
		multiplier = 10,
	}
	talent = tree.talents[12].info
	talent.name = "Spécialisation Hache d’hast"
	talent.tips = {
		format = "Augmente de %s%% vos chances d'infliger un coup critique avec les haches et les armes d'hast.",
	}
	talent = tree.talents[13].info
	talent.name = "Souhait mortel"
	talent.tips = {
		{ -- 1
			table_cache_73,
			table_cache_61,
			{ left = "Lorsque cette technique est activée, elle augmente les dégâts physiques que vous infligez de 20% et vous rend insensible aux effets de Peur. En contrepartie, tous les dégâts sont augmentés de 5%. Dure 30 sec." }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "Spécialisation Masse"
	talent.tips = {
		format = "Confère à vos attaques en mêlée une chance d'étourdir votre cible pendant 3 sec. et de générer 7 points de rage lorsque vous utilisez une Masse.%s",
		"", -- 1
		" Plus efficace que Spécialisation Masse (rang 1).", -- 2
		" Plus efficace que Spécialisation Masse (rang 2).", -- 3
		" Plus efficace que Spécialisation Masse (rang 3).", -- 4
		" Plus efficace que Spécialisation Masse (rang 4).", -- 5
	}
	talent = tree.talents[15].info
	talent.name = "Spécialisation Epée"
	talent.tips = {
		format = "Vous confère %s%% de chances de bénéficier d'une attaque supplémentaire sur la même cible, après avoir infligé des dégâts avec votre épée.",
	}
	talent = tree.talents[16].info
	talent.name = "Interception améliorée"
	talent.tips = {
		format = "Réduit le temps de recharge de votre technique Interception de %s sec.",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "Brise-genou amélioré"
	talent.tips = {
		format = "Confère à votre technique Brise-genou %s%% de chances d'immobiliser votre cible pendant 5 sec.",
		multiplier = 5,
	}
	talent = tree.talents[18].info
	talent.name = "Disciplines améliorées"
	talent.tips = {
		format = "Réduit le temps de recharge de vos techniques Représailles, Témérité et Mur protecteur de %s et augmente leur durée de %s sec.",
		table_cache_14, -- 1
		table_cache_62, -- 2
		{10, 6}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Frénésie sanglante"
	talent.tips = {
		format = "Vos techniques Pourfendre et Blessures profondes augmentent aussi tous les dégâts de mêlée infligés à cette cible de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "Frappe mortelle"
	talent.tips = {
		{ -- 1
			table_cache_12,
			table_cache_35,
			{ left = "Requiert Arme de mélêe" }, -- 3
			{ left = "Une attaque vicieuse qui inflige les points de dégâts de l'arme plus 85 et blesse la cible. L'effet des sorts de soins dont elle est la cible est réduit de 50% pendant 10 sec." }, -- 4
			table_cache_53,
			table_cache_22,
			{ left = "  Rang 2 : +110 pts de dégâts" }, -- 7
			{ left = "  Rang 3 : +135 pts de dégâts" }, -- 8
			{ left = "  Rang 4 : +160 pts de dégâts" }, -- 9
			{ left = "  Rang 5 : +185 pts de dégâts" }, -- 10
			{ left = "  Rang 6 : +210 pts de dégâts" }, -- 11
		},
	}
	talent = tree.talents[21].info
	talent.name = "Second souffle"
	talent.tips = {
		format = "Chaque fois que vous êtes atteint par un effet d'étourdissement ou d'immobilisation, vous gagnez %s points de rage et %s%% de votre total de points de vie en 10 sec.",
		table_cache_21, -- 1
		table_cache_10, -- 2
	}
	talent = tree.talents[22].info
	talent.name = "Frappe mortelle améliorée"
	talent.tips = {
		format = "Réduit le temps de recharge de votre technique frappe mortelle de %s sec. et augmente les dégâts qu'elle inflige de %s%%.",
		{"0,2", 1}, -- 1
		{"0,4", 2}, -- 2
		{"0,6", 3}, -- 3
		{"0,8", 4}, -- 4
		table_cache_24, -- 5
	}
	talent = tree.talents[23].info
	talent.name = "Rage infinie"
	talent.tips = {
		"Vous générez 25% points de rage supplémentaires lorsque vous infligez des dégâts.", -- 1
	}
	tree = data[2]
	tree.info.name = "Fureur"
	talent = tree.talents[1].info
	talent.name = "Voix tonitruante"
	talent.tips = {
		format = "Augmente de %s%% la zone d'effet et la durée de vos techniques Cri de guerre, Cri démoralisant, et Cri de commandement.",
		multiplier = 10,
	}
	talent = tree.talents[2].info
	talent.name = "Cruauté"
	talent.tips = {
		format = "Augmente vos chances d'infliger un coup critique avec les armes de mêlée de %s%%.",
	}
	talent = tree.talents[3].info
	talent.name = "Cri démoralisant amélioré"
	talent.tips = {
		format = "Augmente la réduction de puissance d'attaque en mêlée de votre Cri démoralisant de %s%%.",
		multiplier = 8,
	}
	talent = tree.talents[4].info
	talent.name = "Colère déchaînée"
	talent.tips = {
		format = "Vous confère une chance de gagner un point de rage supplémentaire quand vous infligez des dégâts en mêlée avec une arme.%s",
		"", -- 1
		" L'effet se produit plus souvent qu'avec Colère déchaînée (Rang 1).", -- 2
		" L'effet se produit plus souvent qu'avec Colère déchaînée (Rang 2).", -- 3
		" L'effet se produit plus souvent qu'avec Colère déchaînée (Rang 3).", -- 4
		" L'effet se produit plus souvent qu'avec Colère déchaînée (Rang 4).", -- 5
	}
	talent = tree.talents[5].info
	talent.name = "Enchaînement amélioré"
	talent.tips = {
		format = "Augmente le bonus de dégâts infligé par votre technique Enchaînement de %s%%.",
		multiplier = 40,
	}
	talent = tree.talents[6].info
	talent.name = "Hurlement perçant"
	talent.tips = {
		{ -- 1
			table_cache_73,
			table_cache_86,
			{ left = "Tous les ennemis se trouvant à moins de 10 m du guerrier sont hébétés, et leurs vitesse de déplacement est réduite de 50% pendant 6 sec." }, -- 3
		},
	}
	talent = tree.talents[7].info
	talent.name = "Folie sanguinaire"
	talent.tips = {
		format = "Régénère %s%% de votre nombre total de points de vie sur 6 sec après avoir reçu un coup critique.",
	}
	talent = tree.talents[8].info
	talent.name = "Présence impérieuse"
	talent.tips = {
		format = "Augmente de %s%% le bonus à la puissance d'attaque en mêlée de votre Cri de guerre et le bonus aux points de vie de votre Cri de commandement.",
		multiplier = 5,
	}
	talent = tree.talents[9].info
	talent.name = "Spécialisation Ambidextrie"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par l'arme que vous utilisez en main gauche de %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[10].info
	talent.name = "Exécution améliorée"
	talent.tips = {
		format = "Réduit le coût en rage de votre technique Exécution de %s.",
		2, -- 1
		5, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "Enrager"
	talent.tips = {
		format = "Vous confère un bonus aux dégâts en mêlée de %s%% pendant 12 sec pour un maximum de 12 coups lorsque vous êtes victime d'un coup critique.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "Heurtoir amélioré"
	talent.tips = {
		format = "Réduit le temps d'incantation de votre technique Heurtoir de %s sec.",
		"0,5", -- 1
		1, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "Attaques circulaires"
	talent.tips = {
		{ -- 1
			{ left = "30 Rage" }, -- 1
			table_cache_32,
			{ left = "Requiert Arme de mêlée" }, -- 3
			{ left = "Requiert Posture de combat, posture berserker" }, -- 4
			{ left = "Vos 10 prochaines attaques de mêlée frappent un ennemi proche en plus." }, -- 5
		},
	}
	talent = tree.talents[14].info
	talent.name = "Maîtrise des armes"
	talent.tips = {
		format = "Réduit la probabilité que vos attaques soient esquivées de %s%% et réduit la durée de tous les effets de désarmement utilisés contre vous de %s%%. Non cumulable avec les autres effets qui réduisent la durée du désarmement.",
		table_cache_95, -- 1
		table_cache_96, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "Rage berserker améliorée"
	talent.tips = {
		format = "La technique Rage berserker génère %s points de rage quand elle est utilisée.",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "Rafale"
	talent.tips = {
		format = "Lorsque vous infligez un coup critique en mêlée, augmente votre vitesse d'attaque de %s%% pour les 3 prochains coups.",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "Précision"
	talent.tips = {
		format = "Augmente vos chances de toucher avec les armes de mêlée de %s%%.",
	}
	talent = tree.talents[18].info
	talent.name = "Sanguinaire"
	talent.tips = {
		{ -- 1
			table_cache_12,
			table_cache_35,
			{ left = "Attaque instantanément la cible et lui inflige 217 points de dégâts. De plus, les 5 prochaines attaques de mêlée réussies rendent 10 points de vie.  Cet effet dure 8 sec. Les dégâts sont proportionnels à votre puissance d'attaque." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = "  Rang 2 : 13 pts de vie" }, -- 6
			{ left = "  Rang 3 : 17 pts de vie" }, -- 7
			{ left = "  Rang 4 : 20 pts de vie" }, -- 8
			{ left = "  Rang 5 : 25 pts de vie" }, -- 9
			{ left = "  Rang 6 : 30 pts de vie" }, -- 10
		},
	}
	talent = tree.talents[19].info
	talent.name = "Tourbillon amélioré"
	talent.tips = {
		format = "Réduit le temps de recharge de votre technique Tourbillon de %s sec.",
	}
	talent = tree.talents[20].info
	talent.name = "Posture berserker améliorée"
	talent.tips = {
		format = "Augmente la puissance d'attaque de %s%% et réduit la menace générée de %s%% lorsque vous êtes en posture berserker.",
		table_cache_77, -- 1
		table_cache_13, -- 2
		table_cache_50, -- 3
		table_cache_6, -- 4
		table_cache_54, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "Saccager"
	talent.tips = {
		{ -- 1
			{ left = "20 points de rage" }, -- 1
			table_cache_86,
			{ left = "Le guerrier se déchaîne, ce qui augmente la puissance d'attaque de 30, et la plupart de ses attaques de mêlée réussies augmentent de plus sa puissance d'attaque de 30. Cet effet peut se cumuler un maximum de 5 fois. Dure 30 sec. Cette technique ne peut être utilisée qu'après avoir réussi un coup critique." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = "  Rang 2 : +40 puissance d'attaque" }, -- 6
			{ left = "  Rang 3 : +50 puissance d'attaque" }, -- 7
		},
	}
	tree = data[3]
	tree.info.name = "Protection"
	talent = tree.talents[1].info
	talent.name = "Rage sanguinaire améliorée"
	talent.tips = {
		format = "Augmente le nombre de points de rage instantanés générés par votre technique Rage sanguinaire de %s.",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "Maîtrise tactique"
	talent.tips = {
		format = "Vous conservez jusqu'à %s de vos points de rage lorsque vous changez de posture. Augmente aussi considérablement la menace générée par vos techniques Sanguinaire et Frappe mortelle quand vous êtes en posture défensive%s.",
		{5, ""}, -- 1
		{10, " (Plus efficace que le Rang 1)"}, -- 2
		{15, " (Plus efficace que le Rang 2)"}, -- 3
	}
	talent = tree.talents[3].info
	talent.name = "Anticipation"
	talent.tips = {
		format = "Augmente votre Défense de %s.",
		multiplier = 4,
	}
	talent = tree.talents[4].info
	talent.name = "Spécialisation Bouclier"
	talent.tips = {
		format = "Augmente de %s%% vos chances de bloquer les attaques avec votre bouclier, avec %s%% de chances d'obtenir 1 point de Rage quand vous bloquez une attaque.",
		{1, 20}, -- 1
		{2, 40}, -- 2
		{3, 60}, -- 3
		{4, 80}, -- 4
		{5, 100}, -- 5
	}
	talent = tree.talents[5].info
	talent.name = "Résistance"
	talent.tips = {
		format = "Augmente le score d'armure des objets de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "Dernier rempart"
	talent.tips = {
		{ -- 1
			table_cache_17,
			{ left = "Activée, cette technique vous accorde pendant 20 secondes 30% de votre maximum de points de vie en plus. Lorsque l'effet expire, les points de vie sont perdus." }, -- 2
		},
	}
	talent = tree.talents[7].info
	talent.name = "Maîtrise du blocage améliorée"
	talent.tips = {
		"Vous permet de bloquer une attaque supplémentaire avec votre technique Maîtrise du blocage et en augmente la durée de 1 sec.", -- 1
	}
	talent = tree.talents[8].info
	talent.name = "Vengeance améliorée"
	talent.tips = {
		format = "Confère %s%% de chances à votre technique Vengeance d'étourdir la cible pendant 3 sec.",
		multiplier = 15,
	}
	talent = tree.talents[9].info
	talent.name = "Défi"
	talent.tips = {
		format = "Augmente de %s%% la menace générée par vos attaques lorsque vous êtes en posture défensive et augmente de %s votre expertise.",
		{5, 2}, -- 1
		table_cache_98, -- 2
		table_cache_99, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "Fracasser armure amélioré"
	talent.tips = {
		format = "Réduit le coût des techniques Fracasser armure et Dévaster de %s point%s de rage.",
		table_cache_56, -- 1
		table_cache_48, -- 2
		table_cache_49, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "Désarmement amélioré"
	talent.tips = {
		format = "Augmente la durée de la technique Désarmement de %s secs.",
	}
	talent = tree.talents[12].info
	talent.name = "Provocation améliorée"
	talent.tips = {
		format = "Réduit le temps de recharge de votre technique Provocation de %s sec.",
	}
	talent = tree.talents[13].info
	talent.name = "Mur protecteur amélioré"
	talent.tips = {
		format = "Augmente la durée de la technique Mur protecteur de %s secs.",
		3, -- 1
		5, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "Bourrasque"
	talent.tips = {
		{ -- 1
			table_cache_37,
			{ left = "Instantané", right = "Recharge 45 sec" }, -- 2
			table_cache_39,
			{ left = "Etourdit l'adversaire pendant 5 sec." }, -- 4
		},
	}
	talent = tree.talents[15].info
	talent.name = "Coup de bouclier amélioré"
	talent.tips = {
		format = "Confère à votre technique Coup de bouclier %s%% de chances de rendre la cible muette pendant 3 sec.",
		multiplier = 50,
	}
	talent = tree.talents[16].info
	talent.name = "Maîtrise du bouclier"
	talent.tips = {
		format = "Augmente le nombre de points de dégâts absorbés par votre bouclier de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[17].info
	talent.name = "Spécialisation Arme 1M"
	talent.tips = {
		format = "Augmente de %s%% les dégâts physiques que vous infligez quand une arme de mêlée à une main est équipée.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "Posture défensive améliorée"
	talent.tips = {
		format = "Réduit tous les dégâts des sorts subis de %s%% lorsque vous êtes en posture défensive.",
		multiplier = 2,
	}
	talent = tree.talents[19].info
	talent.name = "Heurt de bouclier"
	talent.tips = {
		{ -- 1
			{ left = "20 Rage", right = "Allonge" }, -- 1
			table_cache_35,
			{ left = "Requiert Bouclier" }, -- 3
			{ left = "Donne un coup de bouclier à la cible, infligeant 225 à 235 points de dégâts modifiés par votre valeur de blocage, et donne 50% de dissiper 1 effet de magie sur la cible. Provoque aussi un niveau élevé de menace." }, -- 4
			table_cache_53,
			table_cache_22,
			{ left = "  Rang 2 : 264-276 pts de dégâts" }, -- 7
			{ left = "  Rang 3 : 303-317 pts de dégâts" }, -- 8
			{ left = "  Rang 4 : 342-358 pts de dégâts" }, -- 9
			{ left = "  Rang 5 : 381-399 pts de dégâts" }, -- 10
			{ left = "  Rang 6 : 420-440 pts de dégâts" }, -- 11
		},
	}
	talent = tree.talents[20].info
	talent.name = "Rage focalisée"
	talent.tips = {
		format = "Réduit le coût en rage vos techniques offensives de %s.",
	}
	talent = tree.talents[21].info
	talent.name = "Vitalité"
	talent.tips = {
		format = "Augmente votre total d'Endurance de %s%% et votre total de Force de %s%%.",
		table_cache_75, -- 1
		table_cache_9, -- 2
		table_cache_33, -- 3
		table_cache_94, -- 4
		table_cache_67, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "Dévaster"
	talent.tips = {
		{ -- 1
			table_cache_37,
			table_cache_86,
			{ left = "Arme de mêlée 1M requis" }, -- 3
			{ left = "Fracasse l'armure de la cible, provoquant l'effet Fracasser armure. De plus, inflige 50% des dégâts de l'arme plus 15 pour chaque utilisation de Fracasser armure sur la cible. L'effet de fracassement d'armure peut être cumulé jusqu'à 5 fois." }, -- 4
			table_cache_53,
			table_cache_22,
			{ left = "  Rang 2 : +25 pts de dégâts" }, -- 7
			{ left = "  Rang 3 : +35 pts de dégâts" }, -- 8
		},
	}
	data = Talented_Data.SHAMAN
	-- data.name = "Talents de chaman"
	tree = data[1]
	tree.info.name = "Élémentaire"
	talent = tree.talents[1].info
	talent.name = "Convection"
	talent.tips = {
		format = "Réduit le coût en mana de vos sorts Horion, Eclair et Chaîne d'éclairs de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "Commotion"
	talent.tips = {
		format = "Augmente de %s%% les dégâts infligés par vos sorts Eclair, Chaîne d'éclairs et Horion.",
	}
	talent = tree.talents[3].info
	talent.name = "Emprise de la terre"
	talent.tips = {
		format = "Augmente les points de vie de votre Totem Griffe de pierre de %s%% et le rayon de votre Totem de lien terrestre de %s%%.",
		{25, 10}, -- 1
		{50, 20}, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "Protection contre les éléments"
	talent.tips = {
		format = "Réduit les dégâts infligés par les effets de Feu, de Givre et de Nature de %s%%.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "Appel des flammes"
	talent.tips = {
		format = "Augmente de %s%% les dégâts infligés par vos Totems de feu.",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "Focalisation élémentaire"
	talent.tips = {
		"Après avoir réussi un coup critique avec un sort de dégâts de Feu, de Givre ou de Nature, vous entrez dans un état « Idées claires ». Idées claires réduit le coût en mana de vos 2 prochains sorts de dégâts de 40%.", -- 1
	}
	talent = tree.talents[7].info
	talent.name = "Réverbération"
	talent.tips = {
		format = "Réduit le temps de recharge de vos Horions de %s sec.",
		"0,2", -- 1
		"0,4", -- 2
		"0,6", -- 3
		"0,8", -- 4
		1, -- 5
	}
	talent = tree.talents[8].info
	talent.name = "Appel de la foudre"
	talent.tips = {
		format = "Augmente vos chances de réaliser un coup critique avec vos sorts Eclair et Chaîne d'éclairs de %s%% supplémentaires.",
	}
	talent = tree.talents[9].info
	talent.name = "Totems de Feu améliorés"
	talent.tips = {
		format = "Réduit le délai avant activation de votre Totem Nova de feu de %s sec. et diminue la menace générée par votre Totem de Magma de %s%%.",
		table_cache_95, -- 1
		table_cache_96, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "Oeil du cyclone"
	talent.tips = {
		format = "Vous confère %s%% de chances de bénéficier de l'effet Incantation focalisée pendant 6 sec après avoir été victime d'un coup critique en mêlée ou à distance. Cet effet vous évite, lors de l'incantation de sorts de chaman, d'être interrompu lorsque vous subissez des dégâts.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "Dévastation élémentaire"
	talent.tips = {
		format = "Vos coups critiques obtenus avec des sorts offensifs augmentent de %s%% vos chances d'obtenir un coup critique avec les attaques de mêlée pendant 10 sec.",
		multiplier = 3,
	}
	talent = tree.talents[12].info
	talent.name = "Allonge de la tempête"
	talent.tips = {
		format = "Augmente la portée de vos sorts Eclair et Chaîne d'éclairs de %s mètres.",
		multiplier = 3,
	}
	talent = tree.talents[13].info
	talent.name = "Fureur élémentaire"
	talent.tips = {
		"Augmente de 100% le bonus en points de dégâts des coups critiques obtenus avec les Totems incendiaires, Nova de Feu de Magma ainsi qu'avec les sorts de Feu, de Givre et de Nature.", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "Tempête continuelle"
	talent.tips = {
		format = "Régénère une quantité de mana égale à %s%% de votre Intelligence toutes les 5 secs, même pendant l'incantation.",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "Précision élémentaire"
	talent.tips = {
		format = "Augmente de %s%% vos chances de toucher avec les sorts de Feu, de Givre et de Nature, et réduit de %s%% la menace générée par les sorts de Feu, Givre et Nature.",
		table_cache_9, -- 1
		{4, 7}, -- 2
		{6, 10}, -- 3
	}
	talent = tree.talents[16].info
	talent.name = "Maîtrise de la foudre"
	talent.tips = {
		format = "Réduit le temps d'incantation de vos sorts Eclair et Chaîne d'éclairs de 0,%s sec.",
	}
	talent = tree.talents[17].info
	talent.name = "Maîtrise élémentaire"
	talent.tips = {
		{ -- 1
			table_cache_61,
			{ left = "Lorsqu'il est activé, ce sort confère 100% de chances à vos sorts de Feu, de Givre et de Nature d'infliger un coup critique et il réduit le coût en mana de 100%." }, -- 2
		},
	}
	talent = tree.talents[18].info
	talent.name = "Boucliers élémentaires"
	talent.tips = {
		format = "Réduit de %s%% la probabilité que vous soyez touché par un coup critique infligé par une attaque en mêlée ou à distance.",
		multiplier = 2,
	}
	talent = tree.talents[19].info
	talent.name = "Surcharge de foudre"
	talent.tips = {
		format = "Donne à vos sorts Eclair et Chaîne d'éclairs %s%% de chances de lancer un second sort semblable sur la même cible sans coût supplémentaire. Ce sort n'inflige que la moitié des dégâts et ne génère pas de menace.",
		multiplier = 4,
	}
	talent = tree.talents[20].info
	talent.name = "Totem de courroux"
	talent.tips = {
		{ -- 1
			{ left = "147 mana" }, -- 1
			table_cache_66,
			{ left = "Outils : totem de feu" }, -- 3
			{ left = "Invoque un Totem de courroux aux pieds du lanceur de sorts. Il dispose de 5 points de vie et augmente de 3% les chances de toucher et de réussir des coups critiques avec les sorts de tous les membres du groupe se trouvant à moins de 20 mètres. Dure 2 min." }, -- 4
		},
	}
	tree = data[2]
	tree.info.name = "Amélioration"
	talent = tree.talents[1].info
	talent.name = "Connaissance ancestrale"
	talent.tips = {
		format = "Augmente votre maximum de points de mana de %s%%.",
	}
	talent = tree.talents[2].info
	talent.name = "Spécialisation Bouclier"
	talent.tips = {
		format = "Augmente de %s%% vos chances de bloquer les attaques avec votre bouclier et augmente de %s%% le nombre de points de dégâts bloqués.",
		table_cache_24, -- 1
		table_cache_89, -- 2
		table_cache_55, -- 3
		table_cache_100, -- 4
		table_cache_87, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "Totems gardiens"
	talent.tips = {
		format = "Augmente de %s%% le nombre de points de dégâts absorbés par votre Totem Peau de pierre et votre Totem de Mur des vents et réduit le temps de recharge de votre Totem de Glèbe de %s sec.",
		{10, 1}, -- 1
		table_cache_84, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "Frappe foudroyante"
	talent.tips = {
		format = "Augmente de %s%% vos chances d'infliger un coup critique avec votre arme.",
	}
	talent = tree.talents[5].info
	talent.name = "Loup fantôme amélioré"
	talent.tips = {
		format = "Réduit le temps d'incantation de votre sort Loup fantôme de %s sec.",
	}
	talent = tree.talents[6].info
	talent.name = "Bouclier de foudre amélioré"
	talent.tips = {
		format = "Augmente de %s%% les dégâts infligés par les orbes de votre Bouclier de foudre.",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "Totems renforcés"
	talent.tips = {
		format = "Augmente de %s%% l'effet de vos Totems de Force de la Terre et de Grâce aérienne.",
		8, -- 1
		15, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "Focalisation chamanique"
	talent.tips = {
		"Après avoir réussi un coup critique en mêlée, vous entrez en état de focalisation. Cet état réduit le coût en mana de votre prochain horion de 60%.", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "Anticipation"
	talent.tips = {
		format = "Augmente de %s%% vos chances d'esquiver.",
	}
	talent = tree.talents[10].info
	talent.name = "Rafale"
	talent.tips = {
		format = "Lorsque vous infligez un coup critique, augmente votre vitesse d'attaque de %s%% pour les 3 prochaines attaques.",
		10, -- 1
		15, -- 2
		20, -- 3
		25, -- 4
		30, -- 5
	}
	talent = tree.talents[11].info
	talent.name = "Résistance"
	talent.tips = {
		format = "Augmente le score d'armure des objets de %s%% et réduit sur vous la durée des effets ralentissant le mouvement de %s%%.",
		table_cache_89, -- 1
		table_cache_100, -- 2
		table_cache_30, -- 3
		{8, 40}, -- 4
		table_cache_28, -- 5
	}
	talent = tree.talents[12].info
	talent.name = "Totems d'armes améliorés"
	talent.tips = {
		format = "Augmente le bonus de puissance d'attaque en mêlée de votre totem Furie-des-vents de %s%% et augmente les dégâts de votre totem Langue de feu de %s%%",
		table_cache_99, -- 1
		{30, 12}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "Armes spirituelles"
	talent.tips = {
		"Donne une chance de parer les attaques de mêlée des ennemis et réduit la menace générée par vos attaques de mêlée de 30%.", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "Armes élémentaires"
	talent.tips = {
		format = "Augmente de %s%% les dégâts infligés par votre Arme Croque-roc, de %s%% votre effet Arme Furie-des-vents, et de %s%% les dégâts causés par votre Arme Langue de feu et votre Arme de givre.",
		{7, 13, 5}, -- 1
		{14, 27, 10}, -- 2
		{20, 40, 15}, -- 3
	}
	talent = tree.talents[15].info
	talent.name = "Rapidité mentale"
	talent.tips = {
		format = "Réduit le coût en mana de vos sorts instantanés de %s%% et augmente les dégâts et les soins produits par vos sorts d'un montant égal à %s%% de votre puissance d'attaque.",
		table_cache_89, -- 1
		table_cache_100, -- 2
		table_cache_30, -- 3
	}
	talent = tree.talents[16].info
	talent.name = "Maîtrise des armes"
	talent.tips = {
		format = "Augmente de %s%% les dégâts que vous infligez avec toutes les armes.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "Spécialisation Ambidextrie"
	talent.tips = {
		format = "Augmente de %s%% supplémentaires vos chances de toucher lorsque vous portez deux armes.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "Ambidextrie"
	talent.tips = {
		"Permet d'équiper les armes à une main dans la main gauche.", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "Courroux naturel"
	talent.tips = {
		{ -- 1
			{ left = "236 mana", right = "Allonge" }, -- 1
			{ left = "Incantation immédiate", right = "Temps de recharge : 10 sec." }, -- 2
			table_cache_39,
			{ left = "Attaque instantanément avec les deux armes. De plus, les 2 prochaines sources de dégâts de Nature infligés à la cible sont augmentées de 20%. Dure 12 sec." }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "Rage libérée"
	talent.tips = {
		format = "Vos coups critiques obtenus avec les attaques de mêlée augmentent de %s%% la puissance d'attaque de tous les membres du groupe s'ils se trouvent à moins de 20 mètres du chaman. Dure 10 sec.",
		multiplier = 2,
	}
	talent = tree.talents[21].info
	talent.name = "Rage du chaman"
	talent.tips = {
		{ -- 1
			{ left = "Incantation immédiate", right = "Temps de recharge : 2 min" }, -- 1
			{ left = "Réduit tous les dégâts subis de 30% et confère à vos attaques de mêlée réussies une chance de régénérer un montant de points de mana égal à 15% de votre puissance d'attaque. Dure 30 sec." }, -- 2
		},
	}
	tree = data[3]
	tree.info.name = "Restauration"
	talent = tree.talents[1].info
	talent.name = "Vague de soins améliorée"
	talent.tips = {
		format = "Réduit le temps d'incantation de votre sort Vague de soins de 0,%s sec.",
	}
	talent = tree.talents[2].info
	talent.name = "Focalisation des flots"
	talent.tips = {
		format = "Réduit de %s%% le coût en mana de vos sorts de soins.",
	}
	talent = tree.talents[3].info
	talent.name = "Réincarnation améliorée"
	talent.tips = {
		format = "Réduit le temps de recharge de votre sort Réincarnation de %s min et augmente le nombre de points de vie et de mana avec lesquels vous vous réincarnez de %s%% supplémentaires.",
		table_cache_54, -- 1
		table_cache_29, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "Guérison des anciens"
	talent.tips = {
		format = "Augmente le score d'armure de la cible de %s%% pendant 15 sec lorsque vous obtenez un effet critique en la soignant.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "Focalisation totémique"
	talent.tips = {
		format = "Réduit le coût en mana de vos sorts Totem de %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "Soutien de la nature"
	talent.tips = {
		format = "Augmente vos chances de toucher avec les sorts et attaques de mêlée de %s%%",
	}
	talent = tree.talents[7].info
	talent.name = "Focalisation des soins"
	talent.tips = {
		format = "Vous donne %s%% de chances d'éviter d'être interrompu par des dégâts subis quand vous lancez un sort de soins de chaman.",
		multiplier = 14,
	}
	talent = tree.talents[8].info
	talent.name = "Maîtrise totémique"
	talent.tips = {
		"Le rayon d'effet de vos totems qui affectent les cibles alliées est augmenté à 30 m.", -- 1
	}
	talent = tree.talents[9].info
	talent.name = "Grâce guérisseuse"
	talent.tips = {
		format = "Diminue le niveau de menace généré par vos sorts de soins de %s%% et réduit la probabilité que vos sorts soient dissipés de %s%%.",
		table_cache_67, -- 1
		table_cache_27, -- 2
		table_cache_52, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "Totems de restauration"
	talent.tips = {
		format = "Augmente de %s%% les effets de votre Totem Fontaine de mana et de votre Totem guérisseur.",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "Maîtrise des flots"
	talent.tips = {
		format = "Augmente les chances d'obtenir un effet critique avec vos sorts de soins et d'éclair de %s%%.",
	}
	talent = tree.talents[12].info
	talent.name = "Flots de soins"
	talent.tips = {
		format = "Vos Vagues de soins ont %s%% de chances d'augmenter les effets des vagues de soins suivantes sur cette cible de 6%% pendant 15 sec. Cet effet peut se cumuler au maximum 3 fois.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "Rapidité de la nature"
	talent.tips = {
		{ -- 1
			table_cache_61,
			{ left = "Activé, votre prochain sort de Nature dont le temps d'incantation est inférieur à 10 secondes devient un sort instantané." }, -- 2
		},
	}
	talent = tree.talents[14].info
	talent.name = "Esprit focalisé"
	talent.tips = {
		format = "Réduit de %s%% la durée de tous les effets de silence ou d'interruption utilisés contre le chaman. Cet effet ne se cumule pas avec d'autres effets similaires.",
		multiplier = 10,
	}
	talent = tree.talents[15].info
	talent.name = "Purification"
	talent.tips = {
		format = "Augmente de %s%% l'efficacité de vos sorts de soins.",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "Totem de Vague de mana"
	talent.tips = {
		{ -- 1
			table_cache_44,
			{ left = "Incantation immédiate", right = "Recharge 5 min" }, -- 2
			{ left = "Outils : Totem d'eau" }, -- 3
			{ left = "Invoque un Totem de Vague de mana aux pieds du lanceur de sorts ; le Totem dispose de 5 points de vie. Agit pendant 12 sec. Il rend 6% de total de mana toutes les 3 secondes, à tous les membres du groupe qui se trouvent dans une zone de 20 mètres." }, -- 4
		},
	}
	talent = tree.talents[17].info
	talent.name = "Gardien de la nature"
	talent.tips = {
		format = "Chaque fois qu'une attaque vous inflige des dégâts qui vous font passer sous les 30%% de points de vie, vous avez %s%% de chances de recevoir 10%% du total de vos points de vie et de réduire votre niveau de menace envers cette cible. Temps de recharge de 5 secondes.",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "Bénédiction de la nature"
	talent.tips = {
		format = "Augmente les dégâts et les soins produits par vos sorts d'un montant au maximum égal à %s%% de votre Intelligence.",
		multiplier = 10,
	}
	talent = tree.talents[19].info
	talent.name = "Salve de guérison améliorée"
	talent.tips = {
		format = "Augmente de %s%% le montant de points de vie rendus par votre sort Salve de guérison.",
		multiplier = 10,
	}
	talent = tree.talents[20].info
	talent.name = "Bouclier de terre"
	talent.tips = {
		{ -- 1
			{ left = "600 mana", right = "Portée 40 m" }, -- 1
			table_cache_66,
			{ left = "Protège la cible avec un bouclier de terre, lui accordant 30% de chances d’ignorer les interruptions de sort quand elle reçoit des dégâts. La cible protégée est soignée par les attaques de mêlée qu’elle reçoit pour 150. Cet effet ne survient qu’une fois toutes les quelques secondes. 10 charges. Dure 10 min. Bouclier de terre ne peut être placé que sur une cible à la fois et un seul Bouclier élémentaire peut être actif sur une cible à la fois." }, -- 3
			table_cache_53,
			table_cache_51,
			{ left = " Rang 2 : 745 mana, soigne 205 pts de vie" }, -- 6
			{ left = " Rang 3 : 900 mana, soigne 270 pts de vie" }, -- 7
		},
	}
	data = Talented_Data.MAGE
	-- data.name = "Talents de mage"
	tree = data[1]
	tree.info.name = "Arcanes"
	talent = tree.talents[1].info
	talent.name = "Subtilité des arcanes"
	talent.tips = {
		format = "Réduit de %s la résistance de votre cible à tous les types de magie, et diminue de %s%% la menace générée par vos sorts d'Arcanes.",
		{5, 20}, -- 1
		table_cache_74, -- 2
	}
	talent = tree.talents[2].info
	talent.name = "Focalisation des arcanes"
	talent.tips = {
		format = "Réduit de %s%% les chances que votre adversaire résiste à vos sorts des Arcanes.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "Projectiles des arcanes améliorés"
	talent.tips = {
		format = "Vous confère %s%% de chances d'éviter d'être interrompu par une attaque qui vous inflige des dégâts pendant que vous incantez Projectiles des arcanes.",
		multiplier = 20,
	}
	talent = tree.talents[4].info
	talent.name = "Spécialisation Baguette"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts que vous infligez avec une Baguette.",
		13, -- 1
		25, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "Absorption de magie"
	talent.tips = {
		format = "Augmente toutes les résistances de %s. Tous les sorts auxquels vous résistez entièrement restaurent %s%% de votre total de mana. Temps de recharge d'1 sec.",
		table_cache_70, -- 1
		table_cache_14, -- 2
		table_cache_26, -- 3
		table_cache_57, -- 4
		table_cache_21, -- 5
	}
	talent = tree.talents[6].info
	talent.name = "Concentration des arcanes"
	talent.tips = {
		format = "Vous confère %s%% de chances d'entrer dans un état « Idées claires » après avoir infligé des dégâts avec un sort à la cible. Cet état réduit le coût en mana de votre prochain sort de 100%%.",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "Harmonisation de la magie"
	talent.tips = {
		format = "Augmente de %s%% l'effet de vos sorts Amplification de la magie et Atténuation de la magie.",
		multiplier = 25,
	}
	talent = tree.talents[8].info
	talent.name = "Impact des arcanes"
	talent.tips = {
		format = "Augmente de %s%% supplémentaires les chances d'infliger un coup critique avec votre sort Explosion des arcanes",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "Résistance des arcanes"
	talent.tips = {
		"Augmente votre Armure d'un montant égal à 100% de votre Intelligence.", -- 1
	}
	talent = tree.talents[10].info
	talent.name = "Bouclier de mana amélioré"
	talent.tips = {
		format = "Diminue de %s%% le mana perdu par point de dégâts reçu lorsque Bouclier de mana est actif.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "Contresort amélioré"
	talent.tips = {
		format = "Confère %s%% de chances à votre Contresort de rendre la cible muette pendant 4 sec.",
		multiplier = 50,
	}
	talent = tree.talents[12].info
	talent.name = "Méditation des arcanes"
	talent.tips = {
		format = "Vous confère %s%% de votre vitesse de récupération du mana normale pendant l'incantation.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "Transfert amélioré"
	talent.tips = {
		format = "Pendant %s sec après avoir lancé Transfert, la probabilité que vous soyez touché par tous les sorts et attaques est réduite de 25%%.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "Présence spirituelle"
	talent.tips = {
		{ -- 1
			table_cache_61,
			{ left = "Lorsque cette technique est activée, votre prochain sort de mage dont le temps d'incantation est inférieur à 10 sec. devient un sort instantané." }, -- 2
		},
	}
	talent = tree.talents[15].info
	talent.name = "Esprit des arcanes"
	talent.tips = {
		format = "Augmente votre intelligence de %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[16].info
	talent.name = "Cape prismatique"
	talent.tips = {
		format = "Réduit tous les dégâts subis de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "Instabilité des arcanes"
	talent.tips = {
		format = "Augmente de %s%% les dégâts de vos sorts et leurs chances de coup critique.",
	}
	talent = tree.talents[18].info
	talent.name = "Toute-puissance des arcanes"
	talent.tips = {
		format = "Augmente de %s%% les chances de faire un critique avec un sort lancé sous l’effet d’Idées claires.",
		multiplier = 10,
	}
	talent = tree.talents[19].info
	talent.name = "Projectiles des arcanes surpuissants"
	talent.tips = {
		format = "Vos sorts Projectiles des arcanes gagnent %s%% supplémentaires sur les effets de vos bonus de dégâts de sorts, mais leur coût de mana est augmenté de %s%%.",
		table_cache_78, -- 1
		table_cache_80, -- 2
		{45, 6}, -- 3
	}
	talent = tree.talents[20].info
	talent.name = "Pouvoir des arcanes"
	talent.tips = {
		{ -- 1
			table_cache_61,
			{ left = "Lorsqu'il est activé, vos sorts infligent 30% de points de dégâts supplémentaires et ils vous coûtent 30% de points de mana supplémentaires. Cet effet dure 15 sec." }, -- 2
		},
	}
	talent = tree.talents[21].info
	talent.name = "Puissance des sorts"
	talent.tips = {
		format = "Augmente de %s%% les bonus aux dégâts des coups critiques de sort.",
		multiplier = 25,
	}
	talent = tree.talents[22].info
	talent.name = "Maîtrise mentale"
	talent.tips = {
		format = "Augmente les dégâts des sorts de %s%% de votre total d'Intelligence au maximum.",
		multiplier = 5,
	}
	talent = tree.talents[23].info
	talent.name = "Lenteur"
	talent.tips = {
		{ -- 1
			{ left = "627 mana", right = "Portée 30 m" }, -- 1
			table_cache_66,
			{ left = "Réduit la vitesse de déplacement de la cible de 50%, augmente le temps entre les attaques à distance de 50% et augmente de temps d'incantation de 50%. Dure 15 sec. Lenteur ne peut affecter qu'une seule cible à la fois." }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "Feu"
	talent = tree.talents[1].info
	talent.name = "Boule de feu améliorée"
	talent.tips = {
		format = "Réduit le temps d'incantation de votre sort Boule de feu de 0,%s sec.",
	}
	talent = tree.talents[2].info
	talent.name = "Impact"
	talent.tips = {
		format = "Confère %s%% de chances à vos sorts de Feu d'étourdir vos cibles pendant 2 sec.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "Enflammer"
	talent.tips = {
		format = "Les coups critiques infligés par vos sorts de Feu enflamment la cible et lui infligent %s%% des points de dégâts de vos sorts en plus, en 4 sec.",
		multiplier = 8,
	}
	talent = tree.talents[4].info
	talent.name = "Jet de flammes"
	talent.tips = {
		format = "Augmente la portée de vos sorts de Feu de %s mètres.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "Trait de feu amélioré"
	talent.tips = {
		format = "Réduit le temps de recharge de votre sort Trait de feu %s sec.",
		"0,5", -- 1
		1, -- 2
		"1,5", -- 3
	}
	talent = tree.talents[6].info
	talent.name = "Incinération"
	talent.tips = {
		format = "Augmente de %s%% les chances d'infliger un coup critique avec vos sorts Trait de feu et Brûlure.",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "Choc de flammes amélioré"
	talent.tips = {
		format = "Augmente de %s%% vos chances de réaliser un coup critique avec votre sort Choc de flammes.",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "Explosion pyrotechnique"
	talent.tips = {
		{ -- 1
			{ left = "125 mana", right = "Portée 35 m" }, -- 1
			{ left = "Incantation 6 sec" }, -- 2
			{ left = "Lance un immense rocher enflammé qui inflige 148 à 195 points de dégâts de Feu et 56 points de dégâts de Feu supplémentaires en 12 sec." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 150 mana, 193-250 points de dégâts, 72/12 sec" }, -- 6
			{ left = " Rang 3 : 195 mana, 270-343 points de dégâts, 96/12 sec" }, -- 7
			{ left = " Rang 4 : 240 mana, 347-437 points de dégâts, 124/12 sec" }, -- 8
			{ left = " Rang 5 : 285 mana, 427-536 points de dégâts, 156/12 sec" }, -- 9
			{ left = " Rang 6 : 335 mana, 525-654 points de dégâts, 188/12 sec" }, -- 10
			{ left = " Rang 7 : 385 mana, 625-776 points de dégâts, 228/12 sec" }, -- 11
			{ left = " Rang 8 : 440 mana, 743-918 points de dégâts, 268/12 sec" }, -- 12
			{ left = " Rang 9 : 460 mana, 877-1087 points de dégâts, 324/12 sec" }, -- 13
		},
	}
	talent = tree.talents[9].info
	talent.name = "Ame ardente"
	talent.tips = {
		format = "Vos sorts de Feu gagnent %s%% de chances de ne pas être retardés lorsque vous subissez des dégâts pendant l'incantation, et la menace qu'ils génèrent est réduite de %s%%.",
		{35, 5}, -- 1
		{70, 10}, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "Brûlure améliorée"
	talent.tips = {
		format = "Vos sorts de Brûlure ont %s%% de chances de rendre votre cible vulnérable aux dégâts de Feu. Cette vulnérabilité augmente les dégâts de Feu infligés à la cible de 3%% et dure 30 sec.  Cumulable jusqu'à 5 fois.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "Boucliers de la fournaise"
	talent.tips = {
		format = "Confère à votre Gardien de feu %s%% de chances de renvoyer les sorts de Feu tant qu'il est actif. De plus, votre Armure de la fournaise a %s%% de chances d'affecter les attaques à distance et les sorts.",
		table_cache_28, -- 1
		{20, 100}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "Maître des éléments"
	talent.tips = {
		format = "Les coups critiques obtenus avec les sorts de Feu et de Givre vous rendront %s%% de leur coût en mana de base.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "Jouer avec le feu"
	talent.tips = {
		format = "Augmente tous les dégâts des sorts causés de %s%% et tous les dégâts des sorts subis de %s%%.",
		table_cache_88, -- 1
		table_cache_77, -- 2
		table_cache_4, -- 3
	}
	talent = tree.talents[14].info
	talent.name = "Masse critique"
	talent.tips = {
		format = "Augmente de %s%% vos chances d'infliger un coup critique avec vos sorts de Feu.",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "Vague explosive"
	talent.tips = {
		{ -- 1
			{ left = "215 mana" }, -- 1
			table_cache_32,
			{ left = "Une vague de flammes rayonne autour du lanceur et inflige à tous les ennemis pris dans l'explosion 160 à 192 points de dégâts de Feu, en plus de les Hébéter pendant 6 sec." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 270 mana, 201-241 pts de dégâts" }, -- 6
			{ left = " Rang 3 : 355 mana, 277-329 pts de dégâts" }, -- 7
			{ left = " Rang 4 : 450 mana, 365-433 pts de dégâts" }, -- 8
			{ left = " Rang 5 : 545 mana, 462-544 pts de dégâts" }, -- 9
			{ left = " Rang 6 : 595 mana, 640-754 pts de dégâts" }, -- 10
		},
	}
	talent = tree.talents[16].info
	talent.name = "Vitesse flamboyante"
	talent.tips = {
		format = "Vous confère %s%% de chances, lorsque vous êtes touché par une attaque en mêlée ou à distance, de voir votre vitesse de déplacement augmenter de 50%% et de dissiper tous les effets affectant le mouvement. Cet effet dure 8 sec.",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "Puissance du feu"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts infligés par vos sorts de Feu.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "Pyromane"
	talent.tips = {
		format = "Augmente de %s%% les chances d'obtenir un critique avec vos sorts de feu et réduit de %s%% le coût en mana de ces sorts.",
		table_cache_88, -- 1
		table_cache_77, -- 2
		table_cache_77, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Combustion"
	talent.tips = {
		{ -- 1
			table_cache_61,
			{ left = "Lorsqu'il est activé, ce sort augmente vos chances de coup critique avec les sorts de dégâts de Feu de 10% chaque fois que vous touchez avec un sort de ce type. Cet effet dure jusqu'à ce que vous ayez infligé 3 coups critiques avec des sorts de Feu." }, -- 2
		},
	}
	talent = tree.talents[20].info
	talent.name = "Fureur de lave"
	talent.tips = {
		format = "Augmente les dégâts de tous les sorts de %s%% contre les cibles avec moins de 20%% de leurs points de vie.",
		multiplier = 10,
	}
	talent = tree.talents[21].info
	talent.name = "Boule de feu surpuissante"
	talent.tips = {
		format = "Votre sort Boule de feu bénéficie de %s%% supplémentaires des effets du bonus relatif aux dégâts des sorts.",
		multiplier = 3,
	}
	talent = tree.talents[22].info
	talent.name = "Souffle du dragon"
	talent.tips = {
		{ -- 1
			{ left = "475 mana" }, -- 1
			table_cache_34,
			{ left = "Les cibles qui se trouvent dans une zone en forme de cône en face du lanceur de sorts subissent 382 à 442 points de dégâts de Feu et sont désorientés pendant 3 sec. Toute attaque directe qui inflige des dégâts réveille la cible. Interrompt l'attaque lors de son utilisation." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 575 mana, 463-536 points de dégâts" }, -- 6
			{ left = " Rang 3 : 660 mana, 584-677 points de dégâts" }, -- 7
			{ left = " Rang 4 : 700 mana, 680-790 points de dégâts" }, -- 8
		},
	}
	tree = data[3]
	tree.info.name = "Givre"
	talent = tree.talents[1].info
	talent.name = "Protection contre le Givre"
	talent.tips = {
		format = "Augmente de %s%% l'armure et les résistances octroyées par vos sorts Armure de givre et Armure de glace. De plus, donne à votre Gardien de givre %s%% de chances de renvoyer les sorts et effets de Givre tant qu'il est actif.",
		table_cache_8, -- 1
		table_cache_23, -- 2
	}
	talent = tree.talents[2].info
	talent.name = "Eclair de givre amélioré"
	talent.tips = {
		format = "Réduit le temps d'incantation de votre sort Eclair de givre de 0,%s sec.",
	}
	talent = tree.talents[3].info
	talent.name = "Précision élémentaire"
	talent.tips = {
		format = "Réduit de %s%% le coût en mana et les chances que votre adversaire résiste à vos sorts de Givre ou de Feu.",
	}
	talent = tree.talents[4].info
	talent.name = "Eclats de glace"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts supplémentaires infligés par les coups critiques de vos sorts de Givre.",
		multiplier = 20,
	}
	talent = tree.talents[5].info
	talent.name = "Morsure de givre"
	talent.tips = {
		format = "Donne à vos effets de gel %s%% de chances de geler la cible pendant 5 sec.",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "Nova de givre améliorée"
	talent.tips = {
		format = "Réduit le temps de recharge du sort Nova de givre de %s sec.",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "Gel prolongé"
	talent.tips = {
		format = "Augmente la durée de vos effets de gel de %s sec et réduit la vitesse de la cible de %s%% supplémentaires.",
		table_cache_15, -- 1
		{2, 7}, -- 2
		{3, 10}, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "Glace perçante"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par vos sorts de Givre de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "Veines glaciales"
	talent.tips = {
		{ -- 1
			{ left = "67 mana" }, -- 1
			table_cache_61,
			{ left = "Accélère vos lancers de sorts en réduisant le temps d'incantation des sorts de 20% et vous confère 100% de chances d'éviter les interruptions causées par les dégâts pendant les incantations. Dure 20 sec." }, -- 3
		},
	}
	talent = tree.talents[10].info
	talent.name = "Blizzard amélioré"
	talent.tips = {
		format = "Ajoute un effet d'engourdissement à votre sort Blizzard. Il réduit la vitesse de déplacement de la cible de %s%%. Dure 1,50 sec.",
		30, -- 1
		50, -- 2
		65, -- 3
	}
	talent = tree.talents[11].info
	talent.name = "Allonge arctique"
	talent.tips = {
		format = "Augmente la portée de vos sorts Eclair de givre et Blizzard et les rayons d'effet de vos sorts Nova de givre et Cône de froid de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[12].info
	talent.name = "Canalisation du givre"
	talent.tips = {
		format = "Réduit de %s%% le coût en mana de vos sorts de Givre, et réduit de %s%% la menace qu'ils génèrent.",
		{5, 4}, -- 1
		{10, 7}, -- 2
		table_cache_8, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "Fracasser"
	talent.tips = {
		format = "Augmente de %s%% vos chances d'infliger un coup critique avec tous les sorts lorsque vous attaquez des cibles gelées.",
		multiplier = 10,
	}
	talent = tree.talents[14].info
	talent.name = "Cœur de gel"
	talent.tips = {
		format = "Réduit les dégâts que vous infligent les effets de Givre et de Feu de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[15].info
	talent.name = "Morsure de froid"
	talent.tips = {
		{ -- 1
			table_cache_17,
			{ left = "Une fois activé, ce sort met fin au temps de rechargement de tous vos sorts de Givre récemment lancés." }, -- 2
		},
	}
	talent = tree.talents[16].info
	talent.name = "Cône de froid amélioré"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts infligés par votre sort Cône de froid.",
		15, -- 1
		25, -- 2
		35, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "Iceberg"
	talent.tips = {
		format = "Réduit de %s%% le temps de recharge de vos sorts Cône de froid, Morsure de glace, Barrière de glace et Bloc de glace.",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "Froid hivernal"
	talent.tips = {
		format = "Vos sorts de Givre causant des dégâts ont %s%% de chances de déclencher l’effet de Froid hivernal, qui augmente les chances de critiques des sorts de Givre de 2%% pendant 15 sec. Cumulable jusqu'à 5 fois.",
		multiplier = 20,
	}
	talent = tree.talents[19].info
	talent.name = "Barrière de glace"
	talent.tips = {
		{ -- 1
			{ left = "305 mana" }, -- 1
			{ left = "Incantation immédiate", right = "Recharge 30 sec" }, -- 2
			{ left = "Vous protège instantanément à l'aide d'un bouclier magique qui absorbe 454 points de dégâts. Dure 1 min. Tant que le bouclier est actif, les sorts ne sont pas interrompus." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : Absorbe 568 pts de dégâts" }, -- 6
			{ left = " Rang 3 : Absorbe 699 pts de dégâts" }, -- 7
			{ left = " Rang 4 : Absorbe 842 pts de dégâts" }, -- 8
			{ left = " Rang 5 : Absorbe 951 pts de dégâts" }, -- 9
			{ left = " Rang 5 : Absorbe 1075 pts de dégâts" }, -- 10
		},
	}
	talent = tree.talents[20].info
	talent.name = "Vents arctiques"
	talent.tips = {
		format = "Augmente tous les dégâts de Givre que vous causez de %s%% et réduit la probabilité que les attaques en mêlée et à distance vous touchent de %s%%.",
		table_cache_88, -- 1
		table_cache_77, -- 2
		table_cache_4, -- 3
		table_cache_13, -- 4
		table_cache_16, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "Eclair de givre surpuissant"
	talent.tips = {
		format = "Votre sort Eclair de givre bénéficie de %s%% supplémentaires des effets du bonus relatif aux dégâts des sorts et augmente vos chances d'infliger un coup critique de %s%%.",
		table_cache_70, -- 1
		table_cache_14, -- 2
		table_cache_26, -- 3
		table_cache_57, -- 4
		table_cache_21, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "Invocation d'un élémentaire d'eau"
	talent.tips = {
		{ -- 1
			{ left = "358 mana" }, -- 1
			table_cache_90,
			{ left = "Invoque un élémentaire d'eau qui se bat pour le lanceur de sorts pendant 45 sec." }, -- 3
		},
	}
	data = Talented_Data.PRIEST
	-- data.name = "Talents de prêtre"
	tree = data[1]
	tree.info.name = "Discipline"
	talent = tree.talents[1].info
	talent.name = "Volonté inflexible"
	talent.tips = {
		format = "Augmente vos chances de résister aux effets d'étourdissement, de peur et de silence de %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[2].info
	talent.name = "Spécialisation Baguette"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts que vous infligez avec une Baguette.",
		multiplier = 5,
	}
	talent = tree.talents[3].info
	talent.name = "Résolution silencieuse"
	talent.tips = {
		format = "Diminue la menace générée par vos sorts du Sacré et de Discipline de %s%% et réduit la probabilité que vos sorts soient dissipés de %s%%.",
		table_cache_13, -- 1
		table_cache_6, -- 2
		table_cache_72, -- 3
		table_cache_42, -- 4
		table_cache_29, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "Mot de pouvoir : Robustesse amélioré"
	talent.tips = {
		format = "Augmente les effets de vos sorts Mot de pouvoir : Robustesse et Prière de robustesse de %s%%.",
		multiplier = 15,
	}
	talent = tree.talents[5].info
	talent.name = "Mot de pouvoir : Bouclier amélioré"
	talent.tips = {
		format = "Augmente les dégâts absorbés par votre Mot de pouvoir : Bouclier de %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[6].info
	talent.name = "Martyre"
	talent.tips = {
		format = "Vous confère %s%% de chances de bénéficier de l'effet Incantation focalisée pendant 6 sec après avoir été victime d'un coup critique en mêlée ou à distance. Cet effet vous évite, lors de l'incantation d'un sort, d'être interrompu lorsque vous subissez des dégâts. Il augmente aussi la résistance aux effets d'interruption de %s%%.",
		table_cache_65, -- 1
		table_cache_58, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "Absolution"
	talent.tips = {
		format = "Réduit le coût en mana de vos sorts Dissipation de la magie, Guérison des maladies, Abolir maladie et Dissipation de masse de %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "Focalisation améliorée"
	talent.tips = {
		{ -- 1
			table_cache_61,
			{ left = "Lorsqu'elle est activée, cette technique réduit de 100% le coût en mana de votre prochain sort et augmente ses chances d'infliger un effet critique de 25%  si cela est possible." }, -- 2
		},
	}
	talent = tree.talents[9].info
	talent.name = "Méditation"
	talent.tips = {
		format = "Vous confère %s%% de votre vitesse de récupération du mana normale pendant l'incantation.",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "Feu intérieur amélioré"
	talent.tips = {
		format = "Augmente le bonus d'armure que confère votre sort Feu intérieur de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "Sagacité"
	talent.tips = {
		format = "Réduit le coût en mana de vos sorts instantanés de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "Brûlure de mana améliorée"
	talent.tips = {
		format = "Réduit le temps d'incantation du sort Brûlure de mana de %s,%s sec.",
		{0, 5}, -- 1
		{1, 0}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "Force mentale"
	talent.tips = {
		format = "Augmente votre maximum de points de mana de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "Esprit divin"
	talent.tips = {
		{ -- 1
			{ left = "250 mana", right = "Portée 30 m" }, -- 1
			table_cache_66,
			{ left = "La puissance sacrée envahit le corps de la cible et augmente son Esprit de 17 pendant 30 min." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 350 mana, 23 Esprit" }, -- 6
			{ left = " Rang 3 : 450 mana, 33 Esprit" }, -- 7
			{ left = " Rang 4 : 555 mana, 40 Esprit" }, -- 8
			{ left = " Rang 5 : 680 mana, 50 Esprit" }, -- 9
		},
	}
	talent = tree.talents[15].info
	talent.name = "Esprit divin amélioré"
	talent.tips = {
		format = "Vos sorts Esprit divin et Prière d'Esprit augmentent aussi les dégâts et les soins de la cible d'un montant égal à %s%% de son total d'Esprit.",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "Puissance focalisée"
	talent.tips = {
		format = "Vos sorts Châtiment, Attaque mentale et Dissipation de masse ont %s%% de chances supplémentaires de toucher. De plus, le temps d'incantation de Dissipation de masse est réduit de  %s sec.",
		{2, "0,5"}, -- 1
		{4, 1}, -- 2
	}
	talent = tree.talents[17].info
	talent.name = "Force de volonté"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts infligés par vos sorts et de %s%% vos chances d'obtenir un coup critique avec vos sorts offensifs.",
		table_cache_88, -- 1
		table_cache_77, -- 2
		table_cache_4, -- 3
		table_cache_13, -- 4
		table_cache_16, -- 5
	}
	talent = tree.talents[18].info
	talent.name = "Volonté focalisée"
	talent.tips = {
		format = "Après avoir subi un coup critique, vous bénéficiez de l'effet Volonté focalisée, qui réduit tous les dégâts subis de %s%% et augmente les effets des soins sur vous de %s%%.  Cumulable jusqu'à 3 fois. Dure 8 sec.",
		table_cache_15, -- 1
		{3, 7}, -- 2
		table_cache_67, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Infusion de puissance"
	talent.tips = {
		{ -- 1
			{ left = "419 mana", right = "Portée 30 m" }, -- 1
			table_cache_90,
			{ left = "Imprègne la cible de puissance, ce qui augmente la vitesse d'incantation des sorts de 20% et réduit le coût en mana de tous les sorts de 20%. Dure 15 sec." }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "Bouclier réflecteur"
	talent.tips = {
		format = "Renvoie %s%% des dégâts absorbés par votre Mot de pouvoir : Bouclier à l'attaquant. Ces dégâts ne génèrent pas de menace.",
		multiplier = 10,
	}
	talent = tree.talents[21].info
	talent.name = "Illumination"
	talent.tips = {
		format = "Augmente vos totaux en Endurance, Intelligence et Esprit de %s%%.",
	}
	talent = tree.talents[22].info
	talent.name = "Suppression de la douleur"
	talent.tips = {
		{ -- 1
			{ left = "209 mana" }, -- 1
			table_cache_41,
			{ left = "Réduit instantanément la menace d'une cible alliée de 5%, réduit tous les dégâts subis de 40% et augmente la résistance aux mécanismes de Dissipation de 65% pendant  8 sec." }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "Sacré"
	talent = tree.talents[1].info
	talent.name = "Focalisation des soins"
	talent.tips = {
		format = "Vous donne %s%% de chances d'éviter d'être interrompu par des dégâts subis quand vous lancez un sort de soins.",
		multiplier = 35,
	}
	talent = tree.talents[2].info
	talent.name = "Rénovation améliorée"
	talent.tips = {
		format = "Augmente de %s%% le nombre de points de vie rendus par votre sort Rénovation.",
		multiplier = 5,
	}
	talent = tree.talents[3].info
	talent.name = "Spécialisation (Sacré)"
	talent.tips = {
		format = "Augmente les chances d'obtenir un effet critique avec vos sorts du Sacré de %s%%.",
	}
	talent = tree.talents[4].info
	talent.name = "Protection contre les sorts"
	talent.tips = {
		format = "Réduit tous les dégâts des sorts subis de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "Fureur divine"
	talent.tips = {
		format = "Réduit le temps d'incantation de vos sorts Châtiment, Flammes sacrées, Soins et Soins supérieurs de 0,%s sec.",
	}
	talent = tree.talents[6].info
	talent.name = "Nova sacrée"
	talent.tips = {
		{ -- 1
			{ left = "185 mana" }, -- 1
			table_cache_66,
			{ left = "Provoque une explosion de lumière sacrée autour du lanceur de sorts. Elle inflige 29 à 34 points de dégâts du Sacré à toutes les cibles ennemies dans une zone de 10 mètres et rend 54 à 63 points de vie à tous les membres du groupe dans une zone de 10 mètres. Ces effets ne modifient pas le niveau de menace." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 290 mana, 52-61 pts de dégâts, 89-101 pts de vie" }, -- 6
			{ left = " Rang 3 : 400 mana, 79-92 pts de dégâts, 124-143 pts de vie" }, -- 7
			{ left = " Rang 4 : 520 mana, 110-127 pts de dégâts, 165-192 pts de vie" }, -- 8
			{ left = " Rang 5 : 635 mana, 146-168 pts de dégâts, 239-276 pts de vie" }, -- 9
			{ left = " Rang 6 : 750 mana, 188-217 pts de dégâts, 307-356 pts de vie" }, -- 10
			{ left = " Rang 7 : 875 mana, 244-283 pts de dégâts, 386-448 pts de vie" }, -- 11
		},
	}
	talent = tree.talents[7].info
	talent.name = "Rétablissement béni"
	talent.tips = {
		format = "Lorsque vous avez été frappé par un coup critique en mêlée ou à distance, rend %s%% des points de dégâts subis en 6 sec.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "Inspiration"
	talent.tips = {
		format = "Augmente l'Armure de la cible de %s%% pendant 15 sec après avoir subi un effet critique de l'un des sorts suivants : Soins rapides, Soins, Soins supérieurs, Soins de lien, Prière de soins ou Cercle de soins.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[9].info
	talent.name = "Allonge du Sacré"
	talent.tips = {
		format = "Augmente de %s%% la portée de vos sorts Châtiment et Flammes sacrées et le rayon d'effet de vos sorts Prière de soins, Nova sacrée et Cercle de soins.",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "Soin amélioré"
	talent.tips = {
		format = "Réduit le coût en mana des sorts Soins inférieurs, Soins et Soins supérieurs de %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "Lumière incendiaire"
	talent.tips = {
		format = "Augmente de %s%% les dégâts infligés par vos sorts Châtiment et Flammes sacrées.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "Prière de soins améliorée"
	talent.tips = {
		format = "Réduit le coût en mana de vos Prières de soins et Prière de guérison de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "Esprit de rédemption"
	talent.tips = {
		"Augmente le total d'Esprit de 5% et au moment de sa mort, le prêtre devient l'Esprit de rédemption pendant 15 sec. L'Esprit de rédemption ne peut pas se déplacer ou attaquer, ni être attaqué ou ciblé par aucun sort ou effet. Tant qu'il est sous cette forme, le prêtre peut lancer tout sort de soins sans le moindre coût. A la fin de l'effet, le prêtre meurt.", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "Direction spirituelle"
	talent.tips = {
		format = "Augmente les dégâts et les soins produits par les sorts d'un montant au maximum égal à %s%% de votre total d'Esprit.",
		multiplier = 5,
	}
	talent = tree.talents[15].info
	talent.name = "Vague de Lumière"
	talent.tips = {
		format = "Vos coups critiques avec les sorts confèrent %s%% de chances à votre prochain sort Châtiment d'être instantané et de ne pas coûter de mana, mais sans pouvoir être un coup critique. Cet effet dure 10 sec.",
		multiplier = 25,
	}
	talent = tree.talents[16].info
	talent.name = "Soins spirituels"
	talent.tips = {
		format = "Augmente le nombre de points de vie rendus par vos sorts de soins de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "Concentration sacrée"
	talent.tips = {
		format = "Vous confère %s%% de chances d'entrer dans un état « Idées claires » après avoir lancé Soins rapides, Soins de lien ou Soins supérieurs. Idées claires réduit le coût en mana de votre prochain sort Soins rapides, Soins de lien ou Soins supérieurs de 100%%.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "Puits de lumière"
	talent.tips = {
		{ -- 1
			{ left = "225 mana", right = "Portée 40 m" }, -- 1
			{ left = "Incantation 1,5 sec", right = "Recharge 6 min" }, -- 2
			{ left = "Crée un Puits de lumière sacré près du prêtre. Les membres de votre groupe ou raid peuvent cliquer sur le Puits de lumière pour recevoir 801 points de vie en 6 sec. L'effet est annulé si vous subissez des dégâts. La durée du Puits de lumière est de 3 min. ou bien 5 utilisations." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 295 mana, 1164 pts de vie" }, -- 6
			{ left = " Rang 3 : 365 mana, 1599 pts de vie" }, -- 7
			{ left = " Rang 4 : 445 mana, 2361 pts de vie" }, -- 8
		},
	}
	talent = tree.talents[19].info
	talent.name = "Résilience bénie"
	talent.tips = {
		format = "Les coups critiques que vous subissez ont %s%% de chances de vous empêcher d'être à nouveau frappé par un coup critique pendant 6 sec.",
		multiplier = 20,
	}
	talent = tree.talents[20].info
	talent.name = "Soins surpuissants"
	talent.tips = {
		format = "Votre sort Soins supérieurs bénéficie de %s%% supplémentaires, tandis que vos Soins rapides et Soins de lien bénéficient de 2%% supplémentaires des effets du bonus relatif aux soins.",
		multiplier = 4,
	}
	talent = tree.talents[21].info
	talent.name = "Cercle de soins"
	talent.tips = {
		{ -- 1
			{ left = "400 mana", right = "Portée 40 m" }, -- 1
			table_cache_66,
			{ left = "Rend 250 à 274 points de vie à la cible alliée ciblée et aux autres membres de son groupe se trouvant à moins de 1 mètre de lui." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 337 mana, 292 à 323 pts de vie." }, -- 6
			{ left = " Rang 3 : 375 mana, 332 à 376 pts de vie." }, -- 7
			{ left = " Rang 4 : 412 mana, 376 à 415 pts de vie." }, -- 8
			{ left = " Rang 5 : 450 mana, 409 à 451 pts de vie." }, -- 9
		},
	}
	tree = data[3]
	tree.info.name = "Ombre"
	talent = tree.talents[1].info
	talent.name = "Connexion spirituelle"
	talent.tips = {
		format = "Vous donne %s%% de chances de gagner un bonus de 100%% à l'Esprit après avoir tué une cible qui rapporte de l'expérience ou de l'honneur. Votre mana se régénère à 50%% de la vitesse de récupération normale pendant l'incantation de sorts. Dure 15 sec.",
		multiplier = 20,
	}
	talent = tree.talents[2].info
	talent.name = "Aveuglement"
	talent.tips = {
		format = "Confère %s%% de chances à vos sorts d'Ombre d'étourdir la cible pendant 3 sec.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "Affinité avec l'Ombre"
	talent.tips = {
		format = "Diminue le niveau de menace généré par vos sorts d'Ombre de %s%%.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[4].info
	talent.name = "Mot de l'ombre : Douleur amélioré"
	talent.tips = {
		format = "Augmente la durée de votre sort Mot de l'ombre : Douleur de %s sec.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "Focalisation de l'ombre"
	talent.tips = {
		format = "Réduit de %s%% les chances de votre cible de résister à vos sorts d'Ombre.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "Cri psychique amélioré"
	talent.tips = {
		format = "Réduit le temps de recharge de votre sort Cri psychique de %s sec.",
		multiplier = 2,
	}
	talent = tree.talents[7].info
	talent.name = "Attaque mentale améliorée"
	talent.tips = {
		format = "Réduit le temps de recharge du sort Attaque mentale de %s sec.",
		"0,5", -- 1
		1, -- 2
		"1,5", -- 3
		2, -- 4
		"2,5", -- 5
	}
	talent = tree.talents[8].info
	talent.name = "Fouet mental"
	talent.tips = {
		{ -- 1
			{ left = "45 mana", right = "Portée 20 m" }, -- 1
			{ left = "Canalisé" }, -- 2
			{ left = "Attaque l'esprit de la cible avec l'énergie de l'Ombre. Inflige 75 points de dégâts d'Ombre en 3 sec et réduit la vitesse de la cible de 50%." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 70 mana, 126 pts de dégâts" }, -- 6
			{ left = " Rang 3 : 100 mana, 186 pts de dégâts" }, -- 7
			{ left = " Rang 4 : 135 mana, 261 pts de dégâts" }, -- 8
			{ left = " Rang 5 : 165 mana, 330 pts de dégâts" }, -- 9
			{ left = " Rang 6 : 205 mana, 426 pts de dégâts" }, -- 10
			{ left = " Rang 7 : 230 mana, 528 pts de dégâts" }, -- 11
		},
	}
	talent = tree.talents[9].info
	talent.name = "Oubli amélioré"
	talent.tips = {
		format = "Diminue le temps de recharge de votre technique Oubli de %s sec.",
		multiplier = 3,
	}
	talent = tree.talents[10].info
	talent.name = "Allonge de l'Ombre"
	talent.tips = {
		format = "Augmente de %s%% la portée de vos sorts offensifs d'Ombre.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "Tissage de l'ombre"
	talent.tips = {
		format = "Vos sorts d'Ombre de dégâts ont %s%% de chances de rendre la cible vulnérable aux dégâts d'Ombre. Les dégâts infligés à la cible sont alors augmentés de 2%% pendant 15 sec. Cumulable jusqu'à 5 fois.",
		multiplier = 20,
	}
	talent = tree.talents[12].info
	talent.name = "Silence"
	talent.tips = {
		{ -- 1
			{ left = "225 mana", right = "Portée 20 m" }, -- 1
			{ left = "Incantation immédiate", right = "Recharge 45 sec" }, -- 2
			{ left = "Rend la cible silencieuse, l'empêchant de lancer des sorts pendant 5 sec." }, -- 3
		},
	}
	talent = tree.talents[13].info
	talent.name = "Etreinte vampirique"
	talent.tips = {
		{ -- 1
			{ left = "52 mana", right = "Portée 30 m" }, -- 1
			table_cache_64,
			{ left = "Libère sur votre cible de l'énergie de l'Ombre grâce à laquelle tous les membres de votre groupe reçoivent un montant de points de vie égal à 15% des dégâts d'Ombre que vous infligez avec des sorts pendant 1 min." }, -- 3
		},
	}
	talent = tree.talents[14].info
	talent.name = "Etreinte vampirique améliorée"
	talent.tips = {
		format = "Ajoute %s%% supplémentaires au pourcentage des soins produits par Etreinte vampirique.",
		multiplier = 5,
	}
	talent = tree.talents[15].info
	talent.name = "Esprit focalisé"
	talent.tips = {
		format = "Réduit le coût en mana de vos Attaque mentale, Contrôle mental et Fouet mental de %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[16].info
	talent.name = "Résilience de l'ombre"
	talent.tips = {
		format = "Réduit de %s%% la probabilité que vous soyez touché par un coup critique infligé par un sort.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "Ténèbres"
	talent.tips = {
		format = "Augmente les dégâts de vos sorts d'Ombre de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "Forme d'Ombre"
	talent.tips = {
		{ -- 1
			{ left = "838 mana" }, -- 1
			{ left = "Incantation immédiate", right = "Recharge 1,5 sec" }, -- 2
			{ left = "Adopte une Forme d'ombre. Augmente de 15% les dégâts d'Ombre que vous infligez et réduit de 15% les dégâts physiques que vous subissez. Cependant, vous ne pouvez pas lancer de sorts du Sacré lorsque vous êtes sous cette forme." }, -- 3
		},
	}
	talent = tree.talents[19].info
	talent.name = "Puissance de l'ombre"
	talent.tips = {
		format = "Augmente vos chances de réaliser un coup critique avec vos sorts Attaque mentale et Mot de l'ombre : Mort de %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[20].info
	talent.name = "Misère"
	talent.tips = {
		format = "Vos sorts Mot de l'ombre : Douleur, Fouet mental et Toucher vampirique causent aussi %s%% de dégâts de sort supplémentaires.",
	}
	talent = tree.talents[21].info
	talent.name = "Toucher vampirique"
	talent.tips = {
		{ -- 1
			{ left = "325 mana", right = "Portée 30 m" }, -- 1
			{ left = "Incantation 1,5 sec." }, -- 2
			{ left = "Inflige 450 points de dégâts d’Ombre en 15 sec à votre cible et fait recevoir à tous les membres du groupe un montant de points de mana égal à 5% de tous les points de dégâts que vous infligez avec des sorts d'Ombre." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 400 mana, 600 pts de dégâts." }, -- 6
			{ left = " Rang 3 : 425 mana, 650 pts de dégâts." }, -- 7
		},
	}
	data = Talented_Data.WARLOCK
	-- data.name = "Talents de démoniste"
	tree = data[1]
	tree.info.name = "Affliction"
	talent = tree.talents[1].info
	talent.name = "Suppression"
	talent.tips = {
		format = "Réduit de %s%% les chances de vos ennemis de résister à vos sorts d'Affliction.",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "Corruption améliorée"
	talent.tips = {
		format = "Réduit le temps d'incantation de votre sort Corruption de %s sec.",
		"0,4", -- 1
		"0,8", -- 2
		"1,2", -- 3
		"1,6", -- 4
		2, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "Malédiction de faiblesse améliorée"
	talent.tips = {
		format = "Augmente les effets de votre sort Malédiction de faiblesse de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[4].info
	talent.name = "Drain d’âme amélioré"
	talent.tips = {
		format = "Vous rend %s%% de votre maximum de points de mana si vous tuez la cible pendant que vous drainez son âme. De plus, vos sorts d'Affliction génèrent %s%% de menace en moins.",
		{7, 5}, -- 1
		table_cache_8, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "Connexion améliorée"
	talent.tips = {
		format = "Augmente de %s%% le montant de points de mana gagné par votre sort Connexion.",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "Siphon d’âme"
	talent.tips = {
		format = "Augmente le nombre de points drainé par votre sort Drain de vie de %s%% supplémentaires pour chaque effet d'Affliction sur la cible, jusqu'à un maximum de %s%% d'effet supplémentaire.",
		{2, 24}, -- 1
		{4, 60}, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "Malédiction d'agonie améliorée"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par votre sort Malédiction d'agonie de %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[8].info
	talent.name = "Concentration corrompue"
	talent.tips = {
		format = "Vous confère %s%% de chances d'éviter les interruptions causées par les points de dégâts lorsque vous canalisez vos sorts Drain de vie, Drain de mana et Siphon d'âme.",
		multiplier = 14,
	}
	talent = tree.talents[9].info
	talent.name = "Malédiction amplifiée"
	talent.tips = {
		{ -- 1
			table_cache_61,
			{ left = "Augmente de 50% l'effet de votre prochaine Malédiction funeste ou Malédiction d'agonie, ou de 20% celui de votre prochaine Malédiction de fatigue.  Dure 30 sec." }, -- 2
		},
	}
	talent = tree.talents[10].info
	talent.name = "Allonge sinistre"
	talent.tips = {
		format = "Augmente la portée de vos sorts d'Affliction de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "Crépuscule"
	talent.tips = {
		format = "Confère à vos sorts Corruption et Drain de vie %s%% de chances de vous plonger dans un état de Transe de l'ombre après avoir infligé des dégâts à un adversaire. Cet état réduit le temps d'incantation de votre prochain sort Trait de l'ombre de 100%%.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "Corruption surpuissante"
	talent.tips = {
		format = "Votre sort Corruption bénéficie de %s%% supplémentaires des effets du bonus relatif aux dégâts des sorts.",
		multiplier = 12,
	}
	talent = tree.talents[13].info
	talent.name = "Etreinte de l'ombre"
	talent.tips = {
		format = "Vos sorts Corruption, Malédiction d'agonie, Siphon de vie et Graine de Corruption provoquent aussi l'effet Etreinte de l'ombre, qui réduit les dégâts physiques infligés de %s%%.",
	}
	talent = tree.talents[14].info
	talent.name = "Siphon de vie"
	talent.tips = {
		{ -- 1
			{ left = "140 mana", right = "Portée 30 m" }, -- 1
			table_cache_66,
			{ left = "Transfère 15 points de vie de la cible vers le lanceur de sorts toutes les 3 sec. Dure 30 sec." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 190 mana, 22 pts de vie" }, -- 6
			{ left = " Rang 3 : 250 mana, 33 pts de vie" }, -- 7
			{ left = " Rang 4 : 310 mana, 45 pts de vie" }, -- 8
			{ left = " Rang 5 : 350 mana, 52 pts de vie" }, -- 9
			{ left = " Rang 6 : 410 mana, 63 pts de vie" }, -- 10
		},
	}
	talent = tree.talents[15].info
	talent.name = "Malédiction de fatigue"
	talent.tips = {
		{ -- 1
			{ left = "156 mana", right = "Portée 30 m" }, -- 1
			table_cache_66,
			{ left = "Réduit la vitesse de la cible de 30% pendant 12 sec. La cible ne peut être victime que d'une malédiction par démoniste présent à la fois." }, -- 3
		},
	}
	talent = tree.talents[16].info
	talent.name = "Maîtrise de l'ombre"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts infligés ou les points de vie drainés par vos sorts d'Ombre.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "Contagion"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par Malédiction d'agonie, Corruption et Graine de Corruption de %s%% et réduit les chances que vos sorts d'affliction soient dissipés de %s%%.",
		{1, 6}, -- 1
		{2, 12}, -- 2
		{3, 18}, -- 3
		{4, 24}, -- 4
		{5, 30}, -- 5
	}
	talent = tree.talents[18].info
	talent.name = "Pacte noir"
	talent.tips = {
		{ -- 1
			{ left = "30 m" }, -- 1
			table_cache_86,
			{ left = "Draine 305 points de mana à votre familier et vous les transfère à 100%." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 440 mana" }, -- 6
			{ left = " Rang 3 : 545 mana" }, -- 7
			{ left = " Rang 4 : 700 mana" }, -- 8
		},
	}
	talent = tree.talents[19].info
	talent.name = "Hurlement de terreur amélioré"
	talent.tips = {
		format = "Réduit le temps d'incantation de votre sort Hurlement de terreur de %s,%s sec.",
		{0, 8}, -- 1
		table_cache_24, -- 2
	}
	talent = tree.talents[20].info
	talent.name = "Imprécation"
	talent.tips = {
		format = "Augmente les effets du bonus relatif aux dégâts de vos sorts Malédiction de l'ombre et Malédiction des éléments de %s%%.",
	}
	talent = tree.talents[21].info
	talent.name = "Affliction instable"
	talent.tips = {
		{ -- 1
			{ left = "270 mana", right = "Portée 30 m" }, -- 1
			{ left = "Incantation 1,5 sec" }, -- 2
			{ left = "L’énergie de l’Ombre détruit lentement la cible, infligeant 660 points de dégâts en 18 sec. De plus, si l'Affliction instable est dissipée, la personne qui la dissipe subit 990 points de dégâts et est rendue silencieuse pendant 5 sec." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 330 mana, 840 pts de dégâts sur la durée, 1260 points de dégâts à la personne qui la dissipe" }, -- 6
			{ left = " Rang 3 : 400 mana, 1050 pts de dégâts sur la durée, 1575 points de dégâts à la personne qui la dissipe" }, -- 7
		},
	}
	tree = data[2]
	tree.info.name = "Démonologie"
	talent = tree.talents[1].info
	talent.name = "Pierre de soins améliorée"
	talent.tips = {
		format = "Augmente le nombre de points de vie restaurés par votre Pierre de soin de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[2].info
	talent.name = "Diablotin amélioré"
	talent.tips = {
		format = "Augmente les effets des sorts Eclair de feu, Bouclier de feu et Pacte de sang de votre diablotin de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[3].info
	talent.name = "Baiser démoniaque"
	talent.tips = {
		format = "Augmente votre total d'Endurance de %s%% mais réduit votre total d'Esprit de %s%%.",
		table_cache_25, -- 1
		table_cache_11, -- 2
		table_cache_76, -- 3
		table_cache_91, -- 4
		table_cache_45, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "Captation de vie améliorée"
	talent.tips = {
		format = "Augmente le nombre de points de vie transférés par votre sort Captation de vie de %s%% et réduit le coût initial en points de vie de %s%%.",
		table_cache_54, -- 1
		table_cache_29, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "Marcheur du Vide amélioré"
	talent.tips = {
		format = "Augmente de %s%% l'efficacité des sorts Tourment, Consumer l'ombre, Sacrifice et Souffrance de votre marcheur du Vide.",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "Intelligence corrompue"
	talent.tips = {
		format = "Augmente de %s%% l'Intelligence de votre diablotin, marcheur du Vide, succube, chasseur corrompu et gangregarde et de %s%% votre maximum de points de mana.",
		table_cache_7, -- 1
		table_cache_83, -- 2
		table_cache_60, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "Succube améliorée"
	talent.tips = {
		format = "Augmente de %s%% les effets des sorts Fouet de la douleur et Baiser apaisant de votre succube. Augmente aussi la durée des sorts Séduction et Invisibilité inférieure de %s%%.",
		table_cache_54, -- 1
		table_cache_29, -- 2
		table_cache_69, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "Domination corrompue"
	talent.tips = {
		{ -- 1
			{ left = "Instantané", right = "Recharge 15 min" }, -- 1
			{ left = "Le temps d'incantation de votre prochain sort d'invocation de diablotin, de marcheur du Vide, de succube, de chasseur corrompu ou de gangregarde est réduit de 5,5 sec et son coût en mana est réduit de 50%." }, -- 2
		},
	}
	talent = tree.talents[9].info
	talent.name = "Endurance corrompue"
	talent.tips = {
		format = "Augmente de %s%% l'Endurance de votre diablotin, marcheur du Vide, succube, chasseur corrompu et gangregarde et de %s%% votre maximum de points de vie.",
		table_cache_7, -- 1
		table_cache_83, -- 2
		table_cache_60, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "Egide démoniaque"
	talent.tips = {
		format = "Augmente de %s%% l'efficacité de votre Armure démoniaque et de votre Gangrarmure.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "Maître invocateur"
	talent.tips = {
		format = "Réduit le temps d'incantation de vos sorts d'invocations de diablotin, de succube, de marcheur du Vide, de chasseur corrompu ou de grangregarde de %s sec et leur coût en mana de %s%%.",
		table_cache_2, -- 1
		{4, 40}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "Puissance impie"
	talent.tips = {
		format = "Augmente de %s%% les dégâts infligés par les attaques de mêlée du marcheur du Vide, de la succube, du chasseur corrompu et du gangregarde et par l'Eclair de feu du diablotin.",
		multiplier = 4,
	}
	talent = tree.talents[13].info
	talent.name = "Asservir démon amélioré"
	talent.tips = {
		format = "Réduit les pénalités de vitesse d'attaque et de vitesse d'incantation de votre sort Asservir démon de %s%% et réduit les chances de résistance de %s%%.",
		table_cache_16, -- 1
		table_cache_54, -- 2
	}
	talent = tree.talents[14].info
	talent.name = "Sacrifice démoniaque"
	talent.tips = {
		{ -- 1
			{ left = "100 m" }, -- 1
			table_cache_86,
			{ left = "Lorsque cette technique est activée, votre démon invoqué est sacrifié pour vous faire bénéficier d'un effet qui dure 30 min. L'effet est annulé si vous invoquez un nouveau démon." }, -- 3
			table_cache_53,
			{ left = "Diablotin : augmente de 15% vos dégâts de Feu." }, -- 5
			table_cache_53,
			{ left = "Marcheur du Vide : rend 2% de vos points de vie totaux toutes les 4 sec." }, -- 7
			table_cache_53,
			{ left = "Succube : augmente de 15% vos dégâts d’Ombre." }, -- 9
			table_cache_53,
			{ left = "Chasseur corrompu : rend 3% de vos points de mana totaux toutes les 4 sec." }, -- 11
			table_cache_53,
			{ left = "Gangregarde : Augmente de 10% vos dégâts d'Ombre et rend 2% de votre total de points de mana toutes les 4 sec." }, -- 13
		},
	}
	talent = tree.talents[15].info
	talent.name = "Maître conjurateur"
	talent.tips = {
		format = "Augmente de %s%% le bonus aux dégâts de Feu infligés par les Pierre de feu et les effets de Pierre de feu et augmente le bonus au score de coup critique des sorts de votre Pierre de sort de %s%%.",
		{15, 15}, -- 1
		table_cache_69, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "Festin de mana"
	talent.tips = {
		format = "Lorsque vous obtenez du mana grâce aux sorts Drain de mana ou Connexion, votre familier reçoit %s%% du nombre de points de mana que vous obtenez.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "Maître démonologue"
	talent.tips = {
		{ -- 1
			table_cache_85,
			table_cache_53,
			{ left = "Diablotin - Réduit la menace générée de 4%." }, -- 3
			table_cache_53,
			{ left = "Marcheur du Vide - Réduit les dégâts physiques subis de 2%." }, -- 5
			table_cache_53,
			{ left = "Succube - Augmente tous les dégâts infligés de 2%." }, -- 7
			table_cache_53,
			{ left = "Chasseur corrompu - Augmente toutes les résistances de 0,2 par niveau." }, -- 9
			table_cache_53,
			{ left = "Gangregarde - Augmente tous les dégâts infligés de 1% et toutes les résistances de 0,1 par niveau." }, -- 11
		},
		{ -- 2
			table_cache_85,
			table_cache_53,
			{ left = "Diablotin - Réduit la menace générée de 8%." }, -- 3
			table_cache_53,
			{ left = "Marcheur du Vide - Réduit les dégâts physiques subis de 4%." }, -- 5
			table_cache_53,
			{ left = "Succube - Augmente tous les dégâts infligés de 4%." }, -- 7
			table_cache_53,
			{ left = "Chasseur corrompu - Augmente toutes les résistances de 0,4 par niveau." }, -- 9
			table_cache_53,
			{ left = "Gangregarde - Augmente tous les dégâts infligés de 2% et toutes les résistances de 0,2 par niveau." }, -- 11
		},
		{ -- 3
			table_cache_85,
			table_cache_53,
			{ left = "Diablotin - Réduit la menace générée de 12%." }, -- 3
			table_cache_53,
			{ left = "Marcheur du Vide - Réduit les dégâts physiques subis de 6%." }, -- 5
			table_cache_53,
			{ left = "Succube - Augmente tous les dégâts infligés de 6%." }, -- 7
			table_cache_53,
			{ left = "Chasseur corrompu - Augmente toutes les résistances de 0,6 par niveau." }, -- 9
			table_cache_53,
			{ left = "Gangregarde - Augmente tous les dégâts infligés de 3% et toutes les résistances de 0,3 par niveau." }, -- 11
		},
		{ -- 4
			table_cache_85,
			table_cache_53,
			{ left = "Diablotin - Réduit la menace générée de 16%." }, -- 3
			table_cache_53,
			{ left = "Marcheur du Vide - Réduit les dégâts physiques subis de 8%." }, -- 5
			table_cache_53,
			{ left = "Succube - Augmente tous les dégâts infligés de 8%." }, -- 7
			table_cache_53,
			{ left = "Chasseur corrompu - Augmente toutes les résistances de 0,8 par niveau." }, -- 9
			table_cache_53,
			{ left = "Gangregarde - Augmente tous les dégâts infligés de 4% et toutes les résistances de 0,5 par niveau." }, -- 11
		},
		{ -- 5
			table_cache_85,
			table_cache_53,
			{ left = "Diablotin - Réduit la menace générée de 20%." }, -- 3
			table_cache_53,
			{ left = "Marcheur du Vide - Réduit les dégâts physiques subis de 10%." }, -- 5
			table_cache_53,
			{ left = "Succube - Augmente tous les dégâts infligés de 10%." }, -- 7
			table_cache_53,
			{ left = "Chasseur corrompu - Augmente toutes les résistances de 1 par niveau." }, -- 9
			table_cache_53,
			{ left = "Gangregarde - Augmente tous les dégâts infligés de 5% et toutes les résistances de 0,5 par niveau." }, -- 11
		},
	}
	talent = tree.talents[18].info
	talent.name = "Résilience démoniaque"
	talent.tips = {
		format = "Réduit de %s%% la probabilité que vous soyez touché par un coup critique infligé en mêlée ou par un sort et réduit de %s%% tous les dégâts que subit votre démon invoqué.",
		table_cache_24, -- 1
		table_cache_89, -- 2
		table_cache_55, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Lien spirituel"
	talent.tips = {
		{ -- 1
			{ left = "418 mana", right = "Portée 100 m" }, -- 1
			table_cache_66,
			{ left = "Une fois activé, 20% de tous les points de dégâts infligés au lanceur de sorts sont subis à sa place par son diablotin, son marcheur du Vide, sa succube, son chasseur corrompu, son gangregarde ou son démon asservi. Ces dégâts ne peuvent être évités. De plus, le démon et son maître infligent 5% de dégâts supplémentaires. Dure aussi longtemps que le démon est actif et sous contrôle." }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "Connaissance démoniaque"
	talent.tips = {
		format = "Augmente les dégâts de vos sorts d'un montant égal à %s%% du total de l'Endurance plus l'Intelligence de votre démon actif.",
		multiplier = 4,
	}
	talent = tree.talents[21].info
	talent.name = "Tactique démoniaque"
	talent.tips = {
		format = "Augmente vos chances de coup critique en mêlée et avec les sorts ainsi que celles de votre démon invoqué de %s%%.",
	}
	talent = tree.talents[22].info
	talent.name = "Invocation d'un gangregarde"
	talent.tips = {
		{ -- 1
			{ left = "2092 mana" }, -- 1
			{ left = "Incantation 10 sec" }, -- 2
			table_cache_3,
			{ left = "Invoque un gangregarde qui exécute les ordres du démoniste." }, -- 4
		},
	}
	tree = data[3]
	tree.info.name = "Destruction"
	talent = tree.talents[1].info
	talent.name = "Trait de l'ombre amélioré"
	talent.tips = {
		format = "Les coups critiques de votre sort Trait de l'ombre augmentent de %s%% les dégâts d'Ombre infligés à la cible jusqu'à ce que 4 sources de dégâts non périodiques aient été appliquées. Cet effet dure 12 sec au maximum.",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "Cataclysme"
	talent.tips = {
		format = "Réduit le coût en mana de vos sorts de Destruction de %s%%.",
	}
	talent = tree.talents[3].info
	talent.name = "Fléau"
	talent.tips = {
		format = "Réduit le temps d'incantation de vos sorts Trait de l'ombre et Immolation de 0,%s sec et Feu de l'âme de %s,%s sec.",
		{1, 0, 4}, -- 1
		{2, 0, 8}, -- 2
		{3, 1, 2}, -- 3
		{4, 1, 6}, -- 4
		{5, 2, 0}, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "Conséquences"
	talent.tips = {
		format = "Confère %s%% de chances à vos sorts de Destruction d'hébéter la cible pendant 5 sec.",
		multiplier = 2,
	}
	talent = tree.talents[5].info
	talent.name = "Eclair de feu amélioré"
	talent.tips = {
		format = "Réduit le temps d'incantation du sort Eclair de feu de votre Diablotin de 0,%s sec.",
		25, -- 1
		5, -- 2
	}
	talent = tree.talents[6].info
	talent.name = "Fouet de la douleur amélioré"
	talent.tips = {
		format = "Réduit le temps de recharge du sort Fouet de la douleur de votre succube de %s sec.",
		multiplier = 3,
	}
	talent = tree.talents[7].info
	talent.name = "Dévastation"
	talent.tips = {
		format = "Augmente de %s%% vos chances d'infliger un coup critique avec vos sorts de Destruction.",
	}
	talent = tree.talents[8].info
	talent.name = "Brûlure de l'ombre"
	talent.tips = {
		{ -- 1
			{ left = "105 mana", right = "Portée 20 m" }, -- 1
			table_cache_82,
			table_cache_3,
			{ left = "Frappe instantanément la cible et lui inflige 91 à 104 points de dégâts d'Ombre. Si la cible meurt dans les 5 sec sous l'effet du sort Brûlure de l'ombre et rapporte de l'expérience ou de l'honneur, le lanceur gagne un Fragment d'âme." }, -- 4
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 130 mana, 123-140 pts de dégâts" }, -- 7
			{ left = " Rang 3 : 190 mana, 196-221 pts de dégâts" }, -- 8
			{ left = " Rang 4 : 245 mana, 274-307 pts de dégâts" }, -- 9
			{ left = " Rang 5 : 305 mana, 365-408 pts de dégâts" }, -- 10
			{ left = " Rang 6 : 365 mana, 468-520 pts de dégâts" }, -- 11
			{ left = " Rang 7 : 435 mana, 538-599 pts de dégâts" }, -- 12
			{ left = " Rank 8 : 515 mana, 597-665 pts de dégâts" }, -- 13
		},
	}
	talent = tree.talents[9].info
	talent.name = "Intensité"
	talent.tips = {
		format = "Vous donne %s%% de chances de résister aux interruptions causées par les dégâts lorsque vous lancez ou canalisez n'importe quel sort de Destruction.",
		multiplier = 35,
	}
	talent = tree.talents[10].info
	talent.name = "Allonge de destruction"
	talent.tips = {
		format = "Augmente de %s%% la portée de vos sorts de Destruction et réduit de %s%% la menace générée par les sorts de Destruction.",
		table_cache_21, -- 1
		table_cache_10, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "Douleur brûlante améliorée"
	talent.tips = {
		format = "Augmente de %s%% les chances d'infliger un coup critique avec votre sort Douleur brûlante.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "Pyroclasme"
	talent.tips = {
		format = "Confère %s%% de chances à vos sorts Pluie de feu, Flammes infernales et Feu de l'âme d'étourdir la cible pendant 3 sec.",
		multiplier = 13,
	}
	talent = tree.talents[13].info
	talent.name = "Immolation améliorée"
	talent.tips = {
		format = "Augmente les dégâts initiaux de votre sort Immolation de %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[14].info
	talent.name = "Ruine"
	talent.tips = {
		"Augmente de 100% les points de dégâts supplémentaires infligés par les coups critiques de vos sorts de Destruction.", -- 1
	}
	talent = tree.talents[15].info
	talent.name = "Protection du Néant"
	talent.tips = {
		format = "Après avoir été touché par un sort d'Ombre ou de Feu, vous avez %s%% de chances de devenir insensible aux sorts d'Ombre et de Feu pendant 4 sec.",
		multiplier = 10,
	}
	talent = tree.talents[16].info
	talent.name = "Tempête ardente"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par vos sorts de Feu de %s%% et réduit le temps d'incantation de votre sort Incinérer de %s%%.",
		table_cache_77, -- 1
		table_cache_13, -- 2
		table_cache_50, -- 3
		table_cache_6, -- 4
		table_cache_54, -- 5
	}
	talent = tree.talents[17].info
	talent.name = "Contrecoup"
	talent.tips = {
		format = "Augmente vos chances de coups critiques avec vos sorts de %s%% supplémentaires et vous donne %s%% de chances, quand vous êtes touché par une attaque physique, de réduire le temps d’incantation de votre prochain Trait de l’ombre ou Incinérer de 100%%. Cet effet dure 8 sec. et ne peut pas se produire plus d’une fois toutes les 8 sec.",
		{1, 8}, -- 1
		table_cache_93, -- 2
		{3, 25}, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "Conflagration"
	talent.tips = {
		{ -- 1
			{ left = "165 mana", right = "Portée 30 m" }, -- 1
			table_cache_64,
			{ left = "Enflamme une cible qui est déjà affectée par le sort Immolation, lui inflige 249 à 316 points de dégâts de Feu et annule le sort Immolation." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 200 mana, 326-407 pts de dégâts" }, -- 6
			{ left = " Rang 3 : 230 mana, 395-491 pts de dégâts" }, -- 7
			{ left = " Rang 4 : 255 mana, 455-566 pts de dégâts" }, -- 8
			{ left = " Rang 5 : 280 mana, 521-648 pts de dégâts" }, -- 9
			{ left = " Rang 6 : 305 mana, 579-721 pts de dégâts" }, -- 10
		},
	}
	talent = tree.talents[19].info
	talent.name = "Suceur d'âme"
	talent.tips = {
		format = "Confère à vos sorts Trait de l'ombre, Brûlure de l'ombre, Feu de l'âme, Incinérer, Douleur brûlante et Conflagration %s%% de chances de vous rendre un nombre de points de vie égal à 20%% des dégâts infligés.",
		multiplier = 10,
	}
	talent = tree.talents[20].info
	talent.name = "Ombre et flammes"
	talent.tips = {
		format = "Vos sorts Trait de l'ombre et Incinérer bénéficient de %s%% supplémentaires des effets du bonus relatif aux dégâts des sorts.",
		multiplier = 4,
	}
	talent = tree.talents[21].info
	talent.name = "Furie de l'ombre"
	talent.tips = {
		{ -- 1
			{ left = "440 mana", right = "Portée 30 m" }, -- 1
			{ left = "Incantation 0,5 sec", right = "Recharge 20 sec" }, -- 2
			{ left = "La furie de l'ombre est libérée. Elle inflige 357 à 422 points de dégâts d'Ombre et étourdit tous les ennemis dans un rayon de 8 mètres pendant 2 sec." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 545 mana, 476-565 pts de dégâts" }, -- 6
			{ left = " Rang 3 : 710 mana, 612-728 pts de dégâts" }, -- 7
		},
	}
	data = Talented_Data.DRUID
	-- data.name = "Talents de druide"
	tree = data[1]
	tree.info.name = "Equilibre"
	talent = tree.talents[1].info
	talent.name = "Colère stellaire"
	talent.tips = {
		format = "Réduit le temps d'incantation de vos sorts Colère et Feu stellaire de 0,%s sec.",
	}
	talent = tree.talents[2].info
	talent.name = "Emprise de la nature"
	talent.tips = {
		{ -- 1
			{ left = "Instantané", right = "Recharge 1 min" }, -- 1
			{ left = "Pendant que cette technique est active, à chaque fois qu'un ennemi frappe le lanceur de sorts, il a 35% de chances d'être victime du sort Sarments (Rang 1). Ne fonctionne qu'en extérieur. 1 charge. Dure 45 sec." }, -- 2
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : Sarments (Rang 2)" }, -- 5
			{ left = " Rang 3 : Sarments (Rang 3)" }, -- 6
			{ left = " Rang 4 : Sarments (Rang 4)" }, -- 7
			{ left = " Rang 5 : Sarments (Rang 5)" }, -- 8
			{ left = " Rang 6 : Sarments (Rang 6)" }, -- 9
			{ left = " Rang 7 : Sarments (Rang 7)" }, -- 10
		},
	}
	talent = tree.talents[3].info
	talent.name = "Emprise de la nature améliorée"
	talent.tips = {
		format = "Augmente de %s%% les chances que le sort Emprise de la nature immobilise un ennemi.",
		15, -- 1
		30, -- 2
		45, -- 3
		65, -- 4
	}
	talent = tree.talents[4].info
	talent.name = "Contrôle de la nature"
	talent.tips = {
		format = "Vous confère %s%% de chances d'éviter d'être interrompu lorsque vous lancez le sort Sarments et Cyclone.",
		40, -- 1
		70, -- 2
		100, -- 3
	}
	talent = tree.talents[5].info
	talent.name = "Lumière stellaire focalisée"
	talent.tips = {
		format = "Augmente de %s%% les chances d'infliger un coup critique avec vos sorts Colère et Feu stellaire.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "Eclat lunaire amélioré"
	talent.tips = {
		format = "Augmente les points de dégâts et les chances de porter un coup critique avec votre sort Eclat lunaire de %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "Ronces"
	talent.tips = {
		format = "A%sugmente les points de dégâts infligés par vos sorts Epines et Sarments de %s%%",
		{"", 25}, -- 1
		{"A", 50}, -- 2
		{"", 5}, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "Essaim d'insectes"
	talent.tips = {
		{ -- 1
			{ left = "50 mana", right = "Portée 30 m" }, -- 1
			table_cache_66,
			{ left = "La cible ennemie est assaillie par des insectes. Ses chances de toucher sont diminuées de 2% et elle subit 108 points de dégâts de Nature en 12 sec." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 85 mana, 192 pts de dégâts" }, -- 6
			{ left = " Rang 3 : 110 mana, 300 pts de dégâts" }, -- 7
			{ left = " Rang 4 : 135 mana, 432 pts de dégâts" }, -- 8
			{ left = " Rang 5 : 155 mana, 594 pts de dégâts" }, -- 9
			{ left = " Rang 6 : 175 mana, 792 pts de dégâts" }, -- 10
		},
	}
	talent = tree.talents[9].info
	talent.name = "Allonge de la Nature"
	talent.tips = {
		format = "Augmente la portée de vos sorts d'Équilibre et de la technique Lucioles (farouche) de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[10].info
	talent.name = "Vengeance"
	talent.tips = {
		format = "Augmente de %s%% le bonus de dégâts supplémentaires infligés par les coups critiques avec vos sorts Feu stellaire, Eclat lunaire et Colère.",
		multiplier = 20,
	}
	talent = tree.talents[11].info
	talent.name = "Focalisation céleste"
	talent.tips = {
		format = "Confère à votre sort Feu stellaire %s%% de chances d'étourdir la cible pendant 3 sec et augmente de %s%% vos chances de résister aux interruptions pendant l'incantation de votre sort Colère.",
		table_cache_87, -- 1
		table_cache_28, -- 2
		{15, 70}, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "Soutien lunaire"
	talent.tips = {
		format = "Augmente les dégâts et les soins produits par vos sorts de %s%% de votre total d'Intelligence.",
		8, -- 1
		16, -- 2
		25, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "Grâce de la nature"
	talent.tips = {
		"Tous les coups critiques obtenus avec les sorts vous valent une Bénédiction de la nature. Cette dernière réduit de 0,5 sec. le temps d'incantation de votre prochain sort.", -- 1
	}
	talent = tree.talents[14].info
	talent.name = "Lueur de la lune"
	talent.tips = {
		format = "Réduit de %s%% le coût en mana de vos sorts Eclat lunaire, Feu stellaire, Colère, Toucher guérisseur, Rétablissement et Récupération.",
		multiplier = 3,
	}
	talent = tree.talents[15].info
	talent.name = "Fureur lunaire"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par vos sorts Feu stellaire, Eclat lunaire et Colère de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "Equilibre de la puissance"
	talent.tips = {
		format = "Augmente de %s%% vos chances de toucher avec tous les sorts et réduit d'autant vos chances d'être touché par des sorts.",
		multiplier = 2,
	}
	talent = tree.talents[17].info
	talent.name = "Etat de rêve"
	talent.tips = {
		format = "Régénère une quantité de mana égale à %s%% de votre Intelligence toutes les 5 sec, même pendant l'incantation.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "Forme de sélénien"
	talent.tips = {
		{ -- 1
			{ left = "521 mana" }, -- 1
			table_cache_66,
			{ left = "Transforme le druide en sélénien. Tant qu'il est sous cette forme, le score d'armure apporté par les objets est augmenté de 400%, la puissance d'attaque est augmentée de 150% de votre niveau et tous les membres du groupe se trouvant à moins de 30 mètres voient leurs chances d'obtenir un coup critique avec les sorts augmenter de 5%. Les attaques de mêlée sous cette forme ont une chance, lorsque vous touchez, de régénérer le mana en fonction de la puissance d'attaque. Le sélénien peut uniquement lancer des sorts d'Équilibre et des Délivrances de la malédiction tant qu'il est transformé." }, -- 3
			table_cache_53,
			{ left = "La transformation libère le lanceur de sorts des métamorphoses et des effets qui affectent le déplacement." }, -- 5
		},
	}
	talent = tree.talents[19].info
	talent.name = "Lucioles améliorées"
	talent.tips = {
		format = "Votre sort Lucioles augmente aussi la probabilité que la cible soit touchée par les attaques de mêlée de %s%%.",
	}
	talent = tree.talents[20].info
	talent.name = "Colère de Cénarius"
	talent.tips = {
		format = "Votre sort Feu stellaire bénéficie de %s%% supplémentaires et votre Colère de %s%% supplémentaires des effets du bonus aux dégâts.",
		table_cache_14, -- 1
		table_cache_57, -- 2
		{12, 6}, -- 3
		{16, 8}, -- 4
		table_cache_10, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "Force de la nature"
	talent.tips = {
		{ -- 1
			{ left = "284 mana", right = "Portée 30 m" }, -- 1
			table_cache_90,
			{ left = "Invoque 3 tréants qui attaquent la cible ennemie pendant 30 sec." }, -- 3
		},
	}
	tree = data[2]
	tree.info.name = "Combat farouche"
	talent = tree.talents[1].info
	talent.name = "Férocité"
	talent.tips = {
		format = "Réduit le coût en rage ou en énergie de vos techniques Mutiler, Balayage, Griffe, Griffure et Mutilation de %s.",
	}
	talent = tree.talents[2].info
	talent.name = "Agressivité farouche"
	talent.tips = {
		format = "Augmente les effets de réduction de la puissance d'attaque de votre Rugissement démoralisant de %s%% et les dégâts causés par votre Morsure féroce de %s%%.",
		{8, 3}, -- 1
		{16, 6}, -- 2
		{24, 9}, -- 3
		{32, 12}, -- 4
		{40, 15}, -- 5
	}
	talent = tree.talents[3].info
	talent.name = "Instinct farouche"
	talent.tips = {
		format = "Augmente de %s%% le niveau de menace généré lorsque vous êtes en forme d'ours et d'ours redoutable et réduit les chances de vous détecter de vos ennemis lorsque vous rôdez.",
		multiplier = 5,
	}
	talent = tree.talents[4].info
	talent.name = "Impact brutal"
	talent.tips = {
		format = "Augmente la durée d'étourdissement de vos techniques Sonner et Traquenard de %s sec.",
		"0,5", -- 1
		1, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "Peau épaisse"
	talent.tips = {
		format = "Augmente de %s%% le score d'armure apporté par les objets.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[6].info
	talent.name = "Célérité farouche"
	talent.tips = {
		format = "Augmente votre vitesse de déplacement de %s%% lorsque vous êtes à l'extérieur en forme de félin et augmente vos chances d'esquiver lorsque vous êtes en forme de félin, d'ours et d'ours redoutable de %s%%.",
		table_cache_78, -- 1
		table_cache_80, -- 2
	}
	talent = tree.talents[7].info
	talent.name = "Charge farouche"
	talent.tips = {
		{ -- 1
			{ left = "5 Rage", right = "Portée 8-25 m" }, -- 1
			{ left = "Instantané", right = "Recharge 15 sec" }, -- 2
			{ left = "Forme d’ours, Forme d’ours redoutable requis" }, -- 3
			{ left = "Vous chargez un ennemi, stoppez son déplacement et interrompez le sort qu'il incantait pendant 4 sec." }, -- 4
		},
	}
	talent = tree.talents[8].info
	talent.name = "Griffes aiguisées"
	talent.tips = {
		format = "Augmente de %s%% vos chances d'infliger un coup critique lorsque vous êtes transformé en ours, en ours redoutable ou en félin.",
		multiplier = 2,
	}
	talent = tree.talents[9].info
	talent.name = "Attaques lacérantes"
	talent.tips = {
		format = "Réduit de %s le coût en énergie de votre technique Lambeau et de %s le coût en rage de votre technique Lacérer.",
		{9, 1}, -- 1
		{18, 2}, -- 2
	}
	talent = tree.talents[10].info
	talent.name = "Frappes de prédateur"
	talent.tips = {
		format = "Augmente votre puissance d'attaque en mêlée en forme de félin, d'ours, d'ours redoutable et de sélénien de %s%% de votre niveau.",
		multiplier = 50,
	}
	talent = tree.talents[11].info
	talent.name = "Fureur primitive"
	talent.tips = {
		format = "Vous confère %s%% de chances de générer 5 points de rage supplémentaires chaque fois que vous réussissez un coup critique en forme d'ours et d'ours redoutable et vos coups critiques obtenus avec les techniques de la forme de félin qui ajoutent des points de combo ont %s%% de chances d'ajouter un point de combo supplémentaire.",
		{50, 50}, -- 1
		{100, 100}, -- 2
	}
	talent = tree.talents[12].info
	talent.name = "Furie sauvage"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par vos techniques Griffe, Griffure et Mutilation (félin) de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "Lucioles (farouche)"
	talent.tips = {
		{ -- 1
			table_cache_18,
			table_cache_35,
			{ left = "Forme de félin, Forme d’ours, Forme d’ours redoutable requis" }, -- 3
			{ left = "Réduit l'Armure de la cible de 175 pendant 40 sec. Tant qu'elle est affectée, la cible ne peut pas se camoufler ni se rendre invisible." }, -- 4
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : -285 Armure" }, -- 7
			{ left = " Rang 3 : -395 Armure" }, -- 8
			{ left = " Rang 4 : -505 Armure" }, -- 9
			{ left = " Rang 5 : -610 Armure" }, -- 10
		},
	}
	talent = tree.talents[14].info
	talent.name = "Instinct nourricier"
	talent.tips = {
		format = "Augmente vos sorts de soins d'un montant égal à %s%% de votre Agilité, et augmente les soins qui vous sont prodigués de %s%% quand vous êtes en forme de félin",
		table_cache_65, -- 1
		table_cache_58, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "Cœur de fauve"
	talent.tips = {
		format = "Augmente votre Intelligence de %s%%. De plus, votre Endurance est augmentée de %s%% lorsque vous êtes en forme d'ours ou d'ours redoutable et votre puissance d'attaque est augmentée de %s%% lorsque vous êtes en forme de félin.",
		{4, 4, 2}, -- 1
		{8, 8, 4}, -- 2
		{12, 12, 6}, -- 3
		{16, 16, 8}, -- 4
		{20, 20, 10}, -- 5
	}
	talent = tree.talents[16].info
	talent.name = "Survie du plus apte"
	talent.tips = {
		format = "Augmente toutes les caractéristiques de %s%% et réduit la probabilité que vous soyez touché par un coup critique infligé par une attaque en mêlée de %s%%.",
		table_cache_88, -- 1
		table_cache_77, -- 2
		table_cache_4, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "Ténacité primordiale"
	talent.tips = {
		format = "Augmente de %s%% vos chances de résister aux mécanismes d'étourdissement et de peur.",
		multiplier = 5,
	}
	talent = tree.talents[18].info
	talent.name = "Chef de la meute"
	talent.tips = {
		"Pendant qu'il est en forme de félin, d'ours ou d'ours redoutable, le Chef de la meute augmente de 5% les chances de tous les membres du groupe se trouvant à moins de 45 mètres d'obtenir un coup critique avec les attaques à distance et en mêlée.", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "Chef de la meute amélioré"
	talent.tips = {
		format = "Votre technique Chef de la meute confère aussi aux cibles affectées 100%% de chances d'être soignées pour un montant égal à %s%% de leur total de points de vie lorsqu'elles réussissent un coup critique avec une attaque en mêlée ou à distance. L'effet de soins ne peut se produire plus d'une fois toutes les 6 sec.",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "Instincts de prédateur"
	talent.tips = {
		format = "En forme de félin, d'ours ou d'ours redoutable, augmente les dégâts de vos coups critiques avec les attaques de mêlée de %s%% et vos chances d'éviter les attaques à zone d'effet de %s%%.",
		table_cache_20, -- 1
		table_cache_46, -- 2
		{6, 9}, -- 3
		table_cache_43, -- 4
		table_cache_97, -- 5
	}
	talent = tree.talents[21].info
	talent.name = "Mutilation"
	talent.tips = {
		{ -- 1
			{ left = "Mutile la cible, lui inflige des dégâts et fait augmenter les dégâts infligés par les effets de saignement pendant 12 sec. Cette technique peut être utilisée en forme de félin ou d'ours redoutable." }, -- 1
			table_cache_53,
			{ left = " Forme d'ours :" }, -- 3
			{ left = " 20 rage, Allonge, Instantané, Recharge 6 sec, [t]1,5 sec global" }, -- 4
			{ left = " Inflige 115% des points de dégâts normaux plus X points de dégâts supplémentaires. De plus Lambeau et les effets de saignement lui infligent 30% de points de dégâts supplémentaires." }, -- 5
			{ left = " Rang 1 : +86" }, -- 6
			{ left = " Rang 2 : +121" }, -- 7
			{ left = " Rang 3 : +155" }, -- 8
			table_cache_53,
			{ left = " Forme de félin :" }, -- 10
			{ left = " 45 énergie, Allonge, Instantané, donne 1 point de combo." }, -- 11
			{ left = " Inflige 160% des points de dégâts normaux plus X points de dégâts supplémentaires. De plus Lambeau et les effets de saignement lui infligent 30% de points de dégâts supplémentaires." }, -- 12
			{ left = " Rang 1 : +158" }, -- 13
			{ left = " Rang 2 : +205" }, -- 14
			{ left = " Rang 3 : +264" }, -- 15
		},
	}
	tree = data[3]
	tree.info.name = "Restauration"
	talent = tree.talents[1].info
	talent.name = "Marque du fauve améliorée"
	talent.tips = {
		format = "Augmente les effets de vos sorts Marque du fauve et Don du fauve de %s%%.",
		multiplier = 7,
	}
	talent = tree.talents[2].info
	talent.name = "Fureur"
	talent.tips = {
		format = "Vous confère %s%% de chances de gagner 10 points de rage lorsque vous vous transformez en ours et ours redoutable ou 40 points d'énergie lorsque vous vous transformez en félin.",
		multiplier = 20,
	}
	talent = tree.talents[3].info
	talent.name = "Naturaliste"
	talent.tips = {
		format = "Réduit le temps d'incantation de votre sort Toucher guérisseur de 0,%s sec. et augmente les dégâts que vous infligez avec les attaques physiques sous toutes les formes de %s%%.",
		table_cache_75, -- 1
		table_cache_9, -- 2
		table_cache_33, -- 3
		table_cache_94, -- 4
		table_cache_67, -- 5
	}
	talent = tree.talents[4].info
	talent.name = "Focalisation de la nature"
	talent.tips = {
		format = "Vous confère %s%% de chances d'éviter d'être interrompu par les dégâts subis lorsque vous incantez les sorts Toucher guérisseur, Rétablissement et Tranquillité.",
		multiplier = 14,
	}
	talent = tree.talents[5].info
	talent.name = "Changeforme naturel"
	talent.tips = {
		format = "Réduit le coût en mana de tous les changements de forme de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[6].info
	talent.name = "Intensité"
	talent.tips = {
		format = "Vous confère %s%% de votre vitesse de récupération du mana normale pendant l'incantation. Votre technique Enrager génère instantanément %s points de rage.",
		table_cache_98, -- 1
		{20, 7}, -- 2
		{30, 10}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "Discrétion"
	talent.tips = {
		format = "Diminue la menace générée par vos sorts de %s%% et réduit la probabilité que vos sorts soient dissipés de %s%%.",
		table_cache_46, -- 1
		table_cache_43, -- 2
		{12, 18}, -- 3
		{15, 24}, -- 4
		{18, 30}, -- 5
	}
	talent = tree.talents[8].info
	talent.name = "Augure de clarté"
	talent.tips = {
		{ -- 1
			{ left = "120 mana" }, -- 1
			table_cache_66,
			{ left = "Imprègne le druide d'énergie naturelle. Chaque attaque de mêlée a une chance de faire entrer le lanceur de sorts dans l'état Idées claires. Cet état réduit le coût en mana, en rage ou en énergie de votre prochain sort de dégât ou de soins, ou de votre prochaine technique offensive, de 100%. Dure 30 min." }, -- 3
		},
	}
	talent = tree.talents[9].info
	talent.name = "Tranquillité de l'esprit"
	talent.tips = {
		format = "Réduit le coût en mana de vos sorts Toucher guérisseur et Tranquillité de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[10].info
	talent.name = "Récupération améliorée"
	talent.tips = {
		format = "Augmente les effets de votre sort Récupération de %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[11].info
	talent.name = "Rapidité de la nature"
	talent.tips = {
		{ -- 1
			table_cache_61,
			{ left = "Lorsque cette technique est activée, votre prochain sort de Nature devient un sort instantané." }, -- 2
		},
	}
	talent = tree.talents[12].info
	talent.name = "Don de la Nature"
	talent.tips = {
		format = "Augmente les effets de tous les sorts de soins de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[13].info
	talent.name = "Tranquillité améliorée"
	talent.tips = {
		format = "Diminue le niveau de menace généré par Tranquillité de %s%%.",
		multiplier = 50,
	}
	talent = tree.talents[14].info
	talent.name = "Toucher surpuissant"
	talent.tips = {
		format = "Votre sort Toucher guérisseur bénéficie de %s%% supplémentaires des effets du bonus relatif aux soins.",
		multiplier = 10,
	}
	talent = tree.talents[15].info
	talent.name = "Rétablissement amélioré"
	talent.tips = {
		format = "Augmente les chances d'obtenir un effet critique avec votre sort Rétablissement de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[16].info
	talent.name = "Esprit vif"
	talent.tips = {
		format = "Augmente votre total d'Esprit de %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[17].info
	talent.name = "Prompte guérison"
	talent.tips = {
		{ -- 1
			{ left = "379 mana", right = "Portée 40 m" }, -- 1
			table_cache_82,
			{ left = "Consume un effet de Récupération ou de Rétablissement sur une cible alliée pour lui rendre instantanément le nombre de points de vie équivalent à 12 sec. de Récupération ou 15 sec. de Rétablissement." }, -- 3
		},
	}
	talent = tree.talents[18].info
	talent.name = "Perfection naturelle"
	talent.tips = {
		format = "Vos chances d'obtenir un coup critique avec tous les sorts sont augmentées de %s%% et les coups critiques contre vous vous font bénéficier de l'effet de Perfection naturelle qui réduit tous les dégâts que vous subissez de %s%%. Cumulable jusqu'à 3 fois. Dure 8 sec.",
		table_cache_75, -- 1
		table_cache_20, -- 2
		{3, 4}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Récupération surpuissante"
	talent.tips = {
		format = "Les effets du bonus relatif aux soins de vos sorts de soins sur la durée sont augmentés de %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[20].info
	talent.name = "Arbre de vie"
	talent.tips = {
		{ -- 1
			{ left = "663 mana" }, -- 1
			table_cache_66,
			{ left = "Transforme le druide qui adopte la forme de l'Arbre de vie. Tant qu'il est sous cette forme, il augmente les soins reçus par tous les membres du groupe se trouvant à moins de 45 mètres de 25% de son total d'Esprit, sa vitesse de déplacement est réduite de 20% et il ne peut lancer que Prompte guérison, Innervation, Rapidité de la nature, Renaissance, des sorts anti-poisons et des sorts de soins sur la durée, mais le coût en mana de ces sorts est réduit de 20%." }, -- 3
			table_cache_53,
			{ left = "La transformation libère le lanceur de sorts des effets qui le ralentissent et des métamorphoses." }, -- 5
		},
	}
	data = Talented_Data.ROGUE
	-- data.name = "Talents de voleur"
	tree = data[1]
	tree.info.name = "Assassinat"
	talent = tree.talents[1].info
	talent.name = "Eviscération améliorée"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par votre technique Eviscération de %s%%.",
		multiplier = 5,
	}
	talent = tree.talents[2].info
	talent.name = "Attaques impitoyables"
	talent.tips = {
		format = "Lorsque vous tuez un adversaire qui vous fait gagner de l'expérience ou de l'honneur, vous avez %s%% de chances d'infliger un coup critique lors de votre prochaine Attaque pernicieuse, Attaque sournoise, Hémorragie, Estropier, Embuscade ou Frappe fantomatique. Dure 20 sec.",
		multiplier = 20,
	}
	talent = tree.talents[3].info
	talent.name = "Malice"
	talent.tips = {
		format = "Augmente vos chances d'infliger un coup critique de %s%%.",
	}
	talent = tree.talents[4].info
	talent.name = "Némésis"
	talent.tips = {
		format = "Confère à votre coup de grâce en mêlée %s%% de chances d'ajouter un point de combo à votre cible.",
		multiplier = 20,
	}
	talent = tree.talents[5].info
	talent.name = "Meurtre"
	talent.tips = {
		format = "Augmente de %s%% tous les dégâts infligés aux cibles de types humanoïde, géant, bête et draconien.",
	}
	talent = tree.talents[6].info
	talent.name = "Blessures transperçantes"
	talent.tips = {
		format = "Augmente vos chances d'infliger un coup critique avec la technique Attaque sournoise de %s%% et vos chances d'infliger un coup critique avec la technique Estropier de %s%%.",
		table_cache_21, -- 1
		table_cache_10, -- 2
		{30, 15}, -- 3
	}
	talent = tree.talents[7].info
	talent.name = "Frappes implacables"
	talent.tips = {
		"Votre coup de grâce a 20% de chances par point de combo de vous rendre 25 points d'énergie.", -- 1
	}
	talent = tree.talents[8].info
	talent.name = "Exposer l'armure amélioré"
	talent.tips = {
		format = "Augmente la réduction d'armure générée par votre technique Exposer l'armure de %s%%.",
		multiplier = 25,
	}
	talent = tree.talents[9].info
	talent.name = "Mortalité"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts supplémentaires infligés par vos coups critiques, lorsque vous utilisez les techniques : Attaque pernicieuse, Suriner, Attaque sournoise, Frappe fantomatique, Estropier, Kriss, ou Hémorragie.",
		multiplier = 6,
	}
	talent = tree.talents[10].info
	talent.name = "Poisons abominables"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts infligés par vos poisons et votre technique Envenimer et donne à vos poisons %s%% de chances supplémentaires de résister aux effets de dissipation.",
		table_cache_94, -- 1
		{8, 16}, -- 2
		{12, 24}, -- 3
		{16, 32}, -- 4
		{20, 40}, -- 5
	}
	talent = tree.talents[11].info
	talent.name = "Poisons améliorés"
	talent.tips = {
		format = "Augmente vos chances d'appliquer des poisons sur votre cible de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[12].info
	talent.name = "Pied léger"
	talent.tips = {
		format = "Augmente de %s%% vos chances de résister aux effets affectant le mouvement et augmente de %s%% votre vitesse de déplacement. Ne s'additionne pas avec les autres effets qui augmentent la vitesse de déplacement.",
		{5, 8}, -- 1
		table_cache_97, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "Sang froid"
	talent.tips = {
		{ -- 1
			table_cache_61,
			{ left = "Lorsque vous déclenchez ce talent, vos chances d'infliger un coup critique lors de votre prochaine technique offensive augmentent de 100%." }, -- 2
		},
	}
	talent = tree.talents[14].info
	talent.name = "Aiguillon perfide amélioré"
	talent.tips = {
		format = "Lorsqu'elle est affectée par  votre technique Aiguillon perfide, la cible subit %s%% de points de dégâts supplémentaires de toutes les sources.",
		multiplier = 3,
	}
	talent = tree.talents[15].info
	talent.name = "Rétablissement rapide"
	talent.tips = {
		format = "Augmente tous les effets de soins utilisés sur vous de %s%%. De plus, vos coups de grâce coûtent %s%% d’Energie de moins s’ils ne touchent pas la cible.",
		table_cache_74, -- 1
		{20, 80}, -- 2
	}
	talent = tree.talents[16].info
	talent.name = "Scelle le destin"
	talent.tips = {
		format = "Les coups critiques infligés par les techniques qui ajoutent un point de combo ont %s%% de chances de vous faire gagner un point de combo supplémentaire.",
		multiplier = 20,
	}
	talent = tree.talents[17].info
	talent.name = "Maître empoisonneur"
	talent.tips = {
		format = "Réduit de %s%% la probabilité que l'on résiste à vos poisons et augmente vos chances de résister aux effets de Poison de %s%% supplémentaires.",
		table_cache_63, -- 1
		table_cache_19, -- 2
	}
	talent = tree.talents[18].info
	talent.name = "Vigueur"
	talent.tips = {
		"Augmente votre maximum d'Energie de 10.", -- 1
	}
	talent = tree.talents[19].info
	talent.name = "Anesthésie nerveuse"
	talent.tips = {
		format = "Diminue tous les dégâts physiques reçus de %s%%.",
	}
	talent = tree.talents[20].info
	talent.name = "Découverte des faiblesses"
	talent.tips = {
		format = "Vos coups de grâce augmentent les dégâts de toutes les techniques offensives de %s%% pendant 10 sec.",
		multiplier = 2,
	}
	talent = tree.talents[21].info
	talent.name = "Estropier"
	talent.tips = {
		{ -- 1
			{ left = "60 Energie", right = "Allonge" }, -- 1
			table_cache_86,
			{ left = "Dagues requis" }, -- 3
			{ left = "Attaque instantanément avec les deux armes et inflige 44 points de dégâts supplémentaires avec chacune d'elles. Les dégâts sont augmentés de 50% contre les cibles empoisonnées. Vous devez être derrière la cible. Vous gagnez 2 points de combo." }, -- 4
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 63 points de dégâts supplélentaires avec chaque arme" }, -- 7
			{ left = " Rang 3 : 88 points de dégâts supplélentaires avec chaque arme" }, -- 8
			{ left = " Rang 4 : 101 points de dégâts supplélentaires avec chaque arme" }, -- 9
		},
	}
	tree = data[2]
	tree.info.name = "Combat"
	talent = tree.talents[1].info
	talent.name = "Suriner amélioré"
	talent.tips = {
		format = "Augmente la durée de l'effet de votre technique Suriner de %s sec.",
		"0,5", -- 1
		1, -- 2
		"1,5", -- 3
	}
	talent = tree.talents[2].info
	talent.name = "Attaque pernicieuse améliorée"
	talent.tips = {
		format = "Réduit de %s le coût en énergie de votre technique Attaque pernicieuse.",
		3, -- 1
		5, -- 2
	}
	talent = tree.talents[3].info
	talent.name = "Réflexes éclairs"
	talent.tips = {
		format = "Augmente vos chances d'esquiver une attaque de %s%%.",
	}
	talent = tree.talents[4].info
	talent.name = "Débiter amélioré"
	talent.tips = {
		format = "Augmente la durée de votre technique Débiter de %s%%.",
		multiplier = 15,
	}
	talent = tree.talents[5].info
	talent.name = "Déviation"
	talent.tips = {
		format = "Augmente vos chances de parer de %s%%.",
	}
	talent = tree.talents[6].info
	talent.name = "Précision"
	talent.tips = {
		format = "Augmente vos chances de toucher avec les armes de %s%%.",
	}
	talent = tree.talents[7].info
	talent.name = "Endurcissement"
	talent.tips = {
		format = "Réduit le temps de recharge de vos techniques Sprint et Evasion de %s5 %s.",
		table_cache_40, -- 1
		table_cache_92, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "Riposte"
	talent.tips = {
		{ -- 1
			{ left = "10 Energie", right = "Allonge" }, -- 1
			table_cache_35,
			{ left = "Une attaque disponible après avoir paré une attaque de l'adversaire. Elle inflige 150% des dégâts de l'arme et désarme la cible pendant 6 sec." }, -- 3
		},
	}
	talent = tree.talents[9].info
	talent.name = "Sprint amélioré"
	talent.tips = {
		format = "Confère %s%% de chances d'annuler tous les effets gênant le mouvement lorsque vous activez votre technique Sprint.",
		multiplier = 50,
	}
	talent = tree.talents[10].info
	talent.name = "Coup de pied amélioré"
	talent.tips = {
		format = "Confère à votre technique Coup de pied %s%% de chances de rendre la cible muette pendant 2 sec.",
		multiplier = 50,
	}
	talent = tree.talents[11].info
	talent.name = "Spécialisation Dague"
	talent.tips = {
		format = "Augmente vos chances d'infliger un coup critique avec les Dagues de %s%%.",
	}
	talent = tree.talents[12].info
	talent.name = "Spécialisation Ambidextrie"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par l'arme que vous utilisez en main gauche de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[13].info
	talent.name = "Spécialisation Masse"
	talent.tips = {
		format = "Augmente les dégâts infligés par vos coups critiques de %s%% et vous confère %s%% de chances d'étourdir votre cible pendant 3 sec avec une masse.",
		table_cache_88, -- 1
		table_cache_77, -- 2
		table_cache_4, -- 3
		table_cache_13, -- 4
		{5, 6}, -- 5
	}
	talent = tree.talents[14].info
	talent.name = "Déluge de lames"
	talent.tips = {
		{ -- 1
			{ left = "25 Energie" }, -- 1
			table_cache_79,
			{ left = "Augmente votre vitesse d'attaque de 20%. De plus, vos attaques frappent un adversaire proche supplémentaire. Dure 15 sec." }, -- 3
		},
	}
	talent = tree.talents[15].info
	talent.name = "Spécialisation Epée"
	talent.tips = {
		format = "Vous confère %s%% de chances de bénéficier d'une attaque supplémentaire sur la même cible, après avoir infligé des dégâts avec votre épée.",
	}
	talent = tree.talents[16].info
	talent.name = "Spécialisation Arme de pugilat"
	talent.tips = {
		format = "Augmente vos chances d'infliger un coup critique avec les armes de pugilat de %s%%.",
	}
	talent = tree.talents[17].info
	talent.name = "Tournoiement de lames"
	talent.tips = {
		format = "Donne à vos techniques Attaque pernicieuse, Attaque sournoise, Suriner et Kriss %s%% de chances d'hébéter la cible pendant 8 sec.",
		multiplier = 10,
	}
	talent = tree.talents[18].info
	talent.name = "Expertise en armes"
	talent.tips = {
		format = "Augmente votre expertise de %s.",
		multiplier = 5,
	}
	talent = tree.talents[19].info
	talent.name = "Agressivité"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par vos techniques Attaque pernicieuse, Attaque sournoise et Eviscération de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[20].info
	talent.name = "Vitalité"
	talent.tips = {
		format = "Augmente votre total d'Endurance de %s%% et votre total d'Agilité de %s%%.",
		table_cache_70, -- 1
		table_cache_14, -- 2
	}
	talent = tree.talents[21].info
	talent.name = "Poussée d'adrénaline"
	talent.tips = {
		{ -- 1
			table_cache_1,
			{ left = "Augmente la vitesse de régénération de votre Energie de 100% pendant 15 sec." }, -- 2
		},
	}
	talent = tree.talents[22].info
	talent.name = "Nerfs d'acier"
	talent.tips = {
		format = "Augmente vos chances de résister aux effets d'étourdissement et de peur de %s%% supplémentaires.",
		multiplier = 5,
	}
	talent = tree.talents[23].info
	talent.name = "Toute-puissance de combat"
	talent.tips = {
		format = "Confère à vos attaques de mêlée avec la main gauche 20%% de chances de générer %s points d'énergie.",
		multiplier = 3,
	}
	talent = tree.talents[24].info
	talent.name = "Attaques surprises"
	talent.tips = {
		"Vos coups de grâce ne peuvent plus être esquivés et les dégâts de vos techniques Attaque pernicieuse, Attaque sournoise, Kriss et Suriner sont augmentés de 10%.", -- 1
	}
	tree = data[3]
	tree.info.name = "Finesse"
	talent = tree.talents[1].info
	talent.name = "Maître des illusions"
	talent.tips = {
		format = "Réduit les chances de vos ennemis de vous détecter lorsque vous êtes en camouflage.%s",
		"", -- 1
		" Plus efficace que Maître des illusions (Rang 1).", -- 2
		" Plus efficace que Maître des illusions (Rang 2).", -- 3
		" Plus efficace que Maître des illusions (Rang 3).", -- 4
		" Plus efficace que Maître des illusions (Rang 4).", -- 5
	}
	talent = tree.talents[2].info
	talent.name = "Opportunité"
	talent.tips = {
		format = "Augmente de %s%% les dégâts que vous infligez en attaquant votre cible de dos avec les techniques Attaque sournoise, Estropier, Garrot et Embuscade.",
		multiplier = 4,
	}
	talent = tree.talents[3].info
	talent.name = "Passe-passe"
	talent.tips = {
		format = "Réduit de %s%% la probabilité que vous soyez touché par un coup critique infligé par une attaque en mêlée ou à distance, et augmente la réduction du niveau de menace de votre technique Feinte de %s%%.",
		table_cache_47, -- 1
		table_cache_2, -- 2
	}
	talent = tree.talents[4].info
	talent.name = "Coup tordu"
	talent.tips = {
		format = "Augmente la portée de vos techniques Cécité et Assommer de %s mètres et réduit leur coût en énergie de %s%%.",
		{2, 25}, -- 1
		{5, 50}, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "Dissimulation"
	talent.tips = {
		format = "Augmente de %s%% votre vitesse de déplacement lorsque vous êtes invisible et réduit de %s sec le temps de recharge de votre technique Camouflage.",
		table_cache_25, -- 1
		table_cache_11, -- 2
		table_cache_76, -- 3
		table_cache_91, -- 4
		table_cache_45, -- 5
	}
	talent = tree.talents[6].info
	talent.name = "Initiative"
	talent.tips = {
		format = "Vous confère %s%% de chances de gagner un point de combo supplémentaire lorsque vous utilisez les techniques Embuscade, Garrot et Coup bas.",
		multiplier = 25,
	}
	talent = tree.talents[7].info
	talent.name = "Frappe fantomatique"
	talent.tips = {
		{ -- 1
			{ left = "40 Energie", right = "Portée 5 m" }, -- 1
			{ left = "Instantané", right = "Recharge 20 sec" }, -- 2
			table_cache_39,
			{ left = "Une attaque qui inflige 125% des dégâts de l'arme et qui augmente vos chances d'esquiver de 15% pendant 7 sec. Vous gagnez 1 point de combo." }, -- 4
		},
	}
	talent = tree.talents[8].info
	talent.name = "Embuscade améliorée"
	talent.tips = {
		format = "Augmente les chances d'infliger un coup critique avec votre technique Embuscade de %s%%.",
		multiplier = 15,
	}
	talent = tree.talents[9].info
	talent.name = "Préparatifs"
	talent.tips = {
		format = "Vous confère %s%% de chances d'ajouter un point de combo à votre cible après avoir esquivé son attaque ou entièrement résisté à un de ses sorts.",
		multiplier = 15,
	}
	talent = tree.talents[10].info
	talent.name = "Insaisissable"
	talent.tips = {
		format = "Réduit le temps de recharge de vos techniques Disparition et Cécité de %s5 %s.",
		table_cache_40, -- 1
		table_cache_92, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "Lames dentelées"
	talent.tips = {
		format = "Vos attaques ignorent %s points de l'Armure de votre cible. Augmente les points de dégâts infligés par votre technique Rupture de %s%%.  Le nombre de points d'Armure réduits augmente avec votre niveau.",
		{186, 10}, -- 1
		{373, 20}, -- 2
		{560, 30}, -- 3
	}
	talent = tree.talents[12].info
	talent.name = "Sens amplifiés"
	talent.tips = {
		format = "Augmente votre détection du camouflage et réduit de %s%% la probabilité que vous soyez touché par les sorts et les attaques à distance.%s",
		{2, ""}, -- 1
		{4, " Plus efficace que Sens amplifiés (Rang 1)."}, -- 2
	}
	talent = tree.talents[13].info
	talent.name = "Préparation"
	talent.tips = {
		{ -- 1
			{ left = "Instantané", right = "10 min recharge" }, -- 1
			{ left = "Lorsque vous la déclenchez, cette technique met immédiatement fin au temps de recharge de vos techniques Evasion, Sprint, Disparition, Sang froid, Pas de l'ombre et Préméditation." }, -- 2
		},
	}
	talent = tree.talents[14].info
	talent.name = "Coups fourrés"
	talent.tips = {
		format = "Réduit de %s le coût en énergie de vos techniques Coup bas et Garrot. De plus, vos techniques spéciales infligent %s%% de dégâts supplémentaires aux cibles qui possèdent moins de 35%% de leurs points de vie.",
		table_cache_54, -- 1
		table_cache_29, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "Hémorragie"
	talent.tips = {
		{ -- 1
			{ left = "35 Energie", right = "Distance de mêlée" }, -- 1
			table_cache_86,
			table_cache_39,
			{ left = "Une frappe instantanée qui inflige 110% des dégâts de l'arme à l'adversaire et provoque une hémorragie. Augmente tous les dégâts physiques infligés à la cible de 13 au maximum. Utilisable 10 fois ou pendant 15 sec. Vous gagnez 1 point de combo." }, -- 4
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 18 pts de dégâts" }, -- 7
			{ left = " Rang 3 : 25 pts de dégâts" }, -- 8
			{ left = " Rang 4 : 36 pts de dégâts" }, -- 9
		},
	}
	talent = tree.talents[16].info
	talent.name = "Maître de la discrétion"
	talent.tips = {
		format = "Les attaques effectuées alors que vous êtes camouflé et pendant les 6 secondes  l'annulation du camouflage infligent %s%% points de dégâts supplémentaires.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "Meurtrier"
	talent.tips = {
		format = "Augmente votre puissance d'attaque de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[18].info
	talent.name = "Linceul d'ombres"
	talent.tips = {
		format = "Augmente vos chances d'éviter les attaques à zone d'effet de %s%% supplémentaires.",
		multiplier = 5,
	}
	talent = tree.talents[19].info
	talent.name = "Préméditation"
	talent.tips = {
		{ -- 1
			table_cache_18,
			table_cache_79,
			{ left = "|cffeb0504Camouflage requis|r" }, -- 3
			{ left = "Lorsqu'elle est utilisée, cette technique ajoute 2 points de combo à la cible. Vous devez ajouter à ces points de combo ou les utiliser avant 10 sec sinon les points de combo sont perdus." }, -- 4
		},
	}
	talent = tree.talents[20].info
	talent.name = "Trompe-la-mort"
	talent.tips = {
		format = "Vous avez %s%% de chances d'éviter complètement toute attaque infligeant des dégâts qui devrait normalement vous tuer et de réduire tous les dégâts subis de 90%% pendant 3 sec. Cet effet ne peut se produire plus d'une fois par minute.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[21].info
	talent.name = "Vocation pernicieuse"
	talent.tips = {
		format = "Augmente votre total d'Agilité de %s%% et augmente de %s%% supplémentaires le bonus aux dégâts d'Attaque sournoise et Hémorragie.",
		{3, 2}, -- 1
		{6, 4}, -- 2
		{9, 6}, -- 3
		{12, 8}, -- 4
		table_cache_8, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "Pas de l'ombre"
	talent.tips = {
		{ -- 1
			{ left = "10 Energie", right = "Portée 25 m" }, -- 1
			table_cache_32,
			{ left = "Tente de marcher à travers les ombres et de réapparaître derrière votre ennemi. Vitesse augmentée de 70% pendant 3 sec. Les dégâts de votre prochaine technique sont augmentés de 20% et la menace générée est réduite de 50%. Dure 10 sec." }, -- 3
		},
	}
	data = Talented_Data.PALADIN
	-- data.name = "Talents de paladin"
	tree = data[1]
	tree.info.name = "Sacré"
	talent = tree.talents[1].info
	talent.name = "Force divine"
	talent.tips = {
		format = "Augmente votre total de Force de %s%%",
		multiplier = 2,
	}
	talent = tree.talents[2].info
	talent.name = "Intelligence divine"
	talent.tips = {
		format = "Augmente votre total d'Intelligence de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[3].info
	talent.name = "Focalisation spirituelle"
	talent.tips = {
		format = "Confère %s%% de chances à l'incantation de vos sorts Lumière sacrée et Eclair lumineux de ne pas être retardée lorsque vous subissez des dégâts.",
		multiplier = 14,
	}
	talent = tree.talents[4].info
	talent.name = "Sceau de piété amélioré"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par votre Sceau de piété de %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[5].info
	talent.name = "Lumière guérisseuse"
	talent.tips = {
		format = "Augmente le nombre de points de vie rendus par vos sorts Lumière sacrée et Eclair lumineux de %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[6].info
	talent.name = "Maîtrise des auras"
	talent.tips = {
		"Porte le rayon de vos auras à 40 mètres.", -- 1
	}
	talent = tree.talents[7].info
	talent.name = "Imposition des mains améliorée"
	talent.tips = {
		format = "La cible du sort Impositions des mains bénéficie d'un bonus de %s%% au score d'armure de ses objets pendant 2 min. De plus, le temps de recharge de votre sort Imposition des mains diminue de %s min.",
		table_cache_8, -- 1
		table_cache_23, -- 2
	}
	talent = tree.talents[8].info
	talent.name = "Foi inflexible"
	talent.tips = {
		format = "Augmente de %s%% vos chances de résister aux effets de Peur et de Désorientation.",
		multiplier = 5,
	}
	talent = tree.talents[9].info
	talent.name = "Illumination"
	talent.tips = {
		format = "Lorsque vous obtenez un effet critique avec Eclair lumineux, Lumière sacrée, ou le sort de soins Horion sacré, vous avez %s%% de chances de gagner un nombre de points de mana égal à 60%% du coût en mana du sort.",
		multiplier = 20,
	}
	talent = tree.talents[10].info
	talent.name = "Bénédiction de sagesse améliorée"
	talent.tips = {
		format = "Augmente l'effet de votre sort de Bénédiction de sagesse de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[11].info
	talent.name = "Pur de coeur"
	talent.tips = {
		format = "Augmente de %s%% votre résistance aux effets de malédiction et de maladie.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "Faveur divine"
	talent.tips = {
		{ -- 1
			table_cache_44,
			table_cache_41,
			{ left = "Une fois activé, confère 100% de chances à votre prochain sort Eclair lumineux, Lumière sacrée ou Horion sacré d'avoir un effet critique." }, -- 3
		},
	}
	talent = tree.talents[13].info
	talent.name = "Lumière sanctifiée"
	talent.tips = {
		format = "Augmente les chances de coups critiques de votre sort Lumière sacrée de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "Puissance purifiante"
	talent.tips = {
		format = "Réduit de %s%% le coût en mana de vos sorts Epuration, Purification et Consécration et augmente de %s%% les chances d'infliger un coup critique avec vos sorts Exorcisme et Colère divine.",
		table_cache_67, -- 1
		table_cache_27, -- 2
	}
	talent = tree.talents[15].info
	talent.name = "Puissance sacrée"
	talent.tips = {
		format = "Augmente les chances d'obtenir un effet critique avec vos sorts du Sacré de %s%%.",
	}
	talent = tree.talents[16].info
	talent.name = "Grâce de la lumière"
	talent.tips = {
		format = "Confère à votre sort Lumière sacrée %s%% de chances de réduire le temps d'incantation de votre prochain sort Lumière sacrée de 0,5 sec. Cet effet dure 15 sec.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[17].info
	talent.name = "Horion sacré"
	talent.tips = {
		{ -- 1
			{ left = "225 mana", right = "20 m" }, -- 1
			table_cache_82,
			{ left = "L'énergie sacrée frappe la cible et inflige 204 à 220 points de dégâts du Sacré à un ennemi, ou bien rend à un allié 204 à 220 points de vie." }, -- 3
			table_cache_53,
			table_cache_51,
			{ left = " Rang 2 : 275 mana, 279-302 pts de dégâts ou vie" }, -- 6
			{ left = " Rang 3 : 325 mana, 365-396 pts de dégâts ou vie" }, -- 7
			{ left = " Rang 4 : 385 mana, 452-488 pts de dégâts ou vie" }, -- 8
			{ left = " Rang 5 : 435 mana, 530-574 pts de dégâts ou vie" }, -- 9
		},
	}
	talent = tree.talents[18].info
	talent.name = "Vie bénie"
	talent.tips = {
		format = "Vous confère %s%% de chances que les attaques contre vous n'infligent que la moitié des dégâts.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Soutien sacré"
	talent.tips = {
		format = "Augmente les dégâts et les soins produits par vos sorts de %s%% de votre total d'Intelligence.",
		multiplier = 7,
	}
	talent = tree.talents[20].info
	talent.name = "Illumination divine"
	talent.tips = {
		{ -- 1
			table_cache_61,
			{ left = "Réduit le coût en mana de tous les sorts de 50% pendant 15 sec." }, -- 2
		},
	}
	tree = data[2]
	tree.info.name = "Protection"
	talent = tree.talents[1].info
	talent.name = "Aura de dévotion améliorée"
	talent.tips = {
		format = "Augmente le bonus d'armure que confère votre Aura de dévotion de %s%%.",
		multiplier = 8,
	}
	talent = tree.talents[2].info
	talent.name = "Redoute"
	talent.tips = {
		format = "Les attaques de mêlée et à distance qui vous infligent des dégâts ont 10%% de chances d’augmenter vos chances de blocage de %s%%. Dure 10 sec ou bloque 5 attaques.",
		multiplier = 6,
	}
	talent = tree.talents[3].info
	talent.name = "Précision"
	talent.tips = {
		format = "Augmente vos chances de toucher avec les armes de mêlée et les sorts de %s%%.",
	}
	talent = tree.talents[4].info
	talent.name = "Faveur du Gardien"
	talent.tips = {
		format = "Réduit le temps de recharge de votre Bénédiction de protection de %s sec et augmente la durée de votre Bénédiction de liberté de %s sec.",
		{60, 2}, -- 1
		{120, 4}, -- 2
	}
	talent = tree.talents[5].info
	talent.name = "Résistance"
	talent.tips = {
		format = "Augmente le score d'armure des objets de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[6].info
	talent.name = "Bénédiction des rois"
	talent.tips = {
		{ -- 1
			{ left = "177 mana", right = "Portée 30 m" }, -- 1
			table_cache_66,
			{ left = "Place une Bénédiction sur une cible amie qui augmente toutes ses caractéristiques de 10% pendant 10 min. Les joueurs ne peuvent bénéficier des effets que d'une seule Bénédiction par paladin à la fois." }, -- 3
		},
	}
	talent = tree.talents[7].info
	talent.name = "Fureur vertueuse améliorée"
	talent.tips = {
		format = "Tant que la Fureur vertueuse est active, tous les dégâts encaissés sont réduits de %s%% et le niveau de menace généré par votre sort Fureur vertueuse est augmenté de %s%%.",
		table_cache_93, -- 1
		table_cache_38, -- 2
		{6, 50}, -- 3
	}
	talent = tree.talents[8].info
	talent.name = "Spécialisation Bouclier"
	talent.tips = {
		format = "Augmente le nombre de points de dégâts absorbés par votre bouclier de %s%%.",
		multiplier = 10,
	}
	talent = tree.talents[9].info
	talent.name = "Anticipation"
	talent.tips = {
		format = "Augmente votre Défense de %s.",
		4, -- 1
		9, -- 2
		12, -- 3
		16, -- 4
		20, -- 5
	}
	talent = tree.talents[10].info
	talent.name = "Stoïcisme"
	talent.tips = {
		format = "Augmente votre résistance aux effets d'étourdissement de %s%% supplémentaires, et réduit la probabilité que vos sorts soient dissipés de %s%% supplémentaires.",
		table_cache_63, -- 1
		table_cache_19, -- 2
	}
	talent = tree.talents[11].info
	talent.name = "Marteau de la justice amélioré"
	talent.tips = {
		format = "Diminue le temps de recharge de votre sort Marteau de la justice de %s sec.",
		multiplier = 5,
	}
	talent = tree.talents[12].info
	talent.name = "Aura de concentration améliorée"
	talent.tips = {
		format = "Augmente de %s%% supplémentaires l'effet de votre Aura de concentration et réduit de %s%% la durée de tout effet de silence ou d'interruption utilisé contre un membre du groupe affecté. La réduction de durée ne se cumule pas avec tout autre effet.",
		table_cache_67, -- 1
		table_cache_27, -- 2
		table_cache_52, -- 3
	}
	talent = tree.talents[13].info
	talent.name = "Protection contre les sorts"
	talent.tips = {
		format = "Tous les dégâts des sorts subis sont réduits de %s%%.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "Bénédiction du sanctuaire"
	talent.tips = {
		{ -- 1
			{ left = "60 mana", right = "Portée 30 m" }, -- 1
			table_cache_66,
			{ left = "Place une Bénédiction sur la cible amie. Réduit les points de dégâts de tous types qu'elle subit d’un maximum de 10 pendant 10 min. De plus, quand la cible bloque une attaque de mêlée, l'attaquant subit 14 points de dégâts du Sacré. Les personnages ne peuvent bénéficier que des effets d'une seule Bénédiction par paladin à la fois." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 85 mana, 14 réduction des dégâts, 21 pts de dégâts Sacré" }, -- 6
			{ left = " Rang 3 : 110 mana, 19 réduction des dégâts, 28 pts de dégâts Sacré" }, -- 7
			{ left = " Rang 4 : 145 mana, 24 réduction des dégâts, 35 pts de dégâts Sacré" }, -- 8
			{ left = " Rang 5 : 180 mana, 80 réduction des dégâts, 46 pts de dégâts Sacré" }, -- 9
		},
	}
	talent = tree.talents[15].info
	talent.name = "Rétribution"
	talent.tips = {
		format = "Confère %s%% de chances lorsque vous êtes victime d'un coup qui vous a fait des dégâts de bénéficier d'une attaque supplémentaire avec les 4 frappes suivantes dans les 8 sec.",
		multiplier = 2,
	}
	talent = tree.talents[16].info
	talent.name = "Devoir sacré"
	talent.tips = {
		format = "Augmente votre total d'Endurance de %s%%, réduit le temps de recharge de votre sort Bouclier divin de %s sec. et réduit la pénalité affectant la vitesse d'attaque de %s%%.",
		{3, 30, 50}, -- 1
		{6, 60, 100}, -- 2
	}
	talent = tree.talents[17].info
	talent.name = "Spécialisation Arme 1M"
	talent.tips = {
		format = "Augmente tous les dégâts que vous infligez de %s%% quand une arme de mêlée à une main est équipée.",
	}
	talent = tree.talents[18].info
	talent.name = "Bouclier sacré amélioré"
	talent.tips = {
		format = "Augmente les dégâts infligés par votre Bouclier sacré de %s%% et augmente le nombre de charges de votre Bouclier sacré de %s.",
		table_cache_83, -- 1
		{20, 4}, -- 2
	}
	talent = tree.talents[19].info
	talent.name = "Bouclier sacré"
	talent.tips = {
		{ -- 1
			{ left = "135 mana" }, -- 1
			table_cache_64,
			{ left = "Bouclier requis" }, -- 3
			{ left = "Augmente les chances de bloquer de 30% pendant 10 sec et inflige 50 points de dégâts du Sacré pour chaque attaque bloquée pendant qu'il est actif. Les dégâts causés par le Bouclier sacré génèrent 35% de menace supplémentaire. Chaque blocage dépense une charge. 4 charges." }, -- 4
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 175 mana, 86 points de dégâts sacré" }, -- 7
			{ left = " Rang 3 : 215 mana, 117 points de dégâts sacré" }, -- 8
			{ left = " Rang 4 : 280 mana, 155 points de dégâts sacré" }, -- 9
		},
	}
	talent = tree.talents[20].info
	talent.name = "Ardent défenseur"
	talent.tips = {
		format = "Lorsque vous avez moins de 35%% de points de vie, tous les dégâts subis sont réduits de %s%%.",
		multiplier = 6,
	}
	talent = tree.talents[21].info
	talent.name = "Expertise en combat"
	talent.tips = {
		format = "Augmente votre expertise de %s et votre total d'Endurance de %s%%.",
		table_cache_75, -- 1
		table_cache_9, -- 2
		table_cache_33, -- 3
		table_cache_94, -- 4
		table_cache_67, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "Bouclier du vengeur"
	talent.tips = {
		{ -- 1
			{ left = "500 mana", right = "Portée 8-30 m" }, -- 1
			{ left = "Incantation 1 sec", right = "Recharge 30 sec" }, -- 2
			{ left = "Lance un bouclier sacré sur un ennemi, qui inflige 270 à 330 points de dégâts du Sacré, les Hébète et rebondit ensuite sur les ennemis proches. Le sort frappe 3 cibles au total. Dure 6 sec." }, -- 3
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 615 mana, 370-452 points de dégâts sacré" }, -- 6
			{ left = " Rang 3 : 780 mana, 494-602 points de dégâts sacré" }, -- 7
		},
	}
	tree = data[3]
	tree.info.name = "Vindicte"
	talent = tree.talents[1].info
	talent.name = "Bénédiction de puissance améliorée"
	talent.tips = {
		format = "Augmente le bonus à la puissance d'attaque conféré par votre Bénédiction de puissance de %s%%.",
		multiplier = 4,
	}
	talent = tree.talents[2].info
	talent.name = "Bénédiction"
	talent.tips = {
		format = "Réduit le coût en mana de vos Jugements et Sceaux de %s%%.",
		multiplier = 3,
	}
	talent = tree.talents[3].info
	talent.name = "Jugement amélioré"
	talent.tips = {
		format = "Diminue le temps de recharge de votre sort Jugement de %s sec.",
	}
	talent = tree.talents[4].info
	talent.name = "Sceau du Croisé amélioré"
	talent.tips = {
		format = "En plus des effets normaux, votre sort Jugement du Croisé augmente de %s%% supplémentaires les chances d'infliger un coup critique à la cible, quel que soit le type d’attaque.",
	}
	talent = tree.talents[5].info
	talent.name = "Déviation"
	talent.tips = {
		format = "Augmente vos chances de parer de %s%%.",
	}
	talent = tree.talents[6].info
	talent.name = "Justification"
	talent.tips = {
		format = "Confère aux attaques de mêlée du paladin qui infligent des dégâts une chance de diminuer les caractéristiques de la cible de %s%% pendant 10 sec.",
		multiplier = 5,
	}
	talent = tree.talents[7].info
	talent.name = "Conviction"
	talent.tips = {
		format = "Augmente vos chances d'infliger un coup critique avec les armes de mêlée de %s%%.",
	}
	talent = tree.talents[8].info
	talent.name = "Sceau d'autorité"
	talent.tips = {
		{ -- 1
			{ left = "65 mana" }, -- 1
			table_cache_66,
			{ left = "Confère au paladin une chance d'infliger un nombre de points de dégâts du Sacré supplémentaires équivalent à 70% des dégâts normaux de l'arme. Un seul Sceau peut être actif sur le paladin à la fois. Dure 30 sec." }, -- 3
			table_cache_53,
			{ left = "Libérez l'énergie de ce Sceau pour juger un ennemi et lui infliger instantanément 68 à 73 points de dégâts du Sacré, ou 137 à 146 si la cible est étourdie ou stupéfiée." }, -- 5
			table_cache_53,
			table_cache_22,
			{ left = " Rang 2 : 110 mana, 97-105 / 194-209 pts de dégâts" }, -- 8
			{ left = " Rang 3 : 140 mana, 124-135 / 248-269 pts de dégâts" }, -- 9
			{ left = " Rang 4 : 180 mana, 154-168 / 309-336 pts de dégâts" }, -- 10
			{ left = " Rang 5 : 210 mana, 193-211 / 387-422 pts de dégâts" }, -- 11
			{ left = " Rang 6 : 280 mana, 228-252 / 456-504 pts de dégâts" }, -- 12
		},
	}
	talent = tree.talents[9].info
	talent.name = "Poursuite de la justice"
	talent.tips = {
		format = "Réduit la probabilité que vous soyez touché par des sorts de %s%% et augmente votre vitesse de déplacement et la vitesse de déplacement de votre monture de %s%%. Ne s'additionne pas avec les autres effets qui augmentent la vitesse de déplacement.",
		table_cache_24, -- 1
		table_cache_89, -- 2
		table_cache_55, -- 3
	}
	talent = tree.talents[10].info
	talent.name = "Oeil pour oeil"
	talent.tips = {
		format = "Tous les coups critiques obtenus contre vous avec des sorts infligent également %s%% des dégâts que vous subissez au lanceur de sorts. Les points de dégâts causés par Oeil pour oeil ne peuvent excéder 50%% du total des points de vie du paladin.",
		multiplier = 15,
	}
	talent = tree.talents[11].info
	talent.name = "Aura de vindicte améliorée"
	talent.tips = {
		format = "Augmente les points de dégâts infligés par votre sort d'Aura de vindicte de %s%%.",
		multiplier = 25,
	}
	talent = tree.talents[12].info
	talent.name = "Croisade"
	talent.tips = {
		format = "Augmente tous les dégâts infligés aux humanoïdes, démons, morts-vivants et élémentaires de %s%%.",
	}
	talent = tree.talents[13].info
	talent.name = "Spécialisation Arme 2M"
	talent.tips = {
		format = "Augmente de %s%% les points de dégâts que vous infligez avec les armes à deux mains.",
		multiplier = 2,
	}
	talent = tree.talents[14].info
	talent.name = "Aura de sainteté"
	talent.tips = {
		{ -- 1
			table_cache_86,
			{ left = "Augmente de 10% les points de dégâts du Sacré infligés par les membres du groupe se trouvant dans une zone de 30 mètres de rayon. Les personnages ne peuvent bénéficier des effets que d'une aura par paladin à la fois." }, -- 2
		},
	}
	talent = tree.talents[15].info
	talent.name = "Aura de sainteté améliorée"
	talent.tips = {
		format = "Le nombre de points de dégâts infligés par les cibles affectées par Aura de sainteté est augmenté de %s%%.",
	}
	talent = tree.talents[16].info
	talent.name = "Vengeance"
	talent.tips = {
		format = "Après un coup critique obtenu en frappant avec une arme, ou avec un sort ou une technique, vous infligez %s%% de points de dégâts supplémentaires physiques et du Sacré, pendant 30 sec. Cet effet est cumulable jusqu'à 3 fois.",
	}
	talent = tree.talents[17].info
	talent.name = "Jugement sanctifié"
	talent.tips = {
		format = "Confère à votre sort Jugement %s%% de chances de rembourser 80%% du coût en mana du sceau jugé.",
		33, -- 1
		66, -- 2
		100, -- 3
	}
	talent = tree.talents[18].info
	talent.name = "Sceau sanctifié"
	talent.tips = {
		format = "Augmente vos chances de réussir des coups critiques avec tous les sorts et toutes les attaques de mêlée de %s%% et réduit le risque que vos Sceaux soient dissipés de %s%%.",
		{1, 33}, -- 1
		{2, 66}, -- 2
		{3, 100}, -- 3
	}
	talent = tree.talents[19].info
	talent.name = "Repentir"
	talent.tips = {
		{ -- 1
			{ left = "60 mana", right = "Portée 20 m" }, -- 1
			table_cache_68,
			{ left = "Plonge la cible ennemie dans une transe méditative qui la stupéfie pendant 6 sec au maximum. Si la cible subit des dégâts, elle se réveille. Ne fonctionne que contre les Humanoïdes." }, -- 3
		},
	}
	talent = tree.talents[20].info
	talent.name = "Dessein divin"
	talent.tips = {
		format = "Les coups critiques en mêlée et à distance contre vous infligent %s%% de points de dégâts en moins.",
		4, -- 1
		7, -- 2
		10, -- 3
	}
	talent = tree.talents[21].info
	talent.name = "Fanatisme"
	talent.tips = {
		format = "Augmente de %s%% les chances d'obtenir un coup critique avec tous les Jugements qui peuvent en infliger et réduit la menace de toutes les actions de %s%%, sauf sous l'effet de Fureur vertueuse.",
		table_cache_36, -- 1
		{4, 12}, -- 2
		{6, 18}, -- 3
		{8, 24}, -- 4
		table_cache_19, -- 5
	}
	talent = tree.talents[22].info
	talent.name = "Inquisition"
	talent.tips = {
		{ -- 1
			{ left = "236 mana", right = "Portée 5 m" }, -- 1
			{ left = "Incantation instantanée", right = "Recharge : 6 sec." }, -- 2
			{ left = "Requiert : Arme de mêlée" }, -- 3
			{ left = "Une attaque instantanée qui inflige 110% des dégâts de l'arme et réinitialise tous les Jugements sur la cible." }, -- 4
		},
	}
end
