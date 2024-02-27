local Interface   = {}
local Configurations = {}

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local InsertService = game:GetService("InsertService")

local ElementProperties = {
	["Boolean"] = {
		Enabled = Color3.fromRGB(0, 110, 255),
		Disabled = Color3.fromRGB(12, 12, 12),
		DisabledPosition = UDim2.new(0.1, -2, 0.5, 0),
		EnabledPosition = UDim2.new(0.5, -3, 0.5, 0),
	},
	["Minimise"] = {
		Enabled = "rbxassetid://3926305904",
		Disabled =  "rbxassetid://3926305904"
	},
	Accent = Color3.fromRGB(0, 110, 255) 
}

--[[local encode = (syn and syn.crypt.base64.encode) or crypt.base64encode or crypt.base64_encode or base64.encode

local interface_name = encode(tostring(Players.LocalPlayer.UserId))]]--

local Instances = {
	RainV2 = Instance.new("ScreenGui"),
	UiScale = Instance.new("UIScale"),
	Window = Instance.new("Frame"),
	MobileCloseButton = nil,
	WCorner = Instance.new("UICorner"),
	Navigation = Instance.new("Frame"),
	NCorner = Instance.new("UICorner"),
	NavigationAccentHolder = Instance.new("Frame"),
	NavigationAccent_2 = Instance.new("Frame"),
	NAGradient = Instance.new("UIGradient"),
	NavigationOptionsContainer = Instance.new("Frame"),
	NOCCorner = Instance.new("UICorner"),
	NOCStroke = Instance.new("UIStroke"),
	NOCSGradient = Instance.new("UIGradient"),
	DropShadowHolder = Instance.new("Frame"),
	DropShadow_2 = Instance.new("ImageLabel"),
	TabButtonDisplay = Instance.new("Frame"),
	TBDContainer = Instance.new("ScrollingFrame"),
	TABDCLayout = Instance.new("UIListLayout"),
	TabButton_2 = Instance.new("Frame"),
	TabButtonStroke = Instance.new("UIStroke"),
	TBSGRadient = Instance.new("UIGradient"),
	TabButtonTitle = Instance.new("TextLabel"),
	TBTPadding = Instance.new("UIPadding"),
	TabButtonActivator = Instance.new("TextButton"),
	TabButtonCorner = Instance.new("UICorner"),
	TBDCPadding = Instance.new("UIPadding"),
	NavigationOptions_2 = Instance.new("Frame"),
	NOStroke = Instance.new("UIStroke"),
	NOSGradient = Instance.new("UIGradient"),
	NOActivator = Instance.new("TextButton"),
	NOCorner = Instance.new("UICorner"),
	NOLine1 = Instance.new("Frame"),
	NOL1Corner = Instance.new("UICorner"),
	NOLine2 = Instance.new("Frame"),
	NOL2Corner = Instance.new("UICorner"),
	NOLine3 = Instance.new("Frame"),
	NOL3Corner = Instance.new("UICorner"),
	WindowTitle = Instance.new("TextLabel"),
	CloseInterface = Instance.new("Frame"),
	CIStroke = Instance.new("UIStroke"),
	CISGradient = Instance.new("UIGradient"),
	CICorner = Instance.new("UICorner"),
	CIActivator = Instance.new("ImageButton"),
	MinimiseInterface = Instance.new("Frame"),
	MIStroke = Instance.new("UIStroke"),
	MISGradient = Instance.new("UIGradient"),
	MICorner = Instance.new("UICorner"),
	MIActivator = Instance.new("ImageButton"),
	SearchTab = Instance.new("Frame"),
	STStroke = Instance.new("UIStroke"),
	STSGradient = Instance.new("UIGradient"),
	STCorner = Instance.new("UICorner"),
	STActivator = Instance.new("ImageButton"),
	SearchContainer = Instance.new("Frame"),
	SCCorner = Instance.new("UICorner"),
	SCShadowHolder = Instance.new("Frame"),
	SCSHImage = Instance.new("ImageLabel"),
	SCInput = Instance.new("TextBox"),
	SCSearchImage = Instance.new("ImageButton"),
	SCClearQuery = Instance.new("ImageButton"),
	SCGrabber = Instance.new("Frame"),
	SCGCorner = Instance.new("UICorner"),
	WindowSHolder = Instance.new("Frame"),
	WindowShadow = Instance.new("ImageLabel"),
	Elements = Instance.new("Frame"),
	TabDisplay = Instance.new("Frame"),
	Tab1 = Instance.new("Frame"),
	TabElementContainer = Instance.new("ScrollingFrame"),
	TECLayout = Instance.new("UIListLayout"),
	TECPadding = Instance.new("UIPadding"),
	BooleanElement = Instance.new("Frame"),
	BECorner = Instance.new("UICorner"),
	BEStroke = Instance.new("UIStroke"),
	BESGradient = Instance.new("UIGradient"),
	BETitle = Instance.new("TextLabel"),
	BEDisplay = Instance.new("ImageLabel"),
	BEIndicator = Instance.new("ImageLabel"),
	BEActivator = Instance.new("TextButton"),
	SliderElement = Instance.new("Frame"),
	SECorner = Instance.new("UICorner"),
	SEStroke = Instance.new("UIStroke"),
	SESGradient = Instance.new("UIGradient"),
	SETitle = Instance.new("TextLabel"),
	SEFillFrame = Instance.new("Frame"),
	SEFill_2 = Instance.new("Frame"),
	SSFCorner = Instance.new("UICorner"),
	SSFFCorner = Instance.new("UICorner"),
	SEActivator = Instance.new("TextButton"),
	SEValue = Instance.new("TextLabel"),
	ColorElement = Instance.new("Frame"),
	CECorner = Instance.new("UICorner"),
	CEStroke = Instance.new("UIStroke"),
	CESGradient = Instance.new("UIGradient"),
	CETitle = Instance.new("TextLabel"),
	CEExpand = Instance.new("Frame"),
	CEECorner = Instance.new("UICorner"),
	CEEStroke = Instance.new("UIStroke"),
	CEESGradient = Instance.new("UIGradient"),
	arrow_forward = Instance.new("ImageButton"),
	ComboElement = Instance.new("Frame"),
	CECorner_2 = Instance.new("UICorner"),
	CEStroke_2 = Instance.new("UIStroke"),
	CESGradient_2 = Instance.new("UIGradient"),
	CETitle_2 = Instance.new("TextLabel"),
	CEContainer = Instance.new("Frame"),
	CECCorner = Instance.new("UICorner"),
	CECStroke = Instance.new("UIStroke"),
	CECLayout = Instance.new("UIListLayout"),
	CESelectedOption = Instance.new("TextLabel"),
	CEOPadding = Instance.new("UIPadding"),
	CESOState = Instance.new("ImageButton"),
	CESOActivator = Instance.new("TextButton"),
	CECPadding = Instance.new("UIPadding"),
	CEOptions = Instance.new("Frame"),
	CECCorner_2 = Instance.new("UICorner"),
	CECStroke_2 = Instance.new("UIStroke"),
	CEOPadding_2 = Instance.new("UIPadding"),
	CEOShadow = Instance.new("Frame"),
	CEOSImage = Instance.new("ImageLabel"),
	CEOption_2 = Instance.new("TextLabel"),
	CEOPadding_3 = Instance.new("UIPadding"),
	CEOActivator = Instance.new("TextButton"),
	CEOImage = Instance.new("ImageButton"),
	TextElement = Instance.new("Frame"),
	TECorner = Instance.new("UICorner"),
	TEStroke = Instance.new("UIStroke"),
	TESGradient = Instance.new("UIGradient"),
	TETitle = Instance.new("TextLabel"),
	TEField = Instance.new("Frame"),
	TEFCorner = Instance.new("UICorner"),
	TEFStroke = Instance.new("UIStroke"),
	TEFInput = Instance.new("TextBox"),
	ActionElement = Instance.new("Frame"),
	AECorner = Instance.new("UICorner"),
	AEStroke = Instance.new("UIStroke"),
	AESGradient = Instance.new("UIGradient"),
	AEContainer = Instance.new("Frame"),
	ACEStroke = Instance.new("UIStroke"),
	ACESGradient = Instance.new("UIGradient"),
	AECCorner = Instance.new("UICorner"),
	AECActivator = Instance.new("TextButton"),
	AECAPadding = Instance.new("UIPadding"),
	GreyOut = Instance.new("Frame"),
	ColorPicker = Instance.new("Frame"),
	CPCorner = Instance.new("UICorner"),
	CPSHolder = Instance.new("Frame"),
	CPSHImage = Instance.new("ImageLabel"),
	CPDisplay = Instance.new("Frame"),
	CPDCorner = Instance.new("UICorner"),
	CPColors = Instance.new("Frame"),
	CPCCorner = Instance.new("UICorner"),
	CPCActivator = Instance.new("TextButton"),
	UIGradient = Instance.new("UIGradient"),
	CPPanel = Instance.new("Frame"),
	CPBrightness = Instance.new("Frame"),
	CPBCorner = Instance.new("UICorner"),
	UIGradient_2 = Instance.new("UIGradient"),
	CPDBActivator = Instance.new("TextButton"),
	CPContinue = Instance.new("Frame"),
	CPCCorner_2 = Instance.new("UICorner"),
	CPCActivator_2 = Instance.new("TextButton"),
	CPTitle = Instance.new("TextLabel"),
}

Instances.RainV2.Name = "RainV2"

Instances.UiScale.Parent = Instances.RainV2

Instances.Window.Name = "Window"
Instances.Window.Parent = Instances.RainV2
Instances.Window.ZIndex = 0
Instances.Window.Size = UDim2.new(0, 450, 0, 500)
Instances.Window.Position = UDim2.new(0.349999994, 0, 0.150000006, 0)
Instances.Window.BackgroundColor3 = Color3.fromRGB(16, 16, 16)

Instances.WCorner.Name = "WCorner"
Instances.WCorner.Parent = Instances.Window

Instances.Navigation.Name = "Navigation"
Instances.Navigation.Parent = Instances.Window
Instances.Navigation.AnchorPoint = Vector2.new(0.5, 0)
Instances.Navigation.ZIndex = 6
Instances.Navigation.Size = UDim2.new(1, 0, 0, 55)
Instances.Navigation.Position = UDim2.new(0.5, 0, 0, 0)
Instances.Navigation.BackgroundColor3 = Color3.fromRGB(16, 16, 16)

Instances.NCorner.Name = "NCorner"
Instances.NCorner.Parent = Instances.Navigation

Instances.NavigationAccentHolder.Name = "NavigationAccentHolder"
Instances.NavigationAccentHolder.Parent = Instances.Navigation
Instances.NavigationAccentHolder.AnchorPoint = Vector2.new(0.5, 0)
Instances.NavigationAccentHolder.ZIndex = 3
Instances.NavigationAccentHolder.Size = UDim2.new(1, 0, 0, 7)
Instances.NavigationAccentHolder.Position = UDim2.new(0.5, 0, 1, -4)
Instances.NavigationAccentHolder.BorderSizePixel = 0
Instances.NavigationAccentHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.NavigationAccent_2.Name = "NavigationAccent"
Instances.NavigationAccent_2.Parent = Instances.NavigationAccentHolder
Instances.NavigationAccent_2.AnchorPoint = Vector2.new(0.5, 0)
Instances.NavigationAccent_2.ZIndex = 6
Instances.NavigationAccent_2.Size = UDim2.new(1, 0, 0, 1)
Instances.NavigationAccent_2.Position = UDim2.new(0.5, 0, 1, -1)
Instances.NavigationAccent_2.BorderSizePixel = 0
Instances.NavigationAccent_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Instances.NAGradient.Name = "NAGradient"
Instances.NAGradient.Parent = Instances.NavigationAccent_2
Instances.NAGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.NavigationOptionsContainer.Name = "NavigationOptionsContainer"
Instances.NavigationOptionsContainer.Parent = Instances.Navigation
Instances.NavigationOptionsContainer.AnchorPoint = Vector2.new(0.5, 0)
Instances.NavigationOptionsContainer.ZIndex = 5
Instances.NavigationOptionsContainer.Size = UDim2.new(1, -15, 0, 40)
Instances.NavigationOptionsContainer.Position = UDim2.new(0.5, 0, 0, 8)
Instances.NavigationOptionsContainer.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.NOCCorner.Name = "NOCCorner"
Instances.NOCCorner.Parent = Instances.NavigationOptionsContainer

Instances.NOCStroke.Name = "NOCStroke"
Instances.NOCStroke.Parent = Instances.NavigationOptionsContainer
Instances.NOCStroke.Color = Color3.fromRGB(255, 255, 255)
Instances.NOCStroke.Transparency = 0.4000000059604645

Instances.NOCSGradient.Name = "NOCSGradient"
Instances.NOCSGradient.Parent = Instances.NOCStroke
Instances.NOCSGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.DropShadowHolder.Name = "DropShadowHolder"
Instances.DropShadowHolder.Parent = Instances.NavigationOptionsContainer
Instances.DropShadowHolder.ZIndex = 5
Instances.DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
Instances.DropShadowHolder.BackgroundTransparency = 1
Instances.DropShadowHolder.BorderSizePixel = 0

Instances.DropShadow_2.Name = "DropShadow"
Instances.DropShadow_2.Parent = Instances.DropShadowHolder
Instances.DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.DropShadow_2.ZIndex = 0
Instances.DropShadow_2.Size = UDim2.new(1, 47, 1.01056921, 47)
Instances.DropShadow_2.BackgroundTransparency = 1
Instances.DropShadow_2.Position = UDim2.new(0.5, 0, 0.505284548, 0)
Instances.DropShadow_2.BorderSizePixel = 0
Instances.DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
Instances.DropShadow_2.ScaleType = Enum.ScaleType.Slice
Instances.DropShadow_2.ImageTransparency = 0.6499999761581421
Instances.DropShadow_2.Image = "rbxassetid://6014261993"
Instances.DropShadow_2.SliceCenter = Rect.new(Vector2.new(49, 49), Vector2.new(450, 450))

Instances.TabButtonDisplay.Name = "TabButtonDisplay"
Instances.TabButtonDisplay.Parent = Instances.NavigationOptionsContainer
Instances.TabButtonDisplay.ZIndex = 5
Instances.TabButtonDisplay.Size = UDim2.new(1, 0, 0.97560972, 0)
Instances.TabButtonDisplay.ClipsDescendants = true
Instances.TabButtonDisplay.BackgroundTransparency = 1
Instances.TabButtonDisplay.Position = UDim2.new(0.00465116277, 0, 0, 0)
Instances.TabButtonDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Instances.TBDContainer.Name = "TBDContainer"
Instances.TBDContainer.Parent = Instances.TabButtonDisplay
Instances.TBDContainer.Active = true
Instances.TBDContainer.ZIndex = 5
Instances.TBDContainer.Size = UDim2.new(0.983720958, 0, 1, 0)
Instances.TBDContainer.BackgroundTransparency = 1
Instances.TBDContainer.BorderSizePixel = 0
Instances.TBDContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.TBDContainer.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Instances.TBDContainer.ScrollBarThickness = 0
Instances.TBDContainer.ScrollingDirection = Enum.ScrollingDirection.X
Instances.TBDContainer.CanvasSize = UDim2.new(1, 160, 0, 0)

Instances.TABDCLayout.Name = "TABDCLayout"
Instances.TABDCLayout.Parent = Instances.TBDContainer
Instances.TABDCLayout.Padding = UDim.new(0, 10)
Instances.TABDCLayout.FillDirection = Enum.FillDirection.Horizontal
Instances.TABDCLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instances.TABDCLayout.VerticalAlignment = Enum.VerticalAlignment.Center

Instances.TabButton_2.Name = "TabButton"
Instances.TabButton_2.Parent = Instances.TBDContainer
Instances.TabButton_2.ZIndex = 5
Instances.TabButton_2.Size = UDim2.new(0, 160, 0, 32)
Instances.TabButton_2.Position = UDim2.new(0, 0, -3.81470016e-07, 0)
Instances.TabButton_2.BackgroundColor3 = Color3.fromRGB(16, 16, 16)

Instances.TabButtonStroke.Name = "TabButtonStroke"
Instances.TabButtonStroke.Parent = Instances.TabButton_2
Instances.TabButtonStroke.Color = Color3.fromRGB(255, 255, 255)

Instances.TBSGRadient.Name = "TBSGRadient"
Instances.TBSGRadient.Parent = Instances.TabButtonStroke
Instances.TBSGRadient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.TabButtonTitle.Name = "TabButtonTitle"
Instances.TabButtonTitle.Parent = Instances.TabButton_2
Instances.TabButtonTitle.AnchorPoint = Vector2.new(0, 0.5)
Instances.TabButtonTitle.ZIndex = 5
Instances.TabButtonTitle.Size = UDim2.new(1, 0, 1, -12)
Instances.TabButtonTitle.BackgroundTransparency = 1
Instances.TabButtonTitle.Position = UDim2.new(0, 0, 0.5, 0)
Instances.TabButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.TabButtonTitle.TextColor3 = Color3.fromRGB(179, 179, 179)
Instances.TabButtonTitle.TextStrokeColor3 = Color3.fromRGB(49, 49, 49)
Instances.TabButtonTitle.Text = "Tab 1"
Instances.TabButtonTitle.TextWrapped = true
Instances.TabButtonTitle.TextSize = 22
Instances.TabButtonTitle.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.TabButtonTitle.TextScaled = true

Instances.TBTPadding.Name = "TBTPadding"
Instances.TBTPadding.Parent = Instances.TabButtonTitle
Instances.TBTPadding.PaddingLeft = UDim.new(0, 3)
Instances.TBTPadding.PaddingRight = UDim.new(0, 3)

Instances.TabButtonActivator.Name = "TabButtonActivator"
Instances.TabButtonActivator.Parent = Instances.TabButton_2
Instances.TabButtonActivator.ZIndex = 5
Instances.TabButtonActivator.Size = UDim2.new(1, 0, 1, 0)
Instances.TabButtonActivator.BackgroundTransparency = 1
Instances.TabButtonActivator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.TabButtonActivator.TextColor3 = Color3.fromRGB(0, 0, 0)
Instances.TabButtonActivator.Text = ""
Instances.TabButtonActivator.TextSize = 14
Instances.TabButtonActivator.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.TabButtonCorner.Name = "TabButtonCorner"
Instances.TabButtonCorner.Parent = Instances.TabButton_2
Instances.TabButtonCorner.CornerRadius = UDim.new(0, 6)

Instances.TBDCPadding.Name = "TBDCPadding"
Instances.TBDCPadding.Parent = Instances.TBDContainer
Instances.TBDCPadding.PaddingLeft = UDim.new(0, 3)

Instances.NavigationOptions_2.Name = "NavigationOptions"
Instances.NavigationOptions_2.Parent = Instances.Navigation
Instances.NavigationOptions_2.ZIndex = 6
Instances.NavigationOptions_2.Size = UDim2.new(0, 30, 0, 30)
Instances.NavigationOptions_2.Position = UDim2.new(0.0270000007, 0, 0, 15)
Instances.NavigationOptions_2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.NOStroke.Name = "NOStroke"
Instances.NOStroke.Parent = Instances.NavigationOptions_2
Instances.NOStroke.Color = Color3.fromRGB(255, 255, 255)
Instances.NOStroke.Transparency = 1

Instances.NOSGradient.Name = "NOSGradient"
Instances.NOSGradient.Parent = Instances.NOStroke
Instances.NOSGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.NOActivator.Name = "NOActivator"
Instances.NOActivator.Parent = Instances.NavigationOptions_2
Instances.NOActivator.ZIndex = 6
Instances.NOActivator.Size = UDim2.new(1, 0, 1, 0)
Instances.NOActivator.BackgroundTransparency = 1
Instances.NOActivator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.NOActivator.TextColor3 = Color3.fromRGB(0, 0, 0)
Instances.NOActivator.Text = ""
Instances.NOActivator.TextSize = 14
Instances.NOActivator.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.NOCorner.Name = "NOCorner"
Instances.NOCorner.Parent = Instances.NavigationOptions_2

Instances.NOLine1.Name = "NOLine1"
Instances.NOLine1.Parent = Instances.NavigationOptions_2
Instances.NOLine1.ZIndex = 6
Instances.NOLine1.Size = UDim2.new(0, 18, 0, 4)
Instances.NOLine1.Position = UDim2.new(0.150000006, 0, 0.232999995, -1)
Instances.NOLine1.BackgroundColor3 = Color3.fromRGB(74, 74, 74)

Instances.NOL1Corner.Name = "NOL1Corner"
Instances.NOL1Corner.Parent = Instances.NOLine1
Instances.NOL1Corner.CornerRadius = UDim.new(1, 0)

Instances.NOLine2.Name = "NOLine2"
Instances.NOLine2.Parent = Instances.NavigationOptions_2
Instances.NOLine2.ZIndex = 6
Instances.NOLine2.Size = UDim2.new(0, 14, 0, 4)
Instances.NOLine2.Position = UDim2.new(0.150000006, 0, 0.232999995, 6)
Instances.NOLine2.BackgroundColor3 = Color3.fromRGB(74, 74, 74)

Instances.NOL2Corner.Name = "NOL2Corner"
Instances.NOL2Corner.Parent = Instances.NOLine2
Instances.NOL2Corner.CornerRadius = UDim.new(1, 0)

Instances.NOLine3.Name = "NOLine3"
Instances.NOLine3.Parent = Instances.NavigationOptions_2
Instances.NOLine3.ZIndex = 6
Instances.NOLine3.Size = UDim2.new(0, 10, 0, 4)
Instances.NOLine3.Position = UDim2.new(0.150000006, 0, 0.232999995, 13)
Instances.NOLine3.BackgroundColor3 = Color3.fromRGB(74, 74, 74)

Instances.NOL3Corner.Name = "NOL3Corner"
Instances.NOL3Corner.Parent = Instances.NOLine3
Instances.NOL3Corner.CornerRadius = UDim.new(1, 0)

Instances.WindowTitle.Name = "WindowTitle"
Instances.WindowTitle.Parent = Instances.Navigation
Instances.WindowTitle.ZIndex = 6
Instances.WindowTitle.Size = UDim2.new(0.13333334, 200, 1, 0)
Instances.WindowTitle.BackgroundTransparency = 1
Instances.WindowTitle.Position = UDim2.new(0.131111115, 0, 0.0363636352, 0)
Instances.WindowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.WindowTitle.TextColor3 = Color3.fromRGB(221, 221, 221)
Instances.WindowTitle.TextStrokeColor3 = Color3.fromRGB(49, 49, 49)
Instances.WindowTitle.Text = "Interface Name"
Instances.WindowTitle.TextXAlignment = Enum.TextXAlignment.Left
Instances.WindowTitle.TextSize = 22
Instances.WindowTitle.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.CloseInterface.Name = "CloseInterface"
Instances.CloseInterface.Parent = Instances.Navigation
Instances.CloseInterface.ZIndex = 6
Instances.CloseInterface.Size = UDim2.new(0, 30, 0, 30)
Instances.CloseInterface.Position = UDim2.new(0.893666685, 0, 0, 15)
Instances.CloseInterface.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.CIStroke.Name = "CIStroke"
Instances.CIStroke.Parent = Instances.CloseInterface
Instances.CIStroke.Color = Color3.fromRGB(255, 255, 255)
Instances.CIStroke.Transparency = 1

Instances.CISGradient.Name = "CISGradient"
Instances.CISGradient.Parent = Instances.CIStroke
Instances.CISGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.CICorner.Name = "CICorner"
Instances.CICorner.Parent = Instances.CloseInterface

Instances.CIActivator.Name = "CIActivator"
Instances.CIActivator.Parent = Instances.CloseInterface
Instances.CIActivator.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.CIActivator.ZIndex = 6
Instances.CIActivator.Size = UDim2.new(0, 25, 0, 25)
Instances.CIActivator.BackgroundTransparency = 1
Instances.CIActivator.Position = UDim2.new(0.5, 1, 0.5, 0)
Instances.CIActivator.ImageColor3 = Color3.fromRGB(74, 74, 74)
Instances.CIActivator.ImageRectOffset = Vector2.new(924, 724)
Instances.CIActivator.ImageRectSize = Vector2.new(36, 36)
Instances.CIActivator.Image = "rbxassetid://3926305904"

Instances.MinimiseInterface.Name = "MinimiseInterface"
Instances.MinimiseInterface.Parent = Instances.Navigation
Instances.MinimiseInterface.ZIndex = 6
Instances.MinimiseInterface.Size = UDim2.new(0, 30, 0, 30)
Instances.MinimiseInterface.Position = UDim2.new(0.810000002, 0, 0, 15)
Instances.MinimiseInterface.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.MIStroke.Name = "MIStroke"
Instances.MIStroke.Parent = Instances.MinimiseInterface
Instances.MIStroke.Color = Color3.fromRGB(255, 255, 255)
Instances.MIStroke.Transparency = 1

Instances.MISGradient.Name = "MISGradient"
Instances.MISGradient.Parent = Instances.MIStroke
Instances.MISGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.MICorner.Name = "MICorner"
Instances.MICorner.Parent = Instances.MinimiseInterface

Instances.MIActivator.Name = "MIActivator"
Instances.MIActivator.Parent = Instances.MinimiseInterface
Instances.MIActivator.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.MIActivator.ZIndex = 6
Instances.MIActivator.Size = UDim2.new(0, 25, 0, 25)
Instances.MIActivator.BackgroundTransparency = 1
Instances.MIActivator.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.MIActivator.ImageColor3 = Color3.fromRGB(74, 74, 74)
Instances.MIActivator.ImageRectOffset = Vector2.new(244, 204)
Instances.MIActivator.ImageRectSize = Vector2.new(36, 36)
Instances.MIActivator.Image = "rbxassetid://3926305904"

Instances.SearchTab.Name = "SearchTab"
Instances.SearchTab.Parent = Instances.Navigation
Instances.SearchTab.ZIndex = 6
Instances.SearchTab.Size = UDim2.new(0, 30, 0, 30)
Instances.SearchTab.Position = UDim2.new(0.726999998, 0, 0, 15)
Instances.SearchTab.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.STStroke.Name = "STStroke"
Instances.STStroke.Parent = Instances.SearchTab
Instances.STStroke.Color = Color3.fromRGB(255, 255, 255)
Instances.STStroke.Transparency = 1

Instances.STSGradient.Name = "STSGradient"
Instances.STSGradient.Parent = Instances.STStroke
Instances.STSGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.STCorner.Name = "STCorner"
Instances.STCorner.Parent = Instances.SearchTab

Instances.STActivator.Name = "STActivator"
Instances.STActivator.Parent = Instances.SearchTab
Instances.STActivator.Active = false
Instances.STActivator.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.STActivator.ZIndex = 6
Instances.STActivator.Size = UDim2.new(0, 22, 0, 22)
Instances.STActivator.LayoutOrder = 1
Instances.STActivator.BackgroundTransparency = 1
Instances.STActivator.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.STActivator.ImageColor3 = Color3.fromRGB(74, 74, 74)
Instances.STActivator.ImageRectOffset = Vector2.new(964, 324)
Instances.STActivator.ImageRectSize = Vector2.new(36, 36)
Instances.STActivator.Image = "rbxassetid://3926305904"

Instances.SearchContainer.Name = "SearchContainer"
Instances.SearchContainer.Parent = Instances.Navigation
Instances.SearchContainer.AnchorPoint = Vector2.new(0.5, 0)
Instances.SearchContainer.ZIndex = 5
Instances.SearchContainer.Size = UDim2.new(1, 0, 0, 30)
Instances.SearchContainer.Position = UDim2.new(0.5, 0, 0, 3)
Instances.SearchContainer.BackgroundColor3 = Color3.fromRGB(16, 16, 16)

Instances.SCCorner.Name = "SCCorner"
Instances.SCCorner.Parent = Instances.SearchContainer

Instances.SCShadowHolder.Name = "SCShadowHolder"
Instances.SCShadowHolder.Parent = Instances.SearchContainer
Instances.SCShadowHolder.ZIndex = 0
Instances.SCShadowHolder.Size = UDim2.new(1, 0, 1, 0)
Instances.SCShadowHolder.BackgroundTransparency = 1
Instances.SCShadowHolder.BorderSizePixel = 0

Instances.SCSHImage.Name = "SCSHImage"
Instances.SCSHImage.Parent = Instances.SCShadowHolder
Instances.SCSHImage.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.SCSHImage.Size = UDim2.new(1, 37, 1, 35)
Instances.SCSHImage.BackgroundTransparency = 1
Instances.SCSHImage.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.SCSHImage.BorderSizePixel = 0
Instances.SCSHImage.ImageColor3 = Color3.fromRGB(0, 0, 0)
Instances.SCSHImage.ScaleType = Enum.ScaleType.Slice
Instances.SCSHImage.ImageTransparency = 0.6600000262260437
Instances.SCSHImage.Image = "rbxassetid://6014261993"
Instances.SCSHImage.SliceCenter = Rect.new(Vector2.new(49, 49), Vector2.new(450, 450))

Instances.SCInput.Name = "SCInput"
Instances.SCInput.Parent = Instances.SearchContainer
Instances.SCInput.AnchorPoint = Vector2.new(0, 0.5)
Instances.SCInput.ZIndex = 5
Instances.SCInput.Size = UDim2.new(0.884444416, -50, 1, 0)
Instances.SCInput.BackgroundTransparency = 1
Instances.SCInput.Position = UDim2.new(0.0782222524, 0, 0.5, 0)
Instances.SCInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.SCInput.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Instances.SCInput.TextStrokeTransparency = 0.8999999761581421
Instances.SCInput.PlaceholderColor3 = Color3.fromRGB(135, 135, 135)
Instances.SCInput.PlaceholderText = "Search 'aimbot'..."
Instances.SCInput.TextSize = 17
Instances.SCInput.TextColor3 = Color3.fromRGB(135, 135, 135)
Instances.SCInput.Text = ""
Instances.SCInput.LineHeight = 0.949999988079071
Instances.SCInput.TextTruncate = Enum.TextTruncate.AtEnd
Instances.SCInput.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.SCInput.TextXAlignment = Enum.TextXAlignment.Left
Instances.SCInput.ClearTextOnFocus = false

Instances.SCSearchImage.Name = "SCSearchImage"
Instances.SCSearchImage.Parent = Instances.SearchContainer
Instances.SCSearchImage.Active = false
Instances.SCSearchImage.AnchorPoint = Vector2.new(0, 0.5)
Instances.SCSearchImage.ZIndex = 5
Instances.SCSearchImage.Size = UDim2.new(0, 22, 0, 22)
Instances.SCSearchImage.LayoutOrder = 1
Instances.SCSearchImage.BackgroundTransparency = 1
Instances.SCSearchImage.Position = UDim2.new(0, 5, 0.5, 0)
Instances.SCSearchImage.ImageColor3 = Color3.fromRGB(74, 74, 74)
Instances.SCSearchImage.ImageRectOffset = Vector2.new(964, 324)
Instances.SCSearchImage.ImageRectSize = Vector2.new(36, 36)
Instances.SCSearchImage.Image = "rbxassetid://3926305904"

Instances.SCClearQuery.Name = "SCClearQuery"
Instances.SCClearQuery.Parent = Instances.SearchContainer
Instances.SCClearQuery.AnchorPoint = Vector2.new(0, 0.5)
Instances.SCClearQuery.ZIndex = 5
Instances.SCClearQuery.Size = UDim2.new(0, 22, 0, 22)
Instances.SCClearQuery.LayoutOrder = 4
Instances.SCClearQuery.BackgroundTransparency = 1
Instances.SCClearQuery.Position = UDim2.new(1, -29, 0.5, 0)
Instances.SCClearQuery.ImageColor3 = Color3.fromRGB(74, 74, 74)
Instances.SCClearQuery.ImageRectOffset = Vector2.new(924, 724)
Instances.SCClearQuery.ImageRectSize = Vector2.new(36, 36)
Instances.SCClearQuery.Image = "rbxassetid://3926305904"

Instances.SCGrabber.Name = "SCGrabber"
Instances.SCGrabber.Parent = Instances.SearchContainer
Instances.SCGrabber.AnchorPoint = Vector2.new(0, 0.5)
Instances.SCGrabber.ZIndex = 5
Instances.SCGrabber.Size = UDim2.new(0.00666666683, 25, 1, -10)
Instances.SCGrabber.Position = UDim2.new(0.864444435, 0, 0.5, 0)
Instances.SCGrabber.BackgroundColor3 = Color3.fromRGB(22, 22, 22)

Instances.SCGCorner.Name = "SCGCorner"
Instances.SCGCorner.Parent = Instances.SCGrabber
Instances.SCGCorner.CornerRadius = UDim.new(0, 4)

Instances.WindowSHolder.Name = "WindowSHolder"
Instances.WindowSHolder.Parent = Instances.Window
Instances.WindowSHolder.ZIndex = -1
Instances.WindowSHolder.Size = UDim2.new(1, 0, 1, 0)
Instances.WindowSHolder.BackgroundTransparency = 1
Instances.WindowSHolder.BorderSizePixel = 0

Instances.WindowShadow.Name = "WindowShadow"
Instances.WindowShadow.Parent = Instances.WindowSHolder
Instances.WindowShadow.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.WindowShadow.ZIndex = -1
Instances.WindowShadow.Size = UDim2.new(1, 47, 1, 47)
Instances.WindowShadow.BackgroundTransparency = 1
Instances.WindowShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.WindowShadow.BorderSizePixel = 0
Instances.WindowShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Instances.WindowShadow.ScaleType = Enum.ScaleType.Slice
Instances.WindowShadow.ImageTransparency = 0.11999999731779099
Instances.WindowShadow.Image = "rbxassetid://6014261993"
Instances.WindowShadow.SliceCenter = Rect.new(Vector2.new(49, 49), Vector2.new(450, 450))

Instances.Elements.Name = "Elements"
Instances.Elements.Parent = Instances.Window
Instances.Elements.Size = UDim2.new(1, 0, 1, -60)
Instances.Elements.BackgroundTransparency = 1
Instances.Elements.Position = UDim2.new(0, 0, 0, 58)
Instances.Elements.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Instances.TabDisplay.Name = "TabDisplay"
Instances.TabDisplay.Parent = Instances.Elements
Instances.TabDisplay.Size = UDim2.new(1, 0, 1, 0)
Instances.TabDisplay.ClipsDescendants = true
Instances.TabDisplay.BackgroundTransparency = 1
Instances.TabDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Instances.Tab1.Name = "Tab1"
Instances.Tab1.Parent = Instances.TabDisplay
Instances.Tab1.Size = UDim2.new(1, 0, 1, 0)
Instances.Tab1.ClipsDescendants = true
Instances.Tab1.BackgroundTransparency = 1
Instances.Tab1.Position = UDim2.new(0, 0, 3.45221487e-08, 0)
Instances.Tab1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Instances.TabElementContainer.Name = "TabElementContainer"
Instances.TabElementContainer.Parent = Instances.Tab1
Instances.TabElementContainer.Size = UDim2.new(1, 0, 1, 0)
Instances.TabElementContainer.BackgroundTransparency = 1
Instances.TabElementContainer.BorderSizePixel = 0
Instances.TabElementContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.TabElementContainer.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Instances.TabElementContainer.ScrollBarThickness = 0
Instances.TabElementContainer.CanvasSize = UDim2.new(0, 0, 1, 50)

Instances.TECLayout.Name = "TECLayout"
Instances.TECLayout.Parent = Instances.TabElementContainer
Instances.TECLayout.Padding = UDim.new(0, 10)
Instances.TECLayout.VerticalAlignment = Enum.VerticalAlignment.Top
Instances.TECLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center


Instances.TECPadding.Name = "TECPadding"
Instances.TECPadding.Parent = Instances.TabElementContainer
Instances.TECPadding.PaddingTop = UDim.new(0, 10)

Instances.BooleanElement.Name = "BooleanElement"
Instances.BooleanElement.Parent = Instances.TabElementContainer
Instances.BooleanElement.Size = UDim2.new(1, -15, 0, 35)
Instances.BooleanElement.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.BECorner.Name = "BECorner"
Instances.BECorner.Parent = Instances.BooleanElement
Instances.BECorner.CornerRadius = UDim.new(0, 6)

Instances.BEStroke.Name = "BEStroke"
Instances.BEStroke.Parent = Instances.BooleanElement
Instances.BEStroke.Color = Color3.fromRGB(255, 255, 255)

Instances.BESGradient.Name = "BESGradient"
Instances.BESGradient.Parent = Instances.BEStroke
Instances.BESGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.BETitle.Name = "BETitle"
Instances.BETitle.Parent = Instances.BooleanElement
Instances.BETitle.AnchorPoint = Vector2.new(0, 0.5)
Instances.BETitle.ZIndex = 3
Instances.BETitle.Size = UDim2.new(0.349425286, 200, 0, 20)
Instances.BETitle.BackgroundTransparency = 1
Instances.BETitle.Position = UDim2.new(0.0207662657, 0, 0.5, 0)
Instances.BETitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.BETitle.TextColor3 = Color3.fromRGB(207, 207, 207)
Instances.BETitle.TextStrokeColor3 = Color3.fromRGB(49, 49, 49)
Instances.BETitle.Text = "Boolean Name"
Instances.BETitle.TextXAlignment = Enum.TextXAlignment.Left
Instances.BETitle.TextWrapped = true
Instances.BETitle.TextSize = 20
Instances.BETitle.TextTruncate = Enum.TextTruncate.AtEnd
Instances.BETitle.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.BETitle.TextScaled = true

Instances.BEDisplay.Name = "BEDisplay"
Instances.BEDisplay.Parent = Instances.BooleanElement
Instances.BEDisplay.AnchorPoint = Vector2.new(0, 0.5)
Instances.BEDisplay.Size = UDim2.new(0, 45, 0, 27)
Instances.BEDisplay.BackgroundTransparency = 1
Instances.BEDisplay.Position = UDim2.new(0.87356317, 0, 0.5, 0)
Instances.BEDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.BEDisplay.ImageColor3 = Color3.fromRGB(12, 12, 12)
Instances.BEDisplay.ScaleType = Enum.ScaleType.Slice
Instances.BEDisplay.Image = "rbxassetid://3570695787"
Instances.BEDisplay.SliceCenter = Rect.new(Vector2.new(100, 100), Vector2.new(100, 100))

Instances.BEIndicator.Name = "BEIndicator"
Instances.BEIndicator.Parent = Instances.BEDisplay
Instances.BEIndicator.AnchorPoint = Vector2.new(0, 0.5)
Instances.BEIndicator.Size = UDim2.new(0, 23, 0, 23)
Instances.BEIndicator.BackgroundTransparency = 1
Instances.BEIndicator.Position = UDim2.new(0.100000001, -2, 0.5, 0)
Instances.BEIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.BEIndicator.ImageColor3 = Color3.fromRGB(216, 216, 216)
Instances.BEIndicator.ScaleType = Enum.ScaleType.Slice
Instances.BEIndicator.Image = "rbxassetid://3570695787"
Instances.BEIndicator.SliceCenter = Rect.new(Vector2.new(100, 100), Vector2.new(100, 100))

Instances.BEActivator.Name = "BEActivator"
Instances.BEActivator.Parent = Instances.BEDisplay
Instances.BEActivator.Size = UDim2.new(1, 0, 1, 0)
Instances.BEActivator.BackgroundTransparency = 1
Instances.BEActivator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.BEActivator.TextColor3 = Color3.fromRGB(0, 0, 0)
Instances.BEActivator.Text = ""
Instances.BEActivator.TextSize = 14
Instances.BEActivator.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.SliderElement.Name = "SliderElement"
Instances.SliderElement.Parent = Instances.TabElementContainer
Instances.SliderElement.Size = UDim2.new(1, -15, 0, 50)
Instances.SliderElement.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.SECorner.Name = "SECorner"
Instances.SECorner.Parent = Instances.SliderElement
Instances.SECorner.CornerRadius = UDim.new(0, 6)

Instances.SEStroke.Name = "SEStroke"
Instances.SEStroke.Parent = Instances.SliderElement
Instances.SEStroke.Color = Color3.fromRGB(255, 255, 255)

Instances.SESGradient.Name = "SESGradient"
Instances.SESGradient.Parent = Instances.SEStroke
Instances.SESGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.SETitle.Name = "SETitle"
Instances.SETitle.Parent = Instances.SliderElement
Instances.SETitle.AnchorPoint = Vector2.new(0, 0.5)
Instances.SETitle.ZIndex = 3
Instances.SETitle.Size = UDim2.new(0.349000007, 200, 0, 20)
Instances.SETitle.BackgroundTransparency = 1
Instances.SETitle.Position = UDim2.new(0.0207662657, 0, 0.5, -5)
Instances.SETitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.SETitle.TextColor3 = Color3.fromRGB(207, 207, 207)
Instances.SETitle.TextStrokeColor3 = Color3.fromRGB(49, 49, 49)
Instances.SETitle.Text = "Slider Name"
Instances.SETitle.TextXAlignment = Enum.TextXAlignment.Left
Instances.SETitle.TextWrapped = true
Instances.SETitle.TextSize = 20
Instances.SETitle.TextTruncate = Enum.TextTruncate.AtEnd
Instances.SETitle.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.SETitle.TextScaled = true

Instances.SEFillFrame.Name = "SEFillFrame"
Instances.SEFillFrame.Parent = Instances.SliderElement
Instances.SEFillFrame.AnchorPoint = Vector2.new(0.5, 0)
Instances.SEFillFrame.Size = UDim2.new(1, -20, 0.119999997, 3)
Instances.SEFillFrame.Position = UDim2.new(0.5, 0, 0.660000026, 0)
Instances.SEFillFrame.BorderSizePixel = 0
Instances.SEFillFrame.BackgroundColor3 = Color3.fromRGB(13, 13, 13)

Instances.SEFill_2.Name = "SEFill"
Instances.SEFill_2.Parent = Instances.SEFillFrame
Instances.SEFill_2.AnchorPoint = Vector2.new(0, 0.5)
Instances.SEFill_2.Size = UDim2.new(0, 50, 1, -2)
Instances.SEFill_2.Position = UDim2.new(0, 0, 0.5, 0)
Instances.SEFill_2.BorderSizePixel = 0
Instances.SEFill_2.BackgroundColor3 = Color3.fromRGB(0, 110, 255)

Instances.SSFCorner.Name = "SSFCorner"
Instances.SSFCorner.Parent = Instances.SEFill_2

Instances.SSFFCorner.Name = "SSFFCorner"
Instances.SSFFCorner.Parent = Instances.SEFillFrame

Instances.SEActivator.Name = "SEActivator"
Instances.SEActivator.Parent = Instances.SEFillFrame
Instances.SEActivator.Size = UDim2.new(1, 0, 1, 0)
Instances.SEActivator.BackgroundTransparency = 1
Instances.SEActivator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.SEActivator.TextColor3 = Color3.fromRGB(0, 0, 0)
Instances.SEActivator.Text = ""
Instances.SEActivator.TextSize = 14
Instances.SEActivator.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.SEValue.Name = "SEValue"
Instances.SEValue.Parent = Instances.SliderElement
Instances.SEValue.ZIndex = 3
Instances.SEValue.Size = UDim2.new(-0.253298789, 200, -0.340000004, 35)
Instances.SEValue.BackgroundTransparency = 1
Instances.SEValue.Position = UDim2.new(0.770191669, 0, 0.199220583, 0)
Instances.SEValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.SEValue.TextColor3 = Color3.fromRGB(181, 181, 181)
Instances.SEValue.TextStrokeColor3 = Color3.fromRGB(49, 49, 49)
Instances.SEValue.Text = "50"
Instances.SEValue.TextXAlignment = Enum.TextXAlignment.Right
Instances.SEValue.TextSize = 15
Instances.SEValue.TextTruncate = Enum.TextTruncate.AtEnd
Instances.SEValue.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.ColorElement.Name = "ColorElement"
Instances.ColorElement.Parent = Instances.TabElementContainer
Instances.ColorElement.Size = UDim2.new(1, -15, 0, 35)
Instances.ColorElement.Position = UDim2.new(0.0166666675, 0, 0.261363626, 0)
Instances.ColorElement.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.CECorner.Name = "CECorner"
Instances.CECorner.Parent = Instances.ColorElement
Instances.CECorner.CornerRadius = UDim.new(0, 6)

Instances.CEStroke.Name = "CEStroke"
Instances.CEStroke.Parent = Instances.ColorElement
Instances.CEStroke.Color = Color3.fromRGB(255, 255, 255)

Instances.CESGradient.Name = "CESGradient"
Instances.CESGradient.Parent = Instances.CEStroke
Instances.CESGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.CETitle.Name = "CETitle"
Instances.CETitle.Parent = Instances.ColorElement
Instances.CETitle.AnchorPoint = Vector2.new(0, 0.5)
Instances.CETitle.ZIndex = 3
Instances.CETitle.Size = UDim2.new(0, 290, 0, 20)
Instances.CETitle.BackgroundTransparency = 1
Instances.CETitle.Position = UDim2.new(0.0210000221, 0, 0, 18)
Instances.CETitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.CETitle.TextColor3 = Color3.fromRGB(207, 207, 207)
Instances.CETitle.TextStrokeColor3 = Color3.fromRGB(49, 49, 49)
Instances.CETitle.Text = "Color Name"
Instances.CETitle.TextXAlignment = Enum.TextXAlignment.Left
Instances.CETitle.TextWrapped = true
Instances.CETitle.TextSize = 20
Instances.CETitle.TextTruncate = Enum.TextTruncate.AtEnd
Instances.CETitle.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.CETitle.TextScaled = true

Instances.CEExpand.Name = "CEExpand"
Instances.CEExpand.Parent = Instances.ColorElement
Instances.CEExpand.AnchorPoint = Vector2.new(1, 0.5)
Instances.CEExpand.Size = UDim2.new(0, 23, 0, 23)
Instances.CEExpand.Position = UDim2.new(1, -7, 0.5, 0)
Instances.CEExpand.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.CEECorner.Name = "CEECorner"
Instances.CEECorner.Parent = Instances.CEExpand
Instances.CEECorner.CornerRadius = UDim.new(0, 6)

Instances.CEEStroke.Name = "CEEStroke"
Instances.CEEStroke.Parent = Instances.CEExpand
Instances.CEEStroke.Color = Color3.fromRGB(255, 255, 255)
Instances.CEEStroke.Transparency = 1

Instances.CEESGradient.Name = "CEESGradient"
Instances.CEESGradient.Parent = Instances.CEEStroke
Instances.CEESGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.arrow_forward.Name = "arrow_forward"
Instances.arrow_forward.Parent = Instances.CEExpand
Instances.arrow_forward.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.arrow_forward.ZIndex = 2
Instances.arrow_forward.Size = UDim2.new(1, -2, 1, -2)
Instances.arrow_forward.BackgroundTransparency = 1
Instances.arrow_forward.Position = UDim2.new(0.5, 4, 0.5, 0)
Instances.arrow_forward.ImageColor3 = Color3.fromRGB(97, 97, 97)
Instances.arrow_forward.ImageRectOffset = Vector2.new(564, 284)
Instances.arrow_forward.ImageRectSize = Vector2.new(36, 36)
Instances.arrow_forward.Image = "rbxassetid://3926307971"

Instances.ComboElement.Name = "ComboElement"
Instances.ComboElement.Parent = Instances.TabElementContainer
Instances.ComboElement.Size = UDim2.new(1, -15, 0, 35)
Instances.ComboElement.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.CECorner_2.Name = "CECorner"
Instances.CECorner_2.Parent = Instances.ComboElement
Instances.CECorner_2.CornerRadius = UDim.new(0, 6)

Instances.CEStroke_2.Name = "CEStroke"
Instances.CEStroke_2.Parent = Instances.ComboElement
Instances.CEStroke_2.Color = Color3.fromRGB(255, 255, 255)

Instances.CESGradient_2.Name = "CESGradient"
Instances.CESGradient_2.Parent = Instances.CEStroke_2
Instances.CESGradient_2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.CETitle_2.Name = "CETitle"
Instances.CETitle_2.Parent = Instances.ComboElement
Instances.CETitle_2.AnchorPoint = Vector2.new(0, 0.5)
Instances.CETitle_2.ZIndex = 3
Instances.CETitle_2.Size = UDim2.new(0, 206, 0, 20)
Instances.CETitle_2.BackgroundTransparency = 1
Instances.CETitle_2.Position = UDim2.new(0.0207662657, 0, 0.5, 0)
Instances.CETitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.CETitle_2.TextColor3 = Color3.fromRGB(207, 207, 207)
Instances.CETitle_2.TextStrokeColor3 = Color3.fromRGB(49, 49, 49)
Instances.CETitle_2.Text = "Combo Name"
Instances.CETitle_2.TextXAlignment = Enum.TextXAlignment.Left
Instances.CETitle_2.TextWrapped = true
Instances.CETitle_2.TextSize = 20
Instances.CETitle_2.TextTruncate = Enum.TextTruncate.AtEnd
Instances.CETitle_2.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.CETitle_2.TextScaled = true

Instances.CEContainer.Name = "CEContainer"
Instances.CEContainer.Parent = Instances.ComboElement
Instances.CEContainer.AnchorPoint = Vector2.new(1, 0.5)
Instances.CEContainer.Size = UDim2.new(0.0804597735, 180, 0.971428812, -10)
Instances.CEContainer.ClipsDescendants = true
Instances.CEContainer.Position = UDim2.new(1, -6, 0.485714406, 0)
Instances.CEContainer.BackgroundColor3 = Color3.fromRGB(13, 13, 13)

Instances.CECCorner.Name = "CECCorner"
Instances.CECCorner.Parent = Instances.CEContainer
Instances.CECCorner.CornerRadius = UDim.new(0, 6)

Instances.CECStroke.Name = "CECStroke"
Instances.CECStroke.Parent = Instances.CEContainer
Instances.CECStroke.Color = Color3.fromRGB(26, 26, 26)

Instances.CECLayout.Name = "CECLayout"
Instances.CECLayout.Parent = Instances.CEContainer

Instances.CESelectedOption.Name = "CESelectedOption"
Instances.CESelectedOption.Parent = Instances.CEContainer
Instances.CESelectedOption.ZIndex = 3
Instances.CESelectedOption.Size = UDim2.new(1, 0, 0, 20)
Instances.CESelectedOption.BackgroundTransparency = 1
Instances.CESelectedOption.BorderSizePixel = 0
Instances.CESelectedOption.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
Instances.CESelectedOption.TextColor3 = Color3.fromRGB(150, 150, 150)
Instances.CESelectedOption.Text = "Option 1"
Instances.CESelectedOption.TextXAlignment = Enum.TextXAlignment.Left
Instances.CESelectedOption.TextWrapped = true
Instances.CESelectedOption.TextSize = 14
Instances.CESelectedOption.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.CESelectedOption.TextScaled = true

Instances.CEOPadding.Name = "CEOPadding"
Instances.CEOPadding.Parent = Instances.CESelectedOption
Instances.CEOPadding.PaddingBottom = UDim.new(0, 5)
Instances.CEOPadding.PaddingLeft = UDim.new(0, 8)

Instances.CESOState.Name = "CESOState"
Instances.CESOState.Parent = Instances.CESelectedOption
Instances.CESOState.Active = false
Instances.CESOState.ZIndex = 3
Instances.CESOState.Size = UDim2.new(0, 20, 0, 20)
Instances.CESOState.Rotation = 90
Instances.CESOState.BackgroundTransparency = 1
Instances.CESOState.Position = UDim2.new(0.886473417, 0, -0.166666687, 0)
Instances.CESOState.ImageColor3 = Color3.fromRGB(65, 65, 65)
Instances.CESOState.ImageRectOffset = Vector2.new(564, 284)
Instances.CESOState.ImageRectSize = Vector2.new(36, 36)
Instances.CESOState.Image = "rbxassetid://3926305904"

Instances.CESOActivator.Name = "CESOActivator"
Instances.CESOActivator.Parent = Instances.CESelectedOption
Instances.CESOActivator.ZIndex = 3
Instances.CESOActivator.Size = UDim2.new(1.05797112, 0, 1.33333337, 0)
Instances.CESOActivator.BackgroundTransparency = 1
Instances.CESOActivator.Position = UDim2.new(-0.0360595658, 0, -0.216666669, 0)
Instances.CESOActivator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.CESOActivator.TextColor3 = Color3.fromRGB(0, 0, 0)
Instances.CESOActivator.Text = ""
Instances.CESOActivator.TextSize = 14
Instances.CESOActivator.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.CECPadding.Name = "CECPadding"
Instances.CECPadding.Parent = Instances.CEContainer
Instances.CECPadding.PaddingTop = UDim.new(0, 5)

Instances.CEOptions.Name = "CEOptions"
Instances.CEOptions.Parent = Instances.ComboElement
Instances.CEOptions.AnchorPoint = Vector2.new(1, 0.5)
Instances.CEOptions.ZIndex = 3
Instances.CEOptions.Size = UDim2.new(0, 215, 0, 30)
Instances.CEOptions.Position = UDim2.new(1, -6, 0, 50)
Instances.CEOptions.BackgroundColor3 = Color3.fromRGB(13, 13, 13)

Instances.CECCorner_2.Name = "CECCorner"
Instances.CECCorner_2.Parent = Instances.CEOptions
Instances.CECCorner_2.CornerRadius = UDim.new(0, 6)

Instances.CECStroke_2.Name = "CECStroke"
Instances.CECStroke_2.Parent = Instances.CEOptions
Instances.CECStroke_2.Color = Color3.fromRGB(26, 26, 26)

Instances.CEOPadding_2.Name = "CEOPadding"
Instances.CEOPadding_2.Parent = Instances.CEOptions
Instances.CEOPadding_2.PaddingTop = UDim.new(0, 5)

Instances.CEOShadow.Name = "CEOShadow"
Instances.CEOShadow.Parent = Instances.CEOptions
Instances.CEOShadow.ZIndex = 0
Instances.CEOShadow.Size = UDim2.new(1, 0, 1, 0)
Instances.CEOShadow.BackgroundTransparency = 1
Instances.CEOShadow.BorderSizePixel = 0

Instances.CEOSImage.Name = "CEOSImage"
Instances.CEOSImage.Parent = Instances.CEOShadow
Instances.CEOSImage.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.CEOSImage.ZIndex = 2
Instances.CEOSImage.Size = UDim2.new(1, 47, 1, 47)
Instances.CEOSImage.BackgroundTransparency = 1
Instances.CEOSImage.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.CEOSImage.BorderSizePixel = 0
Instances.CEOSImage.ImageColor3 = Color3.fromRGB(0, 0, 0)
Instances.CEOSImage.ScaleType = Enum.ScaleType.Slice
Instances.CEOSImage.ImageTransparency = 0.550000011920929
Instances.CEOSImage.Image = "rbxassetid://6014261993"
Instances.CEOSImage.SliceCenter = Rect.new(Vector2.new(49, 49), Vector2.new(450, 450))

Instances.CEOption_2.Name = "CEOption"
Instances.CEOption_2.Parent = Instances.CEOptions
Instances.CEOption_2.ZIndex = 3
Instances.CEOption_2.Size = UDim2.new(1, 0, 0, 20)
Instances.CEOption_2.BorderSizePixel = 0
Instances.CEOption_2.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
Instances.CEOption_2.TextColor3 = Color3.fromRGB(150, 150, 150)
Instances.CEOption_2.Text = "Option 1"
Instances.CEOption_2.TextXAlignment = Enum.TextXAlignment.Left
Instances.CEOption_2.TextWrapped = true
Instances.CEOption_2.TextSize = 14
Instances.CEOption_2.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.CEOption_2.TextScaled = true

Instances.CEOPadding_3.Name = "CEOPadding"
Instances.CEOPadding_3.Parent = Instances.CEOption_2
Instances.CEOPadding_3.PaddingBottom = UDim.new(0, 3)
Instances.CEOPadding_3.PaddingTop = UDim.new(0, 3)
Instances.CEOPadding_3.PaddingLeft = UDim.new(0, 8)

Instances.CEOActivator.Name = "CEOActivator"
Instances.CEOActivator.Parent = Instances.CEOption_2
Instances.CEOActivator.ZIndex = 3
Instances.CEOActivator.Size = UDim2.new(1.05797112, 0, 1.33333337, 0)
Instances.CEOActivator.BackgroundTransparency = 1
Instances.CEOActivator.Position = UDim2.new(-0.0360595658, 0, -0.216666669, 0)
Instances.CEOActivator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.CEOActivator.TextColor3 = Color3.fromRGB(0, 0, 0)
Instances.CEOActivator.Text = ""
Instances.CEOActivator.TextSize = 14
Instances.CEOActivator.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.CEOImage.Name = "CEOImage"
Instances.CEOImage.Parent = Instances.CEOption_2
Instances.CEOImage.Active = false
Instances.CEOImage.AnchorPoint = Vector2.new(1, 0.5)
Instances.CEOImage.ZIndex = 3
Instances.CEOImage.Size = UDim2.new(0, 18, 0, 18)
Instances.CEOImage.BackgroundTransparency = 1
Instances.CEOImage.Position = UDim2.new(1, -5, 0.5, 0)
Instances.CEOImage.ImageColor3 = Color3.fromRGB(0, 110, 255)
Instances.CEOImage.ImageTransparency = 1
Instances.CEOImage.ImageRectOffset = Vector2.new(284, 924)
Instances.CEOImage.ImageRectSize = Vector2.new(36, 36)
Instances.CEOImage.Image = "rbxassetid://3926305904"

Instances.TextElement.Name = "TextElement"
Instances.TextElement.Parent = Instances.TabElementContainer
Instances.TextElement.Size = UDim2.new(1, -15, 0, 35)
Instances.TextElement.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.TECorner.Name = "TECorner"
Instances.TECorner.Parent = Instances.TextElement
Instances.TECorner.CornerRadius = UDim.new(0, 6)

Instances.TEStroke.Name = "TEStroke"
Instances.TEStroke.Parent = Instances.TextElement
Instances.TEStroke.Color = Color3.fromRGB(255, 255, 255)

Instances.TESGradient.Name = "TESGradient"
Instances.TESGradient.Parent = Instances.TEStroke
Instances.TESGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.TETitle.Name = "TETitle"
Instances.TETitle.Parent = Instances.TextElement
Instances.TETitle.AnchorPoint = Vector2.new(0, 0.5)
Instances.TETitle.ZIndex = 3
Instances.TETitle.Size = UDim2.new(0, 241, 0, 20)
Instances.TETitle.BackgroundTransparency = 1
Instances.TETitle.Position = UDim2.new(0.0210000221, 0, 0.5, 0)
Instances.TETitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.TETitle.TextColor3 = Color3.fromRGB(207, 207, 207)
Instances.TETitle.TextStrokeColor3 = Color3.fromRGB(49, 49, 49)
Instances.TETitle.Text = "Text Name"
Instances.TETitle.TextXAlignment = Enum.TextXAlignment.Left
Instances.TETitle.TextWrapped = true
Instances.TETitle.TextSize = 20
Instances.TETitle.TextTruncate = Enum.TextTruncate.AtEnd
Instances.TETitle.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.TETitle.TextScaled = true

Instances.TEField.Name = "TEField"
Instances.TEField.Parent = Instances.TextElement
Instances.TEField.AnchorPoint = Vector2.new(1, 0.5)
Instances.TEField.Size = UDim2.new(0, 180, 1, -10)
Instances.TEField.ClipsDescendants = true
Instances.TEField.Position = UDim2.new(1, -6, 0.5, 0)
Instances.TEField.BackgroundColor3 = Color3.fromRGB(13, 13, 13)

Instances.TEFCorner.Name = "TEFCorner"
Instances.TEFCorner.Parent = Instances.TEField
Instances.TEFCorner.CornerRadius = UDim.new(0, 6)

Instances.TEFStroke.Name = "TEFStroke"
Instances.TEFStroke.Parent = Instances.TEField
Instances.TEFStroke.Color = Color3.fromRGB(26, 26, 26)

Instances.TEFInput.Name = "TEFInput"
Instances.TEFInput.Parent = Instances.TEField
Instances.TEFInput.Size = UDim2.new(1, 0, 1, 0)
Instances.TEFInput.BackgroundTransparency = 1
Instances.TEFInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.TEFInput.PlaceholderColor3 = Color3.fromRGB(117, 117, 117)
Instances.TEFInput.PlaceholderText = "default"
Instances.TEFInput.TextSize = 16
Instances.TEFInput.TextColor3 = Color3.fromRGB(117, 117, 117)
Instances.TEFInput.Text = ""
Instances.TEFInput.TextTruncate = Enum.TextTruncate.AtEnd
Instances.TEFInput.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.ActionElement.Name = "ActionElement"
Instances.ActionElement.Parent = Instances.TabElementContainer
Instances.ActionElement.Size = UDim2.new(1, -15, 0, 35)
Instances.ActionElement.BackgroundColor3 = Color3.fromRGB(17, 17, 17)

Instances.AECorner.Name = "AECorner"
Instances.AECorner.Parent = Instances.ActionElement
Instances.AECorner.CornerRadius = UDim.new(0, 6)

Instances.AEStroke.Name = "AEStroke"
Instances.AEStroke.Parent = Instances.ActionElement
Instances.AEStroke.Color = Color3.fromRGB(255, 255, 255)

Instances.AESGradient.Name = "AESGradient"
Instances.AESGradient.Parent = Instances.AEStroke
Instances.AESGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.AEContainer.Name = "AEContainer"
Instances.AEContainer.Parent = Instances.ActionElement
Instances.AEContainer.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.AEContainer.Size = UDim2.new(1, -10, 1, -10)
Instances.AEContainer.ClipsDescendants = true
Instances.AEContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.AEContainer.BackgroundColor3 = Color3.fromRGB(16, 16, 16)

Instances.ACEStroke.Name = "ACEStroke"
Instances.ACEStroke.Parent = Instances.AEContainer
Instances.ACEStroke.Color = Color3.fromRGB(255, 255, 255)
Instances.ACEStroke.Transparency = 0.8500000238418579

Instances.ACESGradient.Name = "ACESGradient"
Instances.ACESGradient.Parent = Instances.ACEStroke
Instances.ACESGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))})

Instances.AECCorner.Name = "AECCorner"
Instances.AECCorner.Parent = Instances.AEContainer
Instances.AECCorner.CornerRadius = UDim.new(0, 6)

Instances.AECActivator.Name = "AECActivator"
Instances.AECActivator.Parent = Instances.AEContainer
Instances.AECActivator.Size = UDim2.new(1, 0, 1, 0)
Instances.AECActivator.BackgroundTransparency = 1
Instances.AECActivator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.AECActivator.TextColor3 = Color3.fromRGB(189, 189, 189)
Instances.AECActivator.Text = "Action Text"
Instances.AECActivator.TextSize = 17
Instances.AECActivator.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.AECAPadding.Name = "AECAPadding"
Instances.AECAPadding.Parent = Instances.AECActivator
Instances.AECAPadding.PaddingTop = UDim.new(0, 1)

Instances.GreyOut.Name = "GreyOut"
Instances.GreyOut.Parent = Instances.TabDisplay
Instances.GreyOut.ZIndex = 3
Instances.GreyOut.Size = UDim2.new(1, 0, 1, 0)
Instances.GreyOut.BackgroundTransparency = 1
Instances.GreyOut.BorderSizePixel = 0
Instances.GreyOut.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Instances.ColorPicker.Name = "ColorPicker"
Instances.ColorPicker.Parent = Instances.Elements
Instances.ColorPicker.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.ColorPicker.ZIndex = 10
Instances.ColorPicker.Size = UDim2.new(0, 281, 0, 212)
Instances.ColorPicker.Visible = false
Instances.ColorPicker.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.ColorPicker.BackgroundColor3 = Color3.fromRGB(16, 16, 16)

Instances.CPCorner.Name = "CPCorner"
Instances.CPCorner.Parent = Instances.ColorPicker

Instances.CPSHolder.Name = "CPSHolder"
Instances.CPSHolder.Parent = Instances.ColorPicker
Instances.CPSHolder.ZIndex = 10
Instances.CPSHolder.Size = UDim2.new(1, 0, 1, 0)
Instances.CPSHolder.BackgroundTransparency = 1
Instances.CPSHolder.BorderSizePixel = 0

Instances.CPSHImage.Name = "CPSHImage"
Instances.CPSHImage.Parent = Instances.CPSHolder
Instances.CPSHImage.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.CPSHImage.ZIndex = 0
Instances.CPSHImage.Size = UDim2.new(1, 47, 1, 47)
Instances.CPSHImage.BackgroundTransparency = 1
Instances.CPSHImage.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.CPSHImage.BorderSizePixel = 0
Instances.CPSHImage.ImageColor3 = Color3.fromRGB(0, 0, 0)
Instances.CPSHImage.ScaleType = Enum.ScaleType.Slice
Instances.CPSHImage.ImageTransparency = 0.11999999731779099
Instances.CPSHImage.Image = "rbxassetid://6014261993"
Instances.CPSHImage.SliceCenter = Rect.new(Vector2.new(49, 49), Vector2.new(450, 450))

Instances.CPDisplay.Name = "CPDisplay"
Instances.CPDisplay.Parent = Instances.ColorPicker
Instances.CPDisplay.ZIndex = 10
Instances.CPDisplay.Size = UDim2.new(0, 252, 0, 60)
Instances.CPDisplay.Position = UDim2.new(1, -267, 0, 45)
Instances.CPDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Instances.CPDCorner.Name = "CPDCorner"
Instances.CPDCorner.Parent = Instances.CPDisplay
Instances.CPDCorner.CornerRadius = UDim.new(0, 5)

Instances.CPColors.Name = "CPColors"
Instances.CPColors.Parent = Instances.ColorPicker
Instances.CPColors.ZIndex = 10
Instances.CPColors.Size = UDim2.new(0, 252, 0, 24)
Instances.CPColors.Position = UDim2.new(1, -267, 0, 113)
Instances.CPColors.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Instances.CPCCorner.Name = "CPCCorner"
Instances.CPCCorner.Parent = Instances.CPColors
Instances.CPCCorner.CornerRadius = UDim.new(0, 5)

Instances.CPCActivator.Name = "CPCActivator"
Instances.CPCActivator.Parent = Instances.CPColors
Instances.CPCActivator.ZIndex = 10
Instances.CPCActivator.Size = UDim2.new(1, 0, 1, 0)
Instances.CPCActivator.BackgroundTransparency = 1
Instances.CPCActivator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.CPCActivator.TextColor3 = Color3.fromRGB(0, 0, 0)
Instances.CPCActivator.Text = ""
Instances.CPCActivator.TextSize = 14
Instances.CPCActivator.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.UIGradient.Name = "UIGradient"
Instances.UIGradient.Parent = Instances.CPColors

Instances.CPPanel.Name = "CPPanel"
Instances.CPPanel.Parent = Instances.ColorPicker
Instances.CPPanel.ZIndex = 10
Instances.CPPanel.Size = UDim2.new(0, 280, 0, 32)
Instances.CPPanel.BackgroundTransparency = 1
Instances.CPPanel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Instances.CPBrightness.Name = "CPBrightness"
Instances.CPBrightness.Parent = Instances.ColorPicker
Instances.CPBrightness.ZIndex = 10
Instances.CPBrightness.Size = UDim2.new(0, 252, 0, 24)
Instances.CPBrightness.Position = UDim2.new(1, -267, 0, 144)
Instances.CPBrightness.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Instances.CPBCorner.Name = "CPBCorner"
Instances.CPBCorner.Parent = Instances.CPBrightness
Instances.CPBCorner.CornerRadius = UDim.new(0, 5)

Instances.UIGradient_2.Name = "UIGradient"
Instances.UIGradient_2.Parent = Instances.CPBrightness
Instances.UIGradient_2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})

Instances.CPDBActivator.Name = "CPDBActivator"
Instances.CPDBActivator.Parent = Instances.CPBrightness
Instances.CPDBActivator.ZIndex = 10
Instances.CPDBActivator.Size = UDim2.new(1, 0, 1, 0)
Instances.CPDBActivator.BackgroundTransparency = 1
Instances.CPDBActivator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.CPDBActivator.TextColor3 = Color3.fromRGB(0, 0, 0)
Instances.CPDBActivator.Text = ""
Instances.CPDBActivator.TextSize = 14
Instances.CPDBActivator.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.CPContinue.Name = "CPContinue"
Instances.CPContinue.Parent = Instances.ColorPicker
Instances.CPContinue.ZIndex = 10
Instances.CPContinue.Size = UDim2.new(0, 252, 0, 24)
Instances.CPContinue.Position = UDim2.new(1, -267, 0, 175)
Instances.CPContinue.BackgroundColor3 = Color3.fromRGB(27, 27, 27)

Instances.CPCCorner_2.Name = "CPCCorner"
Instances.CPCCorner_2.Parent = Instances.CPContinue
Instances.CPCCorner_2.CornerRadius = UDim.new(0, 5)

Instances.CPCActivator_2.Name = "CPCActivator"
Instances.CPCActivator_2.Parent = Instances.CPContinue
Instances.CPCActivator_2.ZIndex = 10
Instances.CPCActivator_2.Size = UDim2.new(1, 0, 1, 0)
Instances.CPCActivator_2.BackgroundTransparency = 1
Instances.CPCActivator_2.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
Instances.CPCActivator_2.TextColor3 = Color3.fromRGB(89, 89, 89)
Instances.CPCActivator_2.Text = "Continue"
Instances.CPCActivator_2.TextSize = 17
Instances.CPCActivator_2.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.CPTitle.Name = "CPTitle"
Instances.CPTitle.Parent = Instances.ColorPicker
Instances.CPTitle.AnchorPoint = Vector2.new(0.5, 0)
Instances.CPTitle.ZIndex = 10
Instances.CPTitle.Size = UDim2.new(1, 0, 0.094339706, 0)
Instances.CPTitle.BackgroundTransparency = 1
Instances.CPTitle.Position = UDim2.new(0.5, 0, 0.0460000001, 0)
Instances.CPTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.CPTitle.TextColor3 = Color3.fromRGB(221, 221, 221)
Instances.CPTitle.TextStrokeColor3 = Color3.fromRGB(49, 49, 49)
Instances.CPTitle.Text = "Color Picker"
Instances.CPTitle.TextSize = 22
Instances.CPTitle.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)



local gui = Instances.Window

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)


if UserInputService:GetPlatform() ~= Enum.Platform.Android or Enum.Platform.IOS then 
	Instances.MobileCloseButton = Instance.new("TextButton")
	Instances.MobileCloseButton.Parent = Instances.RainV2
	Instances.MobileCloseButton.Visible = true
	Instances.MobileCloseButton.Text = 'RainHub'
	Instances.MobileCloseButton.Size = UDim2.new(0, 82, 0, 26)
	Instances.MobileCloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Instances.MobileCloseButton.BackgroundTransparency = 0.25
	Instances.MobileCloseButton.Position = UDim2.new(0.858053505, 0, 0.24039863, 0)
	Instances.MobileCloseButton.BorderSizePixel = 0
	Instances.MobileCloseButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Instances.MobileCloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	Instances.MobileCloseButton.TextSize = 14
	Instances.MobileCloseButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)	
	Instances.MobileCloseButton.MouseButton1Click:Connect(function()
		Rain.Enabled = true
		Instances.MobileCloseButton.Visible = false
	end)

	Instances.UiScale.Scale = 0.5
else
	Instances.UiScale.Scale = 1
end

Instances.RainV2.Name = "rain"

function Interface:BeginMenu(menu_options)
	if not (Rain.Enabled) then
		Rain.Enabled = true
	end

	local menu_options = menu_options or {
		Title = menu_options.Title or "Rainhub V2"
	}

	Rain.Parent = cloneref(CoreGui) or game.Players.LocalPlayer.PlayerGui -- for poopy exploit support
	
	if Rain.Parent == game.Players.LocalPlayer.PlayerGui then
		Rain.ResetOnSpawn = false
		Rain.DisplayOrder = 999999999
	end -- for poopy cheats lols

	local ElementClasses = {}

	local info = TweenInfo.new(.2, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut)
	local ContainerOpen = false
	local Container = nil

	local Connections = {}

	local TextHoverColor = Color3.fromRGB(0, 79, 182)

	local ElementsEnabled = true
	local SearchShowing = false
	local WindowMinimised = false

	local pickerFrame = nil
	local currentSelectedCP = nil
	local colorPickerShowing = false

	local Window = Rain:WaitForChild("Window")
	local Elements = Window:WaitForChild("Elements")
	local WindowSHolder = Window:WaitForChild("WindowSHolder")
	local Navigation = Window:WaitForChild("Navigation")

	Elements.ClipsDescendants = true

	local GreyOut = nil

	Window.Position = UDim2.new(0.35, 0, 0.15, 0)

	if (Navigation:WaitForChild("WindowTitle")) then
		Navigation.WindowTitle.Text = menu_options.Title
	end

	if (Elements:WaitForChild("TabDisplay"):WaitForChild("GreyOut")) then
		GreyOut = Elements.TabDisplay.GreyOut
		GreyOut.BackgroundTransparency = 0
	end

	TweenService:Create(GreyOut, TweenInfo.new(.8, Enum.EasingStyle.Quart), {
		BackgroundTransparency = 1
	}):Play()

	local max_size = 21
	local sizes = {
		19,
		15,
		11
	}

	local hovering = false

	local p = Navigation.NavigationOptions
	local nol1, nol2, nol3 = p.NOLine1, p.NOLine2, p.NOLine3

	local function UpdateLines() 
		if (hovering and not ContainerOpen) then
			TweenService:Create(nol1, info, {
				Size = UDim2.new(0, max_size, 0, 4)
			}):Play()
			TweenService:Create(nol2, info, {
				Size = UDim2.new(0, max_size, 0, 4)
			}):Play()
			TweenService:Create(nol3, info, {
				Size = UDim2.new(0, max_size, 0, 4)
			}):Play()
			TweenService:Create(p.NOStroke, info, {
				Transparency = 0
			}):Play()
		elseif not (ContainerOpen) and not hovering then
			TweenService:Create(nol1, info, {
				Size = UDim2.new(0, sizes[1], 0, 4)
			}):Play()
			TweenService:Create(nol2, info, {
				Size = UDim2.new(0, sizes[2], 0, 4)
			}):Play()
			TweenService:Create(nol3, info, {
				Size = UDim2.new(0, sizes[3], 0, 4)
			}):Play()
			TweenService:Create(p.NOStroke, info, {
				Transparency = 1
			}):Play()
		end
	end

	if (Navigation:WaitForChild("NavigationOptions")) then
		p.MouseEnter:Connect(function() 
			if (WindowMinimised) then
				return
			end

			hovering = true
			UpdateLines()
		end)

		p.MouseLeave:Connect(function()
			if (WindowMinimised) then
				return
			end

			hovering = false
			UpdateLines()
		end)

		if (p:WaitForChild("NOActivator") and Navigation:WaitForChild("NavigationOptionsContainer")) then
			Container = Navigation.NavigationOptionsContainer
			local Debounce = false

			local function UpdateContainer()
				if (WindowMinimised) then
					return
				end

				if (ContainerOpen) then
					ElementsEnabled = false
					TweenService:Create(Container, info, {
						Position = UDim2.new(0.5, 0, 0, 63)
					}):Play()
					TweenService:Create(GreyOut, info, {
						BackgroundTransparency = 0.65
					}):Play()

					for i, e in pairs(Elements.TabDisplay:GetDescendants()) do 
						if (e:IsA("TextBox")) then
							e.Active = false
							e.TextEditable = false
						end
					end
				else
					ElementsEnabled = true
					TweenService:Create(Container, info, {
						Position = UDim2.new(0.5, 0, 0, 8)
					}):Play()
					TweenService:Create(GreyOut, info, {
						BackgroundTransparency = 1
					}):Play()

					for i, e in pairs(Elements.TabDisplay:GetDescendants()) do 
						if (e:IsA("TextBox")) then
							e.Active = true
							e.TextEditable = true
						end
					end
				end
			end

			p.NOActivator.MouseButton1Click:Connect(function()
				if (WindowMinimised) then
					return
				end

				if not (Debounce) then
					ContainerOpen = not ContainerOpen
					UpdateContainer()

					Debounce = true
					task.wait(.2)
					Debounce = false
				end
			end)
		end
	end

	local currentPage = nil
	local tabPageTemplate = nil
	local buttonTemplate = nil

	if (Navigation:WaitForChild("NavigationOptionsContainer"):WaitForChild("TabButtonDisplay"):WaitForChild("TBDContainer"):WaitForChild("TabButton")) then
		buttonTemplate = Navigation.NavigationOptionsContainer.TabButtonDisplay.TBDContainer.TabButton
		buttonTemplate.Visible = false
	end

	if (Elements:WaitForChild("TabDisplay"):WaitForChild("Tab1")) then
		tabPageTemplate = Elements.TabDisplay.Tab1
		tabPageTemplate.Visible = false
	end

	if (Navigation:WaitForChild("CloseInterface")) then
		local closeInterface = Navigation.CloseInterface
		
		closeInterface:FindFirstChild("CIStroke").Transparency = 1
		closeInterface:FindFirstChild("CIActivator").Position = UDim2.new(0.5, 0, 0.5, 0)

		Connections["close_enter"] = closeInterface.MouseEnter:Connect(function()
			if (WindowMinimised) then
				return
			end

			TweenService:Create(closeInterface:FindFirstChild("CIStroke"), info, {
				Transparency = 0
			}):Play()
		end)

		Connections["close_leave"] = closeInterface.MouseLeave:Connect(function()
			if (WindowMinimised) then
				return
			end

			TweenService:Create(closeInterface:FindFirstChild("CIStroke"), info, {
				Transparency = 1
			}):Play()
		end)

		Connections["close_interface"] = closeInterface:FindFirstChild("CIActivator").MouseButton1Click:Connect(function()
			if Instances.MobileCloseButton ~= nil and (not Instances.MobileCloseButton.Visible) then 
				Instances.MobileCloseButton.Visible = true
			end

			for i, v in pairs(Rain:GetDescendants()) do 
				if (v:IsA("Frame")) then
					TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 1
					}):Play()
				elseif (v:IsA("ImageLabel") or v:IsA("ImageButton")) then
					TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						ImageTransparency = 1
					}):Play()
				elseif (v:IsA("TextLabel") or v:IsA("TextButton")) then
					TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 1, TextStrokeTransparency = 1, BackgroundTransparency = 1
					}):Play()
				elseif (v:IsA("UIStroke")) then
					TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Transparency = 1
					}):Play()
				end
			end

			task.wait(.5)

			Rain.Enabled = false
			closebutton.Visible = false
			for i, v in pairs(Connections) do 
				v:Disconnect()
			end
		end)
	end

	if (Navigation:WaitForChild("SearchTab")) then
		local searchButton = Navigation:WaitForChild("SearchTab"):WaitForChild("STActivator")
		local searchBar = Navigation:WaitForChild("SearchContainer")

		Navigation:WaitForChild("SearchTab"):WaitForChild("STStroke").Transparency = 1

		searchBar.SCGrabber.BackgroundTransparency = 1

		local HiddenPosition = UDim2.new(0.5, 0, 0, 3)
		local HiddenSize = UDim2.new(1, -140, 0, 30)
		local ShowingPosition = UDim2.new(0.5, 0, 0, -50)
		local ShowingSize = UDim2.new(1, 0, 0, 30)

		local function UpdateSearchBar() 
			if (SearchShowing) then
				searchBar.SCInput.Visible = true

				TweenService:Create(searchBar, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Position = ShowingPosition, Size = ShowingSize
				}):Play()
			else
				TweenService:Create(searchBar, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Position = HiddenPosition, Size = HiddenSize
				}):Play()

				searchBar.SCInput.Visible = false

				searchBar.SCInput.Text = ""
				for i, comp in ipairs(currentPage:WaitForChild("TabElementContainer"):GetChildren()) do 
					if (comp:IsA("Frame")) then
						comp.Visible = true
					end
				end
			end
		end

		pcall(UpdateSearchBar)

		Connections["search_enter"] = Navigation:WaitForChild("SearchTab").MouseEnter:Connect(function()
			if (WindowMinimised) then
				return
			end

			TweenService:Create(Navigation:WaitForChild("SearchTab"):FindFirstChild("STStroke"), info, {
				Transparency = 0
			}):Play()
		end)

		Connections["search_leave"] = Navigation:WaitForChild("SearchTab").MouseLeave:Connect(function()
			if (WindowMinimised) then
				return
			end

			TweenService:Create(Navigation:WaitForChild("SearchTab"):FindFirstChild("STStroke"), info, {
				Transparency = 1
			}):Play()
		end)

		Connections["grabber_enter"] = searchBar.SCGrabber.MouseEnter:Connect(function()
			if (WindowMinimised) then
				return
			end

			TweenService:Create(searchBar.SCGrabber, info, {
				BackgroundTransparency = 0
			}):Play()
		end)

		Connections["grabber_leave"] = searchBar.SCGrabber.MouseLeave:Connect(function()
			if (WindowMinimised) then
				return
			end

			TweenService:Create(searchBar.SCGrabber, info, {
				BackgroundTransparency = 1
			}):Play()
		end)

		local Debounce = false
		Connections["show_s_bar"] = searchButton.MouseButton1Click:Connect(function()
			if (WindowMinimised) then
				return
			end

			if not (Debounce) then
				SearchShowing = not SearchShowing
				UpdateSearchBar()

				Debounce = true
				task.wait(.2)
				Debounce = false
			end
		end)

		Connections["filter_query"] = searchBar:WaitForChild("SCInput"):GetPropertyChangedSignal("Text"):Connect(function()
			if (WindowMinimised) then
				return
			end

			if not (SearchShowing) then
				return
			end

			local query = searchBar.SCInput.Text:lower()
			for i, comp in ipairs(currentPage:WaitForChild("TabElementContainer"):GetChildren()) do 
				--> Filter, and show the first result, show any that also match
				if (comp:IsA("Frame")) then
					local compName = comp:FindFirstChildOfClass("TextLabel")
					if (compName.Name:find("Title")) then
						local compText = compName.Text:lower()
						if (compText:find(query, 1, true)) then
							comp.Visible = true
						else
							comp.Visible = false
						end
					end
				end
			end
		end)

		Connections["clear_query"] = searchBar:WaitForChild("SCClearQuery").MouseButton1Click:Connect(function()
			if (WindowMinimised) then
				return
			end

			searchBar.SCInput.Text = ""
			for i, comp in ipairs(currentPage:WaitForChild("TabElementContainer"):GetChildren()) do 
				if (comp:IsA("Frame")) then
					comp.Visible = true
				end
			end
		end)

		coroutine.wrap(function()
			local dragging = false
			local dragInput, dragStart, startPos = nil, nil, nil

			local function UpdateDrag(input)
				local delta = input.Position - dragStart
				local newPosition = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)

				local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				TweenService:Create(searchBar, tweenInfo, { Position = newPosition }):Play()
			end

			Connections["drag_start"] = searchBar.InputBegan:Connect(function(input)
				if (WindowMinimised) then
					return
				end

				if (input.UserInputType == Enum.UserInputType.MouseButton1) and SearchShowing then
					dragging, dragStart, startPos = true, input.Position, searchBar.Position

					input.Changed:Connect(function()
						if (input.UserInputState == Enum.UserInputState.End) then
							dragging = false
						end
					end)
				end
			end)

			Connections["drag_move"] = searchBar.InputChanged:Connect(function(input)
				if (WindowMinimised) then
					return
				end

				if (input.UserInputType == Enum.UserInputType.MouseMovement) and SearchShowing then
					dragInput = input
				end
			end)

			Connections["drag_update"] = UserInputService.InputChanged:Connect(function(input)
				if (WindowMinimised) then
					return
				end

				if (input == dragInput and dragging) and SearchShowing then
					pcall(UpdateDrag, input)
				end
			end)
		end)()
	end

	if (Navigation:WaitForChild("MinimiseInterface")) then
		local miniContainer = Navigation.MinimiseInterface
		local miniActivator = miniContainer:WaitForChild("MIActivator")

		Connections["mini_enter"] = miniContainer.MouseEnter:Connect(function()
			TweenService:Create(miniContainer:FindFirstChildOfClass("UIStroke"), info, {
				Transparency = 0
			}):Play()
		end)

		Connections["mini_leave"] = miniContainer.MouseLeave:Connect(function()
			TweenService:Create(miniContainer:FindFirstChildOfClass("UIStroke"), info, {
				Transparency = 1
			}):Play()
		end)

		local i = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local function UpdateOnMinimised() 
			if (WindowMinimised) then
				local WindowTween = TweenService:Create(Window, i, {
					Size = UDim2.new(0, 450, 0, 60)
				})

				TweenService:Create(miniActivator, TweenInfo.new(.1), { ImageTransparency = 1 }):Play()
				miniActivator.Image = ElementProperties.Minimise.Enabled
				TweenService:Create(miniActivator, TweenInfo.new(.1), { ImageTransparency = 0 }):Play()

				WindowTween.Completed:Connect(function(playbackState)
					local accent = Navigation:FindFirstChild("NavigationAccentHolder"):FindFirstChild("NavigationAccent")
					TweenService:Create(accent.Parent, i, { Size = UDim2.new(1, 0, 0, 3) }):Play()          -- 7
					TweenService:Create(accent, i, { Size = UDim2.new(0, 0, 0, 1) }):Play()                 -- 1
					local optionExpand = Navigation:FindFirstChild("NavigationOptions")
					local searchTabs   = Navigation:FindFirstChild("SearchTab")

					for _, v in pairs(optionExpand:GetChildren()) do 
						if (v:IsA("Frame")) then
							TweenService:Create(v, i, { BackgroundTransparency = 1 }):Play()
						end
					end

					for _, v in pairs(searchTabs:GetChildren()) do 
						if (v:IsA("ImageButton")) then
							TweenService:Create(v, i, { ImageTransparency = 1 }):Play()
						end
					end

					local windowTitle = Navigation:FindFirstChild("WindowTitle")

					TweenService:Create(windowTitle, i, { Position = UDim2.new(0.038, 0, 0.036, 0) }):Play()

					if (SearchShowing) then
						SearchShowing = false

						TweenService:Create(searchBar, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
							Position = HiddenPosition, Size = HiddenSize
						}):Play()

						searchBar.SCInput.Visible = false

						searchBar.SCInput.Text = ""
						for i, comp in ipairs(currentPage:WaitForChild("TabElementContainer"):GetChildren()) do 
							if (comp:IsA("Frame")) then
								comp.Visible = true
							end
						end
					end
				end)

				WindowTween:Play()
			else
				local WindowTween = TweenService:Create(Window, i, {
					Size = UDim2.new(0, 450, 0, 500)
				})

				TweenService:Create(miniActivator, TweenInfo.new(.1), { ImageTransparency = 1 }):Play()
				miniActivator.Image = ElementProperties.Minimise.Disabled
				TweenService:Create(miniActivator, TweenInfo.new(.1), { ImageTransparency = 0 }):Play()

				WindowTween.Completed:Connect(function(playbackState)
					local accent = Navigation:FindFirstChild("NavigationAccentHolder"):FindFirstChild("NavigationAccent")
					TweenService:Create(accent.Parent, i, { Size = UDim2.new(1, 0, 0, 7) }):Play()          -- 7
					TweenService:Create(accent, i, { Size = UDim2.new(1, 0, 0, 1) }):Play()                 -- 1
					local optionExpand = Navigation:FindFirstChild("NavigationOptions")
					local searchTabs   = Navigation:FindFirstChild("SearchTab")
					for _, v in pairs(optionExpand:GetChildren()) do 
						if (v:IsA("Frame")) then
							TweenService:Create(v, i, { BackgroundTransparency = 0 }):Play()
						end
					end

					for _, v in pairs(searchTabs:GetChildren()) do 
						if (v:IsA("ImageButton")) then
							TweenService:Create(v, i, { ImageTransparency = 0 }):Play()
						end
					end

					local windowTitle = Navigation:FindFirstChild("WindowTitle")

					TweenService:Create(windowTitle, i, { Position = UDim2.new(0.131, 0, 0.036, 0) }):Play()
				end)

				WindowTween:Play()
			end
		end

		local Debounce = false
		Connections["mini_click"] = miniActivator.MouseButton1Click:Connect(function()
			if (SearchShowing) then
				return 
			end

			if (not Debounce) then
				WindowMinimised = not WindowMinimised
				UpdateOnMinimised()

				Debounce = true
				task.wait(.4)
				Debounce = false
			end
		end)
	end

	if (Elements:WaitForChild("ColorPicker")) then
		pickerFrame = Elements.ColorPicker

		for _, v in ipairs(pickerFrame:GetDescendants()) do 
			if (v:IsA("Frame")) then v.BackgroundTransparency = 1 end
			if (v:IsA("TextLabel")) then v.TextTransparency = 1 end
			if (v:IsA("TextButton")) then v.TextTransparency = 1 end
			if (v:IsA("ImageLabel")) then v.ImageTransparency = 1 end
		end

		pickerFrame.Visible = false

		local cDisplay = pickerFrame:WaitForChild("CPDisplay")
		local cColors = pickerFrame:WaitForChild("CPColors")
		local cBrightness = pickerFrame:WaitForChild("CPBrightness")

		cBrightness.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

		local numGradientColors = 360

		local function generateGradientColors()
			local colorSequence = ColorSequence.new{
				ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)), -- Red at the left side
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 0)), -- Green in the middle
				ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255)) -- Blue at the right side
			}

			cColors:FindFirstChildOfClass("UIGradient").Color = colorSequence
		end

		generateGradientColors()

		--> Update current color on color picker show.
		Connections["update_on_open"] = cDisplay:GetPropertyChangedSignal("BackgroundTransparency"):Connect(function()
			if (colorPickerShowing) then
				TweenService:Create(cDisplay, TweenInfo.new(.1, Enum.EasingStyle.Quad), {
					BackgroundColor3 = currentSelectedCP.Default
				}):Play()

				cBrightness:FindFirstChildOfClass("UIGradient").Color = ColorSequence.new(
				Color3.fromRGB(currentSelectedCP.Default.R,currentSelectedCP.Default.G,currentSelectedCP.Default.B,
					Color3.new(0, 0, 0)
				))
			end
		end)

		local function UpdateColorBrightness(posX, color, darkness)
			local sizeX = cBrightness.AbsoluteSize.X
			local offsetX = cBrightness.AbsolutePosition.X
			local normalizedX = (posX - offsetX) / sizeX

			-- Adjust the brightness of the selected color based on the darkness value (0-1)
			local newSelectedColor = color:Lerp(Color3.new(0, 0, 0), darkness)

			cBrightness:FindFirstChildOfClass("UIGradient").Color = ColorSequence.new{
				ColorSequenceKeypoint.new(0, newSelectedColor),
				ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
			}
		end

		local function UpdateColorChange(posX)
			local sizeX = cColors.AbsoluteSize.X
			local offsetX = cColors.AbsolutePosition.X
			local normalizedX = (posX - offsetX) / sizeX

			local colorSequence = cColors:FindFirstChild("UIGradient").Color
			local keypoints = colorSequence.Keypoints

			local k1, k2
			for i = 1, #keypoints - 1 do
				if keypoints[i + 1].Time >= normalizedX then
					k1 = keypoints[i]
					k2 = keypoints[i + 1]
					break
				end
			end

			local c1 = k1.Value
			local c2 = k2.Value
			local t1 = k1.Time
			local t2 = k2.Time

			local t = (normalizedX - t1) / (t2 - t1)
			local color = c1:Lerp(c2, t)

			local darkness = 0

			UpdateColorBrightness(posX, color, darkness)

			TweenService:Create(cDisplay, TweenInfo.new(.3, Enum.EasingStyle.Quad), {
				BackgroundColor3 = color
			}):Play()

			local suc, req = pcall(currentSelectedCP.OnChanged, color)
			assert(suc, req)
		end

		local darknessDragging = false

		Connections["update_color_brightness"] = cBrightness:WaitForChild("CPDBActivator").MouseButton1Down:Connect(function()
			if not colorPickerShowing then
				return
			end

			darknessDragging = true
		end)

		Connections["update_darkness"] = cBrightness.CPDBActivator.MouseMoved:Connect(function()
			if (darknessDragging) then
				local mouse = UserInputService:GetMouseLocation()
				local darkness = (mouse.X - cBrightness.AbsolutePosition.X) / cBrightness.AbsoluteSize.X

				darkness = math.clamp(darkness, 0, 1)

				local colorSequence = cBrightness:FindFirstChild("UIGradient").Color
				local keypoints = colorSequence.Keypoints

				local k1 = keypoints[1]
				local k2 = keypoints[#keypoints]

				local c1 = k1.Value
				local c2 = k2.Value
				local t1 = k1.Time
				local t2 = k2.Time

				local t = (darkness - t1) / (t2 - t1)
				local color = c1:Lerp(c2, t)

				TweenService:Create(cDisplay, TweenInfo.new(.3, Enum.EasingStyle.Quad), {
					BackgroundColor3 = color
				}):Play()

				local suc, req = pcall(currentSelectedCP.OnChanged, color)
				assert(suc, req)
			end
		end)

		Connections["update_darkness"] = cBrightness.CPDBActivator.MouseButton1Up:Connect(function() 
			if (darknessDragging) then
				darknessDragging = false
			end
		end)          

		Connections["update_darkness_leave"] = cBrightness.CPDBActivator.MouseLeave:Connect(function() 
			if (darknessDragging) then
				darknessDragging = false
			end
		end)          

		local dragging = false

		Connections["update_on_mouse"] = cColors:WaitForChild("CPCActivator").MouseButton1Down:Connect(function() 
			if not (colorPickerShowing) then
				return
			end

			dragging = true
			local mouse = UserInputService:GetMouseLocation()
			pcall(UpdateColorChange, mouse.X) 
		end)

		Connections["update_on_mouse_move"] = cColors:WaitForChild("CPCActivator").MouseMoved:Connect(function() 
			if not (colorPickerShowing and dragging) then
				return
			end

			local mouse = UserInputService:GetMouseLocation()
			pcall(UpdateColorChange, mouse.X) 
		end)

		Connections["update_on_mouse_leave"] = cColors:WaitForChild("CPCActivator").MouseButton1Up:Connect(function() 
			if not (colorPickerShowing) then
				return
			end

			if (dragging) then
				dragging = false
			end
		end)

		Connections["update_on_mouse_leave"] = cColors:WaitForChild("CPCActivator").MouseLeave:Connect(function() 
			if not (colorPickerShowing) then
				return
			end

			if (dragging) then
				dragging = false
			end
		end)

		Connections["continue_enter"] = pickerFrame:WaitForChild("CPContinue").MouseEnter:Connect(function()
			TweenService:Create(pickerFrame:WaitForChild("CPContinue").CPCActivator, TweenInfo.new(.2, Enum.EasingStyle.Quad), {
				TextColor3 = Color3.fromRGB(190, 190, 190)
			}):Play()
		end) 

		Connections["continue_leave"] = pickerFrame:WaitForChild("CPContinue").MouseLeave:Connect(function()
			TweenService:Create(pickerFrame:WaitForChild("CPContinue").CPCActivator, TweenInfo.new(.2, Enum.EasingStyle.Quad), {
				TextColor3 = Color3.fromRGB(89, 89, 89)
			}):Play()
		end) 

		Connections["continue_color_picker"] = pickerFrame:WaitForChild("CPContinue"):WaitForChild("CPCActivator").MouseButton1Click:Connect(function() 
			colorPickerShowing = false

			currentSelectedCP.Default = cDisplay.BackgroundColor3

			TweenService:Create(GreyOut, info, {
				BackgroundTransparency = 1
			}):Play()

			for _, v in ipairs(pickerFrame:GetDescendants()) do 
				if (v:IsA("Frame")) then TweenService:Create(v, info, { BackgroundTransparency = 1 }):Play() end
				if (v:IsA("TextLabel")) then TweenService:Create(v, info, { TextTransparency = 1 }):Play() end
				if (v:IsA("TextButton")) then TweenService:Create(v, info, { TextTransparency = 1 }):Play() end
				if (v:IsA("ImageLabel")) then TweenService:Create(v, info, { ImageTransparency = 1 }):Play() end
			end

			task.wait(info.DelayTime)

			pickerFrame.Visible = false
			ElementsEnabled = true
		end)
	end

	local TabHandler = {}
	local Tabs = {}

	local templates = Instance.new("Folder", Elements.TabDisplay)
	templates.Name = "Templates"

	if (Elements.TabDisplay.Tab1:WaitForChild("TabElementContainer")) then
		for i, v in pairs(Elements.TabDisplay.Tab1.TabElementContainer:GetChildren()) do 
			if (v:IsA("Frame")) then
				v.Visible = false
				v.Parent = templates
			end
		end
	end

	function TabHandler:BeginTab(TabName) 
		local tabClass = {
			Name = TabName,
			Showing = false,
			TabDisplay = nil,
			TabButton = nil
		}

		local cuh = Navigation.NavigationOptionsContainer.TabButtonDisplay.TBDContainer
		cuh.CanvasSize = UDim2.new(
			cuh.CanvasSize.X.Scale, cuh.CanvasSize.X.Offset + 25,
			0, 0
		)

		local tabButton = buttonTemplate:Clone()
		tabButton.Parent = Navigation.NavigationOptionsContainer.TabButtonDisplay.TBDContainer
		tabButton.Visible = true

		tabButton:WaitForChild("TabButtonTitle").Text = TabName

		tabClass.TabButton = tabButton

		local tabDisplay = tabPageTemplate:Clone()
		tabDisplay.Parent = Elements.TabDisplay
		tabDisplay.Name = TabName
		tabDisplay.Visible = false

		if (#Tabs == 0) then
			tabClass.Showing = true
			tabDisplay.Visible = true
			currentPage = tabDisplay
			local Text = tabButton:WaitForChild("TabButtonTitle")
			TweenService:Create(Text, info, {
				TextColor3 = ElementProperties.Accent
			}):Play()
		else
			tabClass.Showing = false
			tabDisplay.Visible = false
			currentPage = Tabs[1].TabDisplay
			local Text = tabButton:WaitForChild("TabButtonTitle")
			TweenService:Create(Text, info, {
				TextColor3 = Color3.fromRGB(179, 179, 179)
			}):Play()
		end

		tabClass.TabDisplay = tabDisplay

		local ElementHandler = {}

		local cuh2 = tabDisplay:WaitForChild("TabElementContainer")

		cuh2.CanvasSize = UDim2.new(0, 0, 1, 0)

		function ElementHandler:CreateBoolean(BooleanOptions) 
			local BooleanOptions = BooleanOptions or {
				Name = BooleanOptions.Name,
				Default = BooleanOptions.Default or false,
				OnChanged = BooleanOptions.OnChanged or function(v) print(v) end
			}

			cuh2.CanvasSize = cuh2.CanvasSize + UDim2.new(0, 0, 0, 50)

			local booleanClass = {
				Name = BooleanOptions.Name,
				Value = BooleanOptions.Enabled,
				UpdateState = BooleanOptions.UpdateState,
				Update = nil
			}

			local booleanTemplate = nil

			if (templates:WaitForChild("BooleanElement")) then
				booleanTemplate = templates:WaitForChild("BooleanElement")
				booleanTemplate.Visible = false
			end

			local booleanElement = booleanTemplate:Clone()
			booleanElement.Parent = tabDisplay:WaitForChild("TabElementContainer")
			booleanElement.Visible = true

			local booleanTitle = booleanElement:WaitForChild("BETitle")
			booleanTitle.Text = BooleanOptions.Name

			local booleanDisplay = booleanElement:WaitForChild("BEDisplay")
			local booleanIndicator = booleanDisplay:WaitForChild("BEIndicator")

			local Enabled = BooleanOptions.Enabled
			local EnabledColor = ElementProperties.Accent

			local function UpdateBooleanDisplay() 
				if (Enabled) then
					TweenService:Create(booleanDisplay, info, {
						ImageColor3 = EnabledColor
					}):Play()
					TweenService:Create(booleanIndicator, info, {
						Position = ElementProperties.Boolean.EnabledPosition
					}):Play()
				else
					TweenService:Create(booleanDisplay, info, {
						ImageColor3 = ElementProperties.Boolean.Disabled
					}):Play()
					TweenService:Create(booleanIndicator, info, {
						Position = ElementProperties.Boolean.DisabledPosition
					}):Play()
				end
			end

			pcall(UpdateBooleanDisplay)

			local Debounce = false
			local booleanButton = booleanDisplay:FindFirstChild("BEActivator")
			Connections["booleanbegin_c"] = booleanButton.MouseButton1Click:Connect(function()
				if not (ElementsEnabled) then
					return
				end
				-- print("ok")
				if not (Debounce) then
					Enabled = not Enabled
					local suc, req = pcall(BooleanOptions.OnChanged, Enabled)
					if not (suc) then
						error(req)
					end

					UpdateBooleanDisplay()

					Debounce = true
					task.wait(.2)
					Debounce = false
				end
			end)

			booleanClass.Type = "boolean"
			booleanClass.Update = function(Type, NewValue) 
				if not ((typeof(Type) == "string")) then
					return
				end 

				if ((Type == "Accent")) then
					EnabledColor = NewValue

					if (Enabled) then
						booleanDisplay.ImageColor3 = EnabledColor
					end
				end
			end

			booleanClass.UpdateState = function(new) 
				Enabled = new
				local suc, req = pcall(BooleanOptions.OnChanged, Enabled)
				if not (suc) then
					error(req)
				end

				UpdateBooleanDisplay()
			end

			table.insert(ElementClasses, booleanClass)
		end

		function ElementHandler:CreateSlider(SliderOptions) 
			local SliderOptions = SliderOptions or {
				Name = SliderOptions.Name,
				Range = SliderOptions.Range or { 0, 100 },
				Default = SliderOptions.Default or { 50 } or 50,
				OnChanged = SliderOptions.OnChanged or function(value) 
					print(value)
				end
			}

			cuh2.CanvasSize = cuh2.CanvasSize + UDim2.new(0, 0, 0, 50)

			local sliderClass = {
				Name = SliderOptions.Name,
				Value = SliderOptions.Default,
				UpdateState = nil,
				Update = nil
			}

			local sliderTemplate = nil

			if (templates:WaitForChild("SliderElement")) then
				sliderTemplate = templates.SliderElement
				sliderTemplate.Visible = false
			end

			local sliderElement = sliderTemplate:Clone()
			sliderElement.Parent = tabDisplay.TabElementContainer
			sliderElement.Visible = true

			local sliderTitle = sliderElement.SETitle
			sliderTitle.Text = SliderOptions.Name

			local sliderValue = sliderElement:WaitForChild("SEValue")
			local sliderFillFrame = sliderElement:WaitForChild("SEFillFrame")
			local sliderFill = sliderFillFrame:WaitForChild("SEFill")
			local sliderActivator = sliderFillFrame:WaitForChild("SEActivator")

			local min, max, default = SliderOptions.Range[1], SliderOptions.Range[2], (SliderOptions.Default[1] or SliderOptions.Default)
			local dragging, value = false, default

			local AccentColor = ElementProperties.Accent

			sliderValue.Text = string.format("%.2f", default) -- Adjust the decimal format as needed
			sliderValue.TextColor3 = AccentColor

			sliderFill.BackgroundColor3 = AccentColor

			default = default

			local function UpdateFill()
				local fillPercent = (value - min) / (max - min)
				sliderValue.Text = string.format("%.2f", value) -- Adjust the decimal format as needed
				TweenService:Create(sliderFill, TweenInfo.new(.1, Enum.EasingStyle.Quart), {
					Size = UDim2.new(fillPercent, 0, 1, 0)
				}):Play()
			end

			local function SetValue(newValue)
				value = math.clamp(newValue, min, max)
				pcall(UpdateFill)
				local suc, req = pcall(SliderOptions.OnChanged, value)
				if not suc then
					error(req)
				end
			end

			Connections["sliderbegin_c"] = sliderActivator.MouseButton1Down:Connect(function()
				if not ElementsEnabled then
					return
				end

				dragging = true
				local pos = UserInputService:GetMouseLocation()
				if dragging then
					local percent = (pos.X - sliderFillFrame.AbsolutePosition.X) / sliderFillFrame.AbsoluteSize.X
					local newValue = min + (max - min) * percent
					pcall(SetValue, newValue)
				end
			end)

			Connections["sliderend_c"] = sliderActivator.MouseButton1Up:Connect(function()
				if not ElementsEnabled then
					return
				end

				dragging = false
			end)

			Connections["sliderenc_c2"] = UserInputService.InputEnded:Connect(function(input, gameProcessedEvent)
				if input.UserInputType.Name == "MouseButton1" then
					if dragging then
						dragging = false
					end
				end
			end)

			Connections["slidermove_c"] = UserInputService.InputChanged:Connect(function(input, gameProcessedEvent)
				if not ElementsEnabled then
					return
				end

				if input.UserInputType == Enum.UserInputType.MouseMovement then
					local pos = UserInputService:GetMouseLocation()
					if dragging then
						local percent = (pos.X - sliderFillFrame.AbsolutePosition.X) / sliderFillFrame.AbsoluteSize.X
						local newValue = min + (max - min) * percent
						pcall(SetValue, newValue)
					end
				end
			end)


			sliderClass.Type = "slider"
			sliderClass.Update = function(Type, NewValue) 
				if not ((typeof(Type) == "string")) then
					return
				end 

				if ((Type == "Accent")) then
					AccentColor = NewValue

					sliderFill.BackgroundColor3 = AccentColor
					sliderValue.TextColor3 = AccentColor
				end
			end

			sliderClass.UpdateState = function(new_value) 
				pcall(SetValue, new_value)
			end

			pcall(SetValue, newValue)
			table.insert(ElementClasses, sliderClass)
		end

		function ElementHandler:CreateTextField(TextFieldOptions)
			local TextFieldOptions = TextFieldOptions or {
				Name = TextFieldOptions.Name or "Text Field Name",
				Default = TextFieldOptions.Default or "default",
				End = TextFieldOptions.End or "Clip",
				OnChanged = TextFieldOptions.OnChanged or function(text) 
					print(text)
				end
			}

			cuh2.CanvasSize = cuh2.CanvasSize + UDim2.new(0, 0, 0, 50)

			local textfieldClass = {
				Update = nil
			}

			local textfieldTemplate = nil

			if (templates:WaitForChild("TextElement")) then
				textfieldTemplate = templates.TextElement
				textfieldTemplate.Visible = false
			end

			local textfieldElement = textfieldTemplate:Clone()
			textfieldElement.Parent = tabDisplay.TabElementContainer
			textfieldElement.Visible = true

			local tefTitle = textfieldElement:WaitForChild("TETitle")
			tefTitle.Text = TextFieldOptions.Name

			local AccentColor = ElementProperties.Accent

			local Focused = false
			local tefInput = textfieldElement:WaitForChild("TEField"):WaitForChild("TEFInput")
			local tefStroke = textfieldElement:WaitForChild("TEField"):WaitForChild("TEFStroke")

			tefInput.ClearTextOnFocus = false

			local endType = function() 
				if (TextFieldOptions.End == "Clip") then
					textfieldElement:WaitForChild("TEField").ClipsDescendants = true
					textfieldElement:WaitForChild("TEField").TextTruncate = Enum.TextTruncate.None
				elseif (TextFieldOptions.End == "Truncate") then
					textfieldElement:WaitForChild("TEField").ClipsDescendants = false
					textfieldElement:WaitForChild("TEField").TextTruncate = Enum.TextTruncate.AtEnd
				end
			end

			tefInput.Active = ElementsEnabled

			pcall(endType)

			Connections["tef_began"] = tefInput.Focused:Connect(function()
				if not (ElementsEnabled) then
					return
				end

				Focused = true
				TweenService:Create(tefStroke, info, {
					Color = AccentColor
				}):Play()
			end)

			Connections["tef_lose"] = tefInput.FocusLost:Connect(function(enterPressed)
				if not (ElementsEnabled) then
					return
				end

				Focused = false
				TweenService:Create(tefStroke, info, {
					Color = Color3.fromRGB(26, 26, 26)
				}):Play()

				if (enterPressed) then
					local suc, req = pcall(TextFieldOptions.OnChanged, tefInput.Text)
					if not (suc) then
						error(req)
					end
				end
			end)

			textfieldClass.Type = "textfield"
			textfieldClass.Update = function(Type, NewValue) 
				if not ((typeof(Type) == "string")) then
					return
				end 

				if ((Type == "Accent")) then
					AccentColor = NewValue

					if (Focused) then
						tefStroke.Color = AccentColor
					end
				end
			end

			table.insert(ElementClasses, textfieldClass)
		end

		function ElementHandler:CreateDropdown(DropdownOptions) 
			local DropdownOptions = DropdownOptions or {
				Name = DropdownOptions.Name or "Dropdown",
				Options = DropdownOptions.Options or { "1", "2", "3" },
				Default = DropdownOptions.Default or { "1" } or "1",
				OnChanged = DropdownOptions.OnChanged or function(option) 
					print(option)
				end
			}

			cuh2.CanvasSize = cuh2.CanvasSize + UDim2.new(0, 0, 0, 50)

			local dropdownClass = {
				Update = nil
			}

			local dropdownTemplate = nil

			if (templates:WaitForChild("ComboElement")) then
				dropdownTemplate = templates.ComboElement
				dropdownTemplate.Visible = false
			end

			local dropdownElement = dropdownTemplate:Clone()
			dropdownElement.Parent = tabDisplay.TabElementContainer
			dropdownElement.Visible = true

			local ddTitle = dropdownElement["CETitle"]
			ddTitle.Text = DropdownOptions.Name

			local ddSelectedOption = dropdownElement["CEContainer"]["CESelectedOption"]
			local ddActivator = ddSelectedOption["CESOActivator"]
			local ddState = ddSelectedOption["CESOState"]

			local AccentColor = ElementProperties.Accent

			local ddOptionSize = 8
			local ddOptionOffset = 0
			local ddOptionsContainer = dropdownElement["CEOptions"]
			ddOptionsContainer.Position = UDim2.new(1, 300, 0, 75)
			ddOptionsContainer.Size = UDim2.new(0, 215, 0, ddOptionSize)
			ddOptionsContainer["CEOption"].Visible = false

			if (table.find(DropdownOptions.Options, DropdownOptions.Default[1]) or table.find(DropdownOptions.Options, DropdownOptions.Default)) then
				ddSelectedOption.Text = DropdownOptions.Default[1] or DropdownOptions.Default
			end

			local ddOptionTemplate = ddOptionsContainer["CEOption"]

			local Selected = DropdownOptions.Default[1] or DropdownOptions.Default
			local DropdownOpen = false

			local function UpdateContainerSize() 
				TweenService:Create(ddOptionsContainer, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					Size = UDim2.new(0, 215, 0, ddOptionSize)
				}):Play()
			end

			local function UpdateDropdown() 
				if (DropdownOpen) then
					TweenService:Create(ddState, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play()
					TweenService:Create(ddOptionsContainer, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Position = UDim2.new(1, -6, 0, 75)
					}):Play()
				else
					TweenService:Create(ddState, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play()
					TweenService:Create(ddOptionsContainer, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Position = UDim2.new(1, 300, 0, 75)
					}):Play()
				end
			end

			pcall(UpdateDropdown)

			local Debounce = false
			Connections["dd_activate"] = ddActivator.MouseButton1Click:Connect(function() 
				if (not Debounce) then
					DropdownOpen = not DropdownOpen
					pcall(UpdateDropdown)

					Debounce = true
					task.wait(.1)
					Debounce = false
				end
			end)

			coroutine.wrap(function() 
				for i, option in ipairs(DropdownOptions.Options) do 
					local newOption = ddOptionTemplate:Clone()
					newOption.Parent = ddOptionsContainer
					newOption.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
					newOption.Position = UDim2.new(0, 0, 0, ddOptionOffset)
					newOption.Visible = true

					newOption.Text = option

					Connections["mouse_enter_ddoption" .. tostring(i)] = newOption.MouseEnter:Connect(function() 
						TweenService:Create(newOption, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							BackgroundColor3 = Color3.fromRGB(18, 18, 18)
						}):Play()
					end)

					Connections["mouse_leave_ddoption" .. tostring(i)] = newOption.MouseLeave:Connect(function() 
						TweenService:Create(newOption, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							BackgroundColor3 = Color3.fromRGB(12, 12, 12)
						}):Play()
					end)

					Connections["mouse_click_ddoption" .. tostring(i)] = newOption["CEOActivator"].MouseButton1Click:Connect(function()
						ddSelectedOption.Text = option
						Selected = option

						for i, v in ipairs(ddOptionsContainer:GetChildren()) do 
							if v:IsA("TextLabel") then
								local optionText = v.Text
								local optionImage = v:WaitForChild("CEOImage")
								if optionText == Selected then
									TweenService:Create(optionImage, TweenInfo.new(.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
										ImageTransparency = 0
									}):Play()
								else
									TweenService:Create(optionImage, TweenInfo.new(.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
										ImageTransparency = 1
									}):Play()
								end
							end
						end                        

						local suc, req = pcall(DropdownOptions.OnChanged, option)
						assert(suc, req)
					end)

					ddOptionOffset += 20
					ddOptionSize += 20
					pcall(UpdateContainerSize)
				end

				local defaultOption = DropdownOptions.Default[1] or DropdownOptions.Default

				for i, v in ipairs(ddOptionsContainer:GetChildren()) do 
					if (v:IsA("TextLabel")) then
						local opt = v.Text
						local optImage = v:WaitForChild("CEOImage")
						local isDef = opt == defaultOption

						if (isDef) then
							TweenService:Create(v:WaitForChild("CEOImage"), TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								ImageTransparency = 0
							}):Play()
						else
							TweenService:Create(v:WaitForChild("CEOImage"), TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								ImageTransparency = 1
							}):Play()
						end
					end
				end
			end)()

			dropdownClass.Type = "dropdown"
			dropdownClass.Update = function(Type, NewValue) 
				if not ((typeof(Type) == "string")) then
					return
				end 

				if ((Type == "Accent")) then
					AccentColor = NewValue

					for i, v in ipairs(ddOptionsContainer:GetChildren()) do 
						if (v:IsA("TextLabel")) then
							v:WaitForChild("CEOImage").ImageColor3 = AccentColor
						end
					end
				end
			end

			table.insert(ElementClasses, dropdownClass)
		end

		function ElementHandler:CreateColorPicker(ColorPickerOptions) 
			local ColorPickerOptions = ColorPickerOptions or {
				Name = ColorPickerOptions.Name or "Color Picker",
				Default = ColorPickerOptions.Default or ElementProperties.Accent,
				OnChanged = ColorPickerOptions.OnChanged or function(color) 
					print(color.R, color.G, color.B)
				end
			}

			cuh2.CanvasSize = cuh2.CanvasSize + UDim2.new(0, 0, 0, 50)

			local colorpTemplate = nil

			if (templates:WaitForChild("ColorElement")) then
				colorpTemplate = templates.ColorElement
				colorpTemplate.Visible = false
			end

			local colorElement = colorpTemplate:Clone()
			colorElement.Parent = tabDisplay.TabElementContainer
			colorElement.Visible = true

			local colorTitle = colorElement:WaitForChild("CETitle")
			colorTitle.Text = ColorPickerOptions.Name

			Connections["ColorExpand"]  = colorElement:WaitForChild("CEExpand"):WaitForChild("arrow_forward").MouseButton1Click:Connect(function()
				if not (ElementsEnabled) then
					return
				end

				currentSelectedCP = ColorPickerOptions
				colorPickerShowing = true
				pickerFrame.Visible = true
				ElementsEnabled = false

				TweenService:Create(GreyOut, info, {
					BackgroundTransparency = 0.65
				}):Play()

				for _, v in ipairs(pickerFrame:GetDescendants()) do 
					if (v:IsA("Frame") and v.Name ~= "CPSHolder" and v.Name ~= "CPPanel") then TweenService:Create(v, info, { BackgroundTransparency = 0 }):Play() end
					if (v:IsA("TextLabel")) then TweenService:Create(v, info, { TextTransparency = 0 }):Play() end
					if (v:IsA("TextButton")) then TweenService:Create(v, info, { TextTransparency = 0 }):Play() end
					if (v:IsA("ImageLabel")) then TweenService:Create(v, info, { ImageTransparency = 0.12 }):Play() end
				end

				task.wait(.1)

				TweenService:Create(colorElement:WaitForChild("CEExpand"):WaitForChild("arrow_forward"), info, {
					Position = UDim2.new(0.5, 0, 0.5, 0), ImageColor3 = Color3.fromRGB(65, 65, 65)
				}):Play()
			end)

			Connections["ColorEnter"] = colorElement:WaitForChild("CEExpand"):WaitForChild("arrow_forward").MouseEnter:Connect(function()
				if not (ElementsEnabled) then
					return
				end

				TweenService:Create(colorElement:WaitForChild("CEExpand"):WaitForChild("arrow_forward"), info, {
					Position = UDim2.new(0.5, 4, 0.5, 0), ImageColor3 = Color3.fromRGB(97, 97, 97)
				}):Play()
			end)

			Connections["ColorLeave"] = colorElement:WaitForChild("CEExpand"):WaitForChild("arrow_forward").MouseLeave:Connect(function()
				if not (ElementsEnabled) then
					return
				end

				TweenService:Create(colorElement:WaitForChild("CEExpand"):WaitForChild("arrow_forward"), info, {
					Position = UDim2.new(0.5, 0, 0.5, 0), ImageColor3 = Color3.fromRGB(65, 65, 65)
				}):Play()
			end)
		end

		function ElementHandler:CreateAction(ActionOptions) 
			local ActionOptions = ActionOptions or {
				Name = ActionOptions.Name or "Action Name",
				OnClick = ActionOptions.OnClick or function() 
					print("Hello, world!")
				end
			}

			cuh2.CanvasSize = cuh2.CanvasSize + UDim2.new(0, 0, 0, 50)

			local actionTemplate = nil

			if (templates:WaitForChild("ActionElement")) then
				actionTemplate = templates.ActionElement
				actionTemplate.Visible = false
			end

			local actionElement = actionTemplate:Clone()
			actionElement.Parent = tabDisplay.TabElementContainer
			actionElement.Visible = true

			local actionContainer = actionElement:FindFirstChild("AEContainer")
			local actionActivator = actionContainer:FindFirstChild("AECActivator")

			actionActivator.Text = ActionOptions.Name

			Connections["ActionMouseEnter"] = actionContainer.MouseEnter:Connect(function()
				if not (ElementsEnabled) then
					return
				end

				TweenService:Create(actionContainer, info, {
					BackgroundColor3 = Color3.fromRGB(21, 21, 21)
				}):Play()
			end)

			Connections["ActionMouseLeave"] = actionContainer.MouseLeave:Connect(function()
				if not (ElementsEnabled) then
					return
				end

				TweenService:Create(actionContainer, info, {
					BackgroundColor3 = Color3.fromRGB(16, 16, 16)
				}):Play()
			end)

			Connections["ActionMouseClick"] = actionActivator.MouseButton1Click:Connect(function()
				if not ElementsEnabled then
					return
				end

				local success, request = pcall(ActionOptions.OnClick)
				assert(success, request)
			end)            
		end

		tabButton.MouseEnter:Connect(function()
			if (tabButton:WaitForChild("TabButtonTitle")) and not tabClass.Showing and ContainerOpen then
				local Text = tabButton:WaitForChild("TabButtonTitle")
				TweenService:Create(Text, info, {
					TextColor3 = TextHoverColor
				}):Play()
			end
		end)

		tabButton.MouseLeave:Connect(function()
			if (tabButton:WaitForChild("TabButtonTitle")) and not tabClass.Showing and ContainerOpen then
				local Text = tabButton:WaitForChild("TabButtonTitle")
				TweenService:Create(Text, info, {
					TextColor3 = Color3.fromRGB(179, 179, 179)
				}):Play()
			end
		end)

		tabButton.TabButtonActivator.MouseButton1Click:Connect(function()
			if not (tabClass.Showing) and ContainerOpen then
				tabClass.Showing = true
				tabDisplay.Visible = true
				currentPage = tabDisplay
				local Text = tabButton:WaitForChild("TabButtonTitle")
				TweenService:Create(Text, info, {
					TextColor3 = ElementProperties.Accent
				}):Play()

				for _, v in pairs(Tabs) do 
					if v ~= tabClass and v.Showing then
						v.Showing = false
						v.TabDisplay.Visible = false
						TweenService:Create(v.TabButton:WaitForChild("TabButtonTitle"), info, {
							TextColor3 = Color3.fromRGB(179, 179, 179)
						}):Play()
					end
				end
			end
		end)

		table.insert(Tabs, tabClass)
		return ElementHandler
	end

	coroutine.wrap(function() 
		local dragging = false
		local dragInput, dragStart, startPos = nil, nil, nil

		local function UpdateDrag(input)
			local delta = input.Position - dragStart
			local newPosition = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)

			local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			TweenService:Create(Window, tweenInfo, { Position = newPosition }):Play()
		end

		Connections["drag_start"] = Navigation.InputBegan:Connect(function(input) 
			if (input.UserInputType == Enum.UserInputType.MouseButton1) then
				dragging, dragStart, startPos = true, input.Position, Window.Position

				input.Changed:Connect(function()
					if (input.UserInputState == Enum.UserInputState.End) then
						dragging = false
					end
				end)
			end
		end)

		Connections["drag_move"] = Navigation.InputChanged:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement) then
				dragInput = input
			end
		end)

		Connections["drag_update"] = UserInputService.InputChanged:Connect(function(input)
			if (input == dragInput and dragging) then
				pcall(UpdateDrag, input)
			end
		end)
	end)()

	task.defer(function()
		local RainbowAccent = false
		local Settings = TabHandler:BeginTab("Settings")

		local rainbowThread = nil

		local rainbowThread = nil

		Settings:CreateBoolean({
			Name = "Rainbow Accent",
			Default = false,
			OnChanged = function(value)
				RainbowAccent = value
				local hue = 0
				local saturation = 1
				local lightness = 0.5
				local step = 0.01

				if value then
					rainbowThread = RunService.Heartbeat:Connect(function()
						if value then
							hue = hue + step
							if hue > 1 then
								hue = 0
							end

							local function hueToRgb(p, q, t)
								if t < 0 then
									t = t + 1
								end
								if t > 1 then
									t = t - 1
								end
								if t < 1 / 6 then
									return p + (q - p) * 6 * t
								end
								if t < 1 / 2 then
									return q
								end
								if t < 2 / 3 then
									return p + (q - p) * (2 / 3 - t) * 6
								end
								return p
							end

							local function hslToRgb(h, s, l)
								local r, g, b

								if s == 0 then
									r, g, b = l, l, l
								else
									local q = l < 0.5 and l * (1 + s) or l + s - l * s
									local p = 2 * l - q
									r = hueToRgb(p, q, h + 1 / 3)
									g = hueToRgb(p, q, h)
									b = hueToRgb(p, q, h - 1 / 3)
								end

								return math.floor(r * 255), math.floor(g * 255), math.floor(b * 255)
							end

							local rainbowColor = Color3.fromRGB(hslToRgb(hue, saturation, lightness))

							TextHoverColor = rainbowColor

							for _, k in ipairs(ElementClasses) do
								k.Update("Accent", rainbowColor)
							end

							task.wait(.01)
						end
					end)
				else
					if rainbowThread then
						rainbowThread:Disconnect()
					end
				end
			end
		})


		Settings:CreateColorPicker({ Name = "Accent Color", Default = ElementProperties.Accent, OnChanged = function(color) 
			if not (RainbowAccent) then
				ElementProperties.Accent = color

				for i, k in ipairs(ElementClasses) do 
					k.Update("Accent", color)
				end
			end
		end })

		Settings:CreateColorPicker({ Name = "Text Hover Color", Default = ElementProperties.Accent, OnChanged = function(color) 
			if not (RainbowAccent) then
				TextHoverColor = color
			end
		end })
	end)

	return TabHandler
end

return Interface







