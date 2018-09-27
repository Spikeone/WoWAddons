-- German localization

if( GetLocale() == "deDE" ) then

SHEEPWATCH_SPELL = "Verwandlung"
SHEEPWATCH_SPELL2 = "Untote fesseln"

SHEEPWATCH_TEXT_LOADED = "SheepWatch " .. SHEEPWATCH_VERSION .. " geladen - Config mit /sheep"
SHEEPWATCH_TEXT_WORLD_NOT_LOADED = "SheepWatch: Welt noch nicht geladen, bitte warten..."
SHEEPWATCH_TEXT_PROFILECLEARED = "SheepWatch: Deine Einstellungen sind nicht zu dieser Version kompatibel und wurden geloescht.\nSheepWatch: Bitte konfiguriere SheepWatch mit /sheepwatch"
SHEEPWATCH_TEXT_LOCKED = "SheepWatch: Frame fixiert."
SHEEPWATCH_TEXT_UNLOCKED = "SheepWatch: Frame beweglich."
SHEEPWATCH_TEXT_RANK  = " des " ..SHEEPWATCH_SPELL.. " oder "..SHEEPWATCH_SPELL2.. " geladen."
SHEEPWATCH_TEXT_NORANK  = "SheepWatch: Fehler: Kein Rang fuer " .. SHEEPWATCH_SPELL .. " oder " ..SHEEPWATCH_SPELL2.. "  gefunden!\nSheepWatch: Ich habe mich fuer diese Session deaktiviert."
SHEEPWATCH_TEXT_RESETPOS = "SheepWatch: Position zurueckgesetzt."
SHEEPWATCH_TOOLTIP_TRANSPARENCY = "Verschiebe den Slider, um die Transparenz anzupassen"
SHEEPWATCH_TOOLTIP_SCALING = "Verschiebe den Slider, um das Scaling anzupassen"
SHEEPWATCH_LABEL_ENABLE = "SheepWatch aktivieren."
SHEEPWATCH_LABEL_CLOSE = "Schliessen"
SHEEPWATCH_LABEL_MOVE = "Verschieben"
SHEEPWATCH_LABEL_MOVE2 = "Fixieren"

SHEEPWATCH_LABEL_ANNOUNCE_CONFIG = "Ansagen: (SAY, GRUPPE, RAID)"
SHEEPWATCH_LABEL_ANNOUNCE_CAST = "Wirken"
SHEEPWATCH_LABEL_ANNOUNCE_T50 = "50s"
SHEEPWATCH_LABEL_ANNOUNCE_T40 = "40s"
SHEEPWATCH_LABEL_ANNOUNCE_T30 = "30s"
SHEEPWATCH_LABEL_ANNOUNCE_T20 = "20s"
SHEEPWATCH_LABEL_ANNOUNCE_T15 = "15s"
SHEEPWATCH_LABEL_ANNOUNCE_T10 = "10s"
SHEEPWATCH_LABEL_ANNOUNCE_T5 = "5s"
SHEEPWATCH_LABEL_ANNOUNCE_T4 = "4s"
SHEEPWATCH_LABEL_ANNOUNCE_T3 = "3s"
SHEEPWATCH_LABEL_ANNOUNCE_T2 = "2s"
SHEEPWATCH_LABEL_ANNOUNCE_T1 = "1s"
SHEEPWATCH_LABEL_ANNOUNCE_END = "Ende"
SHEEPWATCH_LABEL_ANNOUNCE_WHO = "Wer hat das Sheep geoeffnet?"

SHEEPWATCH_LABEL_COUNTER = "Zaehler aktivieren"
SHEEPWATCH_LABEL_COUNTER_DIGITS = "Zeige Millisekunden"
SHEEPWATCH_LABEL_SOUND = "Mit Sound"
SHEEPWATCH_LABEL_DIRECTION_LABEL = "Statusanzeige :"
SHEEPWATCH_LABEL_COLOR_LABEL = "Bar Farbe:"
SHEEPWATCH_LABEL_TRANSPARENCY = "Bar Transparenz"
SHEEPWATCH_LABEL_SCALING = "Bar Scaling"
SHEEPWATCH_LIST_DIRECTIONS = { 
					{ name = "Aufsteigend", value = 1 },
					{ name = "Absteigend", value = 2 }
}

SHEEPWATCH_HELP1  = " - Konfigurieren mit '/sheepwatch'"

SHEEPWATCH_EVENT_ON = "(.+) ist von " .. SHEEPWATCH_SPELL .. " betroffen."
SHEEPWATCH_EVENT_CAST = "Ihr wirkt (.+) auf (.+)."
SHEEPWATCH_EVENT_BREAK = "(.+)s (.+) wurde entfernt."
SHEEPWATCH_EVENT_FADE = "(.+) schwindet von (.+)."
SHEEPWATCH_EVENT_DEATH = "(.+) stirbt."

end
