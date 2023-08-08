local L = AceLibrary("AceLocale-2.2"):new("Talented")

L:RegisterTranslations("deDE", function () return {
	["Talented - Talent Editor"] = "Talented - Talente Editor",
	["Mode"] = "Modus",
	["Mode of operation."] = "Modiauswahl.",
	["Edit template"] = "Vorlage editieren",
	["Toggle editing of the template."] = "Vorlage editieren ein-/ausschalten.",
	["Apply template"] = "Vorlage zuweisen",
	["Apply the current template to your character."] = "Die momentane Vorlage Deinem Charakter zuweisen.",
	["Are you sure that you want to apply the current template's talents?"] = "Bist Du sicher, daß Du die momentane Talentvorlage Deinem Charakter zuweisen willst?",
	["Delete template"] = "Vorlage löschen",
	["Delete the current template."] = "Löscht die momentane Vorlage.",
	["Are you sure that you want to delete this template?"] = "Bist Du sicher, daß die momentane Vorlage gelöscht werden soll?",
	["Import template"] = "Vorlage importieren",
	["Import a template from Blizzard's talent calculator."] = "Importiert eine Vorlage von Blizzards Talentrechner.",
	["<full url of the template>"] = "<komplette url der vorlage>",
	["Export template"] = "Vorlage exportieren",
	["Export this template to your current chat channel."] = "Exportiert die Vorlage in Deinen momentanen Chat Channel.",
	["Write template link"] = "Vorlage als Link schreiben",
	["Write a link to the current template in chat."] = "Schreibt einen Link der momentanen Vorlage in den Chat.",
	["Template"] = "Vorlage",
	["New Template"] = "Neue Vorlage",
	["Create a new Template."] = "Neue Vorlage erstellen.",
	["New empty template"] = "Neue leere Vorlage",
	["Create a new template from scratch."] = "Neue leere Vorlage erstellen.",
	["Copy current talent spec"] = "Momentane Talentvergabe kopieren",
	["Create a new template from your current spec."] = "Eine neue Vorlage von Deiner momentanen Talentvergabe erstellen.",
	["Current template"] = "Momentane Vorlage",
	["Select the current template."] = "Momentane Vorlage auswählen.",
	["Sorry, I can't apply this template because you don't have enough talent points available (need %d)!"] = "Vorlage konnte nicht zugewiesen werden, weil Du nicht genug Talentpunkte zur Verfügung hast (%d werden benötigt)!",
	["Please wait while I set your talents..."] = "Bitte warten, während die Talente zugewiesen werden...",
	["Select %s"] = "Wähle %s",
	["Copy from %s"] = "Von %s kopieren",
	["Create a new template from %s."] = "Eine neue Vorlage von %s erstellen.",
	["%s (%d)"] = "%s (%d)",
	["Copy of %s"] = "Kopie von %s",
	["Empty"] = "Leer",
	["\"%s\" does not appear to be a valid URL!"] = "\"%s\" sieht nach einer ungültigen URL aus!",
	["Imported"] = "Importiert",
	["The given template is not a valid one! (%s)"] = "Die erhaltene Vorlage ist ungültig! (%s)",
	["Error while applying talents! Not enough talent points!"] = "Fehler beim Zuweisen der Talente! Nicht genug Talentpunkte!",
	["Template applied successfully, %d talent points remaining."] = "Vorlage erfolgreich zugewiesen, %d Talentpunkte übrig.",
	["Talented - Template \"%s\" - %s :"] = "Talented - Vorlage \"%s\" - %s :",
	["%s :"] = "%s :",
	["_ %s"] = "_ %s",
	["_ %s (%d/%d)"] = "_ %s (%d/%d)",
	["Remove all talent points from this tree."] = "Alle Talentpunkte aus diesem Baum entfernen.",
	["%d/%d"] = "%d/%d",
	["Error! Talented window has been closed during template application. Please reapply later."] = "Fehler! Das Talented Fenster wurde während der Vorlagenzuweisung geschlossen. Bitte später noch einmal versuchen.",
	["Talent application has been cancelled. %d talent points remaining."] = "Talentzuweisung wurde abgebrochen. %d Talentpunkte übrig.",
	["Are you sure that you want to learn \"%s (%d/%d)\" ?"] = "Bist Du sicher, daß Du \"%s (%d/%d)\" lernen willst?",
	["Options"] = "Optionen",
	["Options of Talented"] = "Talented Optionen",
	["Options for Talented."] = "Talented Optionen.",
	["Confirm Learning"] = "Erlernen bestätigen",
	["Ask for user confirmation before learning any talent."] = "Erlernen neuer Talente bestätigen.",
	["CHAT_COMMANDS"] = { "/talented" },
	["Layout options"] = "Anzeigeoptionen",
	["Options that change the visual layout of Talented."] = "Optionen, die das Erscheinungsbild von Talented ändern.",
	["Icon offset"] = "Symbolabstand",
	["Distance between icons."] = "Abstand zwischen den Symbolen.",
	["Frame scale"] = "Fensterskalierung",
	["Overall scale of the Talented frame."] = "Gesamte Skalierung des Talented Fensters.",
	["Effective tooltip information not available"] = "Effektive Tooltip Informationen nicht verfügbar",
	["Right-click to unlearn"] = "Rechtsklick zum verlernen",
	["Back to normal mode"] = "Zurück zum Normalmodus",
	["Return to the normal talents mode."] = "Zurück zum normalen Talentemodus.",
	["Switch to template mode"] = "Vorlagenmodus",
	["Enter template editing mode."] = "In Vorlageneditiermodus wechseln.",
	["Edit talents"] = "Talente editieren",
	["Toggle editing of talents."] = "Talente editieren ein-/ausschalten",
	["Talented cannot perform the required action because it does not have the required talent data available for class %s. You should inspect someone of this class."] = "Talented konnte die gewählte Aktion nicht ausführen, weil die benötigten Talentdaten für Klasse %s nicht verfügbar sind. Du solltest jemand mit dieser Klasse betrachten/inspizieren.",
	["You must install the Talented_Data helper addon for this action to work."] = "Du musst das Addon Talented_Data installieren um diese Aktion ausführen zu können.",
	["You can download it from http://files.wowace.com/ ."] = "Du kannst es hier runterladen: http://files.wowace.com/",
	["Export the template."] = "Vorlage exportieren.",
	["Export to chat"] = "Export zum Chat",
	["Export as URL"] = "Export als URL",
	["Export to ..."] = "Export zu ...",
	["Send the template to another Talented user."] = "Sendet die Vorlage an einen anderen Talented Benutzer.",
	["<name>"] = "<name>",
	["Do you want to add the template \"%s\" that %s sent you ?"] = "Willst Du die Vorlage \"%s\", die %s Dir gesendet hat hinzufügen?",
	["http://www.worldofwarcraft.com/info/classes/%s/talents.html?%s"] = "http://www.worldofwarcraft.com/info/classes/%s/talents.html?%s",
	["Error while applying talents! Invalid template!"] = "Fehler beim Zuweisen der Talente! Fehlerhafte Vorlage!",
	["Talent cap"] = "Talente cap",
	["Restrict templates to a maximum of 61 points."] = "Vorlagen auf maximal 61 Punkte beschränken.",
	["Level %d"] = "Level %d",
	["Level restriction"] = "Levelbegrenzung",
	["Show the required level for the template, instead of the number of points."] = "Zeigt den benötigten Level, statt die Anzahl der Punkte.",
	["http://www.wowhead.com/?talent=%s"] = "http://www.wowhead.com/?talent=%s",
	["Export the template as a URL."] = "Exportiert die Vorlage als eine URL.",
	["WoW Talent Calculator"] = "WoW Talentrechner",
	["Export the template as a URL to the official talent calculator"] = "Exportiert die Vorlage als eine URL für den offiziellen WoW Talentrechner.",
	["Wowhead Talent Calculator"] = "Wowhead Talentrechner",
	["Export the template as a URL to the wowhead talent calculator."] = "Exportiert die Vorlage als eine URL für den wowhead Talentrechner.",
	["Wowdb Talent Calculator"] = "Wowdb Talentrechner",
	["Export the template as a URL to the wowdb talent calculator."] = "Exportiert die Vorlage als eine URL für den wowdb Talentrechner.",
	["Don't Confirm when applying"] = "Keine Bestätigung beim Zuweisen",
	["Don't ask for user confirmation when applying full template."] = "Zeigt keine Bestätigung, wenn eine volle Vorlage den Talenten zugewiesen wird.",
	["Always try to learn talent"] = "Immer versuchen Talente zu lernen",
	["Always call the underlying API when a user input is made, even when no talent should be learned from it."] = "Immer die zugrundeliegende API aufrufen wenn eine Benutzereingabe erfolgt, auch wenn kein Talent gelernt werden sollte.",
	["Default to edit"] = "Editieren immer an",
	["Always show templates and talent in edit mode by default."] = "Editieren im Vorlagen- und Normalmodus immer aktivieren.",
	["Talented_Data is outdated. It was created for %q, but current build is %q. Please update."] = "Talented_Data ist veraltet. Es wurde für %q erstellt, aber momentane Version ist %q. Bitte aktualisieren.",
	["Set as target"] = "Als Zielvorlage setzen",
	["Set this template as the target template, so that you may use it as a guide in normal mode."] = "Diese Vorlage als Zielvorlage festlegen. Damit kann diese Vorlage als Anleitung für den Normalmodus benutzt werden.",
	["Load outdated data"] = "Veraltete Daten laden",
	["Load Talented_Data, even if outdated."] = "Lädt Talented_Data, auch wenn diese veraltet sind.",
	["Loading outdated data. |cffff1010WARNING:|r Recent changes in talent trees might not be included in this data."] = "Veraltete Daten werden geladen. |cffff1010WARNUNG:|r Änderungen an Talentbäumen, die erst kürzlich eingeführt wurden, könnten nicht in diesen Daten vorhanden sein.",
	["Talented Links options."] = "Talented Links Optionen.",
	["Color Template"] = "Vorlage färben",
	["Toggle the Template color on and off."] = "Vorlagenfarbe an-/ausschalten.",
	["Set Color"] = "Farbe wählen",
	["Change the color of the Template."] = "Ändert die Farbe der Vorlage.",
	["Query Talent Spec"] = "Talentdaten abfragen",
	["From Rock"] = "Von Rock",
	["Received talent information from LibRock."] = "Talentdaten mittels LibRock empfangen.",
	["Query"] = "Spieler abfragen",
	["Request a player's talent spec."] = "Talentdaten eines Spielers abfragen.",
	["Query group"] = "Gruppe abfragen",
	["Request talent information for your whole group (party or raid)."] = "Talentdaten Deiner ganzen Gruppe (Gruppe oder Schlachtzug) abfragen.",
	["Clone selected"] = "Ausgewählte Clonen",
	["Make a copy of the current template."] = "Eine Kopie der momentanen Vorlage erstellen.",
	["Target: %s"] = "Ziel: %s",
	["You have %d talent points left"] = "Du hast noch %d Talentpunkte zur Verfügung",
	["Inspection of %s"] = "Talente von %s",
	["Inspected Players"] = "Betrachtete Spieler",
	["Talent trees of inspected players."] = "Talentbäume der betrachteten Spieler.",
	["Hook Inspect UI"] = "Betrachten UI mitbenutzen",
	["Hook the Talent Inspection UI."] = "Talented bei Talentbetrachtung von anderen Spielern benutzen.",
	["You can edit the name of the template here. You must press the Enter key to save your changes."] = "Du kannst den Namen der Vorlage hier ändern. Du musst Return drücken um die Änderung zu speichern.",
} end)
