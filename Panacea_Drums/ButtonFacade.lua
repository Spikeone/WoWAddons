local Panacea_Drums = Panacea_Drums

Panacea_Drums:ProvideVersion("$Rev: 24 $", "$Date: 2008-07-27 08:59:17 +0200 (So, 27 Jul 2008) $")

if IsAddOnLoaded("ButtonFacade") then

	local LBF = LibStub("LibButtonFacade",true)
	Panacea_Drums.LBFGroup = LBF:Group("Panacea_Drums", "Panacea_DrumsBar")

	function Panacea_Drums:AddLBF(frame)
		self.LBFGroup:AddButton(frame.mainframe)
	end
else
	function Panacea_Drums:AddLBF(frame)
	end
end