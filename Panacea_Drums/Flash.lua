local Panacea_Drums = Panacea_Drums

Panacea_Drums:ProvideVersion("$Rev: 29 $", "$Date: 2008-07-29 05:46:55 +0200 (Di, 29 Jul 2008) $")

function Panacea_Drums:CreateFlashFrame()
	if self.flashFrame then
		return self.flashFrame
	end

	local f = CreateFrame("Frame", "Panacea_DrumsFlashFlame", UIParent)
	f:SetAlpha(0)
	f:SetFrameStrata("BACKGROUND")
	f:SetWidth(self.db.profile.flashsize)
	f:SetHeight(self.db.profile.flashsize)

	local t = f:CreateTexture(nil,"BACKGROUND")
	t:SetTexture("Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Factions.blp")
	t:SetAllPoints(f)
	f.texture = t

	f:SetPoint("CENTER",UIParent, "CENTER", 0, 0)

	f.fadeDirection = 1

	f.DoFlash = function(self)
		self:SetScript("OnUpdate", function()
			self:SetAlpha(self:GetAlpha() + self.fadeDirection * Panacea_Drums.db.profile.flashspeed)
			if self:GetAlpha() >= Panacea_Drums.db.profile.maxflashalpha and self.fadeDirection > 0 then
				self:SetAlpha(Panacea_Drums.db.profile.maxflashalpha)
				self.fadeDirection = -self.fadeDirection
			elseif self:GetAlpha() <= 0 and self.fadeDirection < 0 then
				self:SetAlpha(0)
				self.fadeDirection = -self.fadeDirection
				self:SetScript("OnUpdate", nil)
			end
		end)
	end

	self.flashFrame = f

	return f
end

function Panacea_Drums:FlashDrum(drum)
	if not self.flashFrame then self:CreateFlashFrame() end

	self.flashFrame.texture:SetTexture(drum.texture)
	self.flashFrame:DoFlash()
end