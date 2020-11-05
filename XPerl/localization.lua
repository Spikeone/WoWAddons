-- X-Perl UnitFrames
-- Author: Zek <Boodhoof-EU>
-- License: GNU GPL v3, 29 June 2007 (see LICENSE.txt)

XPerl_ProductName		= "|cFFD00000X-Perl|r UnitFrames"
XPerl_ShortProductName	= "|cFFD00000X-Perl|r"
XPerl_Author			= "|cFFFF8080Zek|r"
XPerl_Description		= XPerl_ProductName.." by "..XPerl_Author
XPerl_VersionNumber 	= "2.4.3g"
XPerl_Version			= XPerl_Description.." - "..XPerl_VersionNumber
XPerl_LongDescription	= "UnitFrame replacement for new look Player, Pet, Party, Target, Target's Target, Focus, Raid"
XPerl_ModMenuIcon		= "Interface\\Icons\\INV_Misc_Gem_Pearl_02"

XPERL_COMMS_PREFIX		= "X-Perl"
XPERL_MINIMAP_HELP1		= "|c00FFFFFFLeft click|r for Options (and to |c0000FF00unlock frames|r)"
XPERL_MINIMAP_HELP2		= "|c00FFFFFFRight click|r to drag this icon"
XPERL_MINIMAP_HELP3		= "\rReal Raid Members: |c00FFFF80%d|r\rReal Party Members: |c00FFFF80%d|r"
XPERL_MINIMAP_HELP4		= "\rYou are leader of the real party/raid"
XPERL_MINIMAP_HELP5		= "|c00FFFFFFAlt|r for X-Perl memory usage"
XPERL_MINIMAP_HELP6		= "|c00FFFFFF+Shift|r for X-Perl memory usage since startup"

XPERL_MINIMENU_OPTIONS	= "Options"
XPERL_MINIMENU_ASSIST	= "Show Assists Frame"
XPERL_MINIMENU_CASTMON	= "Show Casting Monitor"
XPERL_MINIMENU_RAIDAD	= "Show Raid Admin"
XPERL_MINIMENU_ITEMCHK	= "Show Item Checker"
XPERL_MINIMENU_RAIDBUFF = "Raid Buffs"
XPERL_MINIMENU_ROSTERTEXT="Roster Text"
XPERL_MINIMENU_RAIDSORT = "Raid Sort"
XPERL_MINIMENU_RAIDSORT_GROUP = "Sort by Group"
XPERL_MINIMENU_RAIDSORT_CLASS = "Sort by Class"

-- Class name localization is not too important. The only time these strings
-- are used is when the raid frame titles need to be shown when in class sort
-- mode AND when no players of that class have been seen. X-Perl builds an
-- internal list of WoW localised class names as they are encountered. The WoW
-- api function UnitClass returns both the localized and english class name.
XPERL_LOC_CLASS_WARRIOR = "Warrior"
XPERL_LOC_CLASS_MAGE	= "Mage"
XPERL_LOC_CLASS_ROGUE	= "Rogue"
XPERL_LOC_CLASS_DRUID	= "Druid"
XPERL_LOC_CLASS_HUNTER	= "Hunter"
XPERL_LOC_CLASS_SHAMAN	= "Shaman"
XPERL_LOC_CLASS_PRIEST	= "Priest"
XPERL_LOC_CLASS_WARLOCK = "Warlock"
XPERL_LOC_CLASS_PALADIN = "Paladin"
XPERL_LOC_CLASS_PETS	= "Pets"
XPERL_TYPE_NOT_SPECIFIED = "Not specified"
XPERL_TYPE_PET		= PET			-- "Pet"
XPERL_TYPE_BOSS 	= "Boss"
XPERL_TYPE_RAREPLUS = "Rare+"
XPERL_TYPE_ELITE	= "Elite"
XPERL_TYPE_RARE 	= "Rare"

XPERL_SPELL_SUNDER	= GetSpellInfo(30901)		-- "Sunder Armor"
XPERL_SPELL_SHADOWV = GetSpellInfo(15258)		-- "Shadow Vulnerability"
XPERL_SPELL_FIREV	= GetSpellInfo(22959)		-- "Fire Vulnerability"
XPERL_SPELL_WINTERCH	= GetSpellInfo(28595)	-- "Winter's Chill"

-- Status
XPERL_LOC_DEAD		= DEAD			-- "Dead"
XPERL_LOC_GHOST 	= "Ghost"
XPERL_LOC_FEIGNDEATH	= "Feign Death"
XPERL_LOC_OFFLINE	= PLAYER_OFFLINE	-- "Offline"
XPERL_LOC_RESURRECTED	= "Resurrected"
XPERL_LOC_SS_AVAILABLE	= "SS Available"
XPERL_LOC_UPDATING	= "Updating"
XPERL_LOC_ACCEPTEDRES	= "Accepted"		-- Res accepted
XPERL_RAID_GROUP	= "Group %d"
XPERL_RAID_GROUPSHORT	= "G%d"

XPERL_LOC_NONEWATCHED	= "none watched"

XPERL_LOC_STATUSTIP = "Status Highlights: " 	-- Tooltip explanation of status highlight on unit
XPERL_LOC_STATUSTIPLIST = {
	HOT = "Heal over Time",
	AGGRO = "Aggro",
	MISSING = "Missing your class' buff",
	HEAL = "Being healed",
	SHIELD = "Shielded"
}

XPERL_OK		= "OK"
XPERL_CANCEL		= "Cancel"

XPERL_LOC_LARGENUMDIV	= 1000
XPERL_LOC_LARGENUMTAG	= "K"

BINDING_HEADER_XPERL = XPerl_ProductName
BINDING_NAME_TOGGLERAID = "Toggle Raid Windows"
BINDING_NAME_TOGGLERAIDSORT = "Toggle Raid Sort by Class/Group"
BINDING_NAME_TOGGLERAIDPETS = "Toggle Raid Pets"
BINDING_NAME_TOGGLEOPTIONS = "Toggle Options Window"
BINDING_NAME_TOGGLEBUFFTYPE = "Toggle Buffs/Debuffs/none"
BINDING_NAME_TOGGLEBUFFCASTABLE = "Toggle Castable/Curable"
BINDING_NAME_TEAMSPEAKMONITOR = "Teamspeak Monitor"
BINDING_NAME_TOGGLERANGEFINDER = "Toggle Range Finder"

XPERL_KEY_NOTICE_RAID_BUFFANY = "All buffs/debuffs shown"
XPERL_KEY_NOTICE_RAID_BUFFCURECAST = "Only castable/curable buffs or debuffs shown"
XPERL_KEY_NOTICE_RAID_BUFFS = "Raid Buffs shown"
XPERL_KEY_NOTICE_RAID_DEBUFFS = "Raid Debuffs shown"
XPERL_KEY_NOTICE_RAID_NOBUFFS = "No raid buffs shown"

XPERL_DRAGHINT1		= "|c00FFFFFFClick|r to scale window"
XPERL_DRAGHINT2		= "|c00FFFFFFShift+Click|r to resize window"

-- Usage
XPerlUsageNameList	= {XPerl = "Core", XPerl_Player = "Player", XPerl_PlayerPet = "Pet", XPerl_Target = "Target", XPerl_TargetTarget = "Target's Target", XPerl_Party = "Party", XPerl_PartyPet = "Party Pets", XPerl_RaidFrames = "Raid Frames", XPerl_RaidHelper = "Raid Helper", XPerl_RaidAdmin = "Raid Admin", XPerl_TeamSpeak = "TS Monitor", XPerl_RaidMonitor = "Raid Monitor", XPerl_RaidPets = "Raid Pets", XPerl_ArcaneBar = "Arcane Bar", XPerl_PlayerBuffs = "Player Buffs", XPerl_GrimReaper = "Grim Reaper"}
XPERL_USAGE_MEMMAX	= "UI Mem Max: %d"
XPERL_USAGE_MODULES = "Modules: "
XPERL_USAGE_NEWVERSION	= "*Newer version"
XPERL_USAGE_AVAILABLE	= "%s |c00FFFFFF%s|r is available for download"

XPERL_CMD_MENU		= "menu"
XPERL_CMD_OPTIONS	= "options"
XPERL_CMD_LOCK		= "lock"
XPERL_CMD_UNLOCK	= "unlock"
XPERL_CMD_CONFIG	= "config"
XPERL_CMD_LIST		= "list"
XPERL_CMD_DELETE	= "delete"
XPERL_CMD_HELP		= "|c00FFFF80Usage: |c00FFFFFF/xperl menu | lock | unlock | config list | config delete <realm> <name>"
XPERL_CANNOT_DELETE_CURRENT = "Cannot delete you current config"
XPERL_CONFIG_DELETED		= "Deleted config for %s/%s"
XPERL_CANNOT_FIND_DELETE_TARGET = "Cannot find config to delete (%s/%s)"
XPERL_CANNOT_DELETE_BADARGS = "Please give realm name and player name"
XPERL_CONFIG_LIST		= "Config List:"
XPERL_CONFIG_CURRENT		= " (Current)"

-- Status highlight spells
XPERL_HIGHLIGHT_SPELLS = {
	hotSpells  = {
		[GetSpellInfo(26982)] = 12,			-- Rejuvenation
		[GetSpellInfo(26980)] = 21,			-- Regrowth
		[GetSpellInfo(25222)] = 15,			-- Renew
		[GetSpellInfo(5375)] = 7,			-- Swiftmend
		[GetSpellInfo(33763)] = 8,			-- Lifebloom
		[GetSpellInfo(28880)] = 15			-- Gift of the Naaru (Racial)
	},
	pomSpells = {
		[GetSpellInfo(33076)] = 30			-- Prayer of Mending
	},
	shieldSpells = {
		[GetSpellInfo(25218)] = 30,			-- Power Word: Shield
		[GetSpellInfo(32594)] = 600			-- Earth Shield			-- TODO change me
	},
	healSpells = {
		[GetSpellInfo(25235)] = 1,			-- Flash Heal
		[GetSpellInfo(25213)] = 3,			-- Greater Heal
		[GetSpellInfo(2053)] = 2,			-- Lesser Heal
		[GetSpellInfo(6064)] = 2,			-- Heal
		[GetSpellInfo(26979)] = 2,			-- Healing Touch
		[GetSpellInfo(26980)] = 2,			-- Regrowth
		[GetSpellInfo(25396)] = 3,			-- Healing Wave
		[GetSpellInfo(25420)] = 2,			-- Lesser Healing Wave
		[GetSpellInfo(27137)] = 1.5,		-- Flash of Light
		[GetSpellInfo(27136)] = 2.5			-- Holy Light
	},
	buffSpells = {
		PRIEST = {
			[GetSpellInfo(25389)] = true,	-- Power Word: Fortitude
			[GetSpellInfo(25392)] = true	-- Prayer of Fortitude
		},
	    DRUID = {
			[GetSpellInfo(26990)] = true,	-- Mark of the Wild
			[GetSpellInfo(26991)] = true	-- Gift of the Wild
		},
	    MAGE = {
			[GetSpellInfo(27126)] = true,	-- Arcane Intellect
			[GetSpellInfo(27127)] = true	-- "Arcane Brilliance"
		},
	},
	groupHealSpells = {
		[GetSpellInfo(25308)] = 3,			-- Prayer of Healing
		[GetSpellInfo(34866)] = -1			-- Circle of Healing		Negative means any group
	},
}

-- Default spells for range checking in the healer visual out-of-range cues.
XPerl_DefaultRangeSpells = {
	DRUID	= {spell = GetSpellInfo(26979)},			-- Healing Touch
	PALADIN = {spell = GetSpellInfo(27136)},			-- Holy Light
	PRIEST	= {spell = GetSpellInfo(2053)},				-- Lesser Heal
	SHAMAN	= {spell = GetSpellInfo(25396)},			-- Healing Wave
	MAGE	= {spell = GetSpellInfo(475)},				-- Remove Lesser Curse
	WARLOCK	= {spell = GetSpellInfo(132)},				-- Detect Invisibility
	ANY		= {item = "Heavy Netherweave Bandage"}		-- TODO - Use Item ID
}

-- Don't highlight these magical debuffs
XPerl_ArcaneExclusions = {
	[GetSpellInfo(30405)] = true,						-- Unstable Affliction
	[GetSpellInfo(15822)] = true,						-- Dreamless Sleep
	[GetSpellInfo(24360)] = true,						-- Greater Dreamless Sleep
	[GetSpellInfo(28504)] = true,						-- Major Dreamless Sleep
	[GetSpellInfo(31257)] = true,						-- Chilled
	[GetSpellInfo(44836)] = true,						-- Banish
	[GetSpellInfo(24306)] = true,						-- Delusions of Jin'do
	[GetSpellInfo(46543)] = {ROGUE = true, WARRIOR = true},	-- Ignite Mana
	[GetSpellInfo(16567)] = {ROGUE = true, WARRIOR = true},	-- Tainted Mind
	[GetSpellInfo(39052)] = {ROGUE = true},				-- Sonic Burst
	[GetSpellInfo(41190)] = {ROGUE = true, WARRIOR = true}, -- Mind-numbing Poison
	[GetSpellInfo(25195)] = {ROGUE = true},				-- Curse of Tongues
	[GetSpellInfo(30129)] = true,						-- Charred Earth - Nightbane debuff, can't be cleansed, but shows as magic
	[GetSpellInfo(31651)] = {MAGE = true, WARLOCK = true, PRIEST = true},	-- Banshee Curse, Melee hit rating debuff
	[GetSpellInfo(38913)] = {ROGUE = true},				-- Silence
	[GetSpellInfo(31555)] = {ROGUE = true, WARRIOR = true}, -- Decayed Intellect
}

XPERL_LOC_CLASS_PETSHUNTER	= XPERL_LOC_CLASS_HUNTER.." "..XPERL_LOC_CLASS_PETS
XPERL_LOC_CLASS_PETSWARLOCK = XPERL_LOC_CLASS_WARLOCK.." "..XPERL_LOC_CLASS_PETS
