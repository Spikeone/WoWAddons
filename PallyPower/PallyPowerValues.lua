local L = AceLibrary("AceLocale-2.2"):new("PallyPower");
--local BS = AceLibrary("Babble-Spell-2.2")

PallyPower.commPrefix = "PLPWR";

PALLYPOWER_MAXCLASSES = 11;
PALLYPOWER_MAXPERCLASS = 8;
PALLYPOWER_NORMALBLESSINGDURATION = 10*60;
PALLYPOWER_GREATERBLESSINGDURATION = 30*60;

PallyPower.CONFIG_DRAGHANDLE = L["DRAGHANDLE"];

PALLYPOWER_DEFAULT_VALUES = {
	buffscale = 0.90,
	configscale = 0.90,
	smartbuffs = true,
	greaterbuffs = true,
	rfbuff = true,
	autobuff = {
		autokey1 = ",",
		autokey2 = "CTRL-,",
		autobutton = true,
		waitforpeople = true,
	},
	display = {
		-- buttons
		rows = 9,
		columns = 1,
		gapping = 0,
		buttonWidth = 100,
		buttonHeight = 34,
		alignClassButtons = "9",
		alignPlayerButtons = "compact-left",
        	frameLocked = false,
		hideDragHandle = false,
		hidePlayerButtons = false,
		PlainButtons = false,
		HideKeyText = false,
		HideCount = false,
        	LockBuffBars = false,
        	HideCountText = false,
		HideTimerText = false,
	},
	ShowInParty = true,
	ShowWhenSingle = true,
	};

PallyPower_Credits1 = "Pally Power - by Aznamir";
--PallyPower_Credits2 = "Version "..PallyPower_Version;

PallyPower.BuffBarTitle = "Pally Buffs (%d)";

PallyPower.ClassID = { 
	[1] = "WARRIOR",
	[2] = "ROGUE",
	[3] = "PRIEST",
	[4] = "DRUID",
	[5] = "PALADIN",
	[6] = "HUNTER",
	[7] = "MAGE",
	[8] = "WARLOCK",
	[9] = "SHAMAN",
	[10] = "PET",
    [11] = "SEAL"};

PallyPower.ClassIcons = {
	[1] = "Interface\\AddOns\\PallyPower\\Icons\\Warrior",
	[2] = "Interface\\AddOns\\PallyPower\\Icons\\Rogue",
	[3] = "Interface\\AddOns\\PallyPower\\Icons\\Priest",
	[4] = "Interface\\AddOns\\PallyPower\\Icons\\Druid",
	[5] = "Interface\\AddOns\\PallyPower\\Icons\\Paladin",
	[6] = "Interface\\AddOns\\PallyPower\\Icons\\Hunter",
	[7] = "Interface\\AddOns\\PallyPower\\Icons\\Mage",
	[8] = "Interface\\AddOns\\PallyPower\\Icons\\Warlock",
	[9] = "Interface\\AddOns\\PallyPower\\Icons\\Shaman",
	[10] = "Interface\\AddOns\\PallyPower\\Icons\\Pet",
    [11] = "Interface\\Icons\\Spell_Holy_RighteousFury"};

PallyPower.BlessingIcons = {
        [-1] = "",
	[1] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofWisdom",
	[2] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofKings",
	[3] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofSalvation",
	[4] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofLight",
	[5] = "Interface\\Icons\\Spell_Magic_GreaterBlessingofKings",
	[6] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofSanctuary"};

PallyPower.NormalBlessingIcons = {
        [-1] = "",
	[1] = "Interface\\Icons\\Spell_Holy_SealOfWisdom",
	[2] = "Interface\\Icons\\Spell_Holy_FistOfJustice",
	[3] = "Interface\\Icons\\Spell_Holy_SealOfSalvation",
	[4] = "Interface\\Icons\\Spell_Holy_PrayerOfHealing02",
	[5] = "Interface\\Icons\\Spell_Magic_MageArmor",
	[6] = "Interface\\Icons\\Spell_Nature_LightningShield"};
    
PallyPower.SealIcons = {
        [-1] = "",
	[1] = "Interface\\Icons\\Spell_Holy_RighteousnessAura",
	[2] = "Interface\\Icons\\Spell_Holy_HealingAura",
	[3] = "Interface\\Icons\\Spell_Holy_SealOfWrath",
	[4] = "Interface\\Icons\\Spell_Holy_HolySmite"};

PallyPower.RoleIcons = {
    [-1] = "",
    -- Tank
    [1] = "Interface\\Icons\\INV_Shield_06",
    -- Heal
    [2] = "Interface\\Icons\\Spell_Nature_HealingTouch",
    -- Melee
    [3] = "Interface\\Icons\\Ability_DualWield",
    -- Caster
    [4] = "Interface\\Icons\\INV_Wand_11",
    -- Unknown
    [5] = "Interface\\Icons\\INV_Misc_QuestionMark",
}

PallyPower.RoleNameToType =
{
    ["None"] = "",
    ["Tank"] = "_TANK", 
    ["Off-Tank"] = "_OFFTANK", 
    ["Heal"] = "_HEAL", 
    ["Melee"] = "_MELEE", 
    ["Caster"] = "_CASTER",
}

PallyPower.TypeToRoleName =
{
    ["_TANK"] = "Tank", 
    ["_OFFTANK"] = "Off-Tank", 
    ["_HEAL"] = "Heal", 
    ["_MELEE"] = "Melee", 
    ["_CASTER"] = "Caster",
}

-- array
PP_ZoneTable = {
    [1] = {ztype = "DN", en = "Blackfathom Deeps", de = "Die tiefschwarze Grotte", fr = "Profondeurs de Brassenoire", es = "Cavernas de Brazanegra", Continent = 1, Location = 1,  LevelRange = "24-32", PlayerLimit = "10", infoline = METAMAP_BFD_INFO, texture = "BlackfathomDeeps"},
    [2] = {ztype = "DN", en = "Dire Maul", de = "D\195\188sterbruch", fr = "Hache-Tripes", es = "La Masacre", Continent = 1, Location = 9,  LevelRange = "56-60", PlayerLimit = "5",  infoline = METAMAP_DMC_INFO, texture = "DireMaul"},
    [3] = {ztype = "DN", en = "Dire Maul East", de = "D\195\188sterbruch Ost", fr = "Hache-Tripes Est", es = "La Masacre Este", Continent = 1, Location = 9,  LevelRange = "56-60", PlayerLimit = "5",  infoline = METAMAP_DMC_INFO, texture = "DireMaulEast"},
    [4] = {ztype = "DN", en = "Dire Maul North", de = "D\195\188sterbruch Nord", fr = "Hache-Tripes Nord", es = "La Masacre Norte", Continent = 1, Location = 9,  LevelRange = "56-60", PlayerLimit = "5",  infoline = METAMAP_DMC_INFO, texture = "DireMaulNorth"},
    [5] = {ztype = "DN", en = "Dire Maul West", de = "D\195\188sterbruch West", fr = "Hache-Tripes Ouest", es = "La Masacre Oeste", Continent = 1, Location = 9,  LevelRange = "56-60", PlayerLimit = "5",  infoline = METAMAP_DMC_INFO, texture = "DireMaulWest"},
    [6] = {ztype = "DN", en = "Maraudon", de = "Maraudon", fr = "Maraudon", es = "Maraudon", Continent = 1, Location = 5,  LevelRange = "46-55", PlayerLimit = "10", infoline = METAMAP_MDN_INFO, texture = "Maraudon"},
    [7] = {ztype = "DN", en = "Onyxia's Lair", de = "Onyxias Hort", fr = "Repaire d\'Onyxia", es = "Onyxia's Lair", Continent = 1, Location = 7,  LevelRange = "60+", PlayerLimit = "40", infoline = METAMAP_ONL_INFO, texture = "OnyxiasLair"},
    [8] = {ztype = "DN", en = "Ragefire Chasm", de = "Der Flammenschlund", fr = "Gouffre de Ragefeu", es = "Sima Ignea", Continent = 1, Location = 12, LevelRange = "13-15", PlayerLimit = "10", infoline = METAMAP_RFC_INFO, texture = "RagefireChasm"},
    [9] = {ztype = "DN", en = "Razorfen Downs", de = "H\195\188gel der Klingenhauer", fr = "Souilles de Tranchebauge", es = "Zah\195\186rda Rajacieno", Continent = 1, Location = 17, LevelRange = "33-40", PlayerLimit = "10", infoline = METAMAP_RFD_INFO, texture = "RazorfenDowns"},
    [10] = {ztype = "DN", en = "Razorfen Kraul", de = "Kral der Klingenhauer", fr = "Kraal de Tranchebauge", es = "Horado Rajacieno", Continent = 1, Location = 17, LevelRange = "25-30", PlayerLimit = "10", infoline = METAMAP_RFK_INFO, texture = "RazorfenKraul"},
    [11] = {ztype = "DN", en = "Wailing Caverns", de = "Die H\195\182hlen des Wehklagens", fr = "Cavernes des lamentations", es = "Cuevas de los Lamentos", Continent = 1, Location = 17, LevelRange = "17-24", PlayerLimit = "10", infoline = METAMAP_TWC_INFO, texture = "WailingCaverns"},
    [12] = {ztype = "DN", en = "Zul'Farrak", de = "Zul'Farrak", fr = "Zul'Farrak", es = "Zul'Farrak", Continent = 1, Location = 15, LevelRange = "43-47", PlayerLimit = "10", infoline = METAMAP_ZFK_INFO, texture = "ZulFarrak"},
    [13] = {ztype = "DN", en = "Ahn'Qiraj", de = "Ahn'Qiraj", fr = "Ahn'Qiraj", es = "Ahn'Qiraj", Continent = 1, Location = 13, LevelRange = "60+", PlayerLimit = "40", infoline = METAMAP_TAQ_INFO, texture = "TempleofAhnQiraj"},
    [14] = {ztype = "DN", en = "Ruins of Ahn'Qiraj", de = "Ruinen von Ahn'Qiraj", fr = "Ruines d'Ahn'Qiraj", es = "Ruinas de Ahn'Qiraj", Continent = 1, Location = 13, LevelRange = "60+", PlayerLimit = "20", infoline = METAMAP_RAQ_INFO, texture = "RuinsofAhnQiraj"},
    [15] = {ztype = "DN", en = "Blackrock Depths", de = "Schwarzfelstiefen", fr = "Profondeurs de Rochenoire", es = "Blackrock Depths", Continent = 2, Location = 44, LevelRange = "52+", PlayerLimit = "5",  infoline = METAMAP_BRD_INFO, texture = "BlackrockDepths"},
    [16] = {ztype = "DN", en = "Blackrock Spire", de = "Untere Schwarzfelsspitze", fr = "Pic Rochenoire", es = "Blackrock Spire", Continent = 2, Location = 44, LevelRange = "55+", PlayerLimit = "10", infoline = METAMAP_BRS_INFO, texture = "BlackrockSpireLower"},
    [17] = {ztype = "DN", en = "Blackrock Spire Upper", de = "Obere Schwarzfelsspitze", fr = "Pic Blackrock sup\195\169rieur", es = "Blackrock Spire Upper", Continent = 2, Location = 44, LevelRange = "58+", PlayerLimit = "10", infoline = METAMAP_BSU_INFO, texture = "BlackrockSpireUpper"},
    [18] = {ztype = "DN", en = "Blackwing Lair", de = "Pechschwingenhort", fr = "Repaire de l\'Aile noire", es = "Blackwing Lair", Continent = 2, Location = 44, LevelRange = "60+", PlayerLimit = "40", infoline = METAMAP_BWL_INFO, texture = "BlackwingLair"},
    [19] = {ztype = "DN", en = "Gnomeregan", de = "Gnomeregan", fr = "Gnomeregan", es = "Gnomeregan", Continent = 2, Location = 36, LevelRange = "29-38", PlayerLimit = "10", infoline = METAMAP_GNM_INFO, texture = "Gnomeregan"},
    [20] = {ztype = "DN", en = "Molten Core", de = "Geschmolzener Kern", fr = "C\197\147ur du Magma", es = "N\195\186cleo Fundido", Continent = 2, Location = 44, LevelRange = "60+", PlayerLimit = "40", infoline = METAMAP_TMC_INFO, texture = "MoltenCore"},
    [21] = {ztype = "DN", en = "Scarlet Monastery", de = "Das scharlachrote Kloster", fr = "Monast\195\168re \195\169carlate", es = "Monasterio Escarlata", Continent = 2, Location = 50, LevelRange = "34-45", PlayerLimit = "10", infoline = METAMAP_TSM_INFO, texture = "ScarletMonastery"},
    [22] = {ztype = "DN", en = "Scholomance", de = "Scholomance", fr = "Scholomance", es = "Scholomance", Continent = 2, Location = 52, LevelRange = "56-60", PlayerLimit = "5",  infoline = METAMAP_SLM_INFO, texture = "Scholomance"},
    [23] = {ztype = "DN", en = "Shadowfang Keep", de = "Burg Schattenfang", fr = "Donjon d\'Ombrecroc", es = "Castillo de Colmillo Oscuro", Continent = 2, Location = 45, LevelRange = "22-30", PlayerLimit = "10", infoline = METAMAP_SFK_INFO, texture = "ShadowfangKeep"},
    [24] = {ztype = "DN", en = "Stratholme", de = "Stratholme", fr = "Stratholme", es = "Stratholme", Continent = 2, Location = 38, LevelRange = "55-60", PlayerLimit = "5",  infoline = METAMAP_STR_INFO, texture = "Stratholme"},
    [25] = {ztype = "DN", en = "The Deadmines", de = "Die Todesminen", fr = "Les Mortemines", es = "Las Minas de la Muerte", Continent = 2, Location = 53, LevelRange = "17-26", PlayerLimit = "10", infoline = METAMAP_TDM_INFO, texture = "TheDeadmines"},
    [26] = {ztype = "DN", en = "The Stockade", de = "Das Verlies", fr = "La Prison", es = "Mazmorras de Ventormenta", Continent = 2, Location = 46, LevelRange = "23-26", PlayerLimit = "10", infoline = METAMAP_TSK_INFO, texture = "TheStockades"},
    [27] = {ztype = "DN", en = "The Temple of Atal'Hakkar", de = "Der Tempel von Atal'Hakkar", fr = "Le temple d\'Atal\'Hakkar", es = "El Templo Hundido", Continent = 2, Location = 48, LevelRange = "45-55", PlayerLimit = "10", infoline = METAMAP_TST_INFO, texture = "TheSunkenTemple"},
    [28] = {ztype = "DN", en = "Uldaman", de = "Uldaman", fr = "Uldaman", es = "Uldaman", Continent = 2, Location = 32, LevelRange = "35-47", PlayerLimit = "10", infoline = METAMAP_ULD_INFO, texture = "Uldaman"},
    [29] = {ztype = "DN", en = "Zul'Gurub", de = "Zul'Gurub", fr = "Zul'Gurub", es = "Zul'Gurub", Continent = 2, Location = 47, LevelRange = "60+", PlayerLimit = "20", infoline = METAMAP_ZGB_INFO, texture = "ZulGurub"},
    [30] = {ztype = "DN", en = "Naxxramas", de = "Naxxramas", fr = "Naxxramas", es = "Naxxramas", Continent = 2, Location = 38, LevelRange = "60+", PlayerLimit = "40", infoline = METAMAP_NAX_INFO, texture = "Naxxramas"},
    [31] = {ztype = "DN", en = "The Blood Furnace", de = "Der Blutkessel", fr = "La Fournaise du sang", es = "The Blood Furnaces", Continent = 3, Location = 60, LevelRange = "61-63", PlayerLimit = "5",  infoline = METAMAP_HFC_INFO, texture = "BloodFurnaces"},
    [32] = {ztype = "DN", en = "The Shattered Halls", de = "Die zerschmetterten Hallen", fr = "Les Salles bris\195\169es", es = "The Shattered Halls", Continent = 3, Location = 60, LevelRange = "70", PlayerLimit = "5",  infoline = METAMAP_HFC_INFO, texture = "ShatteredHalls"},
    [33] = {ztype = "DN", en = "The Underbog", de = "Der Tiefensumpf", fr = "La Basse-tourbi\195\168re", es = "The Underbog", Continent = 3, Location = 67, LevelRange = "63-65", PlayerLimit = "5",  infoline = METAMAP_CFR_INFO, texture = "TheUnderbog"},
    [34] = {ztype = "DN", en = "The Steamvault", de = "Die Dampfkammer", fr = "Le Caveau de la vapeur", es = "The Steam Vault", Continent = 3, Location = 67, LevelRange = "68-70", PlayerLimit = "5",  infoline = METAMAP_CFR_INFO, texture = "TheSteamvault"},
    [35] = {ztype = "DN", en = "The Slave Pens", de = "Die Sklavenunterk\195\188nfte", fr = "Les enclos aux esclaves", es = "The Slave Pens", Continent = 3, Location = 67, LevelRange = "62-64", PlayerLimit = "5",  infoline = METAMAP_CFR_INFO, texture = "TheSlavePens"},
    [36] = {ztype = "DN", en = "Magtheridons Lair", de = "Magtheridons Kammer", fr = "Le repaire de Magtheridon", es = "Magtheridons Lair", Continent = 3, Location = 60, LevelRange = "70+", PlayerLimit = "25",  infoline = METAMAP_MAG_INFO, texture = "MagtheridonsLair"},
    [37] = {ztype = "DN", en = "Hellfire Ramparts", de = "H\195\182llenfeuerbollwerk", fr = "Remparts des Flammes infernales", es = "Hellfire Rampart", Continent = 3, Location = 60, LevelRange = "60-62", PlayerLimit = "5",  infoline = METAMAP_HFC_INFO, texture = "HellfireRampart"},
    [38] = {ztype = "DN", en = "Mana-Tombs", de = "Managruft", fr = "Tombes-mana", es = "Mana Tombs", Continent = 3, Location = 66, LevelRange = "64-66", PlayerLimit = "5",  infoline = METAMAP_AUC_INFO, texture = "ManaTombs"},
    [39] = {ztype = "DN", en = "Auchenai Crypts", de = "Auchenaikrypta", fr = "Cryptes Auchena\195\175", es = "Auchenai Crypts", Continent = 3, Location = 66, LevelRange = "65-67", PlayerLimit = "5",  infoline = METAMAP_AUC_INFO, texture = "AuchenaiCrypts"},
    [40] = {ztype = "DN", en = "Sethekk Halls", de = "Sethekkhallen", fr = "Les salles des Sethekk", es = "Sethekk Halls", Continent = 3, Location = 66, LevelRange = "67-69", PlayerLimit = "5",  infoline = METAMAP_AUC_INFO, texture = "SethekkHalls"},
    [41] = {ztype = "DN", en = "Shadow Labyrinth", de = "Schattenlabyrinth", fr = "Labyrinthe des ombres", es = "Shadow Labyrinth", Continent = 3, Location = 66, LevelRange = "70", PlayerLimit = "5",  infoline = METAMAP_AUC_INFO, texture = "ShadowLabyrinth"},
    [42] = {ztype = "DN", en = "The Arcatraz", de = "Arkatraz", fr = "L'Arcatraz", es = "Arcatraz", Continent = 3, Location = 63, LevelRange = "70", PlayerLimit = "5",  infoline = METAMAP_TTK_INFO, texture = "Arcatraz"},
    [43] = {ztype = "DN", en = "The Botanica", de = "Botanikum", fr = "La Botanica", es = "Botanica", Continent = 3, Location = 63, LevelRange = "70", PlayerLimit = "5",  infoline = METAMAP_TTK_INFO, texture = "Botanica"},
    [44] = {ztype = "DN", en = "The Mechanar", de = "Mechanar", fr = "Le Mechanar", es = "M\195\169chanar", Continent = 3, Location = 63, LevelRange = "69-70", PlayerLimit = "5",  infoline = METAMAP_TTK_INFO, texture = "Mechanar"},
    [45] = {ztype = "DN", en = "The Black Morass", de = "Der schwarze Morast", fr = "Le Noir Mar\195\169cage", es = "The Black Morass", Continent = 1, Location = 15, LevelRange = "70", PlayerLimit = "5",  infoline = METAMAP_COT_INFO, texture = "BlackMorass"},
    [46] = {ztype = "DN", en = "Old Hillsbrad Foothills", de = "Vorgebirge des Alten H\195\188gellands", fr = "Contreforts de Hautebrande d'antan", es = "Old Hillsbrad Foothills", Continent = 1, Location = 15, LevelRange = "66-68", PlayerLimit = "5",  infoline = METAMAP_COT_INFO, texture = "OldHillsbrad"},
    [47] = {ztype = "DN", en = "Battle for Mount Hyjal", de = "Kampf um Mount Hyjal", fr = "La bataille pour le mont Hyjal", es = "Battle for Mount Hyjal", Continent = 1, Location = 15, LevelRange = "70+", PlayerLimit = "25",  infoline = METAMAP_COT_INFO, texture = "MountHyjal"},
    [48] = {ztype = "DN", en = "Karazhan", de = "Karazhan", fr = "Karazhan", es = "Karazhan", Continent = 2, Location = 35, LevelRange = "70+", PlayerLimit = "10",  infoline = METAMAP_KZN_INFO, texture = "Karazhan"},
    [49] = {ztype = "DN", en = "Gruul's Lair", de = "Gruuls Unterschlupf", fr = "Gruul's Lair", es = "Gruul's Lair", Continent = 3, Location = 61, LevelRange = "70+", PlayerLimit = "25",  infoline = METAMAP_GRL_INFO, texture = "GruulsLair"},
    [50] = {ztype = "DN", en = "Serpentshrine Cavern", de = "H\195\182hle des Schlangenschreins", fr = "Serpentshrine Cavern", es = "Serpentshrine Cavern", Continent = 3, Location = 67, LevelRange = "70+", PlayerLimit = "25",  infoline = METAMAP_CFR_INFO, texture = "Serpentshrine"},
    [51] = {ztype = "DN", en = "The Eye of Storms", de = "Auge des Sturms", fr = "The Eye of Storms", es = "The Eye of Storms", Continent = 3, Location = 63, LevelRange = "70+", PlayerLimit = "25",  infoline = METAMAP_TTK_INFO, texture = "EyeOfTheStorm"},
}

PP_BuffPriority = {
	[1] = {role = "PALADIN_TANK", a = "SDRef", b = "SDK", c = "SDM", d = "SDW", e = "SDL", f = ""},
	[2] = {role = "PALADIN_HEAL", a = "SDR", b = "SDK", c = "SDW", d = "SDL", e = "SDRef", f = "SDM"},
	[3] = {role = "PALADIN_MELEE", a = "SDR", b = "SDM", c = "SDK", d = "SDW", e = "SDL", f = "SDRef"},
	[4] = {role = "DRUID_TANK", a = "SDK", b = "SDM", c = "SDW", d = "SDL", e = "SDRef", f = ""},
	[5] = {role = "DRUID_OFF_TANK", a = "SDR", b = "SDK", c = "SDM", d = "SDW", e = "SDL", f = "SDRef"},
	[6] = {role = "DRUID_MELEE", a = "SDR", b = "SDK", c = "SDM", d = "SDW", e = "SDL", f = "SDRef"},
	[7] = {role = "DRUID_CASTER", a = "SDR", b = "SDK", c = "SDW", d = "SDL", e = "SDRef", f = "SDM"},
	[8] = {role = "DRUID_HEAL", a = "SDR", b = "SDK", c = "SDW", d = "SDL", e = "SDRef", f = "SDM"},
	[9] = {role = "WARRIOR_TANK", a = "SDK", b = "SDM", c = "SDRef", d = "SDL", e = "SDW", f = ""},
	[10] = {role = "WARRIOR_OFF_TANK", a = "SDR", b = "SDK", c = "SDM", d = "SDRef", e = "SDL", f = "SDW"},
	[11] = {role = "WARRIOR_MELEE", a = "SDR", b = "SDK", c = "SDM", d = "SDL", e = "SDRef", f = "SDW"},
	[12] = {role = "SHAMAN_MELEE", a = "SDR", b = "SDM", c = "SDK", d = "SDW", e = "SDL", f = "SDRef"},
	[13] = {role = "SHAMAN_CASTER", a = "SDR", b = "SDK", c = "SDW", d = "SDL", e = "SDRef", f = "SDM"},
	[14] = {role = "SHAMAN_HEAL", a = "SDR", b = "SDK", c = "SDW", d = "SDL", e = "SDRef", f = "SDM"},
	[15] = {role = "PRIEST_CASTER", a = "SDR", b = "SDK", c = "SDW", d = "SDL", e = "SDRef", f = "SDM"},
	[16] = {role = "WARLOCK_CASTER", a = "SDR", b = "SDK", c = "SDW", d = "SDL", e = "SDRef", f = "SDM"},
	[17] = {role = "HUNTER_MELEE", a = "SDM", b = "SDK", c = "SDR", d = "SDW", e = "SDL", f = "SDRef"},
	[18] = {role = "MAGE_CASTER", a = "SDR", b = "SDK", c = "SDW", d = "SDL", e = "SDRef", f = "SDM"},
	[19] = {role = "ROGUE_MELEE", a = "SDR", b = "SDM", c = "SDK", d = "SDL", e = "SDRef", f = "SDW"},
}
--
-- Need to add localizations
--
PALLYPOWER_CLEAR = L["PP_CLEAR"];
PALLYPOWER_REFRESH = L["PP_REFRESH"];
PALLYPOWER_OPTIONS = L["PP_OPTIONS"];

PALLYPOWER_ASSIGNMENTS1 = L["PP_RAS1"];
PALLYPOWER_ASSIGNMENTS2 = L["PP_RAS2"];

PallyPower_TalentSearch = L["PP_TSEARCH"];
PallyPower_RankSearch = L["PP_RSEARCH"];
PallyPower_BlessingNameSearch = L["PP_BNSEARCH"];
PallyPower_Rank1 = L["PP_RANK1"];

PallyPower_Symbol = L["PP_SYMBOL"];

-- get translations directly
PallyPower.Spells = {
	[0] = "",
	[1] = GetSpellInfo(19742), --BS["Blessing of Wisdom"],
	[2] = GetSpellInfo(19740), --BS["Blessing of Might"],
	[3] = GetSpellInfo(1038), --BS["Blessing of Salvation"],
	[4] = GetSpellInfo(19977), --BS["Blessing of Light"],
	[5] = GetSpellInfo(20217), --BS["Blessing of Kings"],
	[6] = GetSpellInfo(20911), --BS["Blessing of Sanctuary"],
	};

PallyPower.GSpells = {
	[0] = "",
	[1] = GetSpellInfo(25894), --BS["Greater Blessing of Wisdom"],
	[2] = GetSpellInfo(25782), --BS["Greater Blessing of Might"],
	[3] = GetSpellInfo(25895), --BS["Greater Blessing of Salvation"],
	[4] = GetSpellInfo(25890), --BS["Greater Blessing of Light"],
	[5] = GetSpellInfo(25898), --BS["Greater Blessing of Kings"],
	[6] = GetSpellInfo(25899), --BS["Greater Blessing of Sanctuary"],
	};

PallyPower.Seals = {
	[0] = "";
	[1] = GetSpellInfo(20166), --Seal of Wisdom
	[2] = GetSpellInfo(20165),
	[3] = GetSpellInfo(31895),
	[4] = GetSpellInfo(20308)
}

PallyPower.RFSpell = GetSpellInfo(25780) --BS["Righteous Fury"]

PallyPower.HLSpell = GetSpellInfo(635)
