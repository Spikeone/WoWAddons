local Panacea_Drums = Panacea_Drums

Panacea_Drums:ProvideVersion("$Rev: 10 $", "$Date: 2008-07-26 20:25:49 +0200 (Sa, 26 Jul 2008) $")

local SharedMedia = Rock("LibSharedMedia-3.0")

local table_insert = table.insert
local table_remove = table.remove

local Layout = {
	name = "Simple Drum",
	frame = nil,
}

local drummers = {}
local drumsAcronym = "<Panacea_Drums>";
function Layout:Drummed(drum, drummer)
	if Panacea_Drums:GetDrumWatched() ~= drum.item then return end

	if Panacea_Drums:UnitInParty(drummer) then
		local frame = self.frame

		local drummername = UnitName(drummer)

		local idx = 0
		for k, v in pairs(drummers) do
			if v:match(drummername) then
				idx = k
				table_remove(drummers, idx)
			end
		end

		-- for i=1, idx, 1 do
			-- table_remove(drummers, 1)
		-- end

		table_insert(drummers, drummername)

		frame:SetIcon(drum.texture)
		frame:SetCooldown(drum, drummer)

		local tex = ""
		for k,v in pairs(drummers) do
			if UnitIsDeadOrGhost(v)==1 then
				tex = tex .."DEAD"..":"..v .."\n"
			elseif Panacea_Drums:UnitInParty(v)==false then
				tex = tex .."OUT"..":"..v .. "\n"
			elseif UnitIsConnected(v)~=1 then
				tex = tex .."OFF"..":"..v .. "\n"				
			else			
				tex = tex ..k..":"..v .. "\n"
			end
		end

		tex = tex:sub(1,-1)

		frame.toptext:SetText(tex)
		frame.NbItemtext:SetText(GetItemCount(Panacea_Drums:GetDrumWatched(), nil, true))
	end
end
function Layout:ResetTable()
	drummers = {}
	local tex="";
	local frame = self.frame
	frame.toptext:SetText(tex)
	frame.NbItemtext:SetText(GetItemCount(Panacea_Drums:GetDrumWatched(), nil, true))

end

function Layout:SetDrummedRotation(drum, drummer)
	if Panacea_Drums:GetDrumWatched() ~= drum.item then return end

	if Panacea_Drums:UnitInParty(drummer) then
		local frame = self.frame

		local drummername = UnitName(drummer)

		local idx = 0
		for k, v in pairs(drummers) do
			if v:match(drummername) then
				idx = k
				table_remove(drummers, idx)
			end
		end

		--for i=1, idx, 1 do
			
		--end

		table_insert(drummers, drummername)

		--frame:SetIcon(drum.texture)
		--frame:SetCooldown(drum, drummer)

		local tex = ""
		for k,v in pairs(drummers) do
			if UnitIsDeadOrGhost(v)==1 then
				tex = tex .."DEAD"..":"..v .."\n"
			else			
				tex = tex ..k..":"..v .. "\n"
			end
		end

		tex = tex:sub(1,-1)

		frame.toptext:SetText(tex)
		frame.NbItemtext:SetText(GetItemCount(Panacea_Drums:GetDrumWatched(), nil, true))
	end
end

function Layout:ReturnFirstOnList()
	for k,v in pairs(drummers) do
		
		if UnitIsDeadOrGhost(v)~=1 and Panacea_Drums:UnitInParty(v)==true  and UnitIsConnected(v)==1  then
		--if k==1 then
			return v			
		end
	end
	
	return nil
end


function Layout:PartyRotationCheck()
local frame = self.frame
local tex = ""
		for k,v in pairs(drummers) do
			if UnitIsDeadOrGhost(v)==1 then
				tex = tex .."DEAD"..":"..v .."\n"
			elseif Panacea_Drums:UnitInParty(v)==false then
				tex = tex .."OUT"..":"..v .. "\n"
			elseif UnitIsConnected(v)~=1 then
				tex = tex .."OFF"..":"..v .. "\n"	
			else
				tex = tex ..k..":"..v .. "\n"
			end
		end

		tex = tex:sub(1,-1)
		if frame then
			frame.toptext:SetText(tex)
			frame.NbItemtext:SetText(GetItemCount(Panacea_Drums:GetDrumWatched(), nil, true))
		end

end




function Layout:whisperRunningRotation()

local text = "";
for k,v in pairs(drummers) do
text = text.." "..v;
end
return text
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
	self.frame = Panacea_Drums:GetSingleFrame("SimpleDrum")

	self.frame:LoadPos()
	self.frame.mainframe:Show()
end

function Layout:HideFrame()
	self.frame.mainframe:SetAlpha(0)	
end

function Layout:ShowFrame()
	self.frame.mainframe:SetAlpha(1)	
end


function Layout:Unload()
	Panacea_Drums:ReleaseFrame(self.frame)
	self.frame = nil
end



Panacea_Drums:RegisterLayout(Layout)