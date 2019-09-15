-----------------------------------------------------------------------------

local SML       = AceLibrary("SharedMedia-1.0")
local ThreatLib = LibStub("Threat-2.0", false)

-- creates a new ACE2 Module
local AloftOmenBar = Aloft:NewModule("OmenBar", "AceEvent-2.0")

-- unknown
AloftOmenBar.db = Aloft:AcquireDBNamespace("omenBar")
Aloft:RegisterDefaults("omenBar", "profile", {

    enable              = true,     -- is this module enabled
    tank                = true,     -- having aggro is good as a tank
    usehealthbar        = false,    -- use healthbar instead of omenbar
    usebarcolors        = true,     -- if enabled, the 5 steps are used
    alwaysfillbar       = false,    -- fully fill the aggro bar or dependant on % advance
    threatinsteadlevel  = false,    -- show threat instead of level

    format          = "",

    texture         = "Blizzard",
    alpha           = 1.0,
    width           = 115,
    height          = 11,
    offsetX         = 0,
    offsetY         = 0,
    backdropColor   = { 0.25, 0.25, 0.25, 0.5 },
    offsets =
    {
        left        = 0,
        right       = 0,
        vertical    = 20,
    },
    limits =
    {
        limit1 = 150,
        limit2 = 130,
        limit3 = 120,
    },
    ThreatBarColors =
    {
        [0] = {    0.67, 0.06, 0.19, 1},   -- RED         -> < 100%
        [1] = {    0.68, 0.21, 0.05, 1},   -- ORANGE DARK -> 100% - 120%
        [2] = {    0.89, 0.43, 0.05, 1},   -- ORANGE      -> 120% - 130%
        [3] = {    0.96, 0.76, 0.07, 1},   -- YELLOW      -> 130% - 150%
        [4] = {    0.08, 0.64, 0.03, 1}    -- GREEN       -< > 150%
    },
    point           = "RIGHT",
    font            = "Arial Narrow",
    fontSize        = 8,
    outline         = "OUTLINE",
    shadow          = false,
    relativeToPoint = "RIGHT",
})

local profile

function AloftOmenBar:UpdateAll()

    for aloftData in Aloft:IterateNameplates() do
        self:SetupFrame(aloftData)
    end

    for aloftData in Aloft:IterateVisibleNameplates() do
        self:Update(aloftData)
    end

end


function AloftOmenBar:Update(aloftData)

    local omenBar = self:AcquireOmenBar(aloftData)
    omenBar:SetStatusBarColor(unpack(profile.ThreatBarColors[4]))
    
    omenBar:Hide()

end

function AloftOmenBar:AcquireOmenBar(aloftData)

    local omenBar = aloftData.omenBar

    -- check if bar exists
    if not omenBar then
        omenBar = CreateFrame("StatusBar", nil, aloftData.nameplateFrame)
        self:SetupBar(omenBar)

        aloftData.omenBar = omenBar
        self:PlaceBar(aloftData)
    end

    local omenBarBossTextF = aloftData.bossTextF

    if not omenBarBossTextF and aloftData.isBoss then
        omenBarBossTextF = CreateFrame("Frame", nil, aloftData.nameplateFrame)
        omenBarBossText = omenBarBossTextF:CreateFontString(nil,"OVERLAY","GameFontHighlightSmall", 8, "OUTLINE");

        omenBarBossText:ClearAllPoints()
        omenBarBossText:SetPoint("RIGHT", aloftData.healthBar, "RIGHT", 0, 0)
        omenBarBossText:SetFont(profile.font, profile.fontSize)
        omenBarBossText:SetShadowOffset(1, -1)
        omenBarBossText:SetAlpha(1)
        omenBarBossText:SetText("")

        omenBarBossText:Show()
        omenBarBossTextF:Show()

        aloftData.bossTextF = omenBarBossTextF
        aloftData.bossText = omenBarBossText
    end
    return omenBar
end

local backdropTable = { }

function AloftOmenBar:SetupBar(omenBar)
    local texture = SML:Fetch("statusbar", profile.texture)
    omenBar:SetStatusBarTexture(texture)

    backdropTable.bgFile = texture
    omenBar:SetBackdrop(backdropTable)
    omenBar:SetBackdropColor(unpack(profile.backdropColor))
    omenBar:SetStatusBarColor(unpack(profile.ThreatBarColors[4]))
    omenBar:SetValue(100)
    omenBar:SetMinMaxValues(0, 100)
    omenBar:Hide()

    -- This manipulates the manabar background to always display above the frame background
    local barRegion, backgroundRegion = omenBar:GetRegions()
    barRegion:SetDrawLayer("OVERLAY")
    backgroundRegion:SetDrawLayer("ARTWORK")
end

function AloftOmenBar:PlaceBar(aloftData)

    local omenBar = aloftData.omenBar
    omenBar:ClearAllPoints()
    omenBar:SetPoint("TOPLEFT", aloftData.healthBar, "BOTTOMLEFT", profile.offsets.left, profile.offsets.vertical)
    omenBar:SetPoint("BOTTOMRIGHT", aloftData.healthBar, "BOTTOMRIGHT", profile.offsets.right, profile.offsets.vertical-profile.height)
    omenBar:SetFrameLevel(0)
    --omenBar:Show()
end

function AloftOmenBar:RegisterEvents()
    self:UnregisterAllEvents()

    if(profile.enable) then
        self:RegisterEvent("Aloft:OnNameplateShow", "OnNameplateShow")
        self:RegisterEvent("Aloft:OnHealthBarValueChanged", "Update")
        self:RegisterEvent("Aloft:OnHealthBarColorChanged", "Update")

        ALOFT_OMENBAR_UPDATE = CreateFrame("Frame");
        ALOFT_OMENBAR_UPDATE:ClearAllPoints();
        ALOFT_OMENBAR_UPDATE:SetHeight(300);
        ALOFT_OMENBAR_UPDATE:SetWidth(600);
        ALOFT_OMENBAR_UPDATE:SetScript("OnUpdate", OnUpdateDummyFrame);
    end

    self:RegisterEvent("SharedMedia_SetGlobal", function(mediatype, override)
        if mediatype == "statusbar" then
            self:UpdateAll()
        end
    end)
end

function OnUpdateDummyFrame()
    for aloftData in Aloft:IterateVisibleNameplates() do
        AloftOmenBar:Update(aloftData)

        if(aloftData.plateGUID) then

            if not (profile.usehealthbar) then
                aloftData.omenBar:Show()
            end
            AloftOmenBar:UpdateOmenBar(aloftData)
        end

        -- check if we possibly show omen
        if(aloftData.nameplateFrame:GetAlpha() == 1 and UnitGUID("target")) then

            isFriend = UnitIsFriend("player", "target");

            -- only for hostile units
            if not (isFriend) then
                aloftData.plateGUID = UnitGUID("target")
                if not (profile.usehealthbar) then
                    aloftData.omenBar:Show()
                end
                AloftOmenBar:UpdateOmenBar(aloftData)
            end
        end
    end
end

function AloftOmenBar:UpdateOmenBar(aloftData)
    threat_max = 0
    guid_max = ""

    threat_second = 0
    guid_second = ""

    threat_player = 0
    guid_player = UnitGUID("player")

    threat_mob = 0

    i = 0

    for name, threat in ThreatLib:IterateGroupThreatForTarget(aloftData.plateGUID) do

        i = i + 1

        threat_mob = threat_mob + threat

        if(i == 1) then
            threat_max = threat
            guid_max = name
        elseif(i == 2) then
            threat_second = threat
            guid_second = name
        end

        if(name == guid_player) then
            threat_player = threat
        end
    end

    if(guid_player ==  guid_max and threat_second ~= 0) then

        playerThreatPercent = threat_max / threat_second

        color = profile.ThreatBarColors[0]

        if(playerThreatPercent > (profile.limits.limit1 / 100)) then
            color = profile.ThreatBarColors[4]
        elseif(playerThreatPercent > (profile.limits.limit2 / 100)) then
            color = profile.ThreatBarColors[3]
        elseif(playerThreatPercent > (profile.limits.limit3 / 100)) then
            color = profile.ThreatBarColors[2]
        else
            color = profile.ThreatBarColors[1]
        end

        if(profile.alwaysfillbar) then
            aloftData.omenBar:SetValue(100)
        else
            if(profile.tank) then -- guid_player ==  guid_max
                aloftData.omenBar:SetValue(100 - ((threat_second / threat_max) * 100))
            else
                aloftData.omenBar:SetValue(100 - ((threat_second / threat_max) * 100))
            end
        end
    elseif(guid_player ==  guid_max) then -- you are alone, make it green
        if(profile.tank) then
            color = profile.ThreatBarColors[4]
        else
            color = profile.ThreatBarColors[0]
        end
        aloftData.omenBar:SetValue(100)
    else -- player isn't target
        color = profile.ThreatBarColors[0]
        --aloftData.omenBar:SetValue(100)
        if(profile.alwaysfillbar) then
            aloftData.omenBar:SetValue(100)
        else
            if(profile.tank) then -- guid_player !=  guid_max
                aloftData.omenBar:SetValue(100 - ((threat_player / threat_max) * 100))
            else
                aloftData.omenBar:SetValue(100 - ((threat_player / threat_max) * 100))
            end
        end
    end

    -- use steps for colors
    if(profile.usebarcolors) then
        if(profile.usehealthbar) then
            aloftData.healthBar:SetStatusBarColor(unpack(color))
        else
            aloftData.omenBar:SetStatusBarColor(unpack(color))
        end
    else
        -- calculate threat colors (gradient)
        if(threat_second ~= 0) then
            if(profile.tank) then
                if(guid_max == guid_player) then -- player tanks?
                    r, g, b = AloftOmenBar:GetRGBForPercent(1 - (threat_second / threat_max))
                else -- if a tank is not tanking, he has 0% advance at it should be deeply red
                    r, g, b = AloftOmenBar:GetRGBForPercent(0)
                end
            else
                if(guid_max == guid_player) then -- player tanks but is no tank?
                    r, g, b = AloftOmenBar:GetRGBForPercent(0)
                    --aloftData.omenBar:SetStatusBarColor(0, 0, 1, 1)
                else
                    r, g, b = AloftOmenBar:GetRGBForPercent(1 - (threat_player / threat_max))
                end
            end
        else
            r, g, b = AloftOmenBar:GetRGBForPercent(1)
        end

        -- set color for bar depending on option
        if(profile.usehealthbar) then
            aloftData.healthBar:SetStatusBarColor(r, g, b)
        else
            aloftData.omenBar:SetStatusBarColor(r, g, b)
        end
    end




    -- this displays threat instead of level
    if(profile.threatinsteadlevel) then
        --AloftOmenBar:ShowThreat(aloftData, guid_player, threat_player, guid_second, threat_second, guid_max, threat_max)
    end


    local levelTextRegion = aloftData.levelTextRegion

    if(aloftData.isBoss and aloftData.bossText) then
        levelTextRegion = aloftData.bossText
    end


    -- show threat instead of level?
    if(profile.threatinsteadlevel) then
        if(guid_player == guid_max) then -- player is first in threat
            if(threat_second ~= 0) then -- he is not alone
                -- threat_max == threat_player
                -- math.floor(((threat_max - threat_second) / 1000 ) + 0.5)
                levelTextRegion:SetText("+ " ..math.floor(((threat_max - threat_second) / 1000 ) + 0.5) .."k" )
                if(profile.tank) then
                    levelTextRegion:SetTextColor(0, 1, 0)
                else
                    levelTextRegion:SetTextColor(1, 0, 0)
                end
            else
                levelTextRegion:SetText("")
            end
        elseif(threat_max ~= 0 and threat_player ~= 0) then
            levelTextRegion:SetText("- " ..math.floor(((threat_max - threat_player) / 1000 ) + 0.5) .."k" )
            if(profile.tank) then
                levelTextRegion:SetTextColor(1, 0, 0)
            else
                levelTextRegion:SetTextColor(0, 1, 0)
            end
        end
    end

end

function AloftOmenBar:SetOmenBarValue(aloftdata, guid_player, threat_player, guid_second, threat_second, guid_max, threat_max)

    if(profile.alwaysfillbar) then
        aloftData.omenBar:SetValue(100)
        return
    end

    if (profile.tank) then -- aggro = good
        if(guid_second == 0) then -- player is alone
            aloftData.omenBar:SetValue(100) -- will be green
        elseif(guid_max ~= guid_player) then
            aloftData.omenBar:SetValue(100) -- will be red
        else -- player tanks
            aloftData.omenBar:SetValue(100 - ((threat_second / threat_max) * 100))
        end
    else -- aggro = bad
        if(guid_second == 0) then -- player is alone
            aloftData.omenBar:SetValue(100) -- will be green
        elseif(guid_max ~= guid_player) then
            aloftData.omenBar:SetValue(100 - ((threat_player / threat_max) * 100))
        else -- player tanks
            aloftData.omenBar:SetValue(100) -- will be red
        end
    end


end

function AloftOmenBar:ShowThreat(aloftdata, guid_player, threat_player, guid_second, threat_second, guid_max, threat_max)

    local levelTextRegion = aloftData.levelTextRegion

    if(aloftData.isBoss and aloftData.bossText) then
        levelTextRegion = aloftData.bossText
    end

    if(profile.threatinsteadlevel) then
        if(guid_player == guid_max) then -- player is first in threat
            if(threat_second ~= 0) then -- he is not alone
                -- threat_max == threat_player
                if((threat_max - threat_second) > 1000)then
                    levelTextRegion:SetText("+ " ..math.floor(((threat_max - threat_second) / 1000 ) + 0.5) .."k" )
                else
                    levelTextRegion:SetText("+ " ..(threat_max - threat_second))
                end

                if(profile.tank) then
                    levelTextRegion:SetTextColor(0, 1, 0)
                else
                    levelTextRegion:SetTextColor(1, 0, 0)
                end
            else
                levelTextRegion:SetText("")
            end
        elseif(threat_max ~= 0 and threat_player ~= 0) then

            if((threat_max - threat_player) > 1000) then
                levelTextRegion:SetText("- " ..math.floor(((threat_max - threat_player) / 1000 ) + 0.5) .."k" )
            else
                levelTextRegion:SetText("- " ..(threat_max - threat_player))
            end

            if(profile.tank) then
                levelTextRegion:SetTextColor(1, 0, 0)
            else
                levelTextRegion:SetTextColor(0, 1, 0)
            end
        end
    end
end

function AloftOmenBar:GetRGBForPercent(percent)
    if(percent > 0.5) then
        r = 1 - 2 * (percent - 0.5)
        -- 0.75 = 1 - 2 * (0.75 - 0.5) = 1 - 0.5 = 0.5 
    else
        r = 1
    end

    if(percent < 0.5) then
        g = 2 * percent
        -- 0.25 = 1 - 2 * 0.25 = 1 - 0.5 = 0.5
    else
        g = 1
    end

    b = 0

    return r, g, b
end

function AloftOmenBar:OnInitialize()
    profile = self.db.profile
end
--
function AloftOmenBar:OnEnable()
    profile = self.db.profile
    self:UpdateAll()
end

local dataRequiredList = { }
function AloftOmenBar:RequiresData()

    self:RegisterEvents()

    textMethodData = Aloft:CreateTag(profile.format)
    textMethod = textMethodData.method

end
--
function AloftOmenBar:SetupFrame(aloftData)
    local omenBar = aloftData.omenBar

    omenBar:ClearAllPoints()
    omenBar:SetPoint("CENTER", aloftData.nameplateFrame, "CENTER", profile.offsetX, profile.offsetY)

    local texture = SML:Fetch("statusbar", profile.texture)
    omenBar:SetStatusBarTexture(texture)

end
--
function AloftOmenBar:OnNameplateShow(aloftData)
    self:Update(aloftData)
end

function AloftOmenBar:GetPlayerNameByGUID(strGUID)
    for i = 1, 40 do
        name = GetRaidRosterInfo(i);
        if(name) then
            if(UnitGUID(name) ==  strGUID)then
                return name;
            end
        end
    end
end