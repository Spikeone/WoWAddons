local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("RaidCooldowns_Display", "zhCN")
if not L then return end

L["RaidCooldowns"] = "RaidCooldowns"

L["DRUID"] = "德鲁伊"
L["HUNTER"] = "猎人"
L["MAGE"] = "法师"
L["PALADIN"] = "圣骑士"
L["PET"] = "宠物"
L["PRIEST"] = "牧师"
L["ROGUE"] = "盗贼"
L["SHAMAN"] = "萨满祭司"
L["WARLOCK"] = "术士"
L["WARRIOR"] = "战士"

L["%s's %s is up."] = "<%s - %s> 冷却完毕" -- <大波胡 - 复生>  冷却完毕

-- Config options
L["Test"] = "测试"
L["Display Options"] = "显示设置"
L["Lock Anchor"] = "锁定锚点"
L["Locks the anchor in place and prevents it from being dragged."] = "锁定计时器锚点"
L["Scale"] = "缩放"
L["Control the scale of the entire RaidCooldowns GUI"] = "设置RaidCooldowns的整体缩放"
L["Grow Up"] = "向上增长"
L["Grow bars upwards"] = "向上增长"
L["X Position"] = "X"
L["Y Position"] = "Y"
L["Clamp to screen"] = "保持在屏幕内"
L["Prevent the anchor from moving off screen."] = "强制保持计时器在屏幕内"
L["Bar options"] = "计时条设置"
L["Options which affect the style of the cooldown bars"] = "计时条样式设置"
L["Texture"] = "材质"
L["The texture that the bar will use"] = "计时条材质"
L["Label Font"] = "计时条文字字体"
L["The font that the bar labels will use"] = "计时条文字字体"
L["Label Font Size"] = "计时条文字大小"
L["The size of the font that the bar labels will use"] = "计时条文字大小"
L["Orientation"] = "计时条方向"
L["Left to Right"] = "从左至右"
L["Right to Left"] = "从右至左"
L["Spell Options"] = "法术设置"
L["Configure which spell cooldowns are shown and which aren't"] = "选择你想监视的法术"
L["Hide Self"] = "隐藏自身冷却"
L["Hide your own cooldowns."] = "隐藏自己法术的冷却时间"
L["Ready Message"] = "就绪文字"
L["Print a chat message after a cooldown is ready."] = "在冷却完成后显示就绪文字"
L["Configure"] = "设置"
L["Open the configuration dialog"] = "打开设置"
L["Display %s cooldowns"] = "显示冷却: %s"
L["Reset"] = "重置"
L["Alpha"] = "透明度"
L["Control the transparency of the entire RaidCooldowns GUI"] = "设置整个RaidCooldowns的透明度"
L["Width"] = "宽"
L["Height"] = "高"