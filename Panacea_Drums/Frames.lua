local Panacea_Drums = Panacea_Drums

Panacea_Drums:ProvideVersion("$Rev: 32 $", "$Date: 2008-07-29 09:00:27 +0200 (Di, 29 Jul 2008) $")

local table_insert = table.insert
local table_remove = table.remove
local CreateFrame = CreateFrame

Panacea_Drums.frames = {}
Panacea_Drums.frame_cache = {}

function Panacea_Drums:CreateSingleFrame(framename)
	local Drum = {}

	if not framename then
		framename = "Panacea_DrumsFrame" .. (getn(self.frames) + getn(self.frame_cache))
	end
	local framesize = 40

	local Layout = Panacea_Drums.Layout

	local object
	
	
	
	-- Anchor (for Dragging)
	object = CreateFrame("Button", framename.."Anchor", UIParent)
	object:SetWidth(framesize)
	object:SetHeight(framesize)
	object:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	object:SetMovable(true)
	object:RegisterForDrag("LeftButton")
	object:SetFrameStrata("HIGH")
	object:SetClampedToScreen(true)
	object:SetBackdrop({
		bgFile = "Interface/Tooltips/UI-Tooltip-Background",
		edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
		tile = false, tileSize = 0, edgeSize = 16,
		insets = { left = 0, right = 0, top = 0, bottom = 0 }
	})
	object:SetBackdropColor(1/10, 1/10, 1/10, 1/10)
	object:SetBackdropBorderColor(1, 1, 1, 0)
	Drum.anchor = object

	-- Anchor Text
	object = Drum.anchor:CreateFontString(framename.."AnchorText", "OVERLAY")
	object:SetFontObject(GameFontHighlightSmall)
	object:ClearAllPoints()
	object:SetTextColor(1, 1, 1, 1)
	object:SetWidth(framesize)
	object:SetHeight(framesize)
	object:SetPoint("CENTER", framename.."Anchor", "CENTER")
	object:SetJustifyH("CENTER")
	object:SetJustifyV("MIDDLE")
	Drum.anchortext = object

	-- Drum Icon
	object = CreateFrame("Button", framename, UIParent, "ActionButtonTemplate, SecureActionButtonTemplate")
	object.bgFileDefault = "INV_Misc_Drum_07"
	object:SetWidth(framesize)
	object:SetHeight(framesize)
	object:SetFrameStrata("BACKGROUND")
	object:SetPoint("CENTER", Drum.anchor, "CENTER", 0, 0)
	object:SetMovable(true)
--	object:SetBackdrop({
--		bgFile = "Interface/Icons/" .. object.bgFileDefault,
--		edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
--		tile = false, tileSize = 0, edgeSize = 16,
--		insets = { left = 0, right = 0, top = 0, bottom = 0 }
--	})
	object.texture = object:CreateTexture(nil, "BACKGROUND")
	object.texture:SetWidth(66)
	object.texture:SetHeight(66)
	object.texture:SetTexture("Interface/Icons/"..object.bgFileDefault)
	object.texture:SetAllPoints(object)
	object:SetBackdropColor(1, 1, 1, 1)
	object:SetBackdropBorderColor(1, 1, 1, 0)
	Drum.mainframe = object
	
	-- Cooldown
	object = CreateFrame("Cooldown", framename.."Cooldown", Drum.mainframe, "CooldownFrameTemplate")
	object:ClearAllPoints()
	object.divider = 9
	object:SetWidth(framesize - (framesize / object.divider))
	object:SetHeight(framesize - (framesize / object.divider))
	object:SetPoint("CENTER", Drum.mainframe, "CENTER", 0, 0)
	Drum.cooldown = object

	-- Top Text
	object = Drum.mainframe:CreateFontString(framename.."TextTop", "OVERLAY")
	object:SetFontObject(GameFontHighlight)
	object:SetFont(Layout.settings.fonts.toptext, Layout.settings.fonts.toptextsize or 10, "OUTLINE");
	object:ClearAllPoints()
	object:SetTextColor(1, 1, 1, 1)
	object:SetWidth(framesize*3)
	object:SetHeight(framesize*3)
	object:SetPoint("BOTTOM", Drum.mainframe, "TOP", 0, 0)
	object:SetJustifyH("CENTER")
	object:SetJustifyV("BOTTOM")
	object:SetAlpha(1)
	object:SetShadowColor(0, 0, 0, 1)
	object:SetShadowOffset(8/10, -8/10)
	Drum.toptext = object

	-- Center Text
	object = Drum.mainframe:CreateFontString(framename.."TextCenter", "OVERLAY")
	object:SetFontObject(GameFontHighlight)
	object:SetFont(Layout.settings.fonts.centertext, Layout.settings.fonts.centertextsize or 12, "OUTLINE")
	object:ClearAllPoints()
	object:SetTextColor(1, 0, 0, 1)
	object:SetWidth(framesize)
	object:SetHeight(framesize)
	object:SetPoint("CENTER", Drum.mainframe, "CENTER", 0, 0)
	object:SetJustifyH("CENTER")
	object:SetJustifyV("MIDDLE")
	object:SetAlpha(1)
	object:SetShadowColor(0, 0, 0, 1)
	object:SetShadowOffset(8/10, -8/10)
	Drum.centertext = object
	
	
	-- Nb items Text
	object = Drum.mainframe:CreateFontString(framename.."TextCenter", "OVERLAY")
	object:SetFontObject(GameFontHighlight)
	object:SetFont(Layout.settings.fonts.bottomtext, Layout.settings.fonts.NbItemtextsize or 8, "OUTLINE")
	object:ClearAllPoints()
	object:SetTextColor(1, 1, 1, 1)
	object:SetWidth(framesize)
	object:SetHeight(framesize)
	object:SetPoint("CENTER", Drum.mainframe, "BOTTOM", 10, 5)
	object:SetJustifyH("CENTER")
	object:SetJustifyV("MIDDLE")
	object:SetAlpha(1)
	object:SetShadowColor(0, 0, 0, 1)
	object:SetShadowOffset(8/10, -8/10)
	Drum.NbItemtext = object
	

	-- Bottom Text
	object = Drum.mainframe:CreateFontString(framename.."TextBottom", "OVERLAY")
	object:SetFontObject(GameFontHighlight)
	object:SetFont(Layout.settings.fonts.bottomtext, Layout.settings.fonts.bottomtextsize or 8, "OUTLINE");
	object:ClearAllPoints()
	object:SetTextColor(1, 1, 1, 1)
	object:SetWidth(framesize*2)
	object:SetHeight(framesize*2)
	object:SetPoint("TOP", Drum.mainframe, "BOTTOM", 0, 0)
	object:SetJustifyH("CENTER")
	object:SetJustifyV("TOP")
	object:SetAlpha(1)
	object:SetShadowColor(0, 0, 0, 1)
	object:SetShadowOffset(8/10, -8/10)
	Drum.bottomtext = object

	Drum.NbItemtext:SetText( GetItemCount(Panacea_Drums:GetDrumWatched(), nil, true))
	
	Drum.Lock = function(self)
		self.anchor:Hide()
	end

	Drum.Unlock = function(self)
		self.anchor:Show()
	end

	Drum.IsLocked = function(self)
		return not self.anchor:IsShown()
	end
	
	-- Drum.mainframe = function(self)
		-- if Panacea_Drums.db.profile.Hide then 
			-- if GetNumRaidMembers() == 0 and GetNumRaidMembers()== 0 then
				-- self.mainframe:SetAlpha(0)
			-- else
				
				-- self.mainframe:SetAlpha(1)
			-- end
		-- end	
	-- end

	Drum.SetPoint = function(self, point, relativeTo, relativePoint, xOfs, yOfs)
		self.anchor:ClearAllPoints()
		self.anchor:SetPoint(point, relativeTo, relativePoint, xOfs, yOfs)
		self:SavePos()
	end

	Drum.SavePos = function(self)
		local Layout = Panacea_Drums.Layout
		local posname = Drum.name

		if not Layout.settings then
			Layout.settings = Panacea_Drums:GetLayoutNamespace(Layout)
		end

		if not Layout.settings.frameposition then
			Layout.settings.frameposition = {}
		end

		Layout.settings.frameposition[posname] = {}
		
		local setting = Layout.settings.frameposition[posname]
		setting.point, setting.relativeTo, setting.relativePoint, setting.xOfs, setting.yOfs = Drum.anchor:GetPoint()
		if not setting.relativeTo then
			setting.relativeTo = UIParent
		end
		setting.relativeTo = setting.relativeTo:GetName()
	end


	Drum.LoadPos = function(self)
		local posname = Drum.name

		local Layout = Panacea_Drums.Layout
		if not Layout.settings then
			Layout.settings = Panacea_Drums:GetLayoutNamespace(Layout)
		end

		if not Layout.settings.frameposition then
			Layout.settings.frameposition = {}
		end

		if not Layout.settings.frameposition[posname] then
			Layout.settings.frameposition[posname] = {
				point = "CENTER",
				relativeTo = "UIParent",
				relativePoint = "CENTER",
				xOfs = 0,
				yOfs = 0,
			}
		end

		local setting = Layout.settings.frameposition[posname]
		Drum:SetPoint(setting.point, setting.relativeTo, setting.relativePoint, setting.xOfs, setting.yOfs)
	end
	Drum.SetIcon = function(self, icon)
		self.mainframe.texture:SetTexture(icon)
	end

	Drum.SetCooldown = function(self, drums, drummer)
		self.faded = false
		self.ready = false
		local duration, cooldown = drums.duration, drums.cooldown
		local tend = GetTime() + duration
		local whisper=true
		if drummer == "player" then
			self.CD = GetTime() + cooldown
		end

		self.cooldown:SetCooldown(GetTime(), duration)
		self.mainframe:SetScript("OnUpdate", 
			function()
				local dur = tend - GetTime()
				
				if self.CD then
					local durcd = self.CD - GetTime()

					local tex = "Ready"

					if durcd <= 0 then
						Panacea_Drums:DrumCDFinished(drums)
						self.CD = nil
					else
						tex = ""
						if durcd > 60 then
						tex = tex .. floor(durcd / 60).."m "
						end
						if mod(durcd, 60) ~= 0 then
							tex = tex .. floor(mod(durcd, 60)) .. "s "
						end
						tex = tex:sub(1,-1)
					end
					self.bottomtext:SetText(tex)
				end

				if dur <= 0 then
					self.centertext:SetText("Next")
					if not self.faded then
						Panacea_Drums:DrumsFaded(drums, drummer)
						self.faded = true
					end
					dur = 0
					
				else
					self.centertext:SetText(floor(dur + 0.5))
					
				end

				if dur <= 0 and not self.CD then
					self.mainframe:SetScript("OnUpdate", nil)
					return
				end
				
				if  floor(dur)==5 and whisper== true then
					Panacea_Drums:DrumsAlmostFaded(drums, drummer)
					whisper= false
				end
				
			end
		)
	end

	Drum.anchor:SetScript("OnDragStart",
		function()
			Drum.anchor:StartMoving()

			Drum.anchor:SetScript("OnUpdate",
				function()
					local left = Drum.anchor:GetLeft()
					local right = Drum.anchor:GetRight()
					local top = Drum.anchor:GetTop()
					local bottom = Drum.anchor:GetBottom()
					local vcenter = (top+bottom)/2
					local hcenter = (left+right)/2					

					for k, v in pairs(Panacea_Drums.frames) do
						local anchor = v.anchor

						if anchor:GetLeft() - right <= 5 and anchor:GetLeft() - right >= -5 and vcenter < anchor:GetTop() and vcenter > anchor:GetBottom() then
							Drum:SetPoint("RIGHT", v.anchor, "LEFT", 0, 0)
						end
						if anchor:GetRight() - left <= 5 and anchor:GetRight() - left >= -5 and vcenter < anchor:GetTop() and vcenter > anchor:GetBottom() then
							Drum:SetPoint("LEFT", v.anchor, "RIGHT", 0, 0)
						end

						if anchor:GetTop() - bottom <= 5 and anchor:GetTop() - bottom >= -5 and hcenter < anchor:GetRight() and hcenter > anchor:GetLeft() then
							Drum:SetPoint("BOTTOM", v.anchor, "TOP", 0, 0)
						end
						if anchor:GetBottom() - top <= 5 and anchor:GetBottom() - top>= -5 and hcenter < anchor:GetRight() and hcenter > anchor:GetLeft() then
							Drum:SetPoint("TOP", v.anchor, "BOTTOM", 0, 0)
						end
					end
				end
			)
		end
	)

	Drum.anchor:SetScript("OnDragStop",
		function()
			Drum.anchor:StopMovingOrSizing()
			Drum.anchor:SetScript("OnUpdate", nil)

			Drum:SavePos()
		end
	)

	Drum.name = framename

	self:AddLBF(Drum)

	Drum.mainframe:SetScale(self.db.profile.scale)
	Drum.anchor:SetScale(self.db.profile.scale)

	tinsert(self.frame_cache, Drum)

	return Drum
end

function Panacea_Drums:ResetFrame(Drum)
	Drum.anchortext:SetText("Drag")
	Drum.centertext:SetText("Next")
	Drum.anchor:Hide()
	Drum.mainframe:Hide()

	Drum.mainframe:SetAttribute("type", "item")
	Drum.mainframe:SetAttribute("item", "item:"..self:GetDrumWatched())

	Drum:SetIcon(Panacea_Drums:GetDrumByItemID(self:GetDrumWatched()).texture)

	Drum:LoadPos()
end


function Panacea_Drums:HideFrame()
	--self.anchor:Hide()
	self.mainframe:Hide()
	--self.toptext:Hide()
end

function Panacea_Drums:GetSingleFrame(framename)
	if getn(Panacea_Drums.frame_cache) == 0 then
		self:CreateSingleFrame()
	end

	local frame = self.frame_cache[1]
	if frame.name ~= framename then
		frame.name = framename
	end
	tremove(self.frame_cache, 1)
	tinsert(self.frames, frame)

	self:ResetFrame(frame)

	return frame
end

function Panacea_Drums:ReleaseFrame(frame)
	for k,v in pairs(self.frames) do
		if v.anchor:GetName() == frame.anchor:GetName() then
			table_remove(self.frames, k)
			break
		end
	end

	Panacea_Drums:ResetFrame(frame)

	table_insert(self.frame_cache, frame)
end