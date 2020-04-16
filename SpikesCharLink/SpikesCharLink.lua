local SCL_CONSTS = {}

-- version is only increased on link change
SCL_CONSTS.VERSION = 8
-- changes, minor bugfixed, features
SCL_CONSTS.VERSION_MINOR = 9

SCL_CONSTS.CLASSCOLOR = {}
SCL_CONSTS.CLASSCOLOR["DRUID"]      = "ff7d0a"
SCL_CONSTS.CLASSCOLOR["HUNTER"]     = "abd473"
SCL_CONSTS.CLASSCOLOR["MAGE"]       = "69ccf0"
SCL_CONSTS.CLASSCOLOR["PALADIN"]    = "f58cba"
SCL_CONSTS.CLASSCOLOR["PRIEST"]     = "ffffff"
SCL_CONSTS.CLASSCOLOR["ROGUE"]      = "fff569"
SCL_CONSTS.CLASSCOLOR["SHAMAN"]     = "0070de"
SCL_CONSTS.CLASSCOLOR["WARLOCK"]    = "9482c9"
SCL_CONSTS.CLASSCOLOR["WARRIOR"]    = "c79c6e"

SCL_CONSTS.CLASSICONS = {}
SCL_CONSTS.CLASSICONS["DRUID"]      = "Interface\\Addons\\SpikesCharLink\\Media\\Druid"
SCL_CONSTS.CLASSICONS["HUNTER"]     = "Interface\\Addons\\SpikesCharLink\\Media\\Hunter"
SCL_CONSTS.CLASSICONS["MAGE"]       = "Interface\\Addons\\SpikesCharLink\\Media\\Mage"
SCL_CONSTS.CLASSICONS["PALADIN"]    = "Interface\\Addons\\SpikesCharLink\\Media\\Paladin"
SCL_CONSTS.CLASSICONS["PRIEST"]     = "Interface\\Addons\\SpikesCharLink\\Media\\Priest"
SCL_CONSTS.CLASSICONS["ROGUE"]      = "Interface\\Addons\\SpikesCharLink\\Media\\Rogue"
SCL_CONSTS.CLASSICONS["SHAMAN"]     = "Interface\\Addons\\SpikesCharLink\\Media\\Shaman"
SCL_CONSTS.CLASSICONS["WARLOCK"]    = "Interface\\Addons\\SpikesCharLink\\Media\\Warlock"
SCL_CONSTS.CLASSICONS["WARRIOR"]    = "Interface\\Addons\\SpikesCharLink\\Media\\Warrior"

SCL_CONSTS.SLOTIDSTRING = {}
SCL_CONSTS.SLOTIDSTRING[1]  = "HEADSLOT"
SCL_CONSTS.SLOTIDSTRING[2]  = "NECKSLOT"
SCL_CONSTS.SLOTIDSTRING[3]  = "SHOULDERSLOT"
SCL_CONSTS.SLOTIDSTRING[4]  = "BACKSLOT"
SCL_CONSTS.SLOTIDSTRING[5]  = "CHESTSLOT"
SCL_CONSTS.SLOTIDSTRING[6]  = "SHIRTSLOT"
SCL_CONSTS.SLOTIDSTRING[7]  = "TABARDSLOT"
SCL_CONSTS.SLOTIDSTRING[8]  = "WRISTSLOT"
SCL_CONSTS.SLOTIDSTRING[9]  = "HANDSSLOT"
SCL_CONSTS.SLOTIDSTRING[10] = "WAISTSLOT"
SCL_CONSTS.SLOTIDSTRING[11] = "LEGSSLOT"
SCL_CONSTS.SLOTIDSTRING[12] = "FEETSLOT"
SCL_CONSTS.SLOTIDSTRING[13] = "FINGER0SLOT"
SCL_CONSTS.SLOTIDSTRING[14] = "FINGER1SLOT"
SCL_CONSTS.SLOTIDSTRING[15] = "TRINKET0SLOT"
SCL_CONSTS.SLOTIDSTRING[16] = "TRINKET1SLOT"
SCL_CONSTS.SLOTIDSTRING[17] = "MAINHANDSLOT"
SCL_CONSTS.SLOTIDSTRING[18] = "SECONDARYHANDSLOT"
SCL_CONSTS.SLOTIDSTRING[19] = "RANGEDSLOT"

SCL_CONSTS.SLOTIDICON = {}
SCL_CONSTS.SLOTIDICON["0"]  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Head"
SCL_CONSTS.SLOTIDICON["1"]  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Neck"
SCL_CONSTS.SLOTIDICON["2"]  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Shoulder"
SCL_CONSTS.SLOTIDICON["3"]  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Chest"
SCL_CONSTS.SLOTIDICON["4"]  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Chest"
SCL_CONSTS.SLOTIDICON["5"]  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Wrists"
SCL_CONSTS.SLOTIDICON["6"]  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Hands"
SCL_CONSTS.SLOTIDICON["7"]  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Waist"
SCL_CONSTS.SLOTIDICON["8"]  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Legs"
SCL_CONSTS.SLOTIDICON["9"]  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Feet"
SCL_CONSTS.SLOTIDICON["10"] = "Interface\\PaperDoll\\UI-PaperDoll-Slot-RFinger"
SCL_CONSTS.SLOTIDICON["11"] = "Interface\\PaperDoll\\UI-PaperDoll-Slot-RFinger"
SCL_CONSTS.SLOTIDICON["12"] = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Trinket"
SCL_CONSTS.SLOTIDICON["13"] = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Trinket"
SCL_CONSTS.SLOTIDICON["14"] = "Interface\\PaperDoll\\UI-PaperDoll-Slot-MainHand"
SCL_CONSTS.SLOTIDICON["15"] = "Interface\\PaperDoll\\UI-PaperDoll-Slot-SecondaryHand"
SCL_CONSTS.SLOTIDICON["16"] = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Ranged"

SCL_CONSTS.SLOTSTRINGICON = {}
SCL_CONSTS.SLOTSTRINGICON["HEADSLOT"]           = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Head"
SCL_CONSTS.SLOTSTRINGICON["NECKSLOT"]           = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Neck"
SCL_CONSTS.SLOTSTRINGICON["SHOULDERSLOT"]       = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Shoulder"
SCL_CONSTS.SLOTSTRINGICON["BACKSLOT"]           = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Chest"
SCL_CONSTS.SLOTSTRINGICON["CHESTSLOT"]          = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Chest"
SCL_CONSTS.SLOTSTRINGICON["SHIRTSLOT"]          = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Shirt"
SCL_CONSTS.SLOTSTRINGICON["TABARDSLOT"]         = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Tabard"
SCL_CONSTS.SLOTSTRINGICON["WRISTSLOT"]          = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Wrists"
SCL_CONSTS.SLOTSTRINGICON["HANDSSLOT"]          = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Hands"
SCL_CONSTS.SLOTSTRINGICON["WAISTSLOT"]          = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Waist"
SCL_CONSTS.SLOTSTRINGICON["LEGSSLOT"]           = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Legs"
SCL_CONSTS.SLOTSTRINGICON["FEETSLOT"]           = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Feet"
SCL_CONSTS.SLOTSTRINGICON["FINGER0SLOT"]        = "Interface\\PaperDoll\\UI-PaperDoll-Slot-RFinger"
SCL_CONSTS.SLOTSTRINGICON["FINGER1SLOT"]        = "Interface\\PaperDoll\\UI-PaperDoll-Slot-RFinger"
SCL_CONSTS.SLOTSTRINGICON["TRINKET0SLOT"]       = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Trinket"
SCL_CONSTS.SLOTSTRINGICON["TRINKET1SLOT"]       = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Trinket"
SCL_CONSTS.SLOTSTRINGICON["MAINHANDSLOT"]       = "Interface\\PaperDoll\\UI-PaperDoll-Slot-MainHand"
SCL_CONSTS.SLOTSTRINGICON["SECONDARYHANDSLOT"]  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-SecondaryHand"
SCL_CONSTS.SLOTSTRINGICON["RANGEDSLOT"]         = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Ranged"

SCL_CONSTS.CLASSTOSTRINGID = {}
SCL_CONSTS.CLASSTOSTRINGID["PRIEST"]    = "0"
SCL_CONSTS.CLASSTOSTRINGID["MAGE"]      = "1"
SCL_CONSTS.CLASSTOSTRINGID["ROGUE"]     = "2"
SCL_CONSTS.CLASSTOSTRINGID["WARRIOR"]   = "3"
SCL_CONSTS.CLASSTOSTRINGID["WARLOCK"]   = "4"
SCL_CONSTS.CLASSTOSTRINGID["DRUID"]     = "5"
SCL_CONSTS.CLASSTOSTRINGID["PALADIN"]   = "6"
SCL_CONSTS.CLASSTOSTRINGID["SHAMAN"]    = "7"
SCL_CONSTS.CLASSTOSTRINGID["HUNTER"]    = "8"

SCL_CONSTS.STRINGIDTOCLASS = {}
SCL_CONSTS.STRINGIDTOCLASS["0"] = "PRIEST"
SCL_CONSTS.STRINGIDTOCLASS["1"] = "MAGE"
SCL_CONSTS.STRINGIDTOCLASS["2"] = "ROGUE"
SCL_CONSTS.STRINGIDTOCLASS["3"] = "WARRIOR"
SCL_CONSTS.STRINGIDTOCLASS["4"] = "WARLOCK"
SCL_CONSTS.STRINGIDTOCLASS["5"] = "DRUID"
SCL_CONSTS.STRINGIDTOCLASS["6"] = "PALADIN"
SCL_CONSTS.STRINGIDTOCLASS["7"] = "SHAMAN"
SCL_CONSTS.STRINGIDTOCLASS["8"] = "HUNTER"

SCL_CONSTS.RACETOSTRINGID = {}
SCL_CONSTS.RACETOSTRINGID["Mensch"]     = "0"
SCL_CONSTS.RACETOSTRINGID["Human"]      = "0"
SCL_CONSTS.RACETOSTRINGID["Nachtelf"]   = "1"
SCL_CONSTS.RACETOSTRINGID["Nachtelfe"]  = "1"
SCL_CONSTS.RACETOSTRINGID["Night Elf"]  = "1"
SCL_CONSTS.RACETOSTRINGID["Zwerg"]      = "2"
SCL_CONSTS.RACETOSTRINGID["Dwarf"]      = "2"
SCL_CONSTS.RACETOSTRINGID["Zwergin"]    = "2"
SCL_CONSTS.RACETOSTRINGID["Gnom"]       = "3"
SCL_CONSTS.RACETOSTRINGID["Gnomin"]     = "3"
SCL_CONSTS.RACETOSTRINGID["Gnome"]      = "3"
SCL_CONSTS.RACETOSTRINGID["Draenei"]    = "4"
SCL_CONSTS.RACETOSTRINGID["Orc"]        = "5"
SCL_CONSTS.RACETOSTRINGID["Taure"]      = "6"
SCL_CONSTS.RACETOSTRINGID["Taurin"]     = "6"
SCL_CONSTS.RACETOSTRINGID["Tauren"]     = "6"
SCL_CONSTS.RACETOSTRINGID["Troll"]      = "7"
SCL_CONSTS.RACETOSTRINGID["Untoter"]    = "8"
SCL_CONSTS.RACETOSTRINGID["Untote"]     = "8"
SCL_CONSTS.RACETOSTRINGID["Undead"]     = "8"
SCL_CONSTS.RACETOSTRINGID["Blutelf"]    = "9"
SCL_CONSTS.RACETOSTRINGID["Blutelfe"]   = "9"
SCL_CONSTS.RACETOSTRINGID["Blood Elf"]  = "9"

SCL_CONSTS.STRINGIDTORACE = {}
SCL_CONSTS.STRINGIDTORACE["0"] = "Mensch"
SCL_CONSTS.STRINGIDTORACE["1"] = "Nachtelf"
SCL_CONSTS.STRINGIDTORACE["2"] = "Zwerg"
SCL_CONSTS.STRINGIDTORACE["3"] = "Gnom"
SCL_CONSTS.STRINGIDTORACE["4"] = "Draenei"
SCL_CONSTS.STRINGIDTORACE["5"] = "Orc"
SCL_CONSTS.STRINGIDTORACE["6"] = "Tauren"
SCL_CONSTS.STRINGIDTORACE["7"] = "Troll"
SCL_CONSTS.STRINGIDTORACE["8"] = "Untoter"
SCL_CONSTS.STRINGIDTORACE["9"] = "Blutelf"

SCL_CONSTS.RACESEXTOTEXTURE = {}
SCL_CONSTS.RACESEXTOTEXTURE["Mensch2"]     = "Interface\\CharacterFrame\\TemporaryPortrait-Male-Human"
SCL_CONSTS.RACESEXTOTEXTURE["Mensch3"]     = "Interface\\CharacterFrame\\TemporaryPortrait-Female-Human"
SCL_CONSTS.RACESEXTOTEXTURE["Nachtelf2"]   = "Interface\\CharacterFrame\\TemporaryPortrait-Male-NightElf"
SCL_CONSTS.RACESEXTOTEXTURE["Nachtelf3"]   = "Interface\\CharacterFrame\\TemporaryPortrait-Female-NightElf"
SCL_CONSTS.RACESEXTOTEXTURE["Zwerg2"]      = "Interface\\CharacterFrame\\TemporaryPortrait-Male-Dwarf"
SCL_CONSTS.RACESEXTOTEXTURE["Zwerg3"]      = "Interface\\CharacterFrame\\TemporaryPortrait-Female-Dwarf"
SCL_CONSTS.RACESEXTOTEXTURE["Gnom2"]       = "Interface\\CharacterFrame\\TemporaryPortrait-Male-Gnome"
SCL_CONSTS.RACESEXTOTEXTURE["Gnom3"]       = "Interface\\CharacterFrame\\TemporaryPortrait-Female-Gnome"
SCL_CONSTS.RACESEXTOTEXTURE["Draenei2"]    = "Interface\\CharacterFrame\\TemporaryPortrait-Male-Draenei"
SCL_CONSTS.RACESEXTOTEXTURE["Draenei3"]    = "Interface\\CharacterFrame\\TemporaryPortrait-Female-Draenei"
SCL_CONSTS.RACESEXTOTEXTURE["Orc2"]        = "Interface\\CharacterFrame\\TemporaryPortrait-Male-Orc"
SCL_CONSTS.RACESEXTOTEXTURE["Orc3"]        = "Interface\\CharacterFrame\\TemporaryPortrait-Female-Orc"
SCL_CONSTS.RACESEXTOTEXTURE["Tauren2"]     = "Interface\\CharacterFrame\\TemporaryPortrait-Male-Tauren"
SCL_CONSTS.RACESEXTOTEXTURE["Tauren3"]     = "Interface\\CharacterFrame\\TemporaryPortrait-Female-Tauren"
SCL_CONSTS.RACESEXTOTEXTURE["Troll2"]      = "Interface\\CharacterFrame\\TemporaryPortrait-Male-Troll"
SCL_CONSTS.RACESEXTOTEXTURE["Troll3"]      = "Interface\\CharacterFrame\\TemporaryPortrait-Female-Troll"
SCL_CONSTS.RACESEXTOTEXTURE["Untoter2"]    = "Interface\\CharacterFrame\\TemporaryPortrait-Male-Scourge"
SCL_CONSTS.RACESEXTOTEXTURE["Untoter3"]    = "Interface\\CharacterFrame\\TemporaryPortrait-Female-Scourge"
SCL_CONSTS.RACESEXTOTEXTURE["Blutelf2"]    = "Interface\\CharacterFrame\\TemporaryPortrait-Male-BloodElf"
SCL_CONSTS.RACESEXTOTEXTURE["Blutelf3"]    = "Interface\\CharacterFrame\\TemporaryPortrait-Female-BloodElf"
SCL_CONSTS.RACESEXTOTEXTURE["DEFAULT"]     = "Interface\\CharacterFrame\\TempPortrait"

SCL_CONSTS.CLASSTALENTSTRINGS = {}
SCL_CONSTS.CLASSTALENTSTRINGS["PRIEST"] = {}
SCL_CONSTS.CLASSTALENTSTRINGS["PRIEST"][1] = "Discipline"
SCL_CONSTS.CLASSTALENTSTRINGS["PRIEST"][2] = "Holy"
SCL_CONSTS.CLASSTALENTSTRINGS["PRIEST"][3] = "Shadow"

SCL_CONSTS.CLASSTALENTSTRINGS["MAGE"] = {}
SCL_CONSTS.CLASSTALENTSTRINGS["MAGE"][1] = "Arcane"
SCL_CONSTS.CLASSTALENTSTRINGS["MAGE"][2] = "Fire"
SCL_CONSTS.CLASSTALENTSTRINGS["MAGE"][3] = "Frost"

SCL_CONSTS.CLASSTALENTSTRINGS["ROGUE"] = {}
SCL_CONSTS.CLASSTALENTSTRINGS["ROGUE"][1] = "Assassination"
SCL_CONSTS.CLASSTALENTSTRINGS["ROGUE"][2] = "Combat"
SCL_CONSTS.CLASSTALENTSTRINGS["ROGUE"][3] = "Subtlety"

SCL_CONSTS.CLASSTALENTSTRINGS["WARRIOR"] = {}
SCL_CONSTS.CLASSTALENTSTRINGS["WARRIOR"][1] = "Arms"
SCL_CONSTS.CLASSTALENTSTRINGS["WARRIOR"][2] = "Fury"
SCL_CONSTS.CLASSTALENTSTRINGS["WARRIOR"][3] = "Protection"

SCL_CONSTS.CLASSTALENTSTRINGS["WARLOCK"] = {}
SCL_CONSTS.CLASSTALENTSTRINGS["WARLOCK"][1] = "Affliction"
SCL_CONSTS.CLASSTALENTSTRINGS["WARLOCK"][2] = "Demonology"
SCL_CONSTS.CLASSTALENTSTRINGS["WARLOCK"][3] = "Destruction"

SCL_CONSTS.CLASSTALENTSTRINGS["DRUID"] = {}
SCL_CONSTS.CLASSTALENTSTRINGS["DRUID"][1] = "Balance"
SCL_CONSTS.CLASSTALENTSTRINGS["DRUID"][2] = "Feral"
SCL_CONSTS.CLASSTALENTSTRINGS["DRUID"][3] = "Restoration"

SCL_CONSTS.CLASSTALENTSTRINGS["PALADIN"] = {}
SCL_CONSTS.CLASSTALENTSTRINGS["PALADIN"][1] = "Holy"
SCL_CONSTS.CLASSTALENTSTRINGS["PALADIN"][2] = "Protection"
SCL_CONSTS.CLASSTALENTSTRINGS["PALADIN"][3] = "Retribution"

SCL_CONSTS.CLASSTALENTSTRINGS["SHAMAN"] = {}
SCL_CONSTS.CLASSTALENTSTRINGS["SHAMAN"][1] = "Elemental"
SCL_CONSTS.CLASSTALENTSTRINGS["SHAMAN"][2] = "Enhancement"
SCL_CONSTS.CLASSTALENTSTRINGS["SHAMAN"][3] = "Restoration"

SCL_CONSTS.CLASSTALENTSTRINGS["HUNTER"] = {}
SCL_CONSTS.CLASSTALENTSTRINGS["HUNTER"][1] = "Beast Mastery"
SCL_CONSTS.CLASSTALENTSTRINGS["HUNTER"][2] = "Marksmanship"
SCL_CONSTS.CLASSTALENTSTRINGS["HUNTER"][3] = "Survival"

SCL_CONSTS.STATSORDERTABLE = {}
SCL_CONSTS.STATSORDERTABLE[1] = {}
SCL_CONSTS.STATSORDERTABLE[2] = {}
SCL_CONSTS.STATSORDERTABLE[3] = {}
SCL_CONSTS.STATSORDERTABLE[4] = {}

SCL_CONSTS.STATSORDERTABLE[1][1] = "M_HASTE"
SCL_CONSTS.STATSORDERTABLE[1][2] = "M_AP"
SCL_CONSTS.STATSORDERTABLE[1][3] = "M_HIT"
SCL_CONSTS.STATSORDERTABLE[1][4] = "M_CRIT"
SCL_CONSTS.STATSORDERTABLE[1][5] = "M_EXP"
SCL_CONSTS.STATSORDERTABLE[1][6] = "M_ARP"
SCL_CONSTS.STATSORDERTABLE[2][1] = "R_HASTE"
SCL_CONSTS.STATSORDERTABLE[2][2] = "R_AP"
SCL_CONSTS.STATSORDERTABLE[2][3] = "R_HIT"
SCL_CONSTS.STATSORDERTABLE[2][4] = "R_CRIT"
SCL_CONSTS.STATSORDERTABLE[2][5] = "R_ARP"
SCL_CONSTS.STATSORDERTABLE[3][1] = "S_DMG"
SCL_CONSTS.STATSORDERTABLE[3][2] = "S_HEAL"
SCL_CONSTS.STATSORDERTABLE[3][3] = "S_HIT"
SCL_CONSTS.STATSORDERTABLE[3][4] = "S_CRIT"
SCL_CONSTS.STATSORDERTABLE[3][5] = "S_HASTE"
SCL_CONSTS.STATSORDERTABLE[4][1] = "D_AMOR"
SCL_CONSTS.STATSORDERTABLE[4][2] = "D_DEFF"
SCL_CONSTS.STATSORDERTABLE[4][3] = "D_DODGE"
SCL_CONSTS.STATSORDERTABLE[4][4] = "D_PARRY"
SCL_CONSTS.STATSORDERTABLE[4][5] = "D_BLOCK"
SCL_CONSTS.STATSORDERTABLE[4][6] = "D_RES"

--SCL_CONSTS.OUTFITTER_HOOKED = false
local isOutfitterHooked = false

SCL_CONSTS.GLOWFRAMES = {
	"SCL_InspectHeadSlot 1",
	"SCL_InspectNeckSlot 2",
	"SCL_InspectShoulderSlot 3",
	"SCL_InspectBackSlot 4",
	"SCL_InspectChestSlot 5",
	"SCL_InspectShirtSlot 6",
	"SCL_InspectTabardSlot 7",
	"SCL_InspectWristSlot 8",
	"SCL_InspectHandsSlot 9",
	"SCL_InspectWaistSlot 10",
	"SCL_InspectLegsSlot 11",
	"SCL_InspectFeetSlot 12",
	"SCL_InspectFinger0Slot 13",
	"SCL_InspectFinger1Slot 14",
	"SCL_InspectTrinket0Slot 15",
	"SCL_InspectTrinket1Slot 16",
	"SCL_InspectMainHandSlot 17",
	"SCL_InspectSecondaryHandSlot 18",
	"SCL_InspectRangedSlot 19",
}

StaticPopupDialogs["SHIFT_ACCEPT_MSG"] = {
  text = "Nachricht bei gehaltener [SHIFT]-Taste. {n} = Spielername",
  button1 = "Annehmen",
  button2 = "Abbrechen",
  timeout = 0,
  whileDead = true,
  hideOnEscape = true,
  preferredIndex = 3,
  hasEditBox = true,
  OnShow = function ()
    getglobal(this:GetName().."EditBox"):SetText(SCL_SETTINGS["SHIFT_MSG"]);
  end,
  OnAccept = function ()
      local text = getglobal(this:GetParent():GetName().."EditBox"):GetText();
	  DEFAULT_CHAT_FRAME:AddMessage("New [SHIFT]-Message: " ..text)
	  SCL_SETTINGS["SHIFT_MSG"] = text
  end
}
  
local function StringToDecString(text)
  if (text == nil) then
    return "";
  end
  return (text:gsub('.', function (c)
        return string.format('%03d', string.byte(c))
  end))
end

local function StringFromDecString(decString)
  if (decString == nil) then
    return "";
  end
  
  if((decString:len() % 3) ~= 0) then
    return "";
  end
  
  return (decString:gsub('...', function (ccc)
    return string.char(tonumber(ccc, 10))
  end))
end

-- replace {cl} with the characters charlink
local origSendMessage = SendChatMessage;
SendChatMessage = function (...)
    local msg, a, b, c, d, e, f, g = ...;
    local strNewMsg = ""

    if(string.match(string.lower(msg), "{cl}")) then
        local strMsg = {string.split("\{cl\}", msg)}

        strNewMsg = string.gsub(msg, "{cl}", SCL_BuildPlayerString())
        origSendMessage(strNewMsg, a, b, c, d, e, f, g);
    else
        return origSendMessage(...);
    end
end

local origChatFrame_OnHyperlinkShow = ChatFrame_OnHyperlinkShow;
ChatFrame_OnHyperlinkShow = function(...)
    local chatFrame, link, text, button = ...;
    local r,g,b,itemID,linkType,C,D,E,clVersion,G,targetbin,name = link:match("^|cff(%x%x)(%x%x)(%x%x)|Hitem:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(%-?%d+):(%d+)|h%[(.+)%]|h|r$")

    if(itemID == "1" and linkType == "1") then
        local wisperTarget = StringFromDecString(targetbin);
        if(wisperTarget:len() == 0) then
          wisperTarget = name
        end
        if(tonumber(clVersion) > SCL_CONSTS.VERSION) then -- sender VERSION is higher than local version
            message("Your version is deprecated!\nYou have: " ..SCL_CONSTS.VERSION.. " Sender has: " ..clVersion.. "\nPlease update (see B2B Addons)!")
            return
        elseif(tonumber(clVersion) < SCL_CONSTS.VERSION) then -- receiver version is lower than sender
            -- LV = low Version
            SendAddonMessage("SCLLV", SCL_CONSTS.VERSION, "WHISPER", wisperTarget);
            message("Sender uses old Charlink version (" ..clVersion.. "). Can't open link, user has been notified!")
            return
        end
    
        --DEFAULT_CHAT_FRAME:AddMessage("Hash: " ..clEquipHash)
    
        if(IsShiftKeyDown()) then
            SCL_AddCharacterLink(link)
        else
            local requestedCharacter = "";
            if(name ~= wisperTarget) then
              requestedCharacter = ":" .. name;
            end
            
            -- DEFAULT_CHAT_FRAME:AddMessage("Char: " .. requestedCharacter .. " name " .. name .. " target " .. wisperTarget .. " binTar " .. targetbin);
            
            if(SCL_PLAYER[name]) then
                if(SCL_PLAYER[name]["E_HASH"]) then
                    SCL_ShowCharacterFrame(name, wisperTarget)
                    SCL_SetStatsInFrame(name)
                    SCL_SetBuffIconsInFrame(name)
                    -- either the following triggers sending new data which will update the frame or not
                    SendAddonMessage("SCLRC", tostring(SCL_PLAYER[name]["E_HASH"]) .. requestedCharacter, "WHISPER", wisperTarget);
                else
                    SendAddonMessage("SCLRC", "0" .. requestedCharacter, "WHISPER", wisperTarget);
                end
            else
                SendAddonMessage("SCLRC", "0" .. requestedCharacter, "WHISPER", wisperTarget);
            end
        end

        return;
    end
    
    return origChatFrame_OnHyperlinkShow(...);
end

local origCharacterFrame_ShowSubFrame = CharacterFrame_ShowSubFrame;
CharacterFrame_ShowSubFrame = function(...)
    local frameName = ...;

    if(frameName == "PaperDollFrame") then
        SCL_CharWindowButtonFrame:Show()
    else
        SCL_CharWindowButtonFrame:Hide()
    end

    return origCharacterFrame_ShowSubFrame(...);
end

function __genOrderedIndex( t )
    local orderedIndex = {}
    for key in pairs(t) do
        table.insert( orderedIndex, key )
    end
    table.sort( orderedIndex )
    return orderedIndex
end

function SCL_GetVersionString()
	return ("v" .. tostring(SCL_CONSTS.VERSION) .. "." .. tostring(SCL_CONSTS.VERSION_MINOR))
end

function orderedNext(t, state)
    -- Equivalent of the next function, but returns the keys in the alphabetic
    -- order. We use a temporary ordered key table that is stored in the
    -- table being iterated.

    local key = nil
    --print("orderedNext: state = "..tostring(state) )
    if state == nil then
        -- the first time, generate the index
        t.__orderedIndex = __genOrderedIndex( t )
        key = t.__orderedIndex[1]
    else
        -- fetch the next value
        for i = 1,table.getn(t.__orderedIndex) do
            if t.__orderedIndex[i] == state then
                key = t.__orderedIndex[i+1]
            end
        end
    end

    if key then
        return key, t[key]
    end

    -- no more value to return, cleanup
    t.__orderedIndex = nil
    return
end

function orderedPairs(t)
    -- Equivalent of the pairs() function on tables. Allows to iterate
    -- in order
    return orderedNext, t, nil
end

function SCL_DeserializePlayerStatsSimple(name, simpleData)
    if not (SCL_PLAYER[name]) then
        SCL_PLAYER[name] = {}
    end

    SCL_PLAYER[name]["MANAMAX"] = SCL_LTrim(string.sub(simpleData, 1, 5), "0")
    SCL_PLAYER[name]["HEALTHMAX"] = SCL_LTrim(string.sub(simpleData, 6, 10), "0")
end

function SCL_LTrim(strString, strTrimchar)
    while string.sub(strString, 1, 1) == strTrimchar do
        strString = string.sub(strString, 2, string.len(strString))
    end

    return strString
end

function SCL_DeserializeBaseinfoString(name, simpleData, charHash)
    if not (SCL_PLAYER[name]) then
        SCL_PLAYER[name] = {}
    end

    SCL_PLAYER[name]["E_HASH"] = charHash
    SCL_PLAYER[name]["HASH_DATE"] = tostring(date("%d.%m.%y %H:%M"))
    if(SCL_PLAYER[name]["IS_OWN"] == nil or SCL_PLAYER[name]["IS_OWN"] == "0") then
      if(name == UnitName("player")) then
        SCL_PLAYER[name]["IS_OWN"] = "1";
      else
        SCL_PLAYER[name]["IS_OWN"] = "0";
      end
    end

    -- LLCRS
    -- LL = Level
    -- C  = Class
    -- R = Race
    -- S  = Sex
    SCL_PLAYER[name]["LEVEL"] = SCL_LTrim(string.sub(simpleData, 1, 2), "0")
    SCL_PLAYER[name]["CLASS"] = SCL_CONSTS.STRINGIDTOCLASS[string.sub(simpleData, 3, 3)]
    SCL_PLAYER[name]["RACE"] = SCL_CONSTS.STRINGIDTORACE[string.sub(simpleData, 4, 4)]
    SCL_PLAYER[name]["SEX"] = string.sub(simpleData, 5, 5)
end

function SCL_OnLoad()
    this:RegisterEvent('VARIABLES_LOADED');
    this:RegisterEvent('CHAT_MSG_ADDON');
    this:RegisterEvent('PLAYER_ENTERING_WORLD');
    this:RegisterEvent('CHARACTER_POINTS_CHANGED');
--    this:RegisterEvent('PLAYER_LOGOUT'); -- no item/talent data availiable
--    this:RegisterEvent('PLAYER_LEAVING_WORLD'); -- no item/talent data availiable
    this:RegisterEvent('UNIT_INVENTORY_CHANGED');
    
    SLASH_SPIKESCHARLINK1 = "/scl";
    SLASH_SPIKESCHARLINK2 = "/charlink";
    SlashCmdList["SPIKESCHARLINK"] = function(msg)
        SCL_SlashCommandHandler(msg);
    end

    SLASH_SPIKESCHARLINK21 = "/wavel";
    SlashCmdList["SPIKESCHARLINK2"] = function(msg)
        SCL_SlashCommandHandlerW(msg);
    end
end

function SCL_SlashCommandHandlerW(msg)
    DoEmote("wave", "target")

    if(UnitIsPlayer("target")) then
        local targetplayer, realm = UnitName("target")

        if(targetplayer) then
            SendChatMessage("Charlink: " ..SCL_BuildPlayerString(), "WHISPER", nil, targetplayer);
        end
    end

end

function SCL_SlashCommandHandler(msg)
    local a, b, command = string.find( msg, "(%w+)" );

    if( command == nil ) then
        return;
    else
        command = string.lower( msg );
    end

    if (command == "version") then
        DEFAULT_CHAT_FRAME:AddMessage("SCL Version: " .. SCL_GetVersionString())
    elseif (command == "list") then
        if (SCL_CharlinkListFrame:IsVisible()) then
            SCL_CharlinkListFrame:Hide()
        else
            SCL_CharlinkListFrame:Show()
        end
	elseif (command == "shift") then
		StaticPopup_Show("SHIFT_ACCEPT_MSG")
    end

end

function SCL_Sign(v)
    return (v >= 0 and 1) or -1
end

function SCL_Round(v, bracket)
    bracket = bracket or 1
    return math.floor(v/bracket + SCL_Sign(v) * 0.5) * bracket
end

function SCL_SerializeBuffs()
    local strReturnString = ""

    for i = 1, 40 do
        local name, rank, icon, count, duration, expirationTime, _, _, _, _, _ = UnitBuff("player", i)

        if(icon ~= "" and icon ~= nil) then
            local buffIcon = {string.split("\\", icon)}

            if(strReturnString =="") then
                strReturnString = buffIcon[3]
            else
                strReturnString = strReturnString .. "," .. buffIcon[3]
            end
        end
    end

    return strReturnString
end

function SCL_SerializePlayerStatsMelee()

    local strReturnString = ""

    local meleeHaste = GetCombatRating(18)
    strReturnString = meleeHaste


    local baseAttackpower, posBuff, negBuff = UnitAttackPower("player");
    strReturnString = strReturnString .. "," .. (baseAttackpower + posBuff)

    local meleeHit = GetCombatRating(6)
    strReturnString = strReturnString .. "," .. meleeHit

    local meleeCrit = GetCritChance()
    strReturnString = strReturnString .. "," .. SCL_Round(meleeCrit, 0.01)

    local expertise, offhandExpertise = GetExpertise();
    local linkMH = GetInventoryItemLink("player", 16)
    local linkOH = GetInventoryItemLink("player", 17)

    local strExpertise = ""
    if(linkMH) then
        if(expertise) then
            strExpertise = tostring(expertise)
        else
            strExpertise = "0"
        end
    else
        strExpertise = "0"
    end

    -- if there is no mainhand but an offhand equiped its still shown as 0/nn as just showing the value would be iconsistent
    if(linkOH) then
        if(offhandExpertise) then
            strExpertise = strExpertise .."/".. tostring(offhandExpertise)
        else
            strExpertise = strExpertise .."/0"
        end
    end

    strReturnString = strReturnString .. "," .. strExpertise

    local armorPen = GetArmorPenetration()
    strReturnString = strReturnString .. "," .. armorPen

    return strReturnString
end

function SCL_SerializePlayerStatsRange()

    local strReturnString

    local speed, lowDmg, hiDmg, posBuff, negBuff, percent = UnitRangedDamage("player");
    strReturnString = speed

    local rangedbase, posBuff, negBuff = UnitRangedAttackPower("player");
    strReturnString = strReturnString .. "," .. (rangedbase + posBuff)

    local armorPen = GetArmorPenetration()
    strReturnString = strReturnString .. "," .. armorPen

    local rangedHit = GetCombatRating(7)
    strReturnString = strReturnString .. "," .. rangedHit

    local rangedCrit = GetRangedCritChance() 
    strReturnString = strReturnString .. "," .. SCL_Round(rangedCrit, 0.01)

    return strReturnString
end

function SCL_SerializePlayerStatsSpell()

    local strReturnString = ""

    local spell = 0

    for i = 1, 7 do
        local spellDmg = GetSpellBonusDamage(i);

        if (spell < spellDmg) then
            spell = spellDmg
        end
    end

    strReturnString = spell

    local spellcrit = 0

    for i = 1, 7 do
        theCritChance = GetSpellCritChance(i)
        if (spellcrit < theCritChance) then
            spellcrit = theCritChance
        end
    end

    strReturnString = strReturnString .. "," .. SCL_Round(spellcrit, 0.01)

    local bonusHeal = GetSpellBonusHealing()

    strReturnString = strReturnString .. "," .. bonusHeal

    local hitSpell = GetCombatRating(8)
    strReturnString = strReturnString .. "," .. hitSpell

    local hasteSpell = GetCombatRating(20)
    strReturnString = strReturnString .. "," .. hasteSpell

    return strReturnString
end

function SCL_SerializePlayerStatsDefense()
    local strReturnString = ""
    local base, effectiveArmor, armor, posBuff, negBuff = UnitArmor("player");
    strReturnString = effectiveArmor

    local baseDefense, armorDefense = UnitDefense("player");
    strReturnString = strReturnString .. "," .. (baseDefense + armorDefense)

    local chanceDodge = GetDodgeChance()
    strReturnString = strReturnString .. "," ..  SCL_Round(chanceDodge, 0.01)

    local chanceParry = GetParryChance()
    strReturnString = strReturnString .. "," ..  SCL_Round(chanceParry, 0.01)

    local chanceBlock = GetBlockChance()
    strReturnString = strReturnString .. "," ..  SCL_Round(chanceBlock, 0.01)

    local baseResilence = GetCombatRating(15)
    strReturnString = strReturnString .. "," ..  baseResilence

    return strReturnString
end


function SCL_SerializePlayerTalentsSimple()
    local numTalentsTab1 = SCL_GetNumTalentPoints(1);
    local numTalentsTab2 = SCL_GetNumTalentPoints(2);
    local numTalentsTab3 = SCL_GetNumTalentPoints(3);

    numTalentsTab1 = SCL_LPad(tostring(numTalentsTab1), "0", 2)
    numTalentsTab2 = SCL_LPad(tostring(numTalentsTab2), "0", 2)
    numTalentsTab3 = SCL_LPad(tostring(numTalentsTab3), "0", 2)

    return (numTalentsTab1 .. numTalentsTab2 .. numTalentsTab3), tonumber("1" .. (numTalentsTab1 .. numTalentsTab2 .. numTalentsTab3))
end

function SCL_DeserializePlayerTalentsSimple(strPlayer, strTalentString)
    if not (SCL_PLAYER[strPlayer]) then
        SCL_PLAYER[strPlayer] = {}
    end

    local numTalents1 = string.sub(strTalentString, 1, 2)
    local numTalents2 = string.sub(strTalentString, 3, 4)
    local numTalents3 = string.sub(strTalentString, 5, 6)

    SCL_PLAYER[strPlayer]["TALENTS1"] = numTalents1
    SCL_PLAYER[strPlayer]["TALENTS2"] = numTalents2
    SCL_PLAYER[strPlayer]["TALENTS3"] = numTalents3
    SCL_PLAYER[strPlayer]["TALENTSSTRING"] = numTalents1 .. "-" .. numTalents2 .. "-" ..numTalents3

    -- infos needed are saved in the variable
    SCL_PLAYER[strPlayer]["TALENTSSTRINGNAME"] = SCL_BuildTalentString(strPlayer)
end

function SCL_BuildTalentString(strName)
    -- we should at least know the player
    if not (SCL_PLAYER[strName]) then
        return "Unknown"
    end

    local numTalentPoints = SCL_GetNumSkillPoints(tonumber(SCL_PLAYER[strName]["LEVEL"]))

    local percentTalents1 = tonumber(SCL_PLAYER[strName]["TALENTS1"]) / numTalentPoints
    local percentTalents2 = tonumber(SCL_PLAYER[strName]["TALENTS2"]) / numTalentPoints
    local percentTalents3 = tonumber(SCL_PLAYER[strName]["TALENTS3"]) / numTalentPoints

    local strStringTalents = ""
    
    if(percentTalents1 > 0.7) then
        strStringTalents = "Deep " .. SCL_CONSTS.CLASSTALENTSTRINGS[SCL_PLAYER[strName]["CLASS"]][1]
    elseif(percentTalents1 > 0.3) then
        strStringTalents = SCL_CONSTS.CLASSTALENTSTRINGS[SCL_PLAYER[strName]["CLASS"]][1]
    end
    
    if(percentTalents2 > 0.7) then
        strStringTalents = "Deep " .. SCL_CONSTS.CLASSTALENTSTRINGS[SCL_PLAYER[strName]["CLASS"]][2]
    elseif(percentTalents2 > 0.3) then
        if(strStringTalents == "") then
            strStringTalents = SCL_CONSTS.CLASSTALENTSTRINGS[SCL_PLAYER[strName]["CLASS"]][2]
        else
            strStringTalents = strStringTalents .. "-" .. SCL_CONSTS.CLASSTALENTSTRINGS[SCL_PLAYER[strName]["CLASS"]][2]
        end
    end
    
    if(percentTalents3 > 0.7) then
        strStringTalents = "Deep " .. SCL_CONSTS.CLASSTALENTSTRINGS[SCL_PLAYER[strName]["CLASS"]][3]
    elseif(percentTalents3 > 0.3) then
        if(strStringTalents == "") then
            strStringTalents = SCL_CONSTS.CLASSTALENTSTRINGS[SCL_PLAYER[strName]["CLASS"]][3]
        else
            strStringTalents = strStringTalents .. "-" .. SCL_CONSTS.CLASSTALENTSTRINGS[SCL_PLAYER[strName]["CLASS"]][3]
        end
    end

    return strStringTalents
end

function SCL_GetNumSkillPoints(iLevel)
    if(iLevel < 10) then
        return 0
    else
        return iLevel - 9
    end
end

function SCL_GetNumTalentPoints(iTab)
    local numTalentsInTab = GetNumTalents(iTab)
    local numTalentCount = 0

    for i = 1, (numTalentsInTab + 1) do
        local name, iconPath, tier, column, currentRank, maxRank, isExceptional, meetsPrereq = GetTalentInfo(iTab, i);
        numTalentCount = numTalentCount + currentRank
    end

    return numTalentCount;
end

function SCL_ExtractCharacterNameFromParameter(text, index, unitName)
  if(text == nil) then
    return unitName;
  end
  local table = {string.split(':', text)};
  local characterName = table[index];  
  local appendString = "";
  if(characterName == nil or characterName:len() < 3) then
    characterName = unitName;
  else
    appendString = ":" .. characterName;
  end
  
  return characterName, appendString;
end

function SCL_OnEvent(self, event, ...)
  if (event == 'CHAT_MSG_ADDON') then
    local eventSource = arg4;

    if(arg1 == 'SCLRC') then -- request char
      -- arg2 := hash[:character name]
      local request = {string.split(':', arg2)};
      local hash = request[1];
      local characterName, appendString = SCL_ExtractCharacterNameFromParameter(arg2, 2, UnitName("player"));
            
      local charHash = "";
      local strSerializedBaseinfo = "";
      local strSerializedTalents = "";
      local strSerializedPlayer = "";
      
      if(characterName == UnitName("player")) then
        local baseInfo, baseInfoHash = SCL_SerializePlayerBaseinfo()
        local talents, talentsHash = SCL_SerializePlayerTalentsSimple()
        local player, equipHash = SCL_SerializePlayer()
        strSerializedBaseinfo = baseInfo;
        strSerializedTalents = talents;
        strSerializedPlayer = player;
        charHash = tostring(baseInfoHash) .. tostring(talentsHash) .. tostring(equipHash) .. appendString
      else
        local playerRef = SCL_PLAYER[characterName];
        -- collect values from DB
        strSerializedBaseinfo = playerRef["LEVEL"] .. SCL_CONSTS.CLASSTOSTRINGID[playerRef["CLASS"]] .. SCL_CONSTS.RACETOSTRINGID[playerRef["RACE"]] .. playerRef["SEX"];
        strSerializedTalents = playerRef["TALENTS1"] .. playerRef["TALENTS2"] .. playerRef["TALENTS3"];
        
        local playerTab = {};
        for i, slotID in ipairs(SCL_CONSTS.SLOTIDSTRING) do
          -- remove trailing :0es and leading item
          local item = playerRef[slotID]:replace(":0$", ""):sub(6);
          -- replace ':' with ','
          playerTab[#playerTab + 1] = item:replace(':', ',');
        end
        
        strSerializedPlayer = table.concat (playerTab,":") .. appendString;
        charHash = SCL_PLAYER[characterName]["E_HASH"] .. appendString;
      end

      if(charHash == tostring(arg2)) then
        SendAddonMessage("SCLSH", charHash, "WHISPER", eventSource);
        return;
      end

      local strSerializedPlayerSimpleStats = "";
      local strSerializedPlayerStats = "";
      local strSerializedBuffs = "";
      if(characterName == UnitName("player")) then
        strSerializedPlayerSimpleStats = SCL_SerializePlayerStatsSimple();
        strSerializedPlayerStats = SCL_SerializePlayerStats();
        strSerializedBuffs = SCL_SerializeBuffs();
      else
        local playerRef = SCL_PLAYER[characterName];
        strSerializedPlayerSimpleStats = string.format("%05d", tonumber(playerRef["MANAMAX"])) .. string.format("%05d", tonumber(playerRef["HEALTHMAX"]));
        
        local statsTab = {};
        for i, category in ipairs(SCL_CONSTS.STATSORDERTABLE) do
          local statGroupTab = {};
          for j,item in ipairs(category) do
            statGroupTab[#statGroupTab + 1] = playerRef[item];
          end
          statsTab[#statsTab + 1] = table.concat (statGroupTab, ',');
        end
        strSerializedPlayerStats = table.concat (statsTab, ':') .. appendString;
        
        local buffTab = {};
        for i = 1, 40 do
          local buff = playerRef["BUFF" .. i];
          if(buff ~=nil and buff ~= "") then
            buffTab[#buffTab + 1] = buff;
          end
        end
        strSerializedBuffs = table.concat (buffTab, ',') .. appendString;
      end

      SendAddonMessage("SCLST", (tostring(charHash) ..",".. strSerializedBaseinfo ..",".. strSerializedTalents ..",".. strSerializedPlayerSimpleStats), "WHISPER", eventSource);
      SendAddonMessage("SCLII", strSerializedPlayer, "WHISPER", eventSource);
      SendAddonMessage("SCLIS", strSerializedPlayerStats, "WHISPER", eventSource);
      SendAddonMessage("SCLIB", strSerializedBuffs, "WHISPER", eventSource);
    elseif(arg1 == "SCLII") then
      -- arg2 := data(:data){19}[:character name]
      local characterName = SCL_ExtractCharacterNameFromParameter(arg2, 20, arg4);
      SCL_DeserializePlayerItemsStringShort(arg2, characterName);
      SCL_ShowCharacterFrame(characterName, eventSource);
      SCL_CharList_FillButtons();
    elseif(arg1 == "SCLIS") then
      -- arg2 := data(:data){21}[:encoded character name]
      local characterName = SCL_ExtractCharacterNameFromParameter(arg2, 5, arg4);
      
      SCL_DeserializePlayerStats(arg2, characterName)
    elseif(arg1 == "SCLIB") then
      -- arg2 := (buff(,buff){0,40})[:character name]
      local segments = {string.split(':', arg2)};
      local buffs = segments[1];
      local characterName = SCL_ExtractCharacterNameFromParameter(arg2, 2, arg4);
      
      SCL_DeserializePlayerBuffs(buffs, characterName)
    elseif(arg1 == "SCLLV") then
      -- arg2 := version
            message("Your version is deprecated!\nYou have: " ..SCL_CONSTS.VERSION.. " Sender has: " ..arg2.. "\nPlease update (see B2B Addons)!")
    elseif(arg1 == "SCLST") then
      -- arg2 := hash[:character name],baseinfo,talents,simpleData
      local dataStrings = {string.split(",", arg2)};
      local characterName = SCL_ExtractCharacterNameFromParameter(dataStrings[1], 2, arg4);
      local hashTab = {string.split(":", dataStrings[1])};
      local baseInfo = dataStrings[2];
      local telentsSimple = dataStrings[3];
      local simpleData = dataStrings[4];
            
      SCL_DeserializeBaseinfoString(characterName, baseInfo, hashTab[1])
      SCL_DeserializePlayerTalentsSimple(characterName, telentsSimple)
      SCL_DeserializePlayerStatsSimple(characterName, simpleData)
    elseif(arg1 == "SCLSH") then
      -- arg2 := hash[:encoded character name]
      local characterName = SCL_ExtractCharacterNameFromParameter(arg2, 2, arg4);
      SCL_PLAYER[characterName]["HASH_DATE"] = tostring(date("%d.%m.%y %H:%M"))
            SCL_CharList_FillButtons()
    end
  elseif(event == 'VARIABLES_LOADED') then
    if not(SCL_PLAYER) then
        SCL_PLAYER = {}
    end
	  if not(SCL_SETTINGS) then
		  SCL_SETTINGS = {}
		  SCL_SETTINGS["SHIFT_MSG"] = "Hallo {n}, du bist dabei! Bitte sei pünktlich zum Raid online und whispere mich an!"
	  end
  elseif(event == 'PLAYER_ENTERING_WORLD') then
      SCL_HookOutfitter()
  elseif(event == 'CHARACTER_POINTS_CHANGED' or event == 'UNIT_INVENTORY_CHANGED') then
    local baseInfo, baseInfoHash = SCL_SerializePlayerBaseinfo()
    local talents, talentsHash = SCL_SerializePlayerTalentsSimple()
    local player, equipHash = SCL_SerializePlayer()
    local hash = tostring(baseInfoHash) .. tostring(talentsHash) .. tostring(equipHash)
    local characterName = UnitName('player')

    SCL_DeserializeBaseinfoString(characterName, baseInfo, hash)
    SCL_DeserializePlayerTalentsSimple(characterName, talents)
    SCL_DeserializePlayerStatsSimple(characterName, SCL_SerializePlayerStatsSimple())

    SCL_DeserializePlayerItemsStringShort(player, characterName)
    SCL_DeserializePlayerBuffs(SCL_SerializeBuffs(), characterName)
    SCL_DeserializePlayerStats(SCL_SerializePlayerStats(), characterName)
  end
end

function SCL_DeserializePlayerBuffs(strDataString, strPlayer)
    local buffStrings = {string.split(",", strDataString)}

    if not (SCL_PLAYER[strPlayer]) then
        SCL_PLAYER[strPlayer] = {}
    end
    
    for i = 1, table.getn(buffStrings) do
        SCL_PLAYER[strPlayer][("BUFF" .. i)] = buffStrings[i]
    end

    if(SCL_InspectNameText:GetText() == strPlayer) then
        SCL_SetBuffIconsInFrame(strPlayer)
    end
end

    

function SCL_SetBuffIconsInFrame(strPlayer)
    for i = 1, 40 do
        if(SCL_PLAYER[strPlayer][("BUFF" .. i)] == nil or SCL_PLAYER[strPlayer][("BUFF" .. i)] == "") then
            getglobal("SCL_BUFF"..i):Hide()
        else
            getglobal("SCL_BUFF"..i):SetNormalTexture("Interface\\Icons\\" .. SCL_PLAYER[strPlayer][("BUFF" .. i)])
            getglobal("SCL_BUFF"..i):Show()
        end
    end
end


function SCL_DeserializePlayerStats(strStatsString, strPlayer)
    local statStrings = {string.split(":", strStatsString)}

    if not (SCL_PLAYER[strPlayer]) then
        SCL_PLAYER[strPlayer] = {}
    end

    for i = 1, table.getn(statStrings) do
        SCL_GetStats(statStrings[i], i, strPlayer)
    end
end

function SCL_GetStats(strStatString, iIndex, strPlayer)
    if not (SCL_PLAYER[strPlayer]) then
        SCL_PLAYER[strPlayer] = {}
    end

    local statInfoStrings = {string.split(",", strStatString)}

    if(iIndex==1) then
        if(statInfoStrings[1] == nil or statInfoStrings[1] == "") then
            SCL_PLAYER[strPlayer]["M_HASTE"] = "0"
        else
            SCL_PLAYER[strPlayer]["M_HASTE"] = statInfoStrings[1]
        end

        if(statInfoStrings[2] == nil or statInfoStrings[2] == "") then
            SCL_PLAYER[strPlayer]["M_AP"] = "0"
        else
            SCL_PLAYER[strPlayer]["M_AP"] = statInfoStrings[2]
        end

        if(statInfoStrings[3] == nil or statInfoStrings[3] == "") then
            SCL_PLAYER[strPlayer]["M_HIT"] = "0"
        else
            SCL_PLAYER[strPlayer]["M_HIT"] = statInfoStrings[3]
        end

        if(statInfoStrings[4] == nil or statInfoStrings[4] == "") then
            SCL_PLAYER[strPlayer]["M_CRIT"] = "0"
        else
            SCL_PLAYER[strPlayer]["M_CRIT"] = statInfoStrings[4]
        end

        if(statInfoStrings[5] == nil or statInfoStrings[5] == "") then
            SCL_PLAYER[strPlayer]["M_EXP"] = "0"
        else
            SCL_PLAYER[strPlayer]["M_EXP"] = statInfoStrings[5]
        end

        if(statInfoStrings[6] == nil or statInfoStrings[6] == "") then
            SCL_PLAYER[strPlayer]["M_ARP"] = "0"
        else
            SCL_PLAYER[strPlayer]["M_ARP"] = statInfoStrings[6]
        end
    elseif(iIndex==2) then
        if(statInfoStrings[1] == nil or statInfoStrings[1] == "") then
            SCL_PLAYER[strPlayer]["S_DMG"] = "0"
        else
            SCL_PLAYER[strPlayer]["S_DMG"] = statInfoStrings[1]
        end

        if(statInfoStrings[2] == nil or statInfoStrings[2] == "") then
            SCL_PLAYER[strPlayer]["S_CRIT"] = "0"
        else
            SCL_PLAYER[strPlayer]["S_CRIT"] = statInfoStrings[2]
        end

        if(statInfoStrings[3] == nil or statInfoStrings[3] == "") then
            SCL_PLAYER[strPlayer]["S_HEAL"] = "0"
        else
            SCL_PLAYER[strPlayer]["S_HEAL"] = statInfoStrings[3]
        end

        if(statInfoStrings[4] == nil or statInfoStrings[4] == "") then
            SCL_PLAYER[strPlayer]["S_HIT"] = "0"
        else
            SCL_PLAYER[strPlayer]["S_HIT"] = statInfoStrings[4]
        end

        if(statInfoStrings[5] == nil or statInfoStrings[5] == "") then
            SCL_PLAYER[strPlayer]["S_HASTE"] = "0"
        else
            SCL_PLAYER[strPlayer]["S_HASTE"] = statInfoStrings[5]
        end
    elseif(iIndex==3) then
        if(statInfoStrings[1] == nil or statInfoStrings[1] == "") then
            SCL_PLAYER[strPlayer]["R_HASTE"] = "0"
        else
            SCL_PLAYER[strPlayer]["R_HASTE"] = statInfoStrings[1]
        end

        if(statInfoStrings[2] == nil or statInfoStrings[2] == "") then
            SCL_PLAYER[strPlayer]["R_AP"] = "0"
        else
            SCL_PLAYER[strPlayer]["R_AP"] = statInfoStrings[2]
        end

        if(statInfoStrings[3] == nil or statInfoStrings[3] == "") then
            SCL_PLAYER[strPlayer]["R_ARP"] = "0"
        else
            SCL_PLAYER[strPlayer]["R_ARP"] = statInfoStrings[3]
        end

        if(statInfoStrings[4] == nil or statInfoStrings[4] == "") then
            SCL_PLAYER[strPlayer]["R_HIT"] = "0"
        else
            SCL_PLAYER[strPlayer]["R_HIT"] = statInfoStrings[4]
        end

        if(statInfoStrings[5] == nil or statInfoStrings[5] == "") then
            SCL_PLAYER[strPlayer]["R_CRIT"] = "0"
        else
            SCL_PLAYER[strPlayer]["R_CRIT"] = statInfoStrings[5]
        end
    elseif(iIndex==4) then
        if(statInfoStrings[1] == nil or statInfoStrings[1] == "") then
            SCL_PLAYER[strPlayer]["D_AMOR"] = "0"
        else
            SCL_PLAYER[strPlayer]["D_AMOR"] = statInfoStrings[1]
        end

        if(statInfoStrings[2] == nil or statInfoStrings[2] == "") then
            SCL_PLAYER[strPlayer]["D_DEFF"] = "0"
        else
            SCL_PLAYER[strPlayer]["D_DEFF"] = statInfoStrings[2]
        end

        if(statInfoStrings[3] == nil or statInfoStrings[3] == "") then
            SCL_PLAYER[strPlayer]["D_DODGE"] = "0"
        else
            SCL_PLAYER[strPlayer]["D_DODGE"] = statInfoStrings[3]
        end

        if(statInfoStrings[4] == nil or statInfoStrings[4] == "") then
            SCL_PLAYER[strPlayer]["D_PARRY"] = "0"
        else
            SCL_PLAYER[strPlayer]["D_PARRY"] = statInfoStrings[4]
        end

        if(statInfoStrings[5] == nil or statInfoStrings[5] == "") then
            SCL_PLAYER[strPlayer]["D_BLOCK"] = "0"
        else
            SCL_PLAYER[strPlayer]["D_BLOCK"] = statInfoStrings[5]
        end

        if(statInfoStrings[6] == nil or statInfoStrings[6] == "") then
            SCL_PLAYER[strPlayer]["D_RES"] = "0"
        else
            SCL_PLAYER[strPlayer]["D_RES"] = statInfoStrings[6]
        end
    end

    if(SCL_InspectNameText:GetText() == strPlayer) then
        SCL_SetStatsInFrame(strPlayer)
    end

end

function SCL_SetStatsInFrame(name)
    SCL_InspectStatHasteR:SetText(SCL_PLAYER[name]["M_HASTE"])
    SCL_InspectStatAttackpowerR:SetText(SCL_PLAYER[name]["M_AP"])
    SCL_InspectMeleeHitR:SetText(SCL_PLAYER[name]["M_HIT"])
    SCL_InspectMeleeCritR:SetText(SCL_PLAYER[name]["M_CRIT"])
    SCL_InspectExpertiseR:SetText(SCL_PLAYER[name]["M_EXP"])
    SCL_InspectMeleeArmorpenR:SetText(SCL_PLAYER[name]["M_ARP"])

    SCL_InspectRangedHasteR:SetText(SCL_PLAYER[name]["R_HASTE"])
    SCL_InspectRangedAttackpowerR:SetText(SCL_PLAYER[name]["R_AP"])
    SCL_InspectRangedHitR:SetText(SCL_PLAYER[name]["R_HIT"])
    SCL_InspectRangedCritR:SetText(SCL_PLAYER[name]["R_CRIT"])
    SCL_InspectRangedArmorpenR:SetText(SCL_PLAYER[name]["R_ARP"])

    SCL_InspectSpellDamageR:SetText(SCL_PLAYER[name]["S_DMG"])
    SCL_InspectSpellHealR:SetText(SCL_PLAYER[name]["S_HEAL"])
    SCL_InspectSpellHitR:SetText(SCL_PLAYER[name]["S_HIT"])
    SCL_InspectSpellCritR:SetText(SCL_PLAYER[name]["S_CRIT"])
    SCL_InspectSpellHasteR:SetText(SCL_PLAYER[name]["S_HASTE"])

    SCL_InspectArmorR:SetText(SCL_PLAYER[name]["D_AMOR"])
    SCL_InspectDefenseR:SetText(SCL_PLAYER[name]["D_DEFF"])
    SCL_InspectDdodgeR:SetText(SCL_PLAYER[name]["D_DODGE"])
    SCL_InspectParryR:SetText(SCL_PLAYER[name]["D_PARRY"])
    SCL_InspectBlockR:SetText(SCL_PLAYER[name]["D_BLOCK"])
    SCL_InspectResilenceR:SetText(SCL_PLAYER[name]["D_RES"])
end

function SCL_SerializePlayerStats()
    local strReturnString = ""

    strReturnString = SCL_SerializePlayerStatsMelee()
    strReturnString = strReturnString .. ":"
    strReturnString = strReturnString .. SCL_SerializePlayerStatsSpell()
    strReturnString = strReturnString .. ":"
    strReturnString = strReturnString .. SCL_SerializePlayerStatsRange()
    strReturnString = strReturnString .. ":"
    strReturnString = strReturnString .. SCL_SerializePlayerStatsDefense()

    return strReturnString
end

function SCL_DeserializePlayerItemsStringShort(strItemsString, strPlayer)
    local itemStrings = {string.split(":", strItemsString)}

    for i, slotID in ipairs(SCL_CONSTS.SLOTIDSTRING) do      
        local itemString = itemStrings[i]
        if(itemString == nil) then
          itemString = ""
        end

        if not (SCL_PLAYER[strPlayer]) then
            SCL_PLAYER[strPlayer] = {}
        end

        SCL_PLAYER[strPlayer][slotID] = SCL_RebuildItemString(itemString)
    end    
end

function SCL_RebuildItemString(strItemString)

    local ItemInfoStrings = {string.split(",", strItemString)}

    if(ItemInfoStrings[1] == nil or ItemInfoStrings[1] == "") then
        itemID = "0"
    else
        itemID = ItemInfoStrings[1]
    end

    if(ItemInfoStrings[2] == nil or ItemInfoStrings[2] == "") then
        enchantID = "0"
    else
        enchantID = ItemInfoStrings[2]
    end

    if(ItemInfoStrings[3] == nil or ItemInfoStrings[3] == "") then
        gem1 = "0"
    else
        gem1 = ItemInfoStrings[3]
    end

    if(ItemInfoStrings[4] == nil or ItemInfoStrings[4] == "") then
        gem2 = "0"
    else
        gem2 = ItemInfoStrings[4]
    end

    if(ItemInfoStrings[5] == nil or ItemInfoStrings[5] == "") then
        gem3 = "0"
    else
        gem3 = ItemInfoStrings[5]
    end

    if(ItemInfoStrings[6] == nil or ItemInfoStrings[6] == "") then
        gem4 = "0"
    else
        gem4 = ItemInfoStrings[6]
    end

    if(ItemInfoStrings[7] == nil or ItemInfoStrings[7] == "") then
        rndID = "0"
    else
        rndID = ItemInfoStrings[7]
    end

    local strNewItemString = "item:" ..itemID.. ":" ..enchantID.. ":" ..gem1.. ":" ..gem2.. ":" ..gem3.. ":"..gem4.. ":" ..rndID.. ":0"
    
    return strNewItemString
end

function SCL_OnUpdate(self, elapsed)

end

function SCL_SetFrameInfo(strUnitName, eventSource)
    SCL_InspectNameText:SetText(strUnitName);
    if(strUnitName == eventSource) then
      SCL_InspectLoggedInAsText:SetText("");
      SCL_InspectLoggedInAsTextPredicate:SetText("");
    else
      SCL_InspectLoggedInAsTextPredicate:SetText("@");
      SCL_InspectLoggedInAsText:SetText(eventSource);
    end

    SCL_InspectLevelText:SetText("Level: " .. SCL_PLAYER[strUnitName]["LEVEL"] .. " " .. SCL_PLAYER[strUnitName]["CLASS"] .. " " .. SCL_PLAYER[strUnitName]["RACE"]);
    SCL_InspectTitleText:SetText("Skillung: " .. SCL_PLAYER[strUnitName]["TALENTSSTRINGNAME"] .. " (" .. SCL_PLAYER[strUnitName]["TALENTSSTRING"] .. ")");
    CharLinkRejectPlayerClass:SetNormalTexture(SCL_CONSTS.CLASSICONS[SCL_PLAYER[strUnitName]["CLASS"]])

    if(SCL_PLAYER[strUnitName]["CLASS"] == "ROGUE") then
        SCL_PlayerMana:SetStatusBarColor(1,1,0)
    elseif(SCL_PLAYER[strUnitName]["CLASS"] == "WARRIOR") then
        SCL_PlayerMana:SetStatusBarColor(1,0,0)
    else
        SCL_PlayerMana:SetStatusBarColor(0,0,1)
    end
    SCL_PlayerHealthText:SetText(SCL_PLAYER[strUnitName]["HEALTHMAX"])
    SCL_PlayerManaText:SetText(SCL_PLAYER[strUnitName]["MANAMAX"])

    -- portrait is set depending on race+sex
    -- e.g. Draenei1 = male
    --      Draenei2 = female

    if(SCL_CONSTS.RACESEXTOTEXTURE[SCL_PLAYER[strUnitName]["RACE"] .. SCL_PLAYER[strUnitName]["SEX"]]) then
        SetPortraitToTexture(SCL_InspectFramePortrait, SCL_CONSTS.RACESEXTOTEXTURE[SCL_PLAYER[strUnitName]["RACE"] .. SCL_PLAYER[strUnitName]["SEX"]]);
    else
        SetPortraitToTexture(SCL_InspectFramePortrait, SCL_CONSTS.RACESEXTOTEXTURE["DEFAULT"]);
    end
end

function SCL_ShowCharacterFrame(strPlayer, eventSource)
    if(eventSource == nil or eventSource == "") then
        eventSource = strPlayer;
    end
    if(strPlayer == nil or strPlayer == "") then
        return
    end

    SCL_SetFrameInfo(strPlayer, eventSource);

    SCL_ItemSlotButton_Update(SCL_InspectHeadSlot);
    SCL_ItemSlotButton_Update(SCL_InspectNeckSlot);
    SCL_ItemSlotButton_Update(SCL_InspectShoulderSlot);
    SCL_ItemSlotButton_Update(SCL_InspectBackSlot);
    SCL_ItemSlotButton_Update(SCL_InspectChestSlot);
    SCL_ItemSlotButton_Update(SCL_InspectShirtSlot);
    SCL_ItemSlotButton_Update(SCL_InspectTabardSlot);
    SCL_ItemSlotButton_Update(SCL_InspectWristSlot);
    SCL_ItemSlotButton_Update(SCL_InspectHandsSlot);
    SCL_ItemSlotButton_Update(SCL_InspectWaistSlot);
    SCL_ItemSlotButton_Update(SCL_InspectLegsSlot);
    SCL_ItemSlotButton_Update(SCL_InspectFeetSlot);
    SCL_ItemSlotButton_Update(SCL_InspectFinger0Slot);
    SCL_ItemSlotButton_Update(SCL_InspectFinger1Slot);
    SCL_ItemSlotButton_Update(SCL_InspectTrinket0Slot);
    SCL_ItemSlotButton_Update(SCL_InspectTrinket1Slot);
    SCL_ItemSlotButton_Update(SCL_InspectMainHandSlot);
    SCL_ItemSlotButton_Update(SCL_InspectSecondaryHandSlot);
    SCL_ItemSlotButton_Update(SCL_InspectRangedSlot);

	SCL_SetGlow(strPlayer);
	
    SCL_InspectFrame:Show()
end

-- thanks to 'Haste', author of oGlow
-- Author-eMail: troeks@gmail.com
-- Author-Website: http://fuxsake.net/

function SCL_SetGlow(strPlayer)
	for i, value in pairs(SCL_CONSTS.GLOWFRAMES) do
		local key, index = string.split(" ", value)
	
		local tmpFrame = getglobal(key)
		
		if(not tmpFrame.bc) then SCL_CreateGlowBorder(tmpFrame, point) end
	
		local linkItem = SCL_PLAYER[strPlayer][SCL_CONSTS.SLOTIDSTRING[index]]
		
		if (linkItem) then
			local q = select(3, GetItemInfo(linkItem))
			if (q) then
				SCL_SetGlowBorderColor(tmpFrame, q)
			else
				SCL_SetGlowBorderColor(tmpFrame, 0)
			end
		else
			SCL_SetGlowBorderColor(tmpFrame, 0)
		end
	end
end

function SCL_SetGlowBorderColor(frame, q)
	if(q > 1) then
		border = frame.bc
		if(border) then
			r, g, b = GetItemQualityColor(q)
			border:SetVertexColor(r, g, b)
			border:Show()
		end
	elseif(frame.bc) then
		frame.bc:Hide()
	end
end

function SCL_CreateGlowBorder(frame)
	local bc = frame:CreateTexture(nil, "OVERLAY")
	bc:SetTexture"Interface\\Buttons\\UI-ActionButton-Border"
	bc:SetBlendMode"ADD"
	bc:SetAlpha(.8)

	bc:SetWidth(70)
	bc:SetHeight(70)

	bc:SetPoint("CENTER", frame)

	frame.bc = bc
end

function SCL_HookOutfitter()
    if(not IsAddOnLoaded("Outfitter")) then 
        return 
    end

    if(getglobal("PaperDollFrame")) then
        getglobal("PaperDollFrame"):HookScript("OnShow", SCL_HookPaperdoll)
    end
end

function SCL_HookPaperdoll()
    if(isOutfitterHooked) then return end

    if(getglobal("OutfitterQuickSlots")) then
        getglobal("OutfitterQuickSlots"):HookScript("OnShow", SCL_HookOutfitterQuickslotsShow)
    end
end

-- this function is only called if the Quickslots frame exists, no getglobal needed
function SCL_HookOutfitterQuickslotsShow()
    getglobal("OutfitterQuickSlots"):SetFrameLevel(getglobal("SCL_CharWindowButtonFrame"):GetFrameLevel() + 10)
    isOutfitterHooked = true
end

function SCL_AddCharacterLink(link)
    -- This is for WIM compatibility
    -- Step 1: Check if WIM is loaded
    if(IsAddOnLoaded("WIM")) then
        -- Step 2: iterate through all children of UI parent
        for i = 1, select('#', UIParent:GetChildren()) do
            -- Step 3: it might be a wim_window
            local wim_messageframe = select(i, UIParent:GetChildren())

            -- Step 3.1: has the frame a name?
            if(wim_messageframe:GetName()) then
                -- Step 3.2: Does the name start with "WIM_msgFrame"? (They are called WIM_msgFrame1, WIM_msgFrame2, etc.)
                if(string.sub(wim_messageframe:GetName(), 0,12) == "WIM_msgFrame") then

                    -- Step 4: iterate through all children of  the WIM_msgFrame
                    for j = 1, select('#', wim_messageframe:GetChildren()) do
                        -- Step 5: it might be a MsgBox (Input box)
                        local wim_messageframe_edit = select(j, wim_messageframe:GetChildren())
                        -- Step 5.1: Frame name contains MsgBox at the end?(They are called IM_msgFrame1MsgBox, WIM_msgFrame2MsgBox, etc) and the parent frame is shown?
                        if(string.sub(wim_messageframe_edit:GetName(), 14,19) == "MsgBox" and wim_messageframe:IsShown()) then

                            -- Step 5.2: the input box has focus?
                            if(wim_messageframe_edit:HasFocus()) then
                                -- Step 6: add message
                                if(wim_messageframe_edit:GetText() ~= "") then
                                    if(not string.match(string.lower(wim_messageframe_edit:GetText()), " anal")) then
                                        wim_messageframe_edit:SetText(wim_messageframe_edit:GetText() .. " " .. link .. " ");
                                    end
                                else
                                    wim_messageframe_edit:SetText(link .. " ")
                                end

                                return
                            end

                        end
                    end
                end
            end
        end
    end

    -- this is called if no WIM window has been found
    local chatFrame = DEFAULT_CHAT_FRAME;

    chatFrame.editBox:Show();
    chatFrame.editBox.setText = 1;

    if(chatFrame.editBox:GetText() ~= "") then
        if(not string.match(string.lower(chatFrame.editBox:GetText()), " anal")) then
            chatFrame.editBox.text = chatFrame.editBox:GetText() .. " " .. link .. " ";
        end
    else
        chatFrame.editBox.text = link .. " ";
    end
end

function SCL_OnShow()
    PlaySound("igCharacterInfoOpen");
end
 
function SCL_OnHide()
  PlaySound("igCharacterInfoClose");
end

function SCL_BuildPlayerString(unitName)
    local englishClass = "";
    if(unitName == nil or unitName == "") then
      unitName = UnitName("player");
      _, englishClass, _ = UnitClass("player");
    else
      englishClass = SCL_PLAYER[unitName]["CLASS"];
    end

    local strPlayerItemString = "|cff"


    strPlayerItemString = strPlayerItemString .. SCL_CONSTS.CLASSCOLOR[englishClass]

    strPlayerItemString = strPlayerItemString .. "|Hitem:1:1:0:0:0:"
    
    strPlayerItemString = strPlayerItemString .. SCL_CONSTS.VERSION
    
    strPlayerItemString = strPlayerItemString .. ":0:"

    strPlayerItemString = strPlayerItemString .. StringToDecString(UnitName("player"))
    
    strPlayerItemString = strPlayerItemString .. "|h["

    strPlayerItemString = strPlayerItemString .. unitName

    strPlayerItemString = strPlayerItemString .. "]|h|r"

    return strPlayerItemString
end

function SCL_SerializePlayerStatsSimple()
    local mana = UnitManaMax("player")
    local health = UnitHealthMax("player")

    return (SCL_LPad(mana, "0", 5) .. SCL_LPad(health, "0", 5))
end

function SCL_SerializePlayerBaseinfo()
    -- LLCRS
    -- LL = Level
    -- C  = Class
    -- R = Race
    -- S  = Sex

    local strPlayerBaseInfo = SCL_BaseInfo_Level()
    strPlayerBaseInfo = strPlayerBaseInfo .. SCL_BaseInfo_Class()
    strPlayerBaseInfo = strPlayerBaseInfo .. SCL_BaseInfo_Race()
    strPlayerBaseInfo = strPlayerBaseInfo .. SCL_BaseInfo_Sex()
    return strPlayerBaseInfo, (tonumber(UnitLevel("player")))
end

function SCL_BaseInfo_Level()
    if(UnitLevel("player") < 10) then
        return ("0" .. UnitLevel("player"))
    else
        return UnitLevel("player")
    end
end

function SCL_BaseInfo_Class()
    local localizedClass, englishClass, classIndex = UnitClass("player");

    return SCL_CONSTS.CLASSTOSTRINGID[englishClass]
end

function SCL_BaseInfo_Race()
    return SCL_CONSTS.RACETOSTRINGID[UnitRace("player")]
end

function SCL_BaseInfo_Sex()
    return UnitSex("player")
end

function SCL_SerializePlayer()
    local strSerializedPlayerShort = ""
    local statSum = 0
    local itemLevelSum = 0

    for i = 1, 19 do
        local strData, sum_stat, level = SCL_SerializeSlotShort(SCL_CONSTS.SLOTIDSTRING[i])

        statSum = statSum + sum_stat
        itemLevelSum = itemLevelSum + level
        
        if (strSerializedPlayerShort == "") then
            strSerializedPlayerShort = strData
        else
            strSerializedPlayerShort = strSerializedPlayerShort ..":" .. strData
        end
        
    end

    return strSerializedPlayerShort, tonumber((tostring(statSum) .. tostring(itemLevelSum)))
end


function SCL_SerializeSlotShort(strSlotName)
    local strReturnString = ""
    
    if(strSlotName == "") then
        return "0", 0, 0;
    end

    -- return strReturnString
    -- step 1: get the inv slot info
    slotId, textureName = GetInventorySlotInfo(strSlotName)
    
    -- no slot id? something went wrong
    if not (slotId) then
        return "0", 0, 0;
    end
    
    -- step 2: get item link of slot
    local link = GetInventoryItemLink("player", slotId)
    
    -- no link? something went wrong
    if not (link) then
        return "0", 0, 0;
    end

    -- step 3: analyze link
    local r,g,b,itemID,enchant,gem1,gem2,gem3,gem4,rndID,H,name = link:match("^|cff(%x%x)(%x%x)(%x%x)|Hitem:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(%-?%d+):(%d+)|h%[(.+)%]|h|r$")
    local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = GetItemInfo(itemID)
    
    -- no item?
    if (itemID == "0" or itemID == nil) then
        return "0", 0, 0;
    end
    
    local itemStatSum = 0
    
    if (itemLevel == nil or itemLevel == "0") then
        itemLevel = ""
    end

    if (enchant == nil or enchant == "0") then
        enchant = ""
    else
        itemStatSum = itemStatSum + tonumber(enchant)
    end

    if (gem1 == nil or gem1 == "0") then
        gem1 = ""
    else
        itemStatSum = itemStatSum + tonumber(gem1)
    end

    if (gem2 == nil or gem2 == "0") then
        gem2 = ""
    else
        itemStatSum = itemStatSum + tonumber(gem2)
    end

    if (gem3 == nil or gem3 == "0") then
        gem3 = ""
    else
        itemStatSum = itemStatSum + tonumber(gem3)
    end

    if (gem4 == nil or gem4 == "0") then
        gem4 = ""
    else
        itemStatSum = itemStatSum + tonumber(gem4)
    end

    if (rndID == nil or rndID == "0") then
        rndID = ""
    else
        itemStatSum = itemStatSum + tonumber(rndID)
    end

    strReturnString = itemID .. "," ..enchant.. "," ..gem1.. "," ..gem2.. "," ..gem3.. "," ..gem4.. "," ..rndID

    return strReturnString, itemStatSum, itemLevel
end

function SCL_LPad(strValue, strPadChar, iPadLength)

    if (strValue == nil) then
        strValue = ""
    end
    
    if(string.len(strValue) >= iPadLength) then
        return strValue;
    end
    
    local strReturnString = ""
    
    for i = 0, (iPadLength - string.len(strValue) -1) do
        strReturnString = strReturnString .. strPadChar
    end
    
    strReturnString = strReturnString .. strValue

    return tostring(strReturnString)
end

function SCL_InvitePlayerMessage(playerName)
    if(playerName == nil) then
      return
    end
    
    if(IsShiftKeyDown()) then
			strMsg = SCL_SETTINGS["SHIFT_MSG"]
	
			if(string.match(string.lower(strMsg), "{n}")) then
				local strSplitMsg = {string.split("\{n\}", strMsg)}
	
				strMsg = string.gsub(strMsg, "{n}", playerName)
			end
	
        SendChatMessage(strMsg, "WHISPER", nil, playerName)
    else
        SendChatMessage("Hallo " ..playerName.. ", du bist dabei!", "WHISPER", nil, playerName)
        InviteUnit(playerName)
    end
end

function SCL_InvitePlayer()
    SCL_InvitePlayerMessage(SCL_InspectNameText:GetText());
    if(SCL_InspectLoggedInAsText:GetText() ~= "") then
      SCL_InvitePlayerMessage(SCL_InspectLoggedInAsText:GetText());
			end
        SCL_InspectFrame:Hide()
end

function SCL_RejectPlayer(strReason)

    if(strReason == "EQUIPMENT") then
        SendChatMessage("Hallo " ..SCL_InspectNameText:GetText().. ", leider reicht dein Equipment nicht aus.", "WHISPER", nil, SCL_InspectNameText:GetText())
      if(SCL_InspectLoggedInAsText:GetText() ~= "" and SCL_InspectLoggedInAsText:GetText() ~= nil) then
        SendChatMessage("Hallo " ..SCL_InspectNameText:GetText().. ", leider reicht dein Equipment nicht aus.", "WHISPER", nil, SCL_InspectLoggedInAsText:GetText())
      end
    elseif(strReason == "ENCHANT") then
        SendChatMessage("Hallo " ..SCL_InspectNameText:GetText().. ", leider ist dein Equipment nicht ausreichend verzaubert.", "WHISPER", nil, SCL_InspectNameText:GetText())
      if(SCL_InspectLoggedInAsText:GetText() ~= "" and SCL_InspectLoggedInAsText:GetText() ~= nil) then
        SendChatMessage("Hallo " ..SCL_InspectNameText:GetText().. ", leider ist dein Equipment nicht ausreichend verzaubert.", "WHISPER", nil, SCL_InspectLoggedInAsText:GetText())
      end
    elseif(strReason == "GEMS") then
        SendChatMessage("Hallo " ..SCL_InspectNameText:GetText().. ", leider ist dein Equipment nicht ausreichend gesockelt.", "WHISPER", nil, SCL_InspectNameText:GetText())
      if(SCL_InspectLoggedInAsText:GetText() ~= "" and SCL_InspectLoggedInAsText:GetText() ~= nil) then
        SendChatMessage("Hallo " ..SCL_InspectNameText:GetText().. ", leider ist dein Equipment nicht ausreichend gesockelt.", "WHISPER", nil, SCL_InspectLoggedInAsText:GetText())
      end
    elseif(strReason == "CLASS") then
        SendChatMessage("Hallo " ..SCL_InspectNameText:GetText().. ", leider brauche ich deine Klasse nicht mehr.", "WHISPER", nil, SCL_InspectNameText:GetText())
      if(SCL_InspectLoggedInAsText:GetText() ~= "" and SCL_InspectLoggedInAsText:GetText() ~= nil) then
        SendChatMessage("Hallo " ..SCL_InspectNameText:GetText().. ", leider brauche ich deine Klasse nicht mehr.", "WHISPER", nil, SCL_InspectLoggedInAsText:GetText())
      end
    else
        SendChatMessage("Hallo " ..SCL_InspectNameText:GetText().. ", leider passt du nicht in meine Gruppenplanung.", "WHISPER", nil, SCL_InspectNameText:GetText())
      if(SCL_InspectLoggedInAsText:GetText() ~= "" and SCL_InspectLoggedInAsText:GetText() ~= nil) then
        SendChatMessage("Hallo " ..SCL_InspectNameText:GetText().. ", leider passt du nicht in meine Gruppenplanung.", "WHISPER", nil, SCL_InspectLoggedInAsText:GetText())
      end
    end

    SCL_InspectFrame:Hide()

end

function SCL_ItemSlotButton_OnEnter()
    GameTooltip:SetOwner(this, "ANCHOR_RIGHT");

    local text = strupper(strsub(this:GetName(), 12));

    GameTooltip:SetHyperlink(SCL_PLAYER[SCL_InspectNameText:GetText()][text])

    CursorUpdate();
end
-- 
function SCL_ItemSlotButton_Update(button)

    local text = strupper(strsub(button:GetName(), 12));

    -- set default in case
    SetItemButtonTexture(button, SCL_CONSTS.SLOTSTRINGICON[text]);

    local itemID = tonumber((SCL_PLAYER[SCL_InspectNameText:GetText()][text] or ""):match(".-item:(%d+):.*"))

    if not (itemID) then
        return
    end

    local textureName = GetItemIcon(itemID) 


    if ( textureName ) then
        SetItemButtonTexture(button, textureName);
        button.hasItem = 1;
    end

    local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = GetItemInfo(itemID) 

    if ( GameTooltip:IsOwned(button) ) then
        if ( texture ) then
            GameTooltip:SetHyperlink(SCL_PLAYER[SCL_InspectNameText:GetText()][text])
        else
            GameTooltip:Hide();
        end
    end

end
