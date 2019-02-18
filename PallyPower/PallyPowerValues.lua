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

PallyPower.RFSpell = GetSpellInfo(25780) --BS["Righteous Fury"]

PallyPower.HLSpell = GetSpellInfo(635)
