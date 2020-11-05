local Panacea_Drums = Panacea_Drums

Panacea_Drums:ProvideVersion("$Rev: 33 $", "$Date: 2008-07-29 10:35:09 +0200 (Di, 29 Jul 2008) $")

local table_insert = table.insert
local table_remove = table.remove

local SharedMedia = Rock("LibSharedMedia-3.0")

local localization = (GetLocale() == "deDE") and {
	
} or {}

local L = Panacea_Drums:L("Panacea_Drums-Options", localization)
local DescriptionText = "Hello This is a description"
-- function ClearRotation()
-- Panacea_Drums:ResetRotationTable()
-- end


Panacea_Drums.options = {
	type = "group",
	name = L["Panacea_Drums"],
	desc = L["Frees your ActionBars of Drums and also allows for Party/Raid Synchronization."],
	handler = Panacea_Drums,
	icon = [[Interface\Icons\INV_MISC_Drum_01]],
	args = {
		lock = {
			type = "boolean",
			name = L["Lock Drums"],
			desc = L["Locks/Unlocks the Action Buttons"],
			order = 1,
			get = function()
				return Panacea_Drums.db.profile.locked
			end,
			set = function(value)
				Panacea_Drums.db.profile.locked = value
				for k, v in pairs(Panacea_Drums.frames) do
					if Panacea_Drums.db.profile.locked then
						v:Lock()
					else
						v:Unlock()
					end
				end
			end,
		},
		layout = {
			type = "choice",
			name = L["Layout Choice"],
			desc = L["Layouts are used to modify the appearance"],
			order = 2,
			get = function()
				return Panacea_Drums.db.profile.layout
			end,
			set = function(v)
				Panacea_Drums:SwitchLayout(v)
			end,
			choices = function()
				local t = {}
				for k,v in pairs(Panacea_Drums.Layouts) do
					table_insert(t,v.name)
				end
				return t
			end,
		},
		drumwatched = {
			type = "choice",
			name = L["Drums to Watch"],
			desc = L["Sets the Drums which the Addon shows"],
			order = 3,
			get = function()
				local itemname = select(1,GetItemInfo(Panacea_Drums.db.profile.drumwatched))
				return itemname
			end,
			set = function(val)
				for k,v in pairs(Panacea_Drums.Drums) do
					local itemname = select(1,GetItemInfo(v.item))
					if itemname == val then
						Panacea_Drums.db.profile.drumwatched = v.item
						
						for kf,vf in pairs(Panacea_Drums.frames) do
							vf.mainframe:SetAttribute("item", "item:"..v.item)
							vf:SetIcon(v.texture)
						end

						return
					end
				end
			end,
			choices = function()
				local t = {}
				for k,v in pairs(Panacea_Drums.Drums) do
					local itemname = select(1, GetItemInfo(v.item))
					table_insert(t,itemname)
				end
				return t
			end,
		},
		announce = {
			type = "boolean",
			name = L["Announce in Party"],
			desc = L["Announces your drums in Party Chat"],
			order = 4,
			get = function()
				return Panacea_Drums.db.profile.announceparty
			end,
			set = function(value)
				Panacea_Drums.db.profile.announceparty = value
			end,
		},
		whisper = {
			type = "boolean",
			name = L["Whisper Next Drummer"],
			desc = L["Whispers the next one to Drum on the list"],
			order = 5,
			get = function()
				return Panacea_Drums.db.profile.whisper
			end,
			set = function(value)
				Panacea_Drums.db.profile.whisper = value
			end,
		},
		-- cvz added
		Sound = {
			type = "boolean",
			name = L["Play Sound"],
			desc = L["Play a sound when it's your turn to drum"],
			order = 6,
			get = function()
				return Panacea_Drums.db.profile.Sound
			end,  
			set = function(value)
				Panacea_Drums.db.profile.Sound = value
			end,
		},
		screenflash = {
			type = "boolean",
			name = L["Screen Flash"],
			desc = L["Activates the Screen Flash feature when your drum cooldown is ready"],
			order = 7,
			get = function()
				return Panacea_Drums.db.profile.screenflash
			end,
			set = function(value)
				Panacea_Drums.db.profile.screenflash = value
			end,
		},
		
		AlphawhenGrouped = {
			type = "boolean",
			name = L["Hide When Not in Party/Raid"],
			desc = L["Hide the frame when not in a party"],
			order = 8,
			get = function()
				return Panacea_Drums.db.profile.Hide
			end,
			set = function(value)
				Panacea_Drums.db.profile.Hide = value
			end,
		},
		
		
		Clear = {
			type = 'execute',
			rder = 9,
			name = L["Clear Rotation Text"],
			desc = L["Clear the current rotation table"],									
			buttonText = L["Clear"],
			func = function()
				Panacea_Drums:ResetRotationTable()
			end,
		},
			
		
		
		appearance = {
			type = "group",
			name = L["Look'n'Feel"],
			desc = L["Defines the Look'n'Feel of Panacea_Drums."],
			order = 1,
			args = {
				scale = {
						name = L["Drum Scale"],
						desc = L["Scale the Drums"],
						type = 'number',
						order = 1,
						get = function()
							return Panacea_Drums.db.profile.scale * 100
						end,
						set = function(value)
							Panacea_Drums.db.profile.scale = value / 100
							for k, v in pairs(Panacea_Drums.frames) do
								v.anchor:SetScale(Panacea_Drums.db.profile.scale)
								v.mainframe:SetScale(Panacea_Drums.db.profile.scale)
							end
						end,
						min = 1,	-- 1% Minimum
						max = 200,	-- 200% Maximum
						step = 0.5,	-- 0.5% Step
				},
				toptext = {
					type = "group",
					name = L["Top Text Font"],
					desc = L["Defines the font used in the Top Text."],
					groupType = "inline",
					order = 2,
					args = {
						fontsize = {
								name = L["Size"],
								desc = L["Font size."],
								type = 'number',
								order = 1,
								get = function()
									local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
									return settings.fonts.toptextsize
								end,
								set = function(value)
									local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
									settings.fonts.toptextsize = value
									for k, v in pairs(Panacea_Drums.frames) do
										v.toptext:SetFont(settings.fonts.toptext, value, "OUTLINE");
									end
								end,
								min = 8,
								max = 32,
								step = 1,
						},
						fonttype = {
							type = "choice",
							name = L["Type"],
							desc = L["What font to use."],
							order = 2,
							get = function()
								local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
								for k, v in pairs(SharedMedia:HashTable("font")) do
									if v == settings.fonts.toptext then
										return k
									end
								end
								return settings.fonts.toptext
							end,
							set = function(v)
								local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
								settings.fonts.toptext = SharedMedia:Fetch("font", v)
								for k, v in pairs(Panacea_Drums.frames) do
									v.toptext:SetFont(settings.fonts.toptext, settings.fonts.toptextsize, "OUTLINE");
								end
							end,
							choices = SharedMedia:List("font"),
							choiceFonts = SharedMedia:HashTable("font"),
						},
					},
				},
				centertext = {
					type = "group",
					name = L["Center Text Font"],
					desc = L["Defines the font used in the Center Text."],
					groupType = "inline",
					order = 3,
					args = {
						fontsize = {
								name = L["Size"],
								desc = L["Font size."],
								type = 'number',
								order = 1,
								get = function()
									local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
									return settings.fonts.centertextsize
								end,
								set = function(value)
									local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
									settings.fonts.centertextsize = value
									for k, v in pairs(Panacea_Drums.frames) do
										v.centertext:SetFont(settings.fonts.centertext, value, "OUTLINE");
									end
								end,
								min = 8,
								max = 32,
								step = 1,
						},
						fonttype = {
							type = "choice",
							name = L["Type"],
							desc = L["What font to use."],
							order = 2,
							get = function()
								local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
								for k, v in pairs(SharedMedia:HashTable("font")) do
									if v == settings.fonts.centertext then
										return k
									end
								end
								return settings.fonts.centertext
							end,
							set = function(v)
								local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
								settings.fonts.centertext = SharedMedia:Fetch("font", v)
								for k, v in pairs(Panacea_Drums.frames) do
									v.centertext:SetFont(settings.fonts.centertext, settings.fonts.centertextsize, "OUTLINE");
								end
							end,
							choices = SharedMedia:List("font"),
							choiceFonts = SharedMedia:HashTable("font"),
						},
					},
				},
				bottomtext = {
					type = "group",
					name = L["Bottom Text Font"],
					desc = L["Defines the font used in the Bottom Text."],
					groupType = "inline",
					order = 4,
					args = {
						fontsize = {
								name = L["Size"],
								desc = L["Font size."],
								type = 'number',
								order = 1,
								get = function()
									local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
									return settings.fonts.bottomtextsize
								end,
								set = function(value)
									local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
									settings.fonts.bottomtextsize = value
									for k, v in pairs(Panacea_Drums.frames) do
										v.bottomtext:SetFont(settings.fonts.bottomtext, value, "OUTLINE");
									end
								end,
								min = 8,
								max = 32,
								step = 1,
						},
						fonttype = {
							type = "choice",
							name = L["Type"],
							desc = L["What font to use."],
							order = 2,
							get = function()
								local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
								for k, v in pairs(SharedMedia:HashTable("font")) do
									if v == settings.fonts.bottomtext then
										return k
									end
								end
								return settings.fonts.bottomtext
							end,
							set = function(v)
								local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
								settings.fonts.bottomtext = SharedMedia:Fetch("font", v)
								for k, v in pairs(Panacea_Drums.frames) do
									v.bottomtext:SetFont(settings.fonts.bottomtext, settings.fonts.bottomtextsize, "OUTLINE");
								end
							end,
							choices = SharedMedia:List("font"),
							choiceFonts = SharedMedia:HashTable("font"),
						},
					},
				},
				NbItemtext = {
					type = "group",
					name = L["Charges Text Font"],
					desc = L["Defines the font used in the Charges Text."],
					groupType = "inline",
					order = 5,
					args = {
						fontsize = {
								name = L["Size"],
								desc = L["Font size."],
								type = 'number',
								order = 1,
								get = function()
									local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
									return settings.fonts.NbItemtextsize
								end,
								set = function(value)
									local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
									settings.fonts.NbItemtextsize = value
									for k, v in pairs(Panacea_Drums.frames) do
										v.NbItemtext:SetFont(settings.fonts.NbItemtext, value, "OUTLINE");
									end
								end,
								min = 8,
								max = 32,
								step = 1,
						},
						fonttype = {
							type = "choice",
							name = L["Type"],
							desc = L["What font to use."],
							order = 2,
							get = function()
								local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
								for k, v in pairs(SharedMedia:HashTable("font")) do
									if v == settings.fonts.NbItemtext then
										return k
									end
								end
								return settings.fonts.NbItemtext
							end,
							set = function(v)
								local settings = Panacea_Drums:GetLayoutNamespace(Panacea_Drums.db.profile.layout)
								settings.fonts.NbItemtext = SharedMedia:Fetch("font", v)
								for k, v in pairs(Panacea_Drums.frames) do
									v.NbItemtext:SetFont(settings.fonts.NbItemtext, settings.fonts.NbItemtextsize, "OUTLINE");
								end
							end,
							choices = SharedMedia:List("font"),
							choiceFonts = SharedMedia:HashTable("font"),
						},
					},
				},
				
				screenflash = {
					type = "group",
					name = L["Screen Flash"],
					desc = L["Behaviour of the Screen Flash"],
					groupType = "inline",
					order = 6,
					args = {
						flashsize = {
								name = L["Size"],
								desc = L["Screen Flash size."],
								type = 'number',
								order = 1,
								get = function()
									return Panacea_Drums.db.profile.flashsize
								end,
								set = function(value)
									Panacea_Drums.db.profile.flashsize = value
									if Panacea_Drums.flashFrame then
										Panacea_Drums.flashFrame:SetWidth(value)
										Panacea_Drums.flashFrame:SetHeight(value)
									end
								end,
								min = 50,
								max = 500,
								step = 1,
						},
						flashspeed = {
								name = L["Fading Speed"],
								desc = L["Screen Flash fading speed"],
								type = 'number',
								order = 2,
								get = function()
									return Panacea_Drums.db.profile.flashspeed * 100
								end,
								set = function(value)
									Panacea_Drums.db.profile.flashspeed = value / 100
								end,
								min = 1,
								max = 30,
								step = 1,
						},
						maxalpha = {
								name = L["Max Alpha"],
								desc = L["Screen Flash maximum visibility"],
								type = 'number',
								order = 3,
								get = function()
									return Panacea_Drums.db.profile.maxflashalpha * 100
								end,
								set = function(value)
									Panacea_Drums.db.profile.maxflashalpha = value / 100
								end,
								min = 10,
								max = 100,
								step = 1,
						},
					},
				},
			},
		},
		LayoutSettings = {
			type = "group",
			name = L["Layout Specific Settings"],
			desc = L["Settings specific to each Layout"],
			order = 2,
			args = function()
				local t = {}

				for k,v in pairs(Panacea_Drums.Layouts) do
					if v.OptionsTable then
						table_insert(t, {
							type="group",
							name = v.name,
							desc = v.name,
							args = v.OptionsTable or {},
						})
					end
				end

				return t
			end,
		},
	},
}