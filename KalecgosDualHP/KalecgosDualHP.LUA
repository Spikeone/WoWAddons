local dragon = 0;
local deamon = 0;

if ( GetLocale() == "deDE" ) then
_DRAGON_ = "Kalecgos";
_DEAMON_ = "Sathrovarr der Verderber";
end

if ( GetLocale() == "enUS" ) then
_DRAGON_ = "Kalecgos";
_DEAMON_ = "Sathrovarr the Corruptor"; 
end

function KalecgosDualHP_onload()
 DEFAULT_CHAT_FRAME:AddMessage("KalecgosDualHP Loaded!");
  this:RegisterEvent("CHAT_MSG_ADDON");
  this:RegisterEvent('VARIABLES_LOADED');
       this:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, 
       TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);
       this:SetAlpha(0.7);
       
  SLASH_KALECGOSHP1 = "/kalecgoshp";
   SLASH_KALECGOSHP2 = "/khp";
   SlashCmdList["KALECGOSHP"] = function (msg)
    if(msg == "on" or msg == "show") then 
      addon_on();
     end
    if(msg == "off" or msg == "hide") then 
      addon_off();
     end
   end
      
       KalecgosFrame_dragonHPBar:SetMinMaxValues(0 ,100);
       KalecgosFrame_deamonHPBar:SetMinMaxValues(0 ,100);
       KalecgosFrame_dragonHPBar:SetValue(100);
       KalecgosFrame_deamonHPBar:SetValue(100);
end

function KalecgosDualHP_OnUpdate()
  if(_DRAGON_ == UnitName("target")) then
    if(UnitHealth("target") < 100  and UnitHealth("target") > 0) then
      if(dragon > UnitHealth("target")) then
        SendAddonMessage( "KHP_dragon", UnitHealth("target"), "RAID" );
        dragon = UnitHealth("target");
      end
      dragon = UnitHealth("target");
    end
  end
  if(_DEAMON_ == UnitName("target")) then
    if(UnitHealth("target") < 100  and UnitHealth("target") > 0) then
      if(dragon > UnitHealth("target")) then
        SendAddonMessage( "KHP_deamon", UnitHealth("target"), "RAID" );
        dragon = UnitHealth("target");
      end
      dragon = UnitHealth("target");
    end
  end
end

function KalecgosDualHP_Event(event)

  if (event == 'VARIABLES_LOADED') then
   if(not khp_vars) then                khp_vars ={}; end
   if(not khp_vars.point) then          khp_vars.point          = "CENTER"; end
   if(not khp_vars.relativePoint) then  khp_vars.relativePoint  = "CENTER"; end
   if(not khp_vars.xOfs) then           khp_vars.xOfs           = 0; end
   if(not khp_vars.yOfs) then           khp_vars.yOfs           = 0; end
   if(not khp_vars.show_hide) then      khp_vars.show_hide      = "Show"; end
   KalecgosFrame:SetPoint(khp_vars.point, "UIParent", khp_vars.relativePoint, khp_vars.xOfs , khp_vars.yOfs);
   if(khp_vars.show_hide == "Show")then
      addon_on();
   else
      addon_off();
   end
  end
  if(event == 'CHAT_MSG_ADDON')then
    if(arg1 == "KHP_dragon") then
        KalecgosFrame_dragonHPBar:SetValue(arg2);
        KalecgosFrame_dragonHPBar_dragonHPText:SetText(arg2.."%");
    end
    if(arg1 == "KHP_deamon") then
        KalecgosFrame_deamonHPBar:SetValue(arg2);
        KalecgosFrame_deamonHPBar_deamonHPText:SetText(arg2.."%");
    end
  end
end

function addon_on()
  khp_vars.show_hide = "Show";
  KalecgosFrame:Show();
end
function addon_off()
  khp_vars.show_hide = "Hide";
  KalecgosFrame:Hide();
end

function save_position()
  khp_vars.point, _, khp_vars.relativePoint, khp_vars.xOfs, khp_vars.yOfs = KalecgosFrame:GetPoint();
end