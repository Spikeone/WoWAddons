local VERSION = tonumber(("$Rev: 32 $"):match("%d+"))

Panacea_Drums = Rock:NewAddon("PanaceaDrums", "LibRockDB-1.0", "LibRockEvent-1.0", "LibRockConsole-1.0", "LibRockConfig-1.0")
local Panacea_Drums, self = Panacea_Drums, Panacea_Drums
Panacea_Drums.version = "2.0-r" .. VERSION
Panacea_Drums.revision = VERSION
Panacea_Drums.date = ("$Date: 2008-07-29 09:00:27 +0200 (Di, 29 Jul 2008) $"):match("%d%d%d%d%-%d%d%-%d%d")



-- cvz adding the text to ask for rotation
RotationaskedInChat= "Panacea_Drums Rotation";


function Panacea_Drums:ProvideVersion(revision, date)
	revision = tonumber(tostring(revision):match("%d+"))
	if revision > Panacea_Drums.revision then
		Panacea_Drums.version = "2.0-r" .. revision
		Panacea_Drums.revision = revision
		Panacea_Drums.date = date:match("%d%d%d%d%-%d%d%-%d%d")
	end
end




do
	local localeTables = {}
	function Panacea_Drums:L(name, defaultTable)
		if not localeTables[name] then
			localeTables[name] = setmetatable(defaultTable or {}, {__index = function(self, key)
				self[key] = key
				return key
			end})
		end
		return localeTables[name]
	end
end

local localization = (GetLocale == "deDE") and {
	["foo"] = "bar",
} or {}

local L = Panacea_Drums:L("Panacea_Drums", localization)

local table_insert = table.insert
local table_remove = table.remove
local table_sort = table.sort
local table_concat = table.concat
local select = select
local geterrorhandler = geterrorhandler
local pairs = pairs
local type = type
local tostring = tostring
local ipairs = ipairs
local _G = _G
local UnitName = UnitName
local UnitExists = UnitExists
local GetRaidRosterInfo = GetRaidRosterInfo

Panacea_Drums.Layouts = {}
Panacea_Drums.Layout = nil

Panacea_Drums:SetDatabase("Panacea_DrumsDB")

do
	Panacea_Drums:SetDatabaseDefaults('profile', {
		layout = "Simple Drum",
		layoutSettings = {},
		drumwatched = 29529,
		
	})
end






function Panacea_Drums:OnInitialize()
	
	
	assert(self.Layouts, "Error, no Layouts not provided.")

	if not self.Layouts[self.db.profile.layout] then
		return
	end

	if not self:IsActive() then
		self:ToggleActive(true)
	end

	for k,v in pairs(self.Layouts) do
		if v.OnInitialize then
			v:OnInitialize()
		end
	end

	if not Panacea_Drums.db.profile.scale then
		Panacea_Drums.db.profile.scale = 1
	end

	if not self.db.profile.flashsize then
		self.db.profile.flashsize = 400
	end

	if not self.db.profile.flashspeed then
		self.db.profile.flashspeed = 0.1
	end

	if not Panacea_Drums.db.profile.maxflashalpha then
		Panacea_Drums.db.profile.maxflashalpha = 0.8
	end

	-- if not Panacea_Drums.db.profile.screenflash then
		-- Panacea_Drums.db.profile.screenflash = true
	-- end

	Panacea_Drums.db.profile.locked = true
end

function Panacea_Drums:OnEnable()
	Panacea_Drums:SwitchLayout(Panacea_Drums.db.profile.layout)

	self:AddEventListener("Blizzard", "COMBAT_LOG_EVENT_UNFILTERED")
    self:AddEventListener("Blizzard", "CHAT_MSG_PARTY")
	--self:AddEventListener("Blizzard", "CHAT_MSG_WHISPER")
	self:AddEventListener("Blizzard", "PARTY_MEMBERS_CHANGED")	
	self:AddEventListener("Blizzard", "PARTY_MEMBER_ENABLE")	
	self:AddEventListener("Blizzard", "PARTY_MEMBER_DISABLE")	
	self:AddEventListener("Blizzard", "GUILD_ROSTER_UPDATE")
	--self:RegisterEvent("CHAT_MSG_PARTY")
	self:AddEventListener("CHAT_MSG_ADDON")
	self:SetConfigTable(self.options)
	self:SetConfigSlashCommand("/Panacea_Drums", "/ccd")
	self.options.extraArgs.active = nil
	
	--local eventframe;
	--self:SetScript("OnEvent", self:CHAT_MSG_PARTY(namespace, event, msg, author, ...))
end

-- function Panacea_Drums:CHAT_MSG_WHISPER(namespace, event, ...)

-- local message, rest=...
	-- if message=="<Panacea_Drums> YOU'RE NEXT! DRUMS NOW!!!!" then
		-- PlaySoundFile("Interface\\AddOns\\Panacea_Drums2\\drums.mp3")
	-- end

-- end

function Panacea_Drums:IsNameInRotation(nametomatch, NamesTable)

	for i=1, 5 do
		if NamesTable[i]==nametomatch then
			return true
		end
	end
	return false
end

function Panacea_Drums:CHAT_MSG_ADDON(namespace, event, ...)
	-- only check if the prefix is our addon's one
	local prefix, text, distribution, author= ...
	
	if prefix=="Panacea_Drums" and distribution== "PARTY" then
		--SendChatMessage("AddonChannel".."prefix= "..prefix.."text= "..text.."author= "..author,"PARTY")
		
		-- set up the rotation based on text		
		if text=="Drums of Battle" then
			Panacea_Drums:SetRotation(35476, author)
		elseif text=="Drums of War" then
			Panacea_Drums:SetRotation(35475, author)
		elseif text=="Drums of Restoration" then
			Panacea_Drums:SetRotation(35478, author)		
		else
			-- -- sync the rotaion			
			-- for name in string.gmatch(text, "[^%s]+") do
			 -- Panacea_Drums:SetRotation(35476, name)
			-- end
			--SendChatMessage("AddonChannel".."prefix= "..prefix.."text= "..text.."author= "..author,"PARTY")
			
		end 
				
	
		
	elseif prefix=="Panacea_DrumsB" and distribution== "PARTY" and Panacea_Drums:GetDrumWatched()==29529 then
			-- clear the table
			Panacea_Drums:ResetRotationTable ()
			
			-- check if the sync rotation contains your name, if not, add yourself on last position
			local namefound=1
			local RotationNames={} 				
			local pos1, pos2, name, rest = string.find(text, "^%s-(%S+)(.*)");	
			local rotationtext=""
			RotationNames[1]=name
			for i=2, 5 do	
				if rest~=nil then
					pos1, pos2, name, rest = string.find(rest, "^%s-(%S+)(.*)");
					RotationNames[i]=name;				
				else -- end of the names, check if the player was in there					
						
					if Panacea_Drums:IsNameInRotation(UnitName("player"), RotationNames)== false then
						-- if no second name is in the rotation, it means the list was blank when the drummer did his drum, so he will go 2nd, and not 1st
						if i==2 then
							RotationNames[2]=RotationNames[1]
							RotationNames[1]=UnitName("player")					
							namefound=0
						else
							RotationNames[i]=UnitName("player")
							namefound=0
						end
					end
				end
			end
			
			-- sync the rotation
			for i=1, 5 do
				if RotationNames[i]~=nil then				
					Panacea_Drums:SetRotation(35476, RotationNames[i])
					rotationtext= rotationtext..RotationNames[i].." "
				end
			end
			
			
			if namefound==0 then
			-- advertise that the player is back on the rotation				
				--SendChatMessage("drummers battle "..rotationtext, "PARTY", nil, author);	
				SendAddonMessage("Panacea_DrumsB", " "..rotationtext, "PARTY", "target")
			end	
			
			
	elseif prefix=="Panacea_DrumsW" and distribution== "PARTY" and Panacea_Drums:GetDrumWatched()==29528 then
			-- sync the rotation
			Panacea_Drums:ResetRotationTable ()
			for name in string.gmatch(text, "[^%s]+") do
			 Panacea_Drums:SetRotation(35475, name)
			end
	elseif prefix=="Panacea_DrumsR" and distribution== "PARTY" and Panacea_Drums:GetDrumWatched()==29531 then
			-- sync the rotation
			Panacea_Drums:ResetRotationTable ()
			for name in string.gmatch(text, "[^%s]+") do
			 Panacea_Drums:SetRotation(35478, name)
			end
	end
	-- play sound if enabled
	if prefix=="Panacea_Drums" and distribution== "WHISPER" then
		if text=="Next" then
			if self.db.profile.Sound then
				PlaySoundFile("Interface\\AddOns\\Panacea_Drums\\drums.mp3")
			end
		end
	end
end

function Panacea_Drums:SetAlpha() 
	if  self.db.profile.Hide then 
		if GetNumPartyMembers() == 0 and GetNumRaidMembers()== 0 then
			Panacea_Drums.Layout:HideFrame()
			--Panacea_Drums.Layout:Unload()
			
					-- if self.Layout then
						-- self.Layout:Unload()			
					-- end	
			
		else
			-- Panacea_Drums.db.profile.layout = name
			-- Panacea_Drums.Layout = self.Layouts[name]			
			-- Panacea_Drums.Layout:Load()
			Panacea_Drums.Layout:ShowFrame()			
		end
	else
			-- Panacea_Drums.db.profile.layout = name
			-- Panacea_Drums.Layout = self.Layouts[name]			
			-- Panacea_Drums.Layout:Load()
		--cDrums.Layout:Load()
		Panacea_Drums.Layout:ShowFrame()	
	end
end

function Panacea_Drums:COMBAT_LOG_EVENT_UNFILTERED(namespace, event, ...)
	Panacea_Drums:SetAlpha() 
	local timestamp, event = ...
	if event ~= "SPELL_CAST_SUCCESS" then return end

	local _,_,_,drummer,_,_,_,_,spellid = ...
	local drum = self:GetDrumBySpellID(spellid)

	if not drum then return end

	local drummer = self:GetUnitID(drummer)

	self:Drum(drum, drummer)
end

-- when the party changes, will update the rotation list and mark them as OUT
function Panacea_Drums:PARTY_MEMBERS_CHANGED(namespace, event, ...)	
self.Layout:PartyRotationCheck()
Panacea_Drums:SetAlpha() 
end

function Panacea_Drums:PARTY_MEMBER_ENABLE(namespace, event, ...)	
self.Layout:PartyRotationCheck()
Panacea_Drums:SetAlpha() 
end

function Panacea_Drums:PARTY_MEMBER_DISABLE(namespace, event, ... )	

self.Layout:PartyRotationCheck()
Panacea_Drums:SetAlpha() 
end

function Panacea_Drums:GUILD_ROSTER_UPDATE(namespace, event, ... )
self.Layout:PartyRotationCheck()
Panacea_Drums:SetAlpha() 
end

function Panacea_Drums:ResetRotationTable ()
self.Layout:ResetTable()	
end

-- cvz added for chat interaction
function Panacea_Drums:CHAT_MSG_PARTY(namespace, event, msg, author, ...)	
	
	if( msg == "Drummers" or msg=="drummers") then
		-- resets the table
		Panacea_Drums:ResetRotationTable ()
		
		-- advertising for the others the current tracking drum 
		if Panacea_Drums:GetDrumWatched()==29529 then			
			Panacea_Drums:ReplyForRotation("Drums of Battle");		
		elseif Panacea_Drums:GetDrumWatched()==29528 then
			Panacea_Drums:ReplyForRotation("Drums of War");	
		elseif Panacea_Drums:GetDrumWatched()==29531 then
			Panacea_Drums:ReplyForRotation("Drums of Restoration");	
		end
	
	elseif author==UnitName("player") then
	
		local pos1, pos2, cmd, rest = string.find(msg, "^%s-(%S+)(.*)");		
		--SendChatMessage("pos1= "..pos1.." pos2= "..pos2.." cmd="..cmd.."-", "RAID", nil, author);
		if (cmd=="drummers" or cmd=="Drummers") and pos1==1 then
		
			
			pos1, pos2, cmd, rest = string.find(rest, "^%s-(%S+)(.*)");
			--SendChatMessage("pos1= "..pos1.." pos2= "..pos2.." cmd="..cmd.."-", "RAID", nil, author);
			--SendChatMessage("cmd= "..cmd, "RAID", nil, author);
			if cmd=="battle" then				
				Panacea_Drums:ManualRotation(	"Panacea_DrumsB", rest, 0) 
			elseif cmd=="resto" then
				Panacea_Drums:ManualRotation(	"Panacea_DrumsR", rest, 0) 
			elseif cmd=="war" then
				Panacea_Drums:ManualRotation(	"Panacea_DrumsW", rest, 0) 
			elseif cmd=="rotation" then
				Panacea_Drums:ManualRotation(	"Panacea_DrumsW", rest, 1 )
			
			else
				if author==UnitName("player") then
					SendChatMessage("<Panacea_Drums> Wrong syntax", "PARTY", nil, author);	
				end
			end
		end
	end
end

function Panacea_Drums:ManualRotation (channel, manualtext, cmd)
	
	
	local ActiveRotationText=self.Layout:whisperRunningRotation()
	local names = {} 
	local Activenames = {}
	local NewRotation = {} 	
	local text=""
	local pos1, pos2, name, rest = string.find(ActiveRotationText, "^%s-(%S+)(.*)");	
	Activenames[1]=name
	for i=2, 5 do
	
		if rest~=nil then
			pos1, pos2, name, rest = string.find(rest, "^%s-(%S+)(.*)");
			Activenames[i]=name;
		end
	end
	
	
	pos1, pos2, name, rest = string.find(manualtext, "^%s-(%S+)(.*)");	
	if name~=nil then 
			
		
		names[1]=name;
		
		for i=2, 5 do
		
			if rest~=nil then
				pos1, pos2, name, rest = string.find(rest, "^%s-(%S+)(.*)");
				names[i]=name;
			end
		end
		-- for i=1, 5 do
			-- if names[i]~=nil then
				-- text=text.."names"..i.."="..names[i].." ";	
			-- end
		-- end
		-- SendChatMessage(text, "RAID", nil, author);
	   
	   
	   -- parse active rotation   
	   
		-- for i=1, 5 do
			-- if Activenames[i]~=nil then
				-- text=text.."Activenames"..i.."="..Activenames[i].." ";	
			-- end 
		-- end
		--SendChatMessage(text, "RAID", nil, author);
		
		
		
		-- matches the new rotation
		for i=1, 5 do
			if names[i]~=nil then
				if names[i]=="1" then
					NewRotation[i]=Activenames[1]
				elseif names[i]=="2" then
					NewRotation[i]=Activenames[2]
				elseif names[i]=="3" then
					NewRotation[i]=Activenames[3]
				elseif names[i]=="4" then
					NewRotation[i]=Activenames[4]
				elseif names[i]=="5" then
					NewRotation[i]=Activenames[5]
				else
					NewRotation[i]=names[i]
				end
			end
		end
		text=""
		for i=1, 5 do
			if NewRotation[i]~=nil then
				text=text..NewRotation[i].." ";	
			end
		end  
		SendAddonMessage(channel, " "..text, "PARTY", "target")
		
		-- announce in party the new rotation
		text="New Rotation: "	
		text=text..NewRotation[1];	
		
		for i=2, 5 do
			if NewRotation[i]~=nil then
				text=text.."==>"..NewRotation[i];	
			end
		end  
		
		
		SendChatMessage(text, "PARTY", nil, author);
	else
		if cmd==1 then
		
			if Panacea_Drums:GetDrumWatched()==29529 then			
				text="Drums of Battle Rotation: " 		
			elseif Panacea_Drums:GetDrumWatched()==29528 then
				text="Drums of Battle War: " 		
			elseif Panacea_Drums:GetDrumWatched()==29531 then
				text="Drums of Restoration Rotation: " 		
			end
			-- asking for active rotation	
			--text="Drums Rotation: "	
			text=text..Activenames[1];	
			
			for i=2, 5 do
				if Activenames[i]~=nil then
					text=text.."==>"..Activenames[i];	
				end
			end  
			
			
			SendChatMessage(text, "PARTY", nil, author);
		end
	end
end




function Panacea_Drums:ReplyForRotation(DrumType)	

SendAddonMessage("Panacea_Drums", DrumType, "PARTY", "target")
--SendChatMessage("<Panacea_Drums> "..DrumType, "PARTY", nil, author);

end


function Panacea_Drums:drumtest(spellid, name)
	
	local drum = self:GetDrumBySpellID(spellid)

	if not drum then 
	--SendChatMessage("no spellid", "PARTY")
	return end
	--SendChatMessage("spellid ok", "PARTY")
	local drummer = self:GetUnitID(name)
   --SendChatMessage("drummer"..drummer, "PARTY")
	self:Drum(drum, drummer)
end


function Panacea_Drums:SetRotation(spellid, name)
	
	local drum = self:GetDrumBySpellID(spellid)

	if not drum then 
	--SendChatMessage("no spellid", "PARTY")
	return end
	--SendChatMessage("spellid ok", "PARTY")
	local drummer = self:GetUnitID(name)
   --SendChatMessage("drummer"..drummer, "PARTY")
	self:SetRotationDrum(drum, drummer)
end

function Panacea_Drums:SetRotationDrum(drum, drummer)
	if not drum or not drummer then 
	--	SendChatMessage("drum not ok", "PARTY")
		return end
   --SendChatMessage("drum ok", "PARTY")
	if self.Layout.Drummed then
		--self.Layout:Drummed(drum, drummer)
		self.Layout:SetDrummedRotation(drum, drummer)
	end
	
end

function Panacea_Drums:Drum(drum, drummer)
	if not drum or not drummer then	
		return end
   
   
	if self.Layout.Drummed then
		self.Layout:Drummed(drum, drummer)		
	end

	if drummer == "player" and self.db.profile.announceparty and GetNumPartyMembers() > 0 then
		local itemlink = select(2, GetItemInfo(drum.item))
		SendChatMessage(L["++ %s drummed, active for %d seconds!"]:format(itemlink, drum.duration), "PARTY")
	end
	
		
end

function Panacea_Drums:DrumsFaded(drum, drummer)
	if drummer == "player" then
		local nextdrummer = self.Layout:ReturnFirstOnList();
		
		-- Enable Party announcement
		if self.db.profile.announceparty and GetNumPartyMembers() > 0 then
			local itemlink = select(2, GetItemInfo(drum.item))
			local nextdrummer = self.Layout:ReturnFirstOnList();
            if(nextdrummer ~= nil) then
			    SendChatMessage(L["-- %s faded, "..nextdrummer.." now!"]:format(itemlink), "PARTY")
            end
		end
		
		
		-- Enable whisper announcement
		if self.db.profile.whisper then
			if nextdrummer ~= UnitName("player") and nextdrummer ~= nil then				
				SendChatMessage("<Panacea_Drums> DRUMS NOW!!!! DRUMS NOW!!!!", "WHISPER", nil, nextdrummer );
			end 
		end
		
		if nextdrummer ~= UnitName("player") and nextdrummer ~= nil  then	-- avoid having the sound when you're alone (e.i next one is you)	
			-- sends an addonmessage either way when the drum is done (used for Sound)
			SendAddonMessage("Panacea_Drums", "Next", "WHISPER", nextdrummer)
		end 
	
		-- sends out the rotation to everyone in the party for syncronizing
		--Panacea_Drums:SendRotation();	
	end
end

function Panacea_Drums:DrumsAlmostFaded(drum, drummer)
	if drummer == "player" then
		local nextdrummer = self.Layout:ReturnFirstOnList();
		
	
		-- Enable whisper announcement
		if self.db.profile.whisper then
			if nextdrummer ~= UnitName("player")  then				
				SendChatMessage("<Panacea_Drums> Get ready, You're next!", "WHISPER", nil, nextdrummer );
			end 
		end		
	
		-- sends out the rotation to everyone in the party for syncronizing
		Panacea_Drums:SendRotation();	
	end
end




function Panacea_Drums:SendRotation() 
-- send to messagechat PARTY the current rotation
local text=self.Layout:whisperRunningRotation()

	if Panacea_Drums:GetDrumWatched()==29529 then	 -- batte		
		SendAddonMessage("Panacea_DrumsB", " "..text, "PARTY", "target")
	elseif Panacea_Drums:GetDrumWatched()==29528 then -- War
		SendAddonMessage("Panacea_DrumsW", " "..text, "PARTY", "target")
	elseif Panacea_Drums:GetDrumWatched()==29531 then -- restoration
		SendAddonMessage("Panacea_DrumsR", " "..text, "PARTY", "target")
	end
--SendAddonMessage("Panacea_Drums", text, "PARTY", "target")

end 


function Panacea_Drums:DrumCDFinished(drum)
	if Panacea_Drums.db.profile.screenflash then
		self:FlashDrum(drum)
	end
end

function Panacea_Drums:GetUnitID(name)
	local num = GetNumPartyMembers()
	local prefix = "party"

	if name == UnitName("player") then
		return "player"
	end

	if GetNumRaidMembers() > 0 then
		num = GetNumRaidMembers()
		prefix = "raid"
	end

	for i=1, num, 1 do
		local uname = UnitName(prefix..i)
		if name:match(uname) then
			return prefix..i
		end
	end
end

function Panacea_Drums:UnitInParty(unit)
	if UnitName(unit) == UnitName("player") then
		return true
	end

	if not UnitExists(unit) then
		return false
	end

	for i=1,GetNumPartyMembers(), 1 do
		local uname = UnitName("party"..i)
		if UnitName(unit):match(uname) then
			return true
		end
	end

	return false
end

function Panacea_Drums:UnitInRaid(unit)
	if GetNumRaidMembers() == 0 then
		return false
	end

	if not UnitExists(unit) then
		return false
	end

	return true
end

function Panacea_Drums:GetDrumWatched()
	return self.db.profile.drumwatched
end

function Panacea_Drums:RegisterLayout(data)
	if not data.name then return end

	if self.Layouts[data.name] then
		return
	end

	self.Layouts[data.name] = data
end

function Panacea_Drums:GetLayoutNamespace(layout)
	local name = layout

	if type(name) == "table" then
		name = name.name
	end

	if not self.db.profile.layoutSettings then
		self.db.profile.layoutSettings = {}
	end

	if not self.db.profile.layoutSettings[name] then
		self.db.profile.layoutSettings[name] = {}
	end

	return self.db.profile.layoutSettings[name]
end

function Panacea_Drums:SwitchLayout(name)
	if not self.Layouts[name] then return end

	if self.Layout then
		self.Layout:Unload()
	end

	Panacea_Drums.db.profile.layout = name
	Panacea_Drums.Layout = self.Layouts[name]
	Panacea_Drums.Layout:Load()
end