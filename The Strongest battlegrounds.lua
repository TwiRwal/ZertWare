-- Hello Skid Bitches | TwiWare On Top
-- Made & Obfuscated By TwiRwal / SumitScripts

Wait(0.2)
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Consistt/Ui/main/UnLeaked"))()
library.rank = "User"
library.version = "3.4"

local Wm = library:Watermark("TwiWare | v" .. library.version ..  " | R: " .. library.rank)

local FpsWm = Wm:AddWatermark("fps: " .. library.fps)

coroutine.wrap(function()

    while wait(.75) do

        FpsWm:Text("fps: " .. library.fps)

    end

end)()



local Notif = library:InitNotifications()



for i = 2,0,-1 do 

    task.wait(0.05)

    local LoadingXSX = Notif:Notify("TwiWare On Top", 3, "alert") -- notification, alert, error, success, information

end 

local FinishedLoading = Notif:Notify("And Thanks Enjoy The Script :D", 4, "success")


--// Fractions
local Players = game:GetService("Players")

local Client = Players.LocalPlayer
local Character = Client.Character
local Humanoid = Character:WaitForChild("Humanoid")
local RootPart = Character:WaitForChild("HumanoidRootPart")

local Camera = workspace.CurrentCamera

local Locations = {
	["Void"] = CFrame.new(376.597, 335.452, -60.091),
	["Death Cutscene"] = CFrame.new(-65.857, 36.001, 20382.965),
	["Main Map"] = CFrame.new(124.683, 440.756, -34.319),
	["Atomic Slash Room"] = CFrame.new(1077.489, 141.941, 23021.76),
	["Baseplate"] = CFrame.new(1077.489, 141.941, 23021.76),
}

local Settings = {
	NoStun = false,
	ESP = false,
	NoRagdoll = false,
}

local RagdollInstances = {
	"Ragdoll",
	"RagdollSim",
}

local StunInstances = {
	"Freeze",
	"Slowed",
	"NoJump",
	"NoBlock",
	"ComboStun",
	"NoVel",
	"LaunchEnded",
	"StopRunning",
}

local function ApplyNoStun()
	while task.wait() do
		if (Settings.NoStun == false) then
			break
		end
		
		RootPart.Anchored = false
		
		for index, Value in pairs(Character:GetChildren()) do
			if (table.find(StunInstances, Value.Name)) then
				Value:Destroy()
			end
		end
	end
end

local function ApplyNoRagdoll()
	while task.wait() do
		if (Settings.NoRagdoll == false) then
			break
		end
		
		for index, Value in pairs(Character:GetChildren()) do
			if (table.find(RagdollInstances, Value.Name)) then
				Value:Destroy()
			end
		end
	end
end

local function ApplyESP()
	while task.wait() do
		if (Settings.ESP == false) then
			break
		end

		for index, Value in pairs(Players:GetPlayers()) do
			if (Value ~= Client) then
				local ESP = Instance.new("Highlight", Value.Character);

				ESP.Name = "ESP"
			end
		end
	end
end

local function UnapplyESP()
	while task.wait() do
		if (Settings.ESP == true) then
			break
		end

		for index, Player in pairs(Players:GetPlayers()) do
			if (Player ~= Client) then
				for _, Value in pairs(Player.Character:GetChildren()) do
					if (Value:IsA("Highlight") and Value.Name == "ESP") then
						Value:Destroy()
					end
				end
			end
		end
	end
end

--// Main Plate

local  Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("TwiWare - The Strongest battlegrounds", "DarkTheme")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Player")

Section:NewButton("Speed Boost", "Boosts your speed by 5% using CFrame", function()
    function isNumber(str)
 
  if tonumber(str) ~= nil or str == 'inf' then
 
    return true
 
  end
 
end
 
local tspeed = 0.3
 
local hb = game:GetService("RunService").Heartbeat
 
local tpwalking = true
 
local player = game:GetService("Players")
 
local lplr = player.LocalPlayer
 
local chr = lplr.Character
 
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
 
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
 
  if hum.MoveDirection.Magnitude > 0 then
 
    if tspeed and isNumber(tspeed) then
 
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
 
    else
 
      chr:TranslateBy(hum.MoveDirection)
 
    end
 
  end
 
end
end)

Section:NewToggle("Field of View (Fov)", "Fov Camera", function(state)
    if state then
        game.Workspace.CurrentCamera.FieldOfView = 120
    else
        game.Workspace.CurrentCamera.FieldOfView = 80
    end
end)

Section:NewToggle("Player Esp", "For See Players, Name ,Tags", function(state)
    			if (Settings.ESP == false) then
				Settings.ESP = true
				
				ApplyESP()
			else
				Settings.ESP = false
				
				UnapplyESP()
			end
end)

Section:NewToggle("esp with names", "esp", function(bool)
    if bool then
        for i,v in pairs(game.CoreGui:GetChildren()) do
            if v.Name == "playeresp" then
                v:Destroy()
            end
        end
        local folder = Instance.new("Folder")
        folder.Parent = game.CoreGui
        folder.Name = "playeresp"
        for i,v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer then
                for i,v in pairs(v.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        local box = Instance.new("BoxHandleAdornment")
                        box.Parent = folder
                        box.Color3 = v.Color
                        box.Size = v.Size
                        box.ZIndex = 10
                        box.Adornee = v
                        box.Name = v.Name
                        box.AlwaysOnTop = true
                        box.Visible = true
                        box.Transparency = 0.5
                    end
                end
            end
        end
        getgenv().textloop = bool
        for i,v in pairs(game.CoreGui:GetChildren()) do
            if v.Name == "playeresptexttest" then
                v:Destroy()
            end
        end
        wait(1)
        local folder = Instance.new("Folder")
        folder.Parent = game.CoreGui
        folder.Name = "playeresptext"
        for i,v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character.Head and v.Character.Humanoid then
                local bbgui = Instance.new("BillboardGui")
                bbgui.Name = "playeresptext"
                bbgui.Adornee = v.Character.Head
                bbgui.Parent = folder
                bbgui.AlwaysOnTop = true
                bbgui.Name = v.Name
                bbgui.Size = UDim2.new(0, 500, 0, 10)
                local text = Instance.new("TextLabel")
                text.Parent = bbgui
                text.TextSize = 10
                text.Name = v.Name
                text.Size = UDim2.new(0, 500, 0, 10)
                text.BackgroundTransparency = 1
                text.TextColor3 = Color3.fromRGB(v.TeamColor.Color.R*255,game.Players.LocalPlayer.TeamColor.Color.G*255,game.Players.LocalPlayer.TeamColor.Color.B*255)
				text.Text = ("Name: ".. v.Name.. " Health: ".. math.floor(v.Character.Humanoid.Health).. " Studs: ".. math.floor(game.Players.LocalPlayer:DistanceFromCharacter(v.Character.HumanoidRootPart.Position)))
				function textloop()
                    spawn(function()
                        while getgenv().textloop do
                            if v ~= game.Players.LocalPlayer and v.Character.Head and v.Character.Humanoid then
								text.Text = ("Name: ".. v.Name.. " Health: ".. math.floor(v.Character.Humanoid.Health).. " Studs: ".. math.floor(game.Players.LocalPlayer:DistanceFromCharacter(v.Character.HumanoidRootPart.Position)))
								wait()
                            end
                        end
                    end)
                end
                if getgenv().textloop then
                    textloop()
                end
            end
        end
    else
        wait(.1)
        for i,v in pairs(game.CoreGui:GetChildren()) do
            if v.Name == "playeresp" then
                v:Destroy()
            end
        end
        wait(.1)
        for i,v in pairs(game.CoreGui:GetChildren()) do
            if v.Name == "playeresptext" then
                v:Destroy()
            end
        end
    end
end)

Section:NewToggle("NoRagDoll (NRD)", "For No Ragdoll (glitched)", function(state)
    			if (Settings.NoRagdoll == false) then
				print("NoRagdoll true")
				Settings.NoRagdoll = true
				
				ApplyNoRagdoll()
			else
				warn("NoRagdoll false")
				Settings.NoRagdoll = false
			end
end)

Section:NewToggle("NoStun", "For No Stun same place or freeze", function(state)
    			if (Settings.NoStun == false) then
				print("NoStun true")
				Settings.NoStun = true
				
				ApplyNoStun()
			else
				print("NoStun false")
				Settings.NoStun = false
			end
end)

local Section = Tab:NewSection("BlackFlashes (Not FE)")

Section:NewButton("Black Flash", "Activates a massive black flash effect", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/kMZJF27h"))()
end)

Section:NewButton("Black Flash AURA", "Can't be disabled, just rejoin", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/4jVHNua4"))()
end)

local Tab = Window:NewTab("Teleportation")
local Section = Tab:NewSection("teleports")

Section:NewButton("Death Counter CutScene", "teleport", function()
    		RootPart.CFrame = Locations["Death Cutscene"]
end)
Section:NewButton("Main Map", "Can't be disabled, just rejoin", function()
    		RootPart.CFrame = Locations["Main Map"]
end)
Section:NewButton("Baseplate", "Can't be disabled, just rejoin", function()
    RootPart.CFrame = Locations.Baseplate
end)
Section:NewButton("Atomic Slash", "Can't be disabled, just rejoin", function()
    RootPart.CFrame = Locations["Atomic Slash Room"]
end)
local Section = Tab:NewSection("You can kill players with this")
Section:NewButton("Void (Use Flowing Water From Hero Hunter)", "sadly you can't get kills", function()
    		RootPart.CFrame = Locations.Void
end)

local Tab = Window:NewTab("Emotes")
local Section = Tab:NewSection("Emote")

Section:NewButton("Applause", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://14056379526"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Kneel", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://13721154327"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("L", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://18231574269"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Bully", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://14014580605"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Sleepy", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://14348083862"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Bring it", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://13801083337"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Tornado", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://18459285150"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)

local Tab = Window:NewTab("Aminations")
local Section = Tab:NewSection("Spawn Animations")
Section:NewButton("The Strongest Hero", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957366251"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Hero Hunter", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957376722"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Destructive Cyborg", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957374019"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Deadly Ninja", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957361339"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Brutal Demon", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957371124"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Blade Master", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15983615423"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Martial Artists", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://18435303746"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
local Section = Tab:NewSection("Ultimates")
Section:NewButton("The Strongest Hero", "SERIOUS MODE", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://12447707844"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Hero Hunter", "RAMPAGE", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://12342141464"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Destructive Cyborg", "MAXIMUM ENERGY OUTPUT", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://12772543293"

local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()

end)

Section:NewButton("Deadly Ninja", "SPEED OF SOUND", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://13499771836"

local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()
wait(2.3)
game.Players.LocalPlayer.Character.Head.Transparency = 1
game.Players.LocalPlayer.Character.Torso.Transparency = 1
game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
game.Players.LocalPlayer.Character.Head.face.Transparency = 1
wait(2)
game.Players.LocalPlayer.Character.Head.Transparency = 0
game.Players.LocalPlayer.Character.Torso.Transparency = 0
game.Players.LocalPlayer.Character["Left Arm"].Transparency = 0
game.Players.LocalPlayer.Character["Right Arm"].Transparency = 0
game.Players.LocalPlayer.Character["Left Leg"].Transparency = 0
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0
game.Players.LocalPlayer.Character.Head.face.Transparency = 0
local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://13497875049"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()
end)
Section:NewButton("Brutal Demon", "PUMPED UP", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://14733282425"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Blade Master", "SCORCHING BLADE", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://15391323441"

local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()

end)
Section:NewButton("Wild Psychic", "BERSERK", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://16734584478"

local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()

end)
Section:NewButton("KJ", "20 SERIES", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QSQysq1J"))()
end)

local plr = game.Players.LocalPlayer
local plr = game.Players.LocalPlayer
local hotbar = plr.PlayerGui.Hotbar.Backpack.Hotbar
local ult = plr.PlayerGui.ScreenGui.MagicHealth.TextLabel
local ability1 = hotbar:FindFirstChild("1")
local ability2 = hotbar:FindFirstChild("2")
local ability3 = hotbar:FindFirstChild("3")
local ability4 = hotbar:FindFirstChild("4")

local Tab = Window:NewTab("Hotbar Customizer")
local Section = Tab:NewSection("Moveset Customizer")

Section:NewTextBox(ability1.Base.ToolName.Text, "First Move", function(txt)
	ability1.Base.ToolName.Text = txt
end)

Section:NewTextBox(ability2.Base.ToolName.Text, "Second Move", function(txt)
	ability2.Base.ToolName.Text = txt
end)

Section:NewTextBox(ability3.Base.ToolName.Text, "Third Move", function(txt)
	ability3.Base.ToolName.Text = txt
end)

Section:NewTextBox(ability4.Base.ToolName.Text, "Fourth Move", function(txt)
	ability4.Base.ToolName.Text = txt
end)

Section:NewTextBox(ult.Text, "Ultimate Name", function(txt)
	ult.Text = txt
end)

local Tab = Window:NewTab("Info")
local Section = Tab:NewSection("About")

Section:NewLabel("Created By TwRwal")
Section:NewLabel("Aminations By l0ckerV5")
Section:NewLabel("Don't Ask Me How i Got More Aminations :/")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
 
local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 90, 0, 38)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Ui Toggle"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 28.000
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
    Library:ToggleUI()
end)
 
local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.Parent = Toggle
