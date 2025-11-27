local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Luna hub V1",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loaded Luna hub V1",
   LoadingSubtitle = "by KICKALL",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Home", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "R15 only green baseplate",
   Callback = function(v)
   game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-r15")
   end,
})

local Button = Tab:CreateButton({
   Name = "R6 only green baseplate",
   Callback = function(v)
   game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-r6")
   end,
})

local Slider = Tab:CreateSlider({
   Name = "WalkSpeed",
   Range = {10, 500},
   Increment = 10,
   Suffix = "WalkSpeed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
   end,
})

local Slider = Tab:CreateSlider({
   Name = "JumpPower",
   Range = {10, 500},
   Increment = 10,
   Suffix = "JumpPower",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
   end,
})

local Button = Tab:CreateButton({
   Name = "What Only R6",
   Callback = function(v)
   game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 48474313, 3033908130, 3398308134")

game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")

local character = game.Players.LocalPlayer.Character
local leftLeg = character:FindFirstChild("Left Arm")
if leftLeg then
    -- Detach the left arm from the character
    leftLeg.Parent = nil
end

wait(1)

local character = game.Players.LocalPlayer.Character
local leftLeg = character:FindFirstChild("Right Arm")
if leftLeg then
    -- Detach the left arm from the character
    leftLeg.Parent = nil
end

wait(1)

game.Players.LocalPlayer.Character.Humanoid.JumpPower = 1

wait(1.2)


game:GetService("Players").LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://129342287"

game:GetService("Players").LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "rbxassetid://129342287"
   end,
})

local Toggle = Tab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(InfiniteJumpEnabled)
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
    end,
 })

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Not body R6 Only",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/YqX5fJVt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "FE Giant Dance",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/StarFIow/Scripts/main/Dance.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Anti fling",
   Callback = function()
   local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Player = Players.LocalPlayer
 
RunService.Stepped:Connect(function()
    for _, CoPlayer in pairs(Players:GetChildren()) do
        if CoPlayer ~= Player and CoPlayer.Character then
            for _, Part in pairs(CoPlayer.Character:GetChildren()) do
                if Part.Name == "HumanoidRootPart" then
                    Part.CanCollide = false
                end
            end
        end
    end
 
    for _, Accessory in pairs(workspace:GetChildren()) do
        if Accessory:IsA("Accessory") and Accessory:FindFirstChildWhichIsA("Part") then
            Accessory:FindFirstChildWhichIsA("Part"):Destroy()
        end
    end
end)
   end,
})

local Button = Tab:CreateButton({
   Name = "Hat hub",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/inkdupe/hat-scripts/refs/heads/main/updatedhathub.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "FE Krystal Dance V3",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Choose.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Super ring parts v6 by lukas",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/chesslovers69/Super-ring-parts-v6/refs/heads/main/Bylukaslol"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "No Legs",
   Callback = function()
   loadstring(game:HttpGet('https://github.com/popoffroblox/No-Legs/raw/refs/heads/main/main.lua', true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Dex",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxftuit1b-dev/Shadow-Mohammed-M7D/refs/heads/main/O.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Pshade",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Inf yleld",
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Esp",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Yahahahau/Ultimate-Esp-v1/refs/heads/main/Ultimate%20esp%20v1.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Walkfling",
   Callback = function()
   if game:GetService("ReplicatedStorage"):FindFirstChild("juisdfj0i32i0eidsuf0iok") then
		 hiddenfling = true
	 else
		 hiddenfling = true
		 detection = Instance.new("Decal")
		 detection.Name = "juisdfj0i32i0eidsuf0iok"
		 detection.Parent = game:GetService("ReplicatedStorage")
		 local function fling()
			 local hrp, c, vel, movel = nil, nil, nil, 0.1
			 while true do
				 game:GetService("RunService").Heartbeat:Wait()
				 if hiddenfling then
					 local lp = game.Players.LocalPlayer
					 while hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do
						 game:GetService("RunService").Heartbeat:Wait()
						 c = lp.Character
						 hrp = c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")
					 end
					 if hiddenfling then
						 vel = hrp.Velocity
						 hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
						 game:GetService("RunService").RenderStepped:Wait()
						 if c and c.Parent and hrp and hrp.Parent then
							 hrp.Velocity = vel
						 end
						 game:GetService("RunService").Stepped:Wait()
						 if c and c.Parent and hrp and hrp.Parent then
							 hrp.Velocity = vel + Vector3.new(0, movel, 0)
							 movel = movel * -1
						 end
					 end
				 end
			 end
		 end
		 
		 fling()
	 end
   end,
})

local Button = Tab:CreateButton({
   Name = "Drift FE R6-R15",
   Callback = function()
   if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").RigType == Enum.HumanoidRigType.R6 then
 
game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = 60
game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").JumpPower = 20
game:GetService("Players").LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://129342287"
game:GetService("Players").LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "rbxassetid://129342287"
game:GetService("Players").LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = "rbxassetid://129342287"
game:GetService("Players").LocalPlayer.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://129342287"
game:GetService("Players").LocalPlayer.Character.Animate.idle.Animation2.AnimationId = "rbxassetid://129342287"
game:GetService("Players").LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = "rbxassetid://129342287"
for i, thing in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
if thing.ClassName == "Part" then
thing.CustomPhysicalProperties = PhysicalProperties.new(0.04, 0, 0)
end
end
local r6height = "-1.03"
game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").HipHeight = r6height
 
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").RigType == Enum.HumanoidRigType.R15 then
game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = 60
game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").JumpPower = 20
game:GetService("Players").LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://3360694441"
game:GetService("Players").LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "rbxassetid://3360694441"
game:GetService("Players").LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = "rbxassetid://3360694441"
game:GetService("Players").LocalPlayer.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://3360694441"
game:GetService("Players").LocalPlayer.Character.Animate.idle.Animation2.AnimationId = "rbxassetid://3360694441"
game:GetService("Players").LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = "rbxassetid://3360694441"
for i, thing in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
if thing.ClassName == "MeshPart" then
thing.CustomPhysicalProperties = PhysicalProperties.new(0.04, 0, 0)
end
end
local r15height = "0.56"
game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").HipHeight = r15height
end 
   end,
})

local Tab = Window:CreateTab("Update", 4483362458) -- Title, Image

local Paragraph = Tab:CreateParagraph({Title = "14 11 2025", Content = "New button brookhaven Tiger x"})

local Paragraph = Tab:CreateParagraph({Title = "20 11 2025", Content = "New button brookhaven Chaos hub and bruton hub"})

local Paragraph = Tab:CreateParagraph({Title = "20 11 2025", Content = "New Tab Sus"})

local Paragraph = Tab:CreateParagraph({Title = "23 11 2025", Content = "New Tab [PVP] PVP Arena"})

local Paragraph = Tab:CreateParagraph({Title = "23 11 2025", Content = "New Button [PVP] PVP Arena Just a script"})

local Paragraph = Tab:CreateParagraph({Title = "27 11 2025", Content = "New Button Fling things and people RuHub"})

Rayfield:Notify({
   Title = "Luna hub",
   Content = "thanks you for script made Kickboxing267/KICKALL",
   Duration = 6.5,
   Image = 4483362458,
})

local Tab = Window:CreateTab("99 forest", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Foxname",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/FoxnameHub.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Voidware",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua", true))()
   end,
})

local Tab = Window:CreateTab("brookhaven", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Chaos hub",
   Callback = function()
   loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/edf95b2a45470046"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Lyra hub",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/repositoryredzlib/Lyrapainel/refs/heads/main/Main.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Bruton hub",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/bruton-lua/Brookhaven/refs/heads/main/BRUTON"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Sander XY",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/kigredns/testUIDK/refs/heads/main/panel.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Tiger X",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/BalintTheDevXBack/Games/refs/heads/main/TIGER_X_Brookhaven"))()
   end,
})

local Tab = Window:CreateTab("fling things and people", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Venom X",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/fratelevostru9999/src/refs/heads/main/VenomX%20Fling%20Things%20And%20People",true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "RuHub",
   Callback = function()
   local Main = game:HttpGet("https://gitlab.com/cooldawghaha/gitlabswitch/-/raw/main/MainBranch?ref_type=heads")
local Alternate = game:HttpGet("https://gitlab.com/cooldawghaha/gitlabswitch/-/raw/main/AlternateBranch.lua?ref_type=heads") -- ALWAYS TRY MAIN BRANCH FIRST, AS THIS ONE HAS NOT BEEN TESTED FOR BUGS
getgenv().saveconfig = false -- set to true if u want ur configs to be saved each time!
loadstring(Main)()
   end,
})

local Button = Tab:CreateButton({
   Name = "Blitz hub",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Posral",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Brovaky/Friendly/refs/heads/main/Friendly'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Verbal hub v3",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/VerbalHubz/Verbal-Hub/refs/heads/main/Verbal%20Hub%20V3",true))()
   end,
})

local Tab = Window:CreateTab("Solara hub", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
    Name = "Copy key solara hub",
    Callback = function()
        setclipboard("Tqzp8vnAOB")
Rayfield:Notify({
   Title = "Luna hub",
   Content = "Copy!",
   Duration = 6.5,
   Image = 4483362458,
})
    end,
 })

local Paragraph = Tab:CreateParagraph({Title = "Solara hub", Content = "key Tqzp8vnAOB"})
local Button = Tab:CreateButton({
   Name = "Solara hub",
   Callback = function()
   loadstring(game:HttpGet("https://pastefy.app/Wfe784Xn/raw"))()
   end,
})

local Tab = Window:CreateTab("Sus", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "FE jerk off R6",
   Callback = function()
   loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "FE jerk off R15",
   Callback = function()
   loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
   end,
})

local Tab = Window:CreateTab("[PVP] PVP Arena", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Just a script",
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/lololofffff/just/refs/heads/main/main'),true))()
   end,
})
