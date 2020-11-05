-- X-Perl UnitFrames
-- Author: Zek <Boodhoof-EU>
-- License: GNU GPL v3, 29 June 2007 (see LICENSE.txt)

if (GetLocale() == "deDE") then
	XPerl_LongDescription	= "UnitFrame Alternative für ein neues Aussehen von Spieler, Begleiter, Gruppe, Ziel, Ziel des Ziels, Raid"

	XPERL_MINIMAP_HELP1 = "|c00FFFFFFLinksklick|r für Optionen (und Frames entsperren)"
	XPERL_MINIMAP_HELP2 = "|c00FFFFFFRechtsklick|r, um das Icon zu verschieben"

	XPERL_LOC_CLASS_WARRIOR = "Krieger"
	XPERL_LOC_CLASS_MAGE	= "Magier"
	XPERL_LOC_CLASS_ROGUE	= "Schurke"
	XPERL_LOC_CLASS_DRUID	= "Druide"
	XPERL_LOC_CLASS_HUNTER	= "Jäger"
	XPERL_LOC_CLASS_SHAMAN	= "Schamane"
	XPERL_LOC_CLASS_PRIEST	= "Priester"
	XPERL_LOC_CLASS_WARLOCK = "Hexenmeister"
	XPERL_LOC_CLASS_PALADIN = "Paladin"
	XPERL_LOC_CLASS_PETS	= "Begleiter"

	XPERL_LOC_CLASS_PALADINFEM	= "Paladin"
	XPERL_LOC_CLASS_WARRIORFEM	= "Kriegerin"
	XPERL_LOC_CLASS_MAGEFEM		= "Magierin"
	XPERL_LOC_CLASS_ROGUEFEM	= "Schurkin"
	XPERL_LOC_CLASS_DRUIDFEM	= "Druidin"
	XPERL_LOC_CLASS_HUNTERFEM	= "Jägerin"
	XPERL_LOC_CLASS_SHAMANFEM	= "Schamanin"
	XPERL_LOC_CLASS_PRIESTFEM	= "Priesterin"
	XPERL_LOC_CLASS_WARLOCKFEM	= "Hexenmeisterin"
	
	XPERL_TYPE_NOT_SPECIFIED	= "Nicht spezifiziert"
	XPERL_TYPE_PET		= "Begleiter"
	XPERL_TYPE_BOSS 	= "Boss"
	XPERL_TYPE_RAREPLUS = "Rar+"
	XPERL_TYPE_ELITE		= "Elite"
	XPERL_TYPE_RARE 	= "Rar"

	XPERL_SPELL_SUNDER	= "Rüstung zerreißen"
	XPERL_SPELL_SHADOWV = "Schattenverwundbarkeit"
	XPERL_SPELL_FIREV	= "Feuerverwundbarkeit"
	XPERL_SPELL_WINTERCH	= "Winterkälte"

	XPERL_LOC_DEAD		= "Tot"
	XPERL_LOC_GHOST 	= "Geist"
	XPERL_LOC_FEIGNDEATH	= "Totgestellt"
	XPERL_LOC_OFFLINE	= "Offline"
	XPERL_LOC_RESURRECTED	= "Wiederbelebung"
	XPERL_LOC_SS_AVAILABLE	= "SS verfügbar"
	XPERL_LOC_UPDATING	= "Aktualisierung"
	XPERL_RAID_GROUP	= "Gruppe %d"

	XPERL_CANCEL		= "Abbrechen"

	BINDING_HEADER_XPERL = "X-Perl Tastenbelegung"
	BINDING_NAME_TOGGLERAID = "Schalter für das Raidfenster"
	BINDING_NAME_TOGGLERAIDSORT = "Schalter für Raid sortieren nach Klasse/Gruppe"
	BINDING_NAME_TOGGLEOPTIONS = "Schalter für das Optionsfenster"
	BINDING_NAME_TOGGLEBUFFTYPE = "Schalter für Buffs/Debuffs/Keine"
	BINDING_NAME_TOGGLEBUFFCASTABLE = "Schalter für Zauberbar/Heilbar"

	XPERL_KEY_NOTICE_RAID_BUFFANY = "Alle Buffs/Debuffs zeigen"
	XPERL_KEY_NOTICE_RAID_BUFFCURECAST = "Nur zauberbare/heilbare Buffs oder Debuffs zeigen"
	XPERL_KEY_NOTICE_RAID_BUFFS = "Raid-Buffs zeigen"
	XPERL_KEY_NOTICE_RAID_DEBUFFS = "Raid-Debuffs zeigen"
	XPERL_KEY_NOTICE_RAID_NOBUFFS = "Keine Raid-Buffs zeigen"

	XPerl_DefaultRangeSpells.ANY = {item = "Schwerer Runenstoffverband"}
end

XPERL_LOC_CLASS_PETSHUNTER	= XPERL_LOC_CLASS_HUNTER.." "..XPERL_LOC_CLASS_PETS
XPERL_LOC_CLASS_PETSWARLOCK = XPERL_LOC_CLASS_WARLOCK.." "..XPERL_LOC_CLASS_PETS
