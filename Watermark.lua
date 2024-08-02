local ChadWaterMark = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local TextLabel_2 = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

ChadWaterMark.Name = "ChadWatermark"
ChadWaterMark.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ChadWaterMark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ChadWaterMark.ResetOnSpawn = false

TextLabel.Parent = ChadWaterMark
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.000772226602, 0, 0.0343558267, 0)
TextLabel.Size = UDim2.new(0.170134634, 0, 0.0700389072, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "TwiWare"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 28
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.MouseButton1Down:Connect(function()
end)

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromHSV(0, 1, 1)), -- Red
    ColorSequenceKeypoint.new(0.16, Color3.fromHSV(30, 1, 1)), -- Orange
    ColorSequenceKeypoint.new(0.33, Color3.fromHSV(60, 1, 1)), -- Yellow
    ColorSequenceKeypoint.new(0.50, Color3.fromHSV(120, 1, 1)), -- Green
    ColorSequenceKeypoint.new(0.66, Color3.fromHSV(240, 1, 1)), -- Blue
    ColorSequenceKeypoint.new(0.83, Color3.fromHSV(270, 1, 1)), -- Indigo
    ColorSequenceKeypoint.new(1.00, Color3.fromHSV(300, 1, 1)) -- Violet
}
UIGradient.Parent = TextLabel

TextLabel_2.Parent = TextLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.000772226602, 0, 0.67410934, 0)
TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "V2"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 255, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 24
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_2.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromHSV(0, 1, 1)), -- Red
    ColorSequenceKeypoint.new(0.16, Color3.fromHSV(30, 1, 1)), -- Orange
    ColorSequenceKeypoint.new(0.33, Color3.fromHSV(60, 1, 1)), -- Yellow
    ColorSequenceKeypoint.new(0.50, Color3.fromHSV(120, 1, 1)), -- Green
    ColorSequenceKeypoint.new(0.66, Color3.fromHSV(240, 1, 1)), -- Blue
    ColorSequenceKeypoint.new(0.83, Color3.fromHSV(270, 1, 1)), -- Indigo
    ColorSequenceKeypoint.new(1.00, Color3.fromHSV(300, 1, 1)) -- Violet
}
UIGradient_2.Parent = TextLabel_2

UITextSizeConstraint.Parent = TextLabel_2
UITextSizeConstraint.MaxTextSize = 24

UITextSizeConstraint_2.Parent = TextLabel
UITextSizeConstraint_2.MaxTextSize = 27

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
end)
