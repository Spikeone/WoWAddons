--------------------------------------------------------
-- Config menu related functions
--------------------------------------------------------
function SheepWatchConfig_OnMouseDown()
	if (arg1 == "LeftButton") then
		this:StartMoving()
	end
end

function SheepWatchConfig_OnMouseUp()
	if (arg1 == "LeftButton") then
		this:StopMovingOrSizing()
	end
end

-- enable sheepwatch
function SheepWatchConfigButtonEnable_OnShow()
	if ( SHEEPWATCH.STATUS >= 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonEnable_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.STATUS = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.STATUS = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.status = SHEEPWATCH.STATUS;
end

-----------------------
-- Move frame

function SheepWatchConfigButtonMove_OnClick()
	if ( SHEEPWATCH.LOCKED ) then
		SHEEPWATCH.STATUS = 3;
		SheepWatch:Show();
		SheepWatchCounterText:SetText( "12.3s" );
		SheepWatchCounterText:Show();
		SheepWatchConfigButtonMove:SetText( SHEEPWATCH_LABEL_MOVE2 );
		DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH_TEXT_UNLOCKED);		
	else
		SHEEPWATCH.STATUS = 1;
		SheepWatch:Hide();
		SheepWatchCounterText:Hide();
		SheepWatchConfigButtonMove:SetText( SHEEPWATCH_LABEL_MOVE );
		DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH_TEXT_LOCKED);		
	end
	SHEEPWATCH.LOCKED = not SHEEPWATCH.LOCKED;
end

-----------------------
-- close frame
function SheepWatchConfigButtonClose_OnClick()
	if ( not SHEEPWATCH.LOCKED ) then
		SHEEPWATCH.LOCKED = true;
		SHEEPWATCH.STATUS = 1;
		SheepWatch:Hide();
		SheepWatchCounterText:Hide();
		SheepWatchConfigButtonMove:SetText( SHEEPWATCH_LABEL_MOVE );		
		DEFAULT_CHAT_FRAME:AddMessage(SHEEPWATCH_TEXT_LOCKED);	
	end
	SheepWatchConfig:Hide();
end

-----------------------
function SheepWatchConfigButtonSound_OnShow()
	if ( SHEEPWATCH.SOUND ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonSound_OnClick()
	if this:GetChecked() then 
		SHEEPWATCH.SOUND = true;
		PlaySound("igMainMenuOptionCheckBoxOff"); 
	else 
		SHEEPWATCH.SOUND = false; 
		PlaySound("igMainMenuOptionCheckBoxOff"); 
	end 
	SheepWatch_Settings.sound = SHEEPWATCH.SOUND; 
	end

-----------------------
function SheepWatchConfigButtonCounterDigits_OnShow()
	if ( SHEEPWATCH.DECIMALS ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonCounterDigits_OnClick() 
	if this:GetChecked() then 
		SHEEPWATCH.DECIMALS = true; 
		PlaySound("igMainMenuOptionCheckBoxOff"); 
	else 
		SHEEPWATCH.DECIMALS = false; 
		PlaySound("igMainMenuOptionCheckBoxOff"); 
	end 
	SheepWatch_Settings.decimals = SHEEPWATCH.DECIMALS; 
end

-----------------------
function SheepWatchConfigButtonCounter_OnShow()
	if ( SHEEPWATCH.COUNTER ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonCounter_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.COUNTER = true;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.COUNTER = false;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.counter = SHEEPWATCH.COUNTER;
end

-----------------------
function SheepWatchConfigDropdownDirection_Initialize()
	local info;
	for i = 1, getn(SHEEPWATCH_LIST_DIRECTIONS), 1 do
		info = {
			text = SHEEPWATCH_LIST_DIRECTIONS[i].name;
			func = SheepWatchConfigDropdownDirection_OnClick;
		};
		UIDropDownMenu_AddButton(info);
	end
end

function SheepWatchConfigDropdownDirection_OnLoad()
	UIDropDownMenu_SetWidth(110);
	UIDropDownMenu_SetButtonWidth(24);
	UIDropDownMenu_JustifyText("LEFT", SheepWatchConfigDropdownDirection);
end

function SheepWatchConfigDropdownDirection_OnShow()
	UIDropDownMenu_Initialize(SheepWatchConfigDropdownDirection, SheepWatchConfigDropdownDirection_Initialize);
	UIDropDownMenu_SetSelectedID( SheepWatchConfigDropdownDirection, SHEEPWATCH.DIRECTION );
	UIDropDownMenu_SetWidth(110);
end

function SheepWatchConfigDropdownDirection_OnClick()
	i = this:GetID();
	UIDropDownMenu_SetSelectedID( SheepWatchConfigDropdownDirection, i );
	SHEEPWATCH.DIRECTION = i;
	SheepWatch_Settings.direction = SHEEPWATCH.DIRECTION;
end

-- transparency  slider
function SheepWatchConfigAlphaSlider_Onload()
	getglobal(this:GetName().."Text"):SetText(SHEEPWATCH_LABEL_TRANSPARENCY);
	getglobal(this:GetName().."High"):SetText("1");
	getglobal(this:GetName().."Low"):SetText("0");
	this:SetMinMaxValues(0,1);
	this:SetValueStep(0.1);
	this.tooltipText = SHEEPWATCH_TOOLTIP_TRANSPARENCY
end

function SheepWatchConfigAlphaSlider_OnShow()
	if ( SHEEPWATCH.ALPHA ) then
		this:SetValue(SHEEPWATCH.ALPHA);
	else
		this:SetValue(1);
	end
end

function SheepWatchConfigAlphaSlider_OnValueChanged()
	SHEEPWATCH.ALPHA = SheepWatchConfigAlphaSlider:GetValue();
	SheepWatch_Settings.alpha = SHEEPWATCH.ALPHA;
	SheepWatch:SetAlpha( SHEEPWATCH.ALPHA );
end

------------------------------------------
-- Scale the label
function SheepWatchConfigScaleSlider_Onload()
	getglobal(this:GetName().."Text"):SetText(SHEEPWATCH_LABEL_SCALING);
	getglobal(this:GetName().."High"):SetText("3");
	getglobal(this:GetName().."Low"):SetText("0.25");
	this:SetMinMaxValues(0.25,3);
	this:SetValueStep(0.25);
	this.tooltipText = SHEEPWATCH_TOOLTIP_SCALING;
end

function SheepWatchConfigScaleSlider_OnShow()
	if ( SHEEPWATCH.SCALE ) then
		this:SetValue(SHEEPWATCH.SCALE);
	else
		this:SetValue(1);
	end
end

function SheepWatchConfigScaleSlider_OnValueChanged()
	SHEEPWATCH.SCALE = SheepWatchConfigScaleSlider:GetValue();
	SheepWatch_Settings.scale = SHEEPWATCH.SCALE;
	SheepWatch:SetScale(UIParent:GetScale() * SHEEPWATCH.SCALE);
end

------------------------------------------
-- set the color of the bar
function SheepWatchConfigBarColorSwatch_ShowColorPicker(frame)
--	if ( not SheepWatch_Settings["barcolor"] ) then
--		SheepWatch_Settings["barcolor"] = { };
--		SheepWatch_Settings["barcolor"] = {
--			r = 1, g = 1, b = 0, enabled = true
--		};
--	end
	frame.r = SheepWatch_Settings["barcolor"].r;
	frame.g = SheepWatch_Settings["barcolor"].g;
	frame.b = SheepWatch_Settings["barcolor"].b;
	frame.swatchFunc = SheepWatchConfigBarColor_SetColor;
	frame.cancelFunc = SheepWatchConfigBarColor_CancelColor;
	UIDropDownMenuButton_OpenColorPicker(frame);
end

function SheepWatchConfigBarColor_SetColor()
	local r, g, b = ColorPickerFrame:GetColorRGB();
	SheepWatch_Settings["barcolor"].r = r;
	SheepWatch_Settings["barcolor"].g = g;
	SheepWatch_Settings["barcolor"].b = b;
	SheepWatchConfigBarColorSwatchNormalTexture:SetVertexColor(SheepWatch_Settings["barcolor"].r, SheepWatch_Settings["barcolor"].g, SheepWatch_Settings["barcolor"].b);
	SheepWatchFrameStatusBar:SetStatusBarColor(SheepWatch_Settings["barcolor"].r, SheepWatch_Settings["barcolor"].g, SheepWatch_Settings["barcolor"].b);
end

function SheepWatchConfigBarColor_CancelColor()
	SheepWatch_Settings["barcolor"].r = SheepWatchConfigBarColorSwatch.r;
	SheepWatch_Settings["barcolor"].g = SheepWatchConfigBarColorSwatch.g;
	SheepWatch_Settings["barcolor"].b = SheepWatchConfigBarColorSwatch.b;
	SheepWatchConfigBarColorSwatchNormalTexture:SetVertexColor(SheepWatch_Settings["barcolor"].r, SheepWatch_Settings["barcolor"].g, SheepWatch_Settings["barcolor"].b);
end

-----------------------
function SheepWatchConfigButtonAnnounceSCast_OnShow()
	if ( SHEEPWATCH.ANNOUNCESCAST == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceSCast_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCESCAST = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCESCAST = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceSCast = SHEEPWATCH.ANNOUNCESCAST
end

function SheepWatchConfigButtonAnnounceST30_OnShow()
	if ( SHEEPWATCH.ANNOUNCEST30 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceST30_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEST30 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEST30 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceST30 = SHEEPWATCH.ANNOUNCEST30
end

function SheepWatchConfigButtonAnnounceST20_OnShow()
	if ( SHEEPWATCH.ANNOUNCEST20 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceST20_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEST20 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEST20 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceST20 = SHEEPWATCH.ANNOUNCEST20
end

function SheepWatchConfigButtonAnnounceST15_OnShow()
	if ( SHEEPWATCH.ANNOUNCEST15 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceST15_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEST15 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEST15 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceST15 = SHEEPWATCH.ANNOUNCEST15
end

function SheepWatchConfigButtonAnnounceST10_OnShow()
	if ( SHEEPWATCH.ANNOUNCEST10 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceST10_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEST10 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEST10 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceST10 = SHEEPWATCH.ANNOUNCEST10
end

function SheepWatchConfigButtonAnnounceST5_OnShow()
	if ( SHEEPWATCH.ANNOUNCEST5 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceST5_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEST5 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEST5 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceST5 = SHEEPWATCH.ANNOUNCEST5
end

function SheepWatchConfigButtonAnnounceST4_OnShow()
	if ( SHEEPWATCH.ANNOUNCEST4 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceST4_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEST4 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEST4 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceST4 = SHEEPWATCH.ANNOUNCEST4
end

function SheepWatchConfigButtonAnnounceST3_OnShow()
	if ( SHEEPWATCH.ANNOUNCEST3 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceST3_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEST3 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEST3 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceST3 = SHEEPWATCH.ANNOUNCEST3
end

function SheepWatchConfigButtonAnnounceST2_OnShow()
	if ( SHEEPWATCH.ANNOUNCEST2 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceST2_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEST2 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEST2 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceST2 = SHEEPWATCH.ANNOUNCEST2
end

function SheepWatchConfigButtonAnnounceST1_OnShow()
	if ( SHEEPWATCH.ANNOUNCEST1 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceST1_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEST1 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEST1 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceST1 = SHEEPWATCH.ANNOUNCEST1
end

function SheepWatchConfigButtonAnnounceSEnd_OnShow()
	if ( SHEEPWATCH.ANNOUNCESEND == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceSEnd_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCESEND = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCESEND = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceSEnd = SHEEPWATCH.ANNOUNCESEND
end

function SheepWatchConfigButtonAnnounceSWho_OnShow()
	if ( SHEEPWATCH.ANNOUNCESWHO == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceSWho_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCESWHO = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCESWHO = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceSWho = SHEEPWATCH.ANNOUNCESWHO
end


function SheepWatchConfigButtonAnnouncePCast_OnShow()
	if ( SHEEPWATCH.ANNOUNCEPCAST == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnouncePCast_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEPCAST = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEPCAST = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnouncePCast = SHEEPWATCH.ANNOUNCEPCAST
end

function SheepWatchConfigButtonAnnouncePT30_OnShow()
	if ( SHEEPWATCH.ANNOUNCEPT30 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnouncePT30_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEPT30 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEPT30 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnouncePT30 = SHEEPWATCH.ANNOUNCEPT30
end

function SheepWatchConfigButtonAnnouncePT20_OnShow()
	if ( SHEEPWATCH.ANNOUNCEPT20 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnouncePT20_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEPT20 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEPT20 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnouncePT20 = SHEEPWATCH.ANNOUNCEPT20
end

function SheepWatchConfigButtonAnnouncePT15_OnShow()
	if ( SHEEPWATCH.ANNOUNCEPT15 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnouncePT15_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEPT15 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEPT15 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnouncePT15 = SHEEPWATCH.ANNOUNCEPT15
end

function SheepWatchConfigButtonAnnouncePT10_OnShow()
	if ( SHEEPWATCH.ANNOUNCEPT10 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnouncePT10_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEPT10 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEPT10 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnouncePT10 = SHEEPWATCH.ANNOUNCEPT10
end

function SheepWatchConfigButtonAnnouncePT5_OnShow()
	if ( SHEEPWATCH.ANNOUNCEPT5 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnouncePT5_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEPT5 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEPT5 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnouncePT5 = SHEEPWATCH.ANNOUNCEPT5
end

function SheepWatchConfigButtonAnnouncePT4_OnShow()
	if ( SHEEPWATCH.ANNOUNCEPT4 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnouncePT4_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEPT4 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEPT4 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnouncePT4 = SHEEPWATCH.ANNOUNCEPT4
end

function SheepWatchConfigButtonAnnouncePT3_OnShow()
	if ( SHEEPWATCH.ANNOUNCEPT3 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnouncePT3_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEPT3 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEPT3 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnouncePT3 = SHEEPWATCH.ANNOUNCEPT3
end

function SheepWatchConfigButtonAnnouncePT2_OnShow()
	if ( SHEEPWATCH.ANNOUNCEPT2 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnouncePT2_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEPT2 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEPT2 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnouncePT2 = SHEEPWATCH.ANNOUNCEPT2
end

function SheepWatchConfigButtonAnnouncePT1_OnShow()
	if ( SHEEPWATCH.ANNOUNCEPT1 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnouncePT1_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEPT1 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEPT1 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnouncePT1 = SHEEPWATCH.ANNOUNCEPT1
end

function SheepWatchConfigButtonAnnouncePEnd_OnShow()
	if ( SHEEPWATCH.ANNOUNCEPEND == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnouncePEnd_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEPEND = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEPEND = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnouncePEnd = SHEEPWATCH.ANNOUNCEPEND
end

function SheepWatchConfigButtonAnnouncePWho_OnShow()
	if ( SHEEPWATCH.ANNOUNCEPWHO == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnouncePWho_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEPWHO = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEPWHO = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnouncePWho = SHEEPWATCH.ANNOUNCEPWHO
end


function SheepWatchConfigButtonAnnounceRCast_OnShow()
	if ( SHEEPWATCH.ANNOUNCERCAST == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceRCast_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCERCAST = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCERCAST = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceRCast = SHEEPWATCH.ANNOUNCERCAST
end

function SheepWatchConfigButtonAnnounceRT30_OnShow()
	if ( SHEEPWATCH.ANNOUNCERT30 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceRT30_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCERT30 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCERT30 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceRT30 = SHEEPWATCH.ANNOUNCERT30
end

function SheepWatchConfigButtonAnnounceRT20_OnShow()
	if ( SHEEPWATCH.ANNOUNCERT20 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceRT20_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCERT20 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCERT20 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceRT20 = SHEEPWATCH.ANNOUNCERT20
end

function SheepWatchConfigButtonAnnounceRT15_OnShow()
	if ( SHEEPWATCH.ANNOUNCERT15 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceRT15_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCERT15 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCERT15 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceRT15 = SHEEPWATCH.ANNOUNCERT15
end

function SheepWatchConfigButtonAnnounceRT10_OnShow()
	if ( SHEEPWATCH.ANNOUNCERT10 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceRT10_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCERT10 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCERT10 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceRT10 = SHEEPWATCH.ANNOUNCERT10
end

function SheepWatchConfigButtonAnnounceRT5_OnShow()
	if ( SHEEPWATCH.ANNOUNCERT5 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceRT5_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCERT5 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCERT5 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceRT5 = SHEEPWATCH.ANNOUNCERT5
end

function SheepWatchConfigButtonAnnounceRT4_OnShow()
	if ( SHEEPWATCH.ANNOUNCERT4 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceRT4_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCERT4 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCERT4 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceRT4 = SHEEPWATCH.ANNOUNCERT4
end

function SheepWatchConfigButtonAnnounceRT3_OnShow()
	if ( SHEEPWATCH.ANNOUNCERT3 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceRT3_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCERT3 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCERT3 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceRT3 = SHEEPWATCH.ANNOUNCERT3
end

function SheepWatchConfigButtonAnnounceRT2_OnShow()
	if ( SHEEPWATCH.ANNOUNCERT2 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceRT2_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCERT2 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCERT2 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceRT2 = SHEEPWATCH.ANNOUNCERT2
end

function SheepWatchConfigButtonAnnounceRT1_OnShow()
	if ( SHEEPWATCH.ANNOUNCERT1 == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceRT1_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCERT1 = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCERT1 = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceRT1 = SHEEPWATCH.ANNOUNCERT1
end

function SheepWatchConfigButtonAnnounceREnd_OnShow()
	if ( SHEEPWATCH.ANNOUNCEREND == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceREnd_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCEREND = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCEREND = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceREnd = SHEEPWATCH.ANNOUNCEREND
end

function SheepWatchConfigButtonAnnounceRWho_OnShow()
	if ( SHEEPWATCH.ANNOUNCERWHO == 1 ) then
		this:SetChecked(1);
	else
		this:SetChecked(0);
	end
end

function SheepWatchConfigButtonAnnounceRWho_OnClick()
	if this:GetChecked() then
		SHEEPWATCH.ANNOUNCERWHO = 1;
		PlaySound("igMainMenuOptionCheckBoxOff");
	else
		SHEEPWATCH.ANNOUNCERWHO = 0;
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
	SheepWatch_Settings.AnnounceRWho = SHEEPWATCH.ANNOUNCERWHO
end

-----------------------
