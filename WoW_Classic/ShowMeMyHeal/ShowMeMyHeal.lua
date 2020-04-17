ShowMeMyHeal = { }; 

ShowMeMyHeal.texts = { };

ShowMeMyHeal.myGUID = nil
ShowMeMyHeal.myName = nil

function ShowMeMyHeal:OnLoad(self) 
    
    ShowMeMyHeal.myName = UnitName("player")
    ShowMeMyHeal.myGUID = UnitGUID("player")

    self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
    self:SetScript("OnEvent", ShowMeMyHeal_eventHandler);

    ticker = C_Timer.NewTicker(0.2, ShowMeMyHeal_Upload)

    print("ShowMeMyHeal chargé."); 
end

function ShowMeMyHeal_eventHandler(self, event, ...)
    local time, token, hidding, who_serial, who_name, who_flags, who_flags2, target_serial, target_name, target_flags, target_flags2, A1, A2, A3, heal, excess, A6, isCrit, A8, A9, A10, A11, A12 = CombatLogGetCurrentEventInfo()
    if ShowMeMyHeal.myGUID  == who_serial then
        if token == "SPELL_HEAL" or token == "SPELL_PERIODIC_HEAL" then
            heal = heal - excess
            
            local t = {}
            
            t.isCrit = isCrit

            if t.isCrit == false then
                t.text = "|cFF0FFF00+"..heal.."|r |cFFEDF404("..excess..")|r - ["..target_name.."]"
            else
                t.text = "|cFFFF0000+"..heal.."|r |cFFEDF404("..excess..")|r - ["..target_name.."]"
            end

            table.insert(ShowMeMyHeal.texts, t)
        end
    end    
end

function ShowMeMyHeal_Upload()
    if ShowMeMyHeal.texts[1] ~= nil then
        ShowMeMyHeal:DisplayText(ShowMeMyHeal.texts[1].text, ShowMeMyHeal.texts[1].isCrit)
        table.remove(ShowMeMyHeal.texts, 1)
    end
end

function ShowMeMyHeal:DisplayText(text, isCrit)
    local frame = CreateFrame("Frame", "FloatingText", UIParent)
    
    frame:SetPoint("CENTER")
    frame:SetSize(1, 1)

    frame.text = frame:CreateFontString(nil, "ARTWORK", nil)
    frame.text:SetPoint("CENTER")

    frame.text = frame:CreateFontString(nil, "ARTWORK", nil)
    frame.text:SetPoint("CENTER")

    if isCrit then 
        frame.text:SetFont([=[Fonts\FRIZQT__.TTF]=], 30, "OUTLINE")
    else
        frame.text:SetFont([=[Fonts\FRIZQT__.TTF]=], 20, "OUTLINE")
    end

    frame.text:SetText(text)

    local ag = frame:CreateAnimationGroup()    
    local a1 = ag:CreateAnimation("Translation")
    a1:SetOffset(0, 240)    
    a1:SetDuration(2)
    --a1:SetSmoothing("OUT")
    ag:SetScript("OnFinished", function() frame:Hide() end)

    ag:Play()
    
end

