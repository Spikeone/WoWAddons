--------------------------------------------------------
-- Config menu related functions
--------------------------------------------------------
local SCL_CHARLISTCONSTS = {}
SCL_CHARLISTCONSTS.CLASSCOLORRGB = {}
SCL_CHARLISTCONSTS.CLASSCOLORRGB["DRUID"]      = {}
SCL_CHARLISTCONSTS.CLASSCOLORRGB["DRUID"].R = 255/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["DRUID"].G = 125/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["DRUID"].B = 10/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["HUNTER"]     = {}
SCL_CHARLISTCONSTS.CLASSCOLORRGB["HUNTER"].R = 171/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["HUNTER"].G = 212/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["HUNTER"].B = 115/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["MAGE"]       = {}
SCL_CHARLISTCONSTS.CLASSCOLORRGB["MAGE"].R = 105/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["MAGE"].G = 204/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["MAGE"].B = 240/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["PALADIN"]    = {}
SCL_CHARLISTCONSTS.CLASSCOLORRGB["PALADIN"].R = 245/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["PALADIN"].G = 140/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["PALADIN"].B = 186/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["PRIEST"]     = {}
SCL_CHARLISTCONSTS.CLASSCOLORRGB["PRIEST"].R = 255/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["PRIEST"].G = 255/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["PRIEST"].B = 255/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["ROGUE"]      = {}
SCL_CHARLISTCONSTS.CLASSCOLORRGB["ROGUE"].R = 255/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["ROGUE"].G = 245/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["ROGUE"].B = 105/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["SHAMAN"]     = {}
SCL_CHARLISTCONSTS.CLASSCOLORRGB["SHAMAN"].R = 0
SCL_CHARLISTCONSTS.CLASSCOLORRGB["SHAMAN"].G = 112/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["SHAMAN"].B = 222/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["WARLOCK"]    = {}
SCL_CHARLISTCONSTS.CLASSCOLORRGB["WARLOCK"].R = 148/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["WARLOCK"].G = 130/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["WARLOCK"].B = 201/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["WARRIOR"]    = {}
SCL_CHARLISTCONSTS.CLASSCOLORRGB["WARRIOR"].R = 199/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["WARRIOR"].G = 156/255
SCL_CHARLISTCONSTS.CLASSCOLORRGB["WARRIOR"].B = 110/255

SCL_CHARLISTCONSTS.MAXLIST = 25

local listOffset = 0

-- close frame
function BTN_CharlinkListFrameClose_OnClick()
    SCL_CharlinkListFrame:Hide();
end

function SCL_CharList_BuildButtons(frame)
    hasButtons = getglobal("SCL_CharList_CharButton_1")

    if(hasButtons == nil) then
        for i = 1, 25 do
            pButton = CreateFrame("Button","SCL_CharList_CharButton_" .. i, frame, "SCL_CharList_CharButton_Template")
            pButton:SetPoint("TOPLEFT", "SCL_ColumnTitle_Character", 0, i * -16);
            pButton:Hide()

            pButton = CreateFrame("Button","SCL_CharList_CharButtonDelete_" .. i, frame, "SCL_CharList_CharButtonDelete_Template")
            pButton:SetPoint("TOPLEFT", "SCL_CharList_CharButton_" .. i, -16, 0);
            pButton:Hide()
        end

		getglobal("SCL_VersionLabel"):SetText(SCL_GetVersionString())
		
    end
end

function BTN_CharlinkListChangeOffset(iValue)
    listOffset = listOffset + tonumber(iValue)

    if(listOffset < 0) then
        listOffset = 0
    end

    local iElementCount = SCL_CharLinkList_GetCountLinksSaved()

    if(listOffset >= iElementCount) then
        listOffset = listOffset - tonumber(iValue)
    end

    SCL_CharList_FillButtons()
end

function SCL_CharList_FillButtons()

	hasButtons = getglobal("SCL_CharList_CharButton_1")
	
	if(hasButtons == nil) then
		return
	end

    for i = 1, 25 do
        getglobal("SCL_CharList_CharButton_"..i):Hide()
        getglobal("SCL_CharList_CharButtonDelete_"..i):Hide()
    end

    local p = 1
    for key, val in orderedPairs(SCL_PLAYER) do
        if(p > listOffset and p <= (SCL_CHARLISTCONSTS.MAXLIST + listOffset)) then
            local realIndex = p - listOffset

            getglobal("SCL_CharList_CharButton_"..realIndex):Show()
            getglobal("SCL_CharList_CharButtonDelete_"..realIndex):Show()

            getglobal("SCL_CharList_CharButton_"..realIndex.. "Label"):SetText("[" .. key .."]")

            playerClass = SCL_PLAYER[key]["CLASS"]

            getglobal("SCL_CharList_CharButton_"..realIndex.. "Label"):SetTextColor(SCL_CHARLISTCONSTS.CLASSCOLORRGB[playerClass].R, SCL_CHARLISTCONSTS.CLASSCOLORRGB[playerClass].G, SCL_CHARLISTCONSTS.CLASSCOLORRGB[playerClass].B, 1)

            getglobal("SCL_CharList_CharButton_"..realIndex.. "Date"):SetText(SCL_PLAYER[key]["HASH_DATE"])
            
        end
        p = p + 1
    end

    if(p > 1) then
        getglobal("BTN_CharlinkListDeleteAll"):Show()
    else
        getglobal("BTN_CharlinkListDeleteAll"):Hide()
    end
end

function SCL_CharLinkList_GetCountLinksSaved()
    local p = 0
    for key, val in orderedPairs(SCL_PLAYER) do
        p = p + 1
    end
    return p
end

function SCL_CharLinkList_Open(fName)
    local iIndex = string.match(fName:GetName(),"%d+")
    local lLabel = getglobal(fName:GetName() .. "Label")
    local name = lLabel:GetText():match("^%[(.+)%]$")

    if(SCL_PLAYER[name]) then
        if(SCL_PLAYER[name]["E_HASH"]) then
            SCL_ShowCharacterFrame(name)
            SCL_SetStatsInFrame(name)
            SCL_SetBuffIconsInFrame(name)
            -- either the following triggers sending new data which will update the frame or not
            SendAddonMessage("SCLRC", tostring(SCL_PLAYER[name]["E_HASH"]), "WHISPER", name);
        else
            SendAddonMessage("SCLRC", "0", "WHISPER", name);
        end
    else
        SendAddonMessage("SCLRC", "0", "WHISPER", name);
    end
end

function SCL_CharLinkList_Delete(fName)
    local iIndex = string.match(fName:GetName(),"%d+")
    local lLabel = getglobal("SCL_CharList_CharButton_" .. tostring(iIndex) .. "Label")
    local name = lLabel:GetText():match("^%[(.+)%]$")

    SCL_PLAYER[name] = nil

    local iElementCount = SCL_CharLinkList_GetCountLinksSaved()

    if(listOffset >= iElementCount) then
        listOffset = listOffset - 25
    end

    if(iElementCount) then
        listOffset = 0
    end
    
    SCL_CharList_FillButtons()
end

function SCL_CharLinkList_DeleteAll()
    SCL_PLAYER = {}
    SCL_CharList_FillButtons()
    listOffset = 0
end
