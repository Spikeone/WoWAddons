-- General

SHEEPWATCH_VERSION = "24008"

-- English localization

SHEEPWATCH_SPELL = "Polymorph"
SHEEPWATCH_SPELL2 = "Shackle Undead"

SHEEPWATCH_TEXT_LOADED = "SheepWatch " .. SHEEPWATCH_VERSION .. " loaded - Configure with /sheep"
SHEEPWATCH_TEXT_WORLD_NOT_LOADED = "World isn't loaded. Please wait..."
SHEEPWATCH_TEXT_PROFILECLEARED = "SheepWatch: Your settings are incompatible for this version so your profile was cleared.\nSheepWatch: Please configure SheepWatch with /sheepwatch"
SHEEPWATCH_TEXT_LOCKED = "SheepWatch: Frame locked."
SHEEPWATCH_TEXT_UNLOCKED = "SheepWatch: Frame unlocked for moving."
SHEEPWATCH_TEXT_RANK  = " of Polymorph spell saved."
SHEEPWATCH_TEXT_NORANK  = "SheepWatch: Error: No " .. SHEEPWATCH_SPELL .. " rank found!\nSheepWatch: I disabled myself for this session."
SHEEPWATCH_TEXT_RESETPOS = "SheepWatch: Bar position reset"
SHEEPWATCH_TOOLTIP_TRANSPARENCY = "Drag the slider to change the bar transparency"
SHEEPWATCH_TOOLTIP_SCALING = "Drag the slider to change the bar scaling"
SHEEPWATCH_LABEL_ENABLE = "Enable SheepWatch"
SHEEPWATCH_LABEL_CLOSE = "Close"
SHEEPWATCH_LABEL_MOVE = "Move bar"
SHEEPWATCH_LABEL_MOVE2 = "Lock bar"

SHEEPWATCH_LABEL_ANNOUNCE_CONFIG = "Announce: (SAY, PARTY, RAID)"
SHEEPWATCH_LABEL_ANNOUNCE_CAST = "Cast"
SHEEPWATCH_LABEL_ANNOUNCE_T30 = "30s"
SHEEPWATCH_LABEL_ANNOUNCE_T20 = "20s"
SHEEPWATCH_LABEL_ANNOUNCE_T15 = "15s"
SHEEPWATCH_LABEL_ANNOUNCE_T10 = "10s"
SHEEPWATCH_LABEL_ANNOUNCE_T5 = "5s"
SHEEPWATCH_LABEL_ANNOUNCE_T4 = "4s"
SHEEPWATCH_LABEL_ANNOUNCE_T3 = "3s"
SHEEPWATCH_LABEL_ANNOUNCE_T2 = "2s"
SHEEPWATCH_LABEL_ANNOUNCE_T1 = "1s"
SHEEPWATCH_LABEL_ANNOUNCE_END = "End"
SHEEPWATCH_LABEL_ANNOUNCE_WHO = "Who opened it?"

SHEEPWATCH_LABEL_COUNTER = "Display an additional counter"
SHEEPWATCH_LABEL_COUNTER_DIGITS = "Show miliseconds"
SHEEPWATCH_LABEL_SOUND = "With sound"
SHEEPWATCH_LABEL_DIRECTION_LABEL = "Bar direction:"
SHEEPWATCH_LABEL_COLOR_LABEL = "Bar color:"
SHEEPWATCH_LABEL_TRANSPARENCY = "Bar transparency"
SHEEPWATCH_LABEL_SCALING = "Bar scaling"
SHEEPWATCH_LIST_DIRECTIONS = { 
					{ name = "Increasing", value = 1 },
					{ name = "Decreasing", value = 2 }
}

SHEEPWATCH_HELP1  = " - Configure with '/sheepwatch'"

SHEEPWATCH_EVENT_ON = "(.+) is afflicted by (.+)."
SHEEPWATCH_EVENT_CAST = "You cast (.+) on (.+)."
SHEEPWATCH_EVENT_BREAK = "(.+)'s (.+) is removed."
SHEEPWATCH_EVENT_FADE = "(.+) fades from (.+)."
SHEEPWATCH_EVENT_DEATH = "(.+) has died."