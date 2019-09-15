-- Globally used
local G = getfenv(0)
local select = select
local oGlow = oGlow

-- Containers
local GetContainerItemLink = GetContainerItemLink
local GetItemInfo = GetItemInfo

-- Addon
local frame = CreateFrame"Frame"
frame:Hide()
frame:RegisterEvent"BAG_UPDATE"
frame:RegisterEvent"UNIT_INVENTORY_CHANGED"

local ContainerFrame1 = ContainerFrame1
local bid, self, link, size, name, q
local update = function(bag, id)
    DEFAULT_CHAT_FRAME:AddMessage("BagUpdate")
	size = bag.size
	name = bag:GetName()
	for i=1, size do
		bid = size - i + 1
		self = G[name.."Item"..bid]
		link = GetContainerItemLink(id, i)

		if(link and not oGlow.preventBags) then
			q = select(3, GetItemInfo(link))
			oGlow(self, q)
		elseif(self.bc) then
			self.bc:Hide()
		end
	end
end

local delay = 0
local up = {}
frame:SetScript("OnUpdate", function(self, elapsed)
	delay = delay + elapsed
	if(delay > .05) then
		for id in pairs(up) do
			update(id, id:GetID())
			up[id] = nil
		end

		delay = 0
		self:Hide()
	end
end)

local cf
frame:SetScript("OnEvent", function(self, event, id)
	bid = id + 1
	local cf = G["ContainerFrame"..bid]
	if(cf and cf:IsShown()) then
		up[cf] = true
		frame:Show()
	end
end)

local self
hooksecurefunc("ContainerFrame_OnShow", function()
    DEFAULT_CHAT_FRAME:AddMessage("ContainerFrame_OnShow")
	self = this
	if(ContainerFrame1.bagsShown > 0) then
		frame:RegisterEvent"BAG_UPDATE"
		up[self] = true
		frame:Show()
	end
end)

hooksecurefunc("ContainerFrame_OnHide", function()
    DEFAULT_CHAT_FRAME:AddMessage("ContainerFrame_OnHide")
	if(ContainerFrame1.bagsShown == 0) then
		frame:UnregisterEvent"BAG_UPDATE"
		up[self] = nil
		frame:Hide()
	end
end)

hooksecurefunc("ToggleBackpack", function()
    DEFAULT_CHAT_FRAME:AddMessage("Hooke secure")

    self = this
	if(ContainerFrame1.bagsShown > 0) then
		frame:RegisterEvent"BAG_UPDATE"
		up[self] = true
		frame:Show()
	end

	if(ContainerFrame1.bagsShown == 0) then
		frame:UnregisterEvent"BAG_UPDATE"
		up[self] = nil
		frame:Hide()
	end
end)

frame:SetScript("OnEvent", function(self, event, ...)
    --DEFAULT_CHAT_FRAME:AddMessage("Event: " ..event)
    --DEFAULT_CHAT_FRAME:AddMessage("BagsShown: " ..ContainerFrame1.bagsShown)
    --up[self] = true
    --frame:Show()
    
    --local containerFrameId = 1;
    --
    --for container = 0, NUM_BAG_SLOTS+NUM_BANKBAGSLOTS do
    --    local bagName = GetBagName(container)
    --
    --    if (bagName) then
    --        local nbSlots = GetContainerNumSlots(container);
    --
    --        DEFAULT_CHAT_FRAME:AddMessage("ContainerFrame: " ..containerFrameId)
    --        
    --        if(getglobal("ContainerFrame1").bagsShown) then
    --            DEFAULT_CHAT_FRAME:AddMessage("isShown -> " ..getglobal("ContainerFrame1").bagsShown)
    --        else
    --            DEFAULT_CHAT_FRAME:AddMessage("not shown")
    --        end
    --        --for slot = 1, nbSlots do
    --        --    slotFrameId = nbSlots + 1 - slot;
    --        --
    --        --    local slotFrameName = 'ContainerFrame' .. containerFrameId .. 'Item' .. slotFrameId;
    --        --    addon:updateContainerSlot(container, slot, slotFrameName);
    --        --end -- end for slot
    --
    --        containerFrameId = containerFrameId + 1;
    --    end -- end if bagname
    --end -- end for container
end)

oGlow.updateBags = update
