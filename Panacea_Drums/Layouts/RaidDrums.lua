local Panacea_Drums = Panacea_Drums

Panacea_Drums:ProvideVersion("$Rev: 26 $", "$Date: 2008-07-28 01:44:15 +0200 (Mo, 28 Jul 2008) $")

local SharedMedia = Rock("LibSharedMedia-3.0")

local table_insert = table.insert
local table_remove = table.remove

local Layout = {
	name = "Raid Drums",
	frames = {},
}

local drummers = {}

function Layout:Drummed(drum, drummer)
	if Panacea_Drums:GetDrumWatched() ~= drum.item then return end

	if Panacea_Drums:UnitInRaid(drummer) then
		if drummer:match("player") or drummer:match("party") then
			for i=1,GetNumRaidMembers(),1 do
				if UnitName("raid"..i) == UnitName(drummer) then
					drummer = "raid"..i
					break
				end
			end
		end
		local _,_,subgroup = GetRaidRosterInfo(tonumber(drummer:match("%d+")))

		local frame = self.frames[subgroup]

		if not frame then return end

		local drummername = UnitName(drummer)

		local idx = 0
		for k, v in pairs(drummers) do
			if v:match(drummername) then
				idx = k
			end
		end

		for i=1, idx, 1 do
			table_remove(drummers, 1)
		end

		table_insert(drummers, drummername)

		frame:SetIcon(drum.texture)
		frame:SetCooldown(drum, drummer)

		local tex = ""
		for k,v in pairs(drummers) do
			tex = tex .. v .. "\n"
		end

		tex = tex:sub(1,-1)

		frame.toptext:SetText(tex)
	end
end

function Layout:OnInitialize()
	-- Get Settings
	self.settings = Panacea_Drums:GetLayoutNamespace(self)

	if not self.settings.fonts then
		self.settings.fonts = {}
	end

	if not self.settings.fonts.toptext then
		self.settings.fonts.toptext = SharedMedia:Fetch("font", "Adventure")
	end
	if not self.settings.fonts.toptextsize then
		self.settings.fonts.toptextsize = 10
	end

	if not self.settings.fonts.centertext then
		self.settings.fonts.centertext = SharedMedia:Fetch("font", "Adventure")
	end
	if not self.settings.fonts.centertextsize then
		self.settings.fonts.centertextsize = 15
	end

	if not self.settings.fonts.bottomtext then
		self.settings.fonts.bottomtext = SharedMedia:Fetch("font", "Adventure")
	end
	if not self.settings.fonts.bottomtextsize then
		self.settings.fonts.bottomtextsize = 10
	end
end

function Layout:Load()
	-- Set up Frame
	local last = nil
	for i=1,5,1 do
		local drum = Panacea_Drums:GetSingleFrame("RaidDrums"..i)
		table_insert(self.frames, drum)

		drum:LoadPos()

		drum.mainframe:Show()
	end
end

function Layout:Unload()
	for k, v in pairs(self.frames) do
		Panacea_Drums:ReleaseFrame(v)
	end

	self.frames = {}
end

Panacea_Drums:RegisterLayout(Layout)