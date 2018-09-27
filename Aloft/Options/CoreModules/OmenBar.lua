-----------------------------------------------------------------------------

if not Aloft or not Aloft:HasModule("OmenBar") then return end
local AloftOmenBar = Aloft:GetModule("OmenBar")
local L = AceLibrary("AceLocale-2.2"):new("OmenBarOptions")
local SML = AceLibrary("SharedMedia-1.0")
local SML_font = SML:List("font")
local SML_statusbar = SML:List("statusbar")

Aloft.Options.args.omenBar =
{
    type = 'group',
    name = "Omen Aggro Bar",
    desc = "Omen Aggro Bar options",
    disabled = function() return not Aloft:IsActive() end,
    order = -1,
    args =
    {
        enable =
        {
            type = 'toggle',
            name = "Enable",
            desc = "Enable OmenBar",
            get = function() return AloftOmenBar.db.profile.enable end,
            set = function(v) AloftOmenBar.db.profile.enable = v AloftOmenBar:UpdateTag() AloftOmenBar:UpdateAll() end,
            order = 1
        },
        tank =
        {
            type = 'toggle',
            name = "Tank mode",
            desc = "Enable tank mode (aggro = good)",
            get = function() return AloftOmenBar.db.profile.tank end,
            set = function(v) AloftOmenBar.db.profile.tank = v AloftOmenBar:UpdateTag() AloftOmenBar:UpdateAll() end,
            order = 1
        },
        usehealthbar =
        {
            type = 'toggle',
            name = "Use healthbar",
            desc = "Use healthbar instead of OmenBar",
            get = function() return AloftOmenBar.db.profile.usehealthbar end,
            set = function(v) AloftOmenBar.db.profile.usehealthbar = v AloftOmenBar:UpdateTag() AloftOmenBar:UpdateAll() end,
            order = 1
        },
        usebarcolors =
        {
            type = 'toggle',
            name = "Use OmenBar limit colors",
            desc = "Use OmenBar limit colors. If disabled gradients are used.",
            get = function() return AloftOmenBar.db.profile.usebarcolors end,
            set = function(v) AloftOmenBar.db.profile.usebarcolors = v AloftOmenBar:UpdateTag() AloftOmenBar:UpdateAll() end,
            order = 1
        },
        alwaysfillbar =
        {
            type = 'toggle',
            name = "Fully fill OmenBar",
            desc = "If this is enable the % advance wont be displayed",
            get = function() return AloftOmenBar.db.profile.alwaysfillbar end,
            set = function(v) AloftOmenBar.db.profile.alwaysfillbar = v AloftOmenBar:UpdateTag() AloftOmenBar:UpdateAll() end,
            order = 1
        },
        threatinsteadlevel =
        {
            type = 'toggle',
            name = "Display threat instead of level",
            desc = "This displays the current threat distance to either the 2nd (if aggro) or 1st (if not)",
            get = function() return AloftOmenBar.db.profile.threatinsteadlevel end,
            set = function(v) AloftOmenBar.db.profile.threatinsteadlevel = v AloftOmenBar:UpdateTag() AloftOmenBar:UpdateAll() end,
            order = 1
        },
        texture =
        {
            type = "text", 
            name = "Texture", 
            desc = "Sets the OmenBar texture",
            get = function() return AloftOmenBar.db.profile.texture end,
            set = function(v) AloftOmenBar.db.profile.texture = v AloftOmenBar:UpdateAll() end,
            disabled = function() return not AloftOmenBar.db.profile.enable end,
            validate = SML_statusbar
        },
        position =
        {
            type = 'group',
            name = "Appearance",
            desc = "Adjust OmenBar Appearance",
            disabled = function() return not AloftOmenBar.db.profile.enable end,
            args =
            {
                height =
                {
                	type = 'range',
                	name = "OmenBar height",
                	desc = "Sets the height of the OmenBar",
                	min = 2,
                	max = 32,
                	step = 1,
                	disabled = function() return not AloftOmenBar.db.profile.enable end,
                	get = function() return AloftOmenBar.db.profile.height end,
                	set = function(v) AloftOmenBar.db.profile.height = v AloftOmenBar:UpdateAll() end
                },
                width =
                {
                    type = 'range',
                    name = "OmenBar width",
                    desc = "Sets the width of the OmenBar",
                    min = 2,
                    max = 256,
                    step = 1,
                    disabled = function() return not AloftOmenBar.db.profile.enable end,
                    get = function() return AloftOmenBar.db.profile.width end,
                    set = function(v) AloftOmenBar.db.profile.width = v AloftOmenBar:UpdateAll() end
                },
                left =
                {
                    type = 'range',
                    name = "OmenBar Offset left",
                    desc = "Sets the left offset of the OmenBar",
                    min = -64,
                    max = 64,
                    step = 1,
                    get = function() return AloftOmenBar.db.profile.offsets.left end,
                    set = function(v) AloftOmenBar.db.profile.offsets.left = v AloftOmenBar:UpdateAll() end
                },
                right =
                {
                    type = 'range',
                    name = "OmenBar Offset right",
                    desc = "Sets the right offset of the OmenBar",
                    min = -64,
                    max = 64,
                    step = 1,
                    get = function() return AloftOmenBar.db.profile.offsets.right end,
                    set = function(v) AloftOmenBar.db.profile.offsets.right = v AloftOmenBar:UpdateAll() end
                },
                vertical =
                {
                    type = 'range',
                    name = "OmenBar Offset vertical",
                    desc = "Sets the vertical offset of the OmenBar",
                    min = -64,
                    max = 64,
                    step = 1,
                    get = function() return AloftOmenBar.db.profile.offsets.vertical end,
                    set = function(v) AloftOmenBar.db.profile.offsets.vertical = v AloftOmenBar:UpdateAll() end
                }
            }
        },
        limits =
        {
            type = 'group',
            name = "Color Limits",
            desc = "Set the color limits for the OmenBar",
            disabled = function() return not AloftOmenBar.db.profile.enable end,
            args =
            {
                limit1 =
                {
                    type = 'range',
                    name = "Limit (> 150%)",
                    desc = "Sets the Limit1 of the OmenBar",
                    min = 100,
                    max = 200,
                    step = 1,
                    get = function() return AloftOmenBar.db.profile.limits.limit1 end,
                    set = function(v) AloftOmenBar.db.profile.limits.limit1 = v AloftOmenBar:UpdateAll() end
                },
                limit2 =
                {
                    type = 'range',
                    name = "Limit (130% - 150%)",
                    desc = "Sets the Limit2 of the OmenBar",
                    min = 100,
                    max = 200,
                    step = 1,
                    get = function() return AloftOmenBar.db.profile.limits.limit2 end,
                    set = function(v) AloftOmenBar.db.profile.limits.limit2 = v AloftOmenBar:UpdateAll() end
                },
                limit3 =
                {
                    type = 'range',
                    name = "Limit (120% - 130%)",
                    desc = "Sets the Limit3 of the OmenBar",
                    min = 100,
                    max = 200,
                    step = 1,
                    get = function() return AloftOmenBar.db.profile.limits.limit3 end,
                    set = function(v) AloftOmenBar.db.profile.limits.limit3 = v AloftOmenBar:UpdateAll() end
                }
            }
        },
        colors =
        {
            type = 'group',
            name = "OmenBar colors",
            desc = "Customize OmenBar colors",
            disabled = function() return not AloftOmenBar.db.profile.enable or not AloftOmenBar.db.profile.usebarcolors end,
            args =
            {
                color1 =
                {
                    type = 'color',
                    name = "Bar color1 ( < 100% )",
                    desc = "If your threat is less than 100%",
                    get = function() return unpack(AloftOmenBar.db.profile.ThreatBarColors[0]) end,
                    set = function(r, g, b, a) AloftOmenBar.db.profile.ThreatBarColors[0] = { r, g, b, a } AloftOmenBar:UpdateAll() end,
                    hasAlpha = true,
                    order = 1
                },
                color2 =
                {
                    type = 'color',
                    name = "Bar color2 ( 100% - 120% )",
                    desc = "If your threat is between 100% and 120%",
                    get = function() return unpack(AloftOmenBar.db.profile.ThreatBarColors[1]) end,
                    set = function(r, g, b, a) AloftOmenBar.db.profile.ThreatBarColors[1] = { r, g, b, a } AloftOmenBar:UpdateAll() end,
                    hasAlpha = true,
                    order = 1
                },
                color3 =
                {
                    type = 'color',
                    name = "Bar color3 ( 120% - 130% )",
                    desc = "If your threat is between 120% and 130%",
                    get = function() return unpack(AloftOmenBar.db.profile.ThreatBarColors[2]) end,
                    set = function(r, g, b, a) AloftOmenBar.db.profile.ThreatBarColors[2] = { r, g, b, a } AloftOmenBar:UpdateAll() end,
                    hasAlpha = true,
                    order = 1
                },
                color4 =
                {
                    type = 'color',
                    name = "Bar color4 ( 130% - 150% )",
                    desc = "If your threat is between 130% and 150%",
                    get = function() return unpack(AloftOmenBar.db.profile.ThreatBarColors[3]) end,
                    set = function(r, g, b, a) AloftOmenBar.db.profile.ThreatBarColors[3] = { r, g, b, a } AloftOmenBar:UpdateAll() end,
                    hasAlpha = true,
                    order = 1
                },
                color5 =
                {
                    type = 'color',
                    name = "Bar color5 ( > 150% )",
                    desc = "If your threat is more than 150%",
                    get = function() return unpack(AloftOmenBar.db.profile.ThreatBarColors[4]) end,
                    set = function(r, g, b, a) AloftOmenBar.db.profile.ThreatBarColors[4] = { r, g, b, a } AloftOmenBar:UpdateAll() end,
                    hasAlpha = true,
                    order = 1
                }
            }
        }
    }
}

-----------------------------------------------------------------------------
--
function AloftOmenBar:UpdateTag()
    local tag = self.db.profile.mode
    local index = 1

    if self.db.profile.colorByType then 
        index = 2
    end

    if not self.db.profile.enable then tag = "NONE"	end
    --self.db.profile.format = manaTags[tag][index]

    Aloft:DetermineDataSources()
end
--
-----------------------------------------------------------------------------
