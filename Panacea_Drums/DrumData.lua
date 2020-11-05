local Panacea_Drums = Panacea_Drums

Panacea_Drums:ProvideVersion("$Rev: 29 $", "$Date: 2008-07-29 05:46:55 +0200 (Di, 29 Jul 2008) $")

local Drums = {
	battle = {
		item = 29529,
		spell = 35476,
		duration = 30,
		cooldown = 120,
		texture = [[Interface\Icons\INV_MISC_Drum_02]],
	},
	war = {
		item = 29528,
		spell = 35475,
		duration = 30,
		cooldown = 120,
		texture = [[Interface\Icons\INV_MISC_Drum_03]],
	},
	panic = {
		item = 29532,
		spell = 35474,
		duration = 2,
		cooldown = 120,
		texture = [[Interface\Icons\INV_MISC_Drum_06]],
	},
	restoration = {
		item = 29531,
		spell = 35478,
		duration = 15,
		cooldown = 120,
		texture = [[Interface\Icons\INV_MISC_Drum_07]],
	},
	speed = {
		item = 29530,
		spell = 35477,
		duration = 30,
		cooldown = 120,
		texture = [[Interface\Icons\INV_MISC_Drum_04]],
	},
	demon = {
		item = 6948,
		spell = 687,
		duration = 15,
		cooldown = 25,
		texture = [[Interface\Icons\Spell_Shadow_RagingScream]],
	}
}

Panacea_Drums.Drums = Drums

function Panacea_Drums:GetDrumByName(name)
	for k,v in pairs(self.Drums) do
		local itemname = GetItemInfo(v.item)
		if name:match(itemname) then
			return v
		end
	end

	return nil
end

function Panacea_Drums:GetDrumByItemID(id)
	for k,v in pairs(self.Drums) do
		if v.item == id then
			return v
		end
	end

	return nil
end

function Panacea_Drums:GetDrumBySpellID(id)
	for k,v in pairs(self.Drums) do
		if v.spell == id then
			return v
		end
	end

	return nil
end