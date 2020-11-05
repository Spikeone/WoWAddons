local ITEM_ICONS = {}
-- Magtheridons Kopf
ITEM_ICONS["100001"] = "Interface\\Icons\\INV_Misc_Head_Tauren_01"
-- Bag2Basics
ITEM_ICONS["100002"] = "Interface\\Icons\\INV_Misc_Bag_CoreFelclothBag"
-- PvP TalentReset Marke
ITEM_ICONS["100003"] = "Interface\\Icons\\Spell_Holy_ChampionsGrace"
-- Fladnag's Trank für Faule Säcke
ITEM_ICONS["100004"] = "Interface\\Icons\\INV_Potion_116"
-- Wappenrock des Weltenwanderers (episch)
ITEM_ICONS["100010"] = "Interface\\Icons\\INV_Shirt_GuildTabard_01"
-- Wappenrock des Weltenwanderers (blau)
ITEM_ICONS["100011"] = "Interface\\Icons\\INV_Shirt_GuildTabard_01"
-- Event-Fallschirmumhang
ITEM_ICONS["100012"] = "Interface\\Icons\\INV_Misc_Cape_11"
-- Wappenrock des Einen
ITEM_ICONS["100014"] = "Interface\\Icons\\INV_Shirt_GuildTabard_01"
-- X-51 Netherrakete X-TREM
ITEM_ICONS["100016"] = "Interface\\Icons\\Ability_Mount_RocketMount"
-- Schneller fliegender Besen
ITEM_ICONS["100017"] = "Interface\\Icons\\INV_Staff_08"
-- Fliegender Besen
ITEM_ICONS["100018"] = "Interface\\Icons\\INV_Staff_08"
-- Azurblauer Welpling
ITEM_ICONS["100019"] = "Interface\\Icons\\INV_Misc_Head_Dragon_Blue"
-- Schneller fliegender Besen
ITEM_ICONS["100020"] = "Interface\\Icons\\INV_Staff_08"
-- Geburtstagssekt
ITEM_ICONS["100021"] = "Interface\\Icons\\INV_Drink_10"
-- Unendlich tiefe Tasche
ITEM_ICONS["100032"] = "Interface\\Icons\\INV_Misc_Bag_17"
-- Feldreperaturbot B2B-X
ITEM_ICONS["100033"] = "Interface\\Icons\\INV_Misc_EngGizmos_01"
-- Wappenrock des Punktens
ITEM_ICONS["100034"] = "Interface\\Icons\\INV_Misc_TabardPVP_02"
-- Durchhalte-Schokolade
ITEM_ICONS["100035"] = "Interface\\Icons\\INV_Misc_Food_27"
-- Durchhalte-Bissen
ITEM_ICONS["100036"] = "Interface\\Icons\\INV_Misc_Food_79"
-- Geröstete Leckereien am Spieß
ITEM_ICONS["100037"] = "Interface\\Icons\\INV_Misc_Food_88_RavagerNuggets"
-- Gegrilltes Gummi
ITEM_ICONS["100038"] = "Interface\\Icons\\INV_Misc_Food_78"
-- Knuspriger Hähnchenschenkel
ITEM_ICONS["100039"] = "Interface\\Icons\\INV_Misc_Food_60"
-- Pannierte Fischstäbchen
ITEM_ICONS["100040"] = "Interface\\Icons\\INV_Misc_Fish_18"
-- Kleine dicke Wurst
ITEM_ICONS["100041"] = "Interface\\Icons\\INV_Misc_Food_53"
-- Tiefgrüne Sphäre
ITEM_ICONS["100050"] = "Interface\\Icons\\INV_Misc_Gem_Pearl_06"
-- Winterhauchverkleidungsset
ITEM_ICONS["100051"] = "Interface\\Icons\\Spell_Frost_FrostWard"
-- Abzeichen des Ehrenhaften
ITEM_ICONS["100053"] = "Interface\\Icons\\INV_Misc_Gem_Sapphire_01"
-- Abzeichen des Gladiators
ITEM_ICONS["100054"] = "Interface\\Icons\\INV_Misc_Gem_Sapphire_01"
-- Angesengte Notiz
ITEM_ICONS["100056"] = "Interface\\Icons\\INV_Misc_Note_06"
-- 101 - 120 -> Aufblasbare Items vom Osterevent

-- maybe use getglobal in order to get the button...
local function setBagIcon(bagID, textureLocation)
    if (bagID == 1) then
        CharacterBag0Slot:SetNormalTexture(textureLocation)
        CharacterBag0Slot:SetNormalTexture(textureLocation)
        CharacterBag0Slot:GetNormalTexture():SetAllPoints(CharacterBag0Slot)
    elseif (bagID == 2) then
        CharacterBag1Slot:SetNormalTexture(textureLocation)
        CharacterBag1Slot:SetNormalTexture(textureLocation)
        CharacterBag1Slot:GetNormalTexture():SetAllPoints(CharacterBag1Slot)
    elseif (bagID == 3) then
        CharacterBag2Slot:SetNormalTexture(textureLocation)
        CharacterBag2Slot:SetNormalTexture(textureLocation)
        CharacterBag2Slot:GetNormalTexture():SetAllPoints(CharacterBag2Slot)
    elseif (bagID == 4) then
        CharacterBag3Slot:SetNormalTexture(textureLocation)
        CharacterBag3Slot:SetNormalTexture(textureLocation)
        CharacterBag3Slot:GetNormalTexture():SetAllPoints(CharacterBag3Slot)
    end
end

local function setBagIcons()
    -- start with 1, as 0 is the backpack
    for i = 1, 4, 1 do
        local bagName = GetBagName(i)
        
        -- probably gives item ID???
        local invID = ContainerIDToInventoryID(i)
        local bagLink = GetInventoryItemLink("player", invID)
        
        if (bagLink) then
            --DEFAULT_CHAT_FRAME:AddMessage("bagLink: " ..bagLink)
            local r,g,b,itemID,linkType,C,D,E,clVersion,G,targetbin,name = bagLink:match("^|cff(%x%x)(%x%x)(%x%x)|Hitem:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(%-?%d+):(%d+)|h%[(.+)%]|h|r$")
            --DEFAULT_CHAT_FRAME:AddMessage("bagLink: " ..itemID)
            --DEFAULT_CHAT_FRAME:AddMessage("bagLink: " ..bagLink)
            
            if(ITEM_ICONS[itemID]) then
                setBagIcon(i, ITEM_ICONS["100002"])
            end
        end
        
        --if (bagName) then
        ----if (bagName and bagName == "Bag2Basics") then
        --    --DEFAULT_CHAT_FRAME:AddMessage("" ..i.. ": " ..bagName)
        --    setBagIcon(i, ITEM_ICONS["100002"])
        --end
    end
end

-- fixes bag icons for most addons, hopefully :D
local origGetInventoryItemTexture = GetInventoryItemTexture
GetInventoryItemTexture = function(unit, slotId)
    local link = GetInventoryItemLink(unit, slotId)
    
    if (link) then
        local r,g,b,itemID,linkType,C,D,E,clVersion,G,targetbin,name = link:match("^|cff(%x%x)(%x%x)(%x%x)|Hitem:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(%-?%d+):(%d+)|h%[(.+)%]|h|r$")
        
        if(ITEM_ICONS[itemID]) then
            return ITEM_ICONS[itemID]
        end
    end
    
    return origGetInventoryItemTexture(unit, slotId)
end


local origGetContainerItemInfo = GetContainerItemInfo
GetContainerItemInfo = function(bag, slot)
    local texture, count = origGetContainerItemInfo(bag, slot)
    local link = GetContainerItemLink(bag, slot)
    
    if (link) then
        local r,g,b,itemID,linkType,C,D,E,clVersion,G,H,name = link:match("^|cff(%x%x)(%x%x)(%x%x)|Hitem:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(%-?%d+):(%d+)|h%[(.+)%]|h|r$")

        if(ITEM_ICONS[itemID]) then
            return ITEM_ICONS[itemID], count
        end
    end
    
    setBagIcons()
    
    return origGetContainerItemInfo(bag, slot)
end

