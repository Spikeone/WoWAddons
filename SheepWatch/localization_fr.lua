-- French localization

if( GetLocale() == "frFR" ) then

SHEEPWATCH_SPELL = "M\195\169tamorphose"

SHEEPWATCH_TEXT_LOADED = "SheepWatch " .. SHEEPWATCH_VERSION .. " Charg\195\169 - Config avec /sheep"
SHEEPWATCH_TEXT_WORLD_NOT_LOADED = "Le monde n'est pas charg\195\169, attendez s'il vous plait..."
SHEEPWATCH_TEXT_PROFILECLEARED = "SheepWatch: Vos r\195\169glages sont incompatibles avec cette version, votre profil a \195\169t\195\169 supprim\195\169.\nSheepWatch: Merci de configurer SheepWatch avec /sheepwatch"
SHEEPWATCH_TEXT_LOCKED = "SheepWatch: Frame v\195\169rrouill\195\169"
SHEEPWATCH_TEXT_UNLOCKED = "SheepWatch: Frame d\195\169verrouill\195\169"
SHEEPWATCH_TEXT_RANK = " de m\195\169tamorphose enregistr\195\169." 
SHEEPWATCH_TEXT_NORANK = "SheepWatch: Erreur: Pas de rang trouv\195\169 pour " .. SHEEPWATCH_SPELL .. "\nSheepWatch: Désactivé automatiquement pour cette session." 
SHEEPWATCH_TEXT_RESETPOS = "SheepWatch: R\195\169initialisation de la position de la barre"
SHEEPWATCH_TOOLTIP_TRANSPARENCY = "Bouge le boutton pour changer la transparence de la barre"
SHEEPWATCH_TOOLTIP_SCALING = "Bouge le boutton pour changer l'echelle de la barre"

SHEEPWATCH_LABEL_ENABLE = "Active SheepWatch"
SHEEPWATCH_LABEL_CLOSE = "Fermer"
SHEEPWATCH_LABEL_MOVE = "D\195\169verrouiller"
SHEEPWATCH_LABEL_MOVE2 = "Verrouiller"

SHEEPWATCH_LABEL_ANNOUNCE_CONFIG = "Annoncer: (Say, Group, Raid)"
SHEEPWATCH_LABEL_ANNOUNCE_CAST = "Commencement"
SHEEPWATCH_LABEL_ANNOUNCE_T30 = "30s"
SHEEPWATCH_LABEL_ANNOUNCE_T20 = "20s"
SHEEPWATCH_LABEL_ANNOUNCE_T15 = "15s"
SHEEPWATCH_LABEL_ANNOUNCE_T10 = "10s"
SHEEPWATCH_LABEL_ANNOUNCE_T5 = "5s"
SHEEPWATCH_LABEL_ANNOUNCE_T4 = "4s"
SHEEPWATCH_LABEL_ANNOUNCE_T3 = "3s"
SHEEPWATCH_LABEL_ANNOUNCE_T2 = "2s"
SHEEPWATCH_LABEL_ANNOUNCE_T1 = "1s"
SHEEPWATCH_LABEL_ANNOUNCE_END = "Finis"
SHEEPWATCH_LABEL_ANNOUNCE_WHO = "Qui a ouvrit?"

SHEEPWATCH_LABEL_COUNTER = "Affiche un compteur additionnel"
SHEEPWATCH_LABEL_COUNTER_DIGITS = "Affiche les millisecondes"
SHEEPWATCH_LABEL_SOUND = "Avec son"
SHEEPWATCH_LABEL_DIRECTION_LABEL = "Direction:"
SHEEPWATCH_LABEL_COLOR_LABEL = "Couleur:"
SHEEPWATCH_LABEL_TRANSPARENCY = "Transparence"
SHEEPWATCH_LABEL_SCALING = "Echelle de la barre"
SHEEPWATCH_LABEL_EDITBOX = "Annonce pattern:" --FIXME
SHEEPWATCH_LIST_DIRECTIONS = {
					{ name = "Augmentation", value = 1 },
					{ name = "Diminution", value = 2 }
}

SHEEPWATCH_HELP1 = " - Configurer avec '/sheepwatch'"

SHEEPWATCH_EVENT_ON = "(.+) subit les effets de " .. SHEEPWATCH_SPELL .. "."
SHEEPWATCH_EVENT_CAST = "Vous lancez (.+) sur (.+)." 
SHEEPWATCH_EVENT_BREAK = "(.+) n'est plus sous l'influence de (.+)."
SHEEPWATCH_EVENT_OFF = "(.+) sur (.+) vient de se dissiper."
SHEEPWATCH_EVENT_DEATH = "(.+) meurt."

end
