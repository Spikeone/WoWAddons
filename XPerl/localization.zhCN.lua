-- X-Perl UnitFrames
-- Author: Zek <Boodhoof-EU>
-- License: GNU GPL v3, 29 June 2007 (see LICENSE.txt)

if (GetLocale() == "zhCN") then
XPerl_LongDescription	= "全新外观的玩家状态框，包括玩家、宠物、队伍、团队、目标、目标的目标、焦点、团队"

--XPERL_COMMS_PREFIX		= "X-Perl"
XPERL_MINIMAP_HELP1	= "|c00FFFFFF左键点击|r打开选项（并解锁框体）"
XPERL_MINIMAP_HELP2	= "|c00FFFFFF右键点击|r拖动图标"
XPERL_MINIMAP_HELP3	= "\r团队成员: |c00FFFF80%d|r\r小队成员: |c00FFFF80%d|r"
XPERL_MINIMAP_HELP4	= "\r你是此 队伍/团队 队长"
XPERL_MINIMAP_HELP5	= "|c00FFFFFFAlt|r  X-Perl 内存占用"
XPERL_MINIMAP_HELP6	= "|c00FFFFFF+Shift|r  X-Perl 启用以来的内存占用"

XPERL_MINIMENU_OPTIONS	= "选项"
XPERL_MINIMENU_ASSIST	= "显示助手窗口"
XPERL_MINIMENU_CASTMON	= "显示施法监控窗口"
XPERL_MINIMENU_RAIDAD	= "显示团队管理窗口"
XPERL_MINIMENU_ITEMCHK	= "显示物品检查窗口"
XPERL_MINIMENU_RAIDBUFF = "团队Buff"
XPERL_MINIMENU_ROSTERTEXT="名单文字"
XPERL_MINIMENU_RAIDSORT = "分组设置"
XPERL_MINIMENU_RAIDSORT_GROUP = "按照队伍"
XPERL_MINIMENU_RAIDSORT_CLASS = "按照职业"

-- Class name localization is not too important. The only time these strings
-- are used is when the raid frame titles need to be shown when in class sort
-- mode AND when no players of that class have been seen. X-Perl builds an
-- internal list of WoW localised class names as they are encountered. The WoW
-- api function UnitClass returns both the localized and english class name.
XPERL_LOC_CLASS_WARRIOR	= "战士"
XPERL_LOC_CLASS_MAGE	= "法师"
XPERL_LOC_CLASS_ROGUE	= "潜行者"
XPERL_LOC_CLASS_DRUID	= "德鲁伊"
XPERL_LOC_CLASS_HUNTER	= "猎人"
XPERL_LOC_CLASS_SHAMAN	= "萨满祭司"
XPERL_LOC_CLASS_PRIEST	= "牧师"
XPERL_LOC_CLASS_WARLOCK	= "术士"
XPERL_LOC_CLASS_PALADIN	= "圣骑士"
XPERL_LOC_CLASS_PETS	= "宠物"
XPERL_TYPE_NOT_SPECIFIED = "未指定"
XPERL_TYPE_PET		= PET		--"宠物"
XPERL_TYPE_BOSS		= "首领"
XPERL_TYPE_RAREPLUS	= "银英"
XPERL_TYPE_ELITE	= "精英"
XPERL_TYPE_RARE		= "稀有"

-- Status
XPERL_LOC_DEAD		= DEAD		--"死亡"
XPERL_LOC_GHOST		= "幽灵"
XPERL_LOC_FEIGNDEATH	= "假死"
XPERL_LOC_OFFLINE	= PLAYER_OFFLINE	--"离线"
XPERL_LOC_RESURRECTED	= "已被复活"
XPERL_LOC_SS_AVAILABLE	= "灵魂已保存"
XPERL_LOC_UPDATING	= "更新中"
XPERL_LOC_ACCEPTEDRES	= "已接受"
XPERL_RAID_GROUP		= "小队 %d"
XPERL_RAID_GROUPSHORT	= "%d 队"

XPERL_LOC_NONEWATCHED	= "无监控"

XPERL_LOC_STATUSTIP	= "状态提示: "		-- Tooltip explanation of status highlight on unit
XPERL_LOC_STATUSTIPLIST = {
	HOT = "持续治疗",
	AGGRO = "你仇恨过高了",
	MISSING = "你的职业 buff 消失",
	HEAL = "正被治疗",
	SHIELD = "盾"
}

XPERL_OK            	= "确定"
XPERL_CANCEL        	= "取消"

XPERL_LOC_LARGENUMDIV	= 10000
XPERL_LOC_LARGENUMTAG	= "W"

BINDING_HEADER_XPERL = "X-Perl 快捷键"
BINDING_NAME_TOGGLERAID = "切换团队窗口"
BINDING_NAME_TOGGLERAIDSORT = "切换团队排列方式"
BINDING_NAME_TOGGLERAIDPETS = "切换团队宠物窗口"
BINDING_NAME_TOGGLEOPTIONS = "切换选项窗"
BINDING_NAME_TOGGLEBUFFTYPE = "切换增益/减益/无"
BINDING_NAME_TOGGLEBUFFCASTABLE = "切换显示可施加/解除的增益/减益魔法"
BINDING_NAME_TEAMSPEAKMONITOR = "显示 Teamspeak 监控图标"
BINDING_NAME_TOGGLERANGEFINDER = "切换距离侦测"

XPERL_KEY_NOTICE_RAID_BUFFANY = "显示所有的增益/减益魔法"
XPERL_KEY_NOTICE_RAID_BUFFCURECAST = "只显示可施放/解除的的增益/减益魔法"
XPERL_KEY_NOTICE_RAID_BUFFS = "显示团队增益魔法"
XPERL_KEY_NOTICE_RAID_DEBUFFS = "显示团队减益魔法"
XPERL_KEY_NOTICE_RAID_NOBUFFS = "不显示团队增益/减益魔法"

XPERL_DRAGHINT1		= "|c00FFFFFF点击|r 改变窗口比例"
XPERL_DRAGHINT2		= "|c00FFFFFFShift+单击|r 改变窗口大小"

-- Usage
XPerlUsageNameList = {XPerl = "主体文件", XPerl_Player = "玩家", XPerl_PlayerPet = "玩家宠物", XPerl_Target = "目标", XPerl_TargetTarget = "目标的目标", XPerl_Party = "队伍", XPerl_PartyPet = "队友宠物", XPerl_RaidFrames = "团队框", XPerl_RaidHelper = "团队助手", XPerl_RaidAdmin = "团队管理", XPerl_TeamSpeak = "TS监视", XPerl_RaidMonitor = "团队监控", XPerl_RaidPets = "团队宠物", XPerl_ArcaneBar = "施法条", XPerl_PlayerBuffs = "玩家增益", XPerl_GrimReaper = "死神之收割"}
XPERL_USAGE_MEMMAX	= "UI Mem Max: %d"
XPERL_USAGE_MODULES	= "模块: "
XPERL_USAGE_NEWVERSION	= "*新版本"
XPERL_USAGE_AVAILABLE	= "%s |c00FFFFFF%s|r 可下载使用"

XPERL_CMD_HELP		= "|c00FFFF80Usage: |c00FFFFFF/xperl menu | lock | unlock | config list | config delete <realm> <name>"
XPERL_CANNOT_DELETE_CURRENT = "无法删除当前配置"
XPERL_CONFIG_DELETED		= "删除配置信息: %s/%s"
XPERL_CANNOT_FIND_DELETE_TARGET = "找不到要删除的配置信息: (%s/%s)"
XPERL_CANNOT_DELETE_BADARGS = "请输入服务器以及玩家名"
XPERL_CONFIG_LIST		= "配置列表:"
XPERL_CONFIG_CURRENT		= " (当前)"

XPerl_DefaultRangeSpells.ANY = {item = "厚灵纹布绷带"}

XPERL_LOC_CLASS_PETSHUNTER	= XPERL_LOC_CLASS_HUNTER.." "..XPERL_LOC_CLASS_PETS
XPERL_LOC_CLASS_PETSWARLOCK = XPERL_LOC_CLASS_WARLOCK.." "..XPERL_LOC_CLASS_PETS
end
