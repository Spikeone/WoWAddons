ThreatLib_funcs[#ThreatLib_funcs+1] = function()
	local UnitName = _G.UnitName
	local ThreatLib = _G.ThreatLib
	local Pet = ThreatLib:GetOrCreateModule("Pet")

	function Pet:ClassEnable()
		self:RegisterEvent("LOCALPLAYER_PET_RENAMED")
		self:RegisterEvent("UNIT_NAME_UPDATE")
		self.unitName = UnitName("pet")		
		self.unitType = "pet"
	end

	function Pet:LOCALPLAYER_PET_RENAMED()
		self.guid = nil
		self.unitName = UnitName("pet")
	end

	function Pet:UNIT_NAME_UPDATE(arg1)
		if arg1 == "pet" then	
			self.guid = nil
			self.unitName = UnitName("pet")
			self:CheckDespawned()
		end
	end
end
