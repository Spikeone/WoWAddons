﻿--[[
Name: Babble-Class-2.2
Revision: $Rev: 81956 $
Author(s): ckknight (ckknight@gmail.com)
Website: http://ckknight.wowinterface.com/
Documentation: http://wiki.wowace.com/index.php/Babble-Class-2.2
SVN: http://svn.wowace.com/root/trunk/Babble-2.2/Babble-Class-2.2
Description: A library to provide localizations for classes.
Dependencies: AceLibrary, AceLocale-2.2
License: MIT
]]

local MAJOR_VERSION = "Babble-Class-2.2"
local MINOR_VERSION = tonumber(string.sub("$Revision: 81956 $", 12, -3))

if not AceLibrary then error(MAJOR_VERSION .. " requires AceLibrary") end

if not AceLibrary:HasInstance("AceLocale-2.2") then error(MAJOR_VERSION .. " requires AceLocale-2.2") end

local _, x = AceLibrary("AceLocale-2.2"):GetLibraryVersion()
MINOR_VERSION = MINOR_VERSION * 100000 + x

if not AceLibrary:IsNewVersion(MAJOR_VERSION, MINOR_VERSION) then return end

local BabbleClass = AceLibrary("AceLocale-2.2"):new(MAJOR_VERSION)

-- uncomment below for debug information
-- BabbleClass:EnableDebugging()

BabbleClass:RegisterTranslations("enUS", function()
	return {
		["Warlock"] = true,
		["Warrior"] = true,
		["Hunter"] = true,
		["Mage"] = true,
		["Priest"] = true,
		["Druid"] = true,
		["Paladin"] = true,
		["Shaman"] = true,
		["Rogue"] = true,

		["WARLOCK"] = true,
		["WARRIOR"] = true,
		["HUNTER"] = true,
		["MAGE"] = true,
		["PRIEST"] = true,
		["DRUID"] = true,
		["PALADIN"] = true,
		["SHAMAN"] = true,
		["ROGUE"] = true,
	}
end)

BabbleClass:RegisterTranslations("deDE", function()
	return {
		["Warlock"] = "Hexenmeister",
		["Warrior"] = "Krieger",
		["Hunter"] = "J\195\164ger",
		["Mage"] = "Magier",
		["Priest"] = "Priester",
		["Druid"] = "Druide",
		["Paladin"] = "Paladin",
		["Shaman"] = "Schamane",
		["Rogue"] = "Schurke",

		["WARLOCK"] = "Hexenmeisterin",
		["WARRIOR"] = "Kriegerin",
		["HUNTER"] = "J\195\164gerin",
		["MAGE"] = "Magierin",
		["PRIEST"] = "Priesterin",
		["DRUID"] = "Druidin",
		["PALADIN"] = "Paladin",
		["SHAMAN"] = "Schamanin",
		["ROGUE"] = "Schurkin",
	}
end)

BabbleClass:RegisterTranslations("frFR", function()
	return {
		["Warlock"] = "Démoniste",
		["Warrior"] = "Guerrier",
		["Hunter"] = "Chasseur",
		["Mage"] = "Mage",
		["Priest"] = "Prêtre",
		["Druid"] = "Druide",
		["Paladin"] = "Paladin",
		["Shaman"] = "Chaman",
		["Rogue"] = "Voleur",

		["WARRIOR"] = "Guerrière",
		["HUNTER"] = "Chasseresse",
		["PRIEST"] = "Prêtresse",
		["DRUID"] = "Druidesse",
		["SHAMAN"] = "Chamane",
		["ROGUE"] = "Voleuse",
	}
end)

BabbleClass:RegisterTranslations("zhCN", function()
	return {
		["Warlock"] = "术士",
		["Warrior"] = "战士",
		["Hunter"] = "猎人",
		["Mage"] = "法师",
		["Priest"] = "牧师",
		["Druid"] = "德鲁伊",
		["Paladin"] = "圣骑士",
		["Shaman"] = "萨满祭司",
		["Rogue"] = "潜行者",
	}
end)

BabbleClass:RegisterTranslations("zhTW", function()
	return {
		["Warlock"] = "術士",
		["Warrior"] = "戰士",
		["Hunter"] = "獵人",
		["Mage"] = "法師",
		["Priest"] = "牧師",
		["Druid"] = "德魯伊",
		["Paladin"] = "聖騎士",
		["Shaman"] = "薩滿",
		["Rogue"] = "盜賊",

		["WARLOCK"] = "術士",
		["WARRIOR"] = "戰士",
		["HUNTER"] = "獵人",
		["MAGE"] = "法師",
		["PRIEST"] = "牧師",
		["DRUID"] = "德魯伊",
		["PALADIN"] = "聖騎士",
		["SHAMAN"] = "薩滿",
		["ROGUE"] = "盜賊",
	}
end)

BabbleClass:RegisterTranslations("koKR", function()
	return {
		["Warlock"] = "흑마법사",
		["Warrior"] = "전사",
		["Hunter"] = "사냥꾼",
		["Mage"] = "마법사",
		["Priest"] = "사제",
		["Druid"] = "드루이드",
		["Paladin"] = "성기사",
		["Shaman"] = "주술사",
		["Rogue"] = "도적",
		
		["WARLOCK"] = "흑마법사",
		["WARRIOR"] = "전사",
		["HUNTER"] = "사냥꾼",
		["MAGE"] = "마법사",
		["PRIEST"] = "사제",
		["DRUID"] = "드루이드",
		["PALADIN"] = "성기사",
		["SHAMAN"] = "주술사",
		["ROGUE"] = "도적",
	}
end)

BabbleClass:RegisterTranslations("esES", function()
	return {
		["Warlock"] = "Brujo",
		["Warrior"] = "Guerrero",
		["Hunter"] = "Cazador",
		["Mage"] = "Mago",
		["Priest"] = "Sacerdote",
		["Druid"] = "Druida",
		["Paladin"] = "Palad\195\173n",
		["Shaman"] = "Cham\195\161n",
		["Rogue"] = "P\195\173caro",
		
		["WARLOCK"] = "Bruja",
		["WARRIOR"] = "Guerrera",
		["HUNTER"] = "Cazadora",
		["MAGE"] = "Maga",
		["PRIEST"] = "Sacerdotisa",
		["DRUID"] = "Druida",
		["PALADIN"] = "Palad\195\173n",
		["SHAMAN"] = "Cham\195\161n",
		["ROGUE"] = "P\195\173cara",
	}
end)
-- Translater: GriffonHeart (updater: StingerSoft)
BabbleClass:RegisterTranslations("ruRU", function()
	return {
		["Warlock"] = "Чернокнижник",
		["Warrior"] = "Воин",
		["Hunter"] = "Охотник",
		["Mage"] = "Маг",
		["Priest"] = "Жрец",
		["Druid"] = "Друид",
		["Paladin"] = "Паладин",
		["Shaman"] = "Шаман",
		["Rogue"] = "Разбойник",
		
		["WARLOCK"] = "Чернокнижница",
		["WARRIOR"] = "Воин",
		["HUNTER"] = "Охотница",
		["MAGE"] = "Маг",
		["PRIEST"] = "Жрица",
		["DRUID"] = "Друид",
		["PALADIN"] = "Паладин",
		["SHAMAN"] = "Шаманка",
		["ROGUE"] = "Разбойница",
	}
end)

BabbleClass:Debug()
BabbleClass:SetStrictness(true)

function BabbleClass:GetColor(class)
	self:argCheck(class, 2, "string")
	if self:HasReverseTranslation(class) then
		class = string.upper(self:GetReverseTranslation(class))
	else
		class = string.upper(class)
	end
	if RAID_CLASS_COLORS and RAID_CLASS_COLORS[class] then
		return RAID_CLASS_COLORS[class].r, RAID_CLASS_COLORS[class].g, RAID_CLASS_COLORS[class].b
	end
	return 0.63, 0.63, 0.63
end

function BabbleClass:GetHexColor(class)
	self:argCheck(class, 2, "string")
	local r, g, b = self:GetColor(class)
	return string.format("%02x%02x%02x", r * 255, g * 255, b * 255)
end

function BabbleClass:GetGenderNeutralClass(class)
	self:argCheck(class, 2, "string")
	if self:HasReverseTranslation(class) then
		class = string.upper(self:GetReverseTranslation(class))
	else
		class = string.upper(class)
	end

	return class
end

AceLibrary:Register(BabbleClass, MAJOR_VERSION, MINOR_VERSION)
BabbleClass = nil