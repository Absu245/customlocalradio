--TRANSPARENCY CUSTOM RADIO FULL SCRIPTED BY Ovataticool
--I know my lua is bad but i scripted it solo
--Radio is full optimizated for local
--Level needed 2
--Functions needed: no
boombox = Instance.new('Tool')
boombox.Name = 'BoomBox'
boombox.Parent = game.Players.LocalPlayer.Backpack
mesh = Instance.new('Part')
mesh.Parent = boombox
mesh.Name = 'Handle'
mesh.Size = Vector3.new(3.2, 1.6, 1.2)
mesh.Transparency = 0.7
localscript = Instance.new('LocalScript')
localscript.Parent = boombox
localscript.Name = 'BoomBox Script'
--Boombox UI
local BoomboxUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")
local TextBoxVolume = Instance.new("TextBox")
local UICorner_5 = Instance.new("UICorner")
local TextBoxSpeed = Instance.new("TextBox")
local UICorner_6 = Instance.new("UICorner")

BoomboxUI.Name = "Boombox UI"
BoomboxUI.Parent = boombox
BoomboxUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = BoomboxUI
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Frame.BackgroundTransparency = 0.700
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.46813187, 0)
Frame.Size = UDim2.new(0, 412, 0, 307)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TextLabel.BackgroundTransparency = 0.300
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0436893217, 0, 0.059288539, 0)
TextLabel.Size = UDim2.new(0, 375, 0, 39)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Boombox by ovataticool"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner.Parent = TextLabel

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextBox.BackgroundTransparency = 0.400
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.208737865, 0, 0.224760368, 0)
TextBox.Size = UDim2.new(0, 239, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Here is ID"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UICorner_2.Parent = TextBox

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
TextButton.BackgroundTransparency = 0.300
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.257281542, 0, 0.847085655, 0)
TextButton.Size = UDim2.new(0, 200, 0, 37)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Apply"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_3.Parent = TextButton

UICorner_4.Parent = Frame

TextBoxVolume.Name = "TextBoxVolume"
TextBoxVolume.Parent = Frame
TextBoxVolume.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextBoxVolume.BackgroundTransparency = 0.400
TextBoxVolume.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBoxVolume.BorderSizePixel = 0
TextBoxVolume.Position = UDim2.new(0.208737865, 0, 0.417731464, 0)
TextBoxVolume.Size = UDim2.new(0, 239, 0, 50)
TextBoxVolume.Font = Enum.Font.SourceSans
TextBoxVolume.PlaceholderText = "Here is Volume"
TextBoxVolume.Text = ""
TextBoxVolume.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBoxVolume.TextScaled = true
TextBoxVolume.TextSize = 14.000
TextBoxVolume.TextWrapped = true

UICorner_5.Parent = TextBoxVolume

TextBoxSpeed.Name = "TextBoxSpeed"
TextBoxSpeed.Parent = Frame
TextBoxSpeed.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextBoxSpeed.BackgroundTransparency = 0.400
TextBoxSpeed.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBoxSpeed.BorderSizePixel = 0
TextBoxSpeed.Position = UDim2.new(0.208737865, 0, 0.616910458, 0)
TextBoxSpeed.Size = UDim2.new(0, 239, 0, 50)
TextBoxSpeed.Font = Enum.Font.SourceSans
TextBoxSpeed.PlaceholderText = "Here is Speed"
TextBoxSpeed.Text = ""
TextBoxSpeed.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBoxSpeed.TextScaled = true
TextBoxSpeed.TextSize = 14.000
TextBoxSpeed.TextWrapped = true

UICorner_6.Parent = TextBoxSpeed
TextButton.MouseButton1Click:Connect(function()
	if mesh:FindFirstChild('Sound') then mesh:FindFirstChild('Sound'):Destroy() else
	snd = Instance.new('Sound')
	snd.SoundId = 'rbxassetid://'..TextBox.Text
	snd.Parent = mesh
	if TextBoxVolume.Text == '' then else
	snd.Volume = TextBoxVolume.Text
	end
	if TextBoxSpeed.Text == '' then else
		snd.PlaybackSpeed = TextBoxSpeed.Text
	end
	snd.Looped = true
	snd:Play()
	BoomboxUI.Parent = boombox
	end
end)
boombox.Equipped:Connect(function(eq)
	if _G.fakeradio then _G.fakeradio:Destroy() end
	BoomboxUI.Parent = game.Players.LocalPlayer.PlayerGui
end)

boombox.Unequipped:Connect(function(eq)
	BoomboxUI.Parent = boombox
	_G.fakeradio = mesh:Clone()
	_G.fakeradio.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	_G.fkacc = true
	if mesh:FindFirstChild('Sound') then
		mesh.Sound:Destroy()
		end
	while task.wait() and _G.fkacc do
		_G.fakeradio.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,0.6)
	end
end)
