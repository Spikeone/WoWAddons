

if (GetLocale()=="deDE") then

	-- LVOnyxia
	DBM_ONYXIA_INFO			= "Zeigt eine Warnung f\195\188r Phase 2 und 3 und Onyxia den Tiefen Atem macht.";
	DBM_ONYXIA_BREATH_EMOTE	 	= "%s atmet tief ein...";
	DBM_ONYXIA_BREATH_ANNOUNCE		= "*** Tiefer Atem - Deep Breath ***"
	DBM_ONYXIA_PHASE2_YELL			= "Diese sinnlose Anstrengung langweilt mich. Ich werde Euch alle von oben verbrennen!";
	DBM_ONYXIA_PHASE2_ANNOUNCE		= "*** Phase 2 ***"
	DBM_ONYXIA_PHASE3_YELL			= "Mir scheint, dass Ihr noch eine Lektion braucht, sterbliche Wesen!";
	DBM_ONYXIA_PHASE3_ANNOUNCE		= "*** Phase 3 ***"

	-- LVAzuregos
	DBM_AZUREGOS_INFO			= "Warnt bei Azuregos Teleport und Magie Reflexion F\195\164higkeiten.";
	DBM_AZUREGOS_SHIELDUP_EXPR		= "bekommt 'Reflexion'";
	DBM_AZUREGOS_SHIELDUP_ANNOUNCE		= "*** Magie Reflexion - keine Magie gegen ihn ***";
	DBM_AZUREGOS_SHIELDDOWN_EXPR 		= "^Reflexion schwindet von Azuregos";
	DBM_AZUREGOS_SHIELDDOWN_ANNOUNCE	= "*** Magie Reflexion ende ***";
	DBM_AZUREGOS_PORT_EXPR 		= "wirkt Arkanes Vakuum";
	DBM_AZUREGOS_PORT_ANNOUNCE		= "*** Teleport ***";
	
	
	-- Maulgar
	DBM_MAULGAR_NAME			= "Hochkönig Raufgar";
	DBM_MAULGAR_DESCRIPTION		= "Sagt die Schilder und Heilungen an und zeigt Timer für Teufelsjäger, Wirbelwind und Bogenzerkracher.";
	DBM_MAULGAR_OPTION_1		= "Großes Machtwort: Schild ansagen";
	DBM_MAULGAR_OPTION_2		= "Zauberschild ansagen";
	DBM_MAULGAR_OPTION_3		= "Gebet der Heilung ansagen";
	DBM_MAULGAR_OPTION_4		= "Heilen ansagen";
	DBM_MAULGAR_OPTION_5		= "Wirbelwind ansagen";
	DBM_MAULGAR_OPTION_6		= "Bogenzerkracher ansagen";
	DBM_MAULGAR_OPTION_7		= "Teufelsjäger ansagen";

	DBM_MAULGAR_WARN_GPWS		= "*** Schild auf Blindauge ***";
	DBM_MAULGAR_WARN_SHIELD		= "*** Zauberschild auf Krosh ***";
	DBM_MAULGAR_WARN_SMASH		= "Bogenzerkracher auf %s: %s";
	DBM_MAULGAR_WARN_POH		= "*** Blindauge zaubert Gebet der Heilung ***";
	DBM_MAULGAR_WARN_HEAL		= "*** Blindauge zaubert Heilen ***";

	DBM_MAULGAR_WARN_WHIRLWIND	= "*** Wirbelwind ***";
	DBM_MAULGAR_WARN_WW_SOON	= "*** Wirbelwind bald ***";
	DBM_MAULGAR_WARN_FELHUNTER	= "*** Teufelsjäger ***";

	DBM_MAULGAR_GPWS			= "Blindauge der Seher bekommt 'Großes Machtwort: Schild'.";
	DBM_MAULGAR_SPELLSHIELD		= "Krosh Feuerhand bekommt 'Zauberschild'.";

	DBM_MAULGAR_POH				= "Blindauge der Seher beginnt Gebet der Heilung zu wirken.";
	DBM_MAULGAR_HEAL			= "Blindauge der Seher beginnt Heilen zu wirken.";
	DBM_MAULGAR_FELHUNTER		= "Olm der Beschwörer beginnt Wilden Teufelsjäger beschwören zu wirken.";
	DBM_MAULGAR_SHIELD_STOLEN	= "([^%s]+) bekommt 'Zauberschild'%.";
	DBM_MAULGAR_SHIELD_STOLEN2	= "Ihr bekommt 'Zauberschild'.";

	DBM_MAULGAR_WHIRLWIND		= "Hochkönig Raufgar bekommt 'Wirbelwind'.";
	DBM_MAULGAR_ARCING_SMASH	= "Bogenzerkracher";
	DBM_MAULGAR_SMASH_HIT		= "Hochkönig Raufgars Bogenzerkracher trifft ([^%s]+) für (%d+) Schaden.(.*)";
	DBM_MAULGAR_SMASH_MISS		= "([^%s]+) ist Bogenzerkracher von Hochkönig Raufgar (%w+).";
	DBM_MAULGAR_SMASH_MISS_2	= "Bogenzerkracher von Hochkönig Raufgar wurde von ([^%s]+) (%w+)%.";
	DBM_MAULGAR_SMASH_MISS_3	= "Bogenzerkracher von Hochkönig Raufgar (%w+) ([^%s]+)%.";
	DBM_MAULGAR_SMASH_YOU_HIT	= "Hochkönig Raufgar trifft Euch %(mit Bogenzerkracher%). Schaden: (%d+).";
	DBM_MAULGAR_SMASH_YOU_MISS	= "Hochkönig Raufgar greift an (mit Bogenzerkracher) und verfehlt Euch";
	DBM_MAULGAR_SMASH_YOU_DODGE	= "Hochkönig Raufgars Bogenzerkracher wurde ausgewichen.";
	DBM_MAULGAR_SMASH_YOU_PARRY	= "Bogenzerkracher von Hochkönig Raufgar wurde pariert.";

	DBM_MAULGAR_DODGED	= "ausgewichen";
	DBM_MAULGAR_PARRIED	= "pariert";
	DBM_MAULGAR_MISSED	= "verfehlt";
	
	DBM_SBT["Arcing Smash"]			= "Bogenzerkracher";
	DBM_SBT["Next Whirlwind"]		= "Nächster Wirbelwind";
	DBM_SBT["Whirlwind"]			= "Wirbelwind";
	DBM_SBT["Prayer of Healing"]	= "Gebet der Heilung";
	DBM_SBT["Heal"]					= "Heilen";
	DBM_SBT["Felhunter"]			= "Teufelsjäger";
	DBM_SBT["Maulgar"]				= {
		[1]	= {
			[1]	= "Spell Shield: (.+)",
			[2]	= "Zauberschild: %1",
		},
	};	
	
	-- Gruul
	DBM_GRUUL_NAME				= "Gruul der Drachenschlächter";
	DBM_GRUUL_DESCRIPTION		= "Sagt Zertrümmern, Wachsen, Nachklingen und Höhleneinsturz an.";
	
	DBM_GRUUL_RANGE_OPTION		= "Range Check Frame anzeigen";
	DBM_GRUUL_GROW_OPTION		= "Wachsen ansagen";
	DBM_GRUUL_SHATTER_OPTION	= "Zertrümmern ansagen";
	DBM_GRUUL_SILENCE_OPT		= "Nachklingen ansagen";
	DBM_GRUUL_CAVE_OPTION		= "Special Warning bei Höhleneinsturz anzeigen";

	DBM_GRUUL_SAY_PULL			= "Kommt und sterbt."
	DBM_GRUUL_GROW_EMOTE		= "%s wird größer!";
	DBM_GRUUL_CAVE_IN_YOU		= "Ihr seid von Höhleneinst.* betroffen.";
	DBM_GRUUL_SHATTER_CAST		= "Gruul der Drachenschlächter beginnt Zertrümmern zu wirken.";
	DBM_GRUUL_SLAM_CAST			= "Gruul der Drachenschlächter beginnt Erde erschüttern zu wirken.";
	DBM_GRUUL_SILENCE			= "Nachklingen";
	
	DBM_GRUUL_GROW_ANNOUNCE		= "*** Wachsen #%s ***";
	DBM_GRUUL_SHATTER_WARN		= "*** Zertrümmern ***";
	DBM_GRUUL_SHATTER_10WARN	= "*** Zertrümmern in 10 Sek ***";
	DBM_GRUUL_SILENCE_WARN		= "*** Nachklingen ***";
	DBM_GRUUL_SILENCE_SOON_WARN	= "*** Nachklingen bald ***";
	DBM_GRUUL_CAVE_IN_WARN		= "Höhleneinsturz";
	
	DBM_SBT["Shatter"]			= "Zertrümmern";
	DBM_SBT["Grow"]				= "Wachsen";
	DBM_SBT["Silence"]			= "Nachklingen";
	
	-- Kazzak
	DBM_KAZZAK_NAME				= "Verdammnislord Kazzak";
	DBM_KAZZAK_DESCRIPTION		= "Sagt Enrage und die Debuffs an.";
	
	DBM_KAZZAK_YELL_PULL		= "Für die Legion! Für Kil'Jaeden!";
	
	-- Magtheridon
	DBM_MAG_NAME			= "Magtheridon";
	DBM_MAG_DESCRIPTION		= "Sagt Infernos und Heilung an und zeigt Timer für Phase 2 und Drucknova an.";
	DBM_MAG_OPTION_1		= "Infernos ansagen";
	DBM_MAG_OPTION_2		= "Heilung ansagen";
	DBM_MAG_OPTION_3		= "Drucknova ansagen";

	DBM_MAG_EMOTE_PULL		= "Die Fesseln von %s werden schwächer!";
	DBM_MAG_YELL_PHASE2		= "Ich... bin... frei!"
	DBM_MAG_EMOTE_NOVA		= "%s beginnt, Drucknova zu wirken!";
	DBM_MAG_CAST_INFERNAL	= "Kanalisierer des Höllenfeuers wirkt Brennender Schlund.";
	DBM_MAG_CAST_HEAL		= "Kanalisierer des Höllenfeuers beginnt Dunkle Besserung zu wirken.";


	DBM_MAG_PHASE2_WARN		= "*** Phase 2 in %s Sek ***";
	DBM_MAG_WARN_P2			= "*** Magtheridon ist frei ***";
	DBM_MAG_WARN_INFERNAL	= "*** Inferno ***";
	DBM_MAG_WARN_HEAL		= "*** Heilung ***";
	DBM_MAG_WARN_NOVA_NOW	= "*** Drucknova ***";
	DBM_MAG_WARN_NOVA_SOON	= "*** Drucknova bald ***";
	
	DBM_SBT["Blast Nova"]	= "Drucknova";
end
