Displays a progress bar for Mage's Polymorph Spell.
	
This addon listens to the combatlog and its events to show a moveable progressbar 
which gives you an impression on how long your target will remain polymorphed.
	
To get help, type "/sheepwatch" or "/sheep"

Also have a look at ShackleWatch for Priests

INSTALLATION:

Extract the .zip to the "Interface\AddOns" subdirectory of your World of Warcraft installation. To remove SheepWatch, delete it.

CHANGES:

Version 24008
* Added RANGE_DAMAGE, SPELL_DAMAGE and some more stuff in an attempt to finally recognize all cases
  where the sheep will open
* ENABLE/DISABLE logic was broken

Version 24007
* Added sound. One is played at 10sec before the sheep will end, one is played when the sheep is ended. You can delete these
  sound files, opening.wav and opened.wav or replace them by other ones. A restart of WOW will be needed if you do this, /RELOADUI
  will not suffice. 
* The sheep config panel allows turning the sound off or on
* The announce logic has been improved so that if you are in a raid or group, your say-announcements will be inactivated 
  automatically.
* Added recognition for SPELL_AURA_BROKEN_SPELL. Should recognise broken sheep better now.

Version 24006
* Fixed Bug where NIL is assigned if someone uses a focus macro to resheep
* Fixed Bug where looting objects causes strange effects that seem to originate in SheepWatch
* If someone sets the focus and resheeps on the focus, this should now be recognised in many cases

Version 24005
* WHO KILLED THE SHEEP???? Added some code and: This now works again in our tests here.

Version 24004
* Removed PVP, which didn't work anymore anyway
* Some more code cleanup
* known bug: If you sheep an existing sheep (but not your own), the sheep bar will not appear, as the SPELL_AURA_REMOVED of the
  sheeped sheep comes AFTER the SPELLCAST SUCCEEDED. Since the COMBAT LOG EVENT UNFILTERED arg3 and 4 are still 0 and nil all
  the time, it is not possible to recognize this case correctly. Once the missing args are supplied by blizzard we can
  use SPELL AURA APPLIED instead of spellcast succeeded and then get the proper order again.

Version 24003
* Recognizes Sheep End

Version 24002
* Correct Version Indicator

Version 24001
* Re-enable Sheep Metamorphosis Detection and Timer Bar
* Note: Sheep End Detection still completely defunct due to Patch 2.4

Version 23008
* Enable / Disable SheepWatch didn't turn off the Sheep-Message

Version 23007
* Make all announce texts configurable for SAY, GROUP and RAID environments.
* Settings should now be saved in the profile.
* Config Dialog is now moveable.
* Works on WoW 2.3.2

Version 23006
* Try to fix the changes done poorly in 23005


Version 23005
* Changed the config dialogue. Removed "VERBOSE", "AFTER/BEFORE" and Announce Targets.
* Created Select-Boxes to enable/disable CAST, 30s, 20s, 15s, 10s, 5s, 4s, 3s, 2s, 1s, END and WHO warnings. These are sent to
	- SAY if alone
	- PARTY if member of Party
	- RAID if member of Raid
* increased range of combat log from 50 (default) to 150 (maximum allowed) to make "SHEEP END" more reliable. Still not perfect, though.

CHANGES:
Version 23004
* If the sheep ends because someone damaged it, this will be announced, so you can see who did it. Must turn on announce for this.
* If the sheep ends for other reasons, it will just say "Sheep End!"

CHANGES:
Version 23003
* improved: recognize end of sheep. + end of sheep announcement

CHANGES:
Version 23002
* fixed: "out of date"

CHANGES:
Version 23001
* first few bugs found
* disabled retarget sheep until I find out what blizzard changed with 2.30 patch

CHANGES:
Version 23000
* updated for wow version 2.0.1 - New Maintainer - FanDjango - AnSyNova
* Fixed change to new events 2.30
* ProgressBar now opens
* Announcemenst work again
* cleaned up some obsolete code
* added a Count-Down Announcement
* Left-Click / Right Click on Progress Bar still DOES NOT WORK. Am working on it.
-- Looks like I will do some more developing on this Addon for a while
-- FanDjango / AnSyNova - Abbessinia Priest 70
-- Dunno if this is the right procedure to continue this addon - it's 
-- been some months since anyone updated this, so I'll do it right now
-- I'm not stealing the idea or the code - whoever want's to can have 
-- it back anytime ;-)

KNOWN ISSUES:


UPCOMING FEATURES:
