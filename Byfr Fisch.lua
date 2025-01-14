local Library = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Player = game.Players.LocalPlayer
local Window = Library:CreateWindow({
    Name = "Byfr (Fisch)",
    Icon = 0,
    LoadingTitle = "Byfr (Fisch)",
    LoadingSubtitle = "",
    Theme = "DarkBlue",
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, 
       FileName = "ByfrFisch"
    },
 
    Discord = {
       Enabled = false,
       Invite = "noinvitelink",
       RememberJoins = true
    },
 
    KeySystem = false,
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = {"Hello"}
    }
 })

 Library:Notify({
    Title = "Welcome "..Player.Name.." ",
    Content = "Byfr Loaded!",
    Duration = 6.5,
    Image = 4483362458,
 })

 local MainTab = Window:CreateTab("Main", 4483362458)

 local MainSection = MainTab:CreateSection("LocalPlayer")

 local Slider = MainTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {16, 500},
    Increment = 1,
    Suffix = "WalkSpeed",
    CurrentValue = 16,
    Flag = "Slider1",
    Callback = function(ws)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
    end,
 })
 
 local Slider = MainTab:CreateSlider({
    Name = "JumpPower",
    Range = {50, 500},
    Increment = 1,
    Suffix = "JumpPower",
    CurrentValue = 50,
    Flag = "Slider1",
    Callback = function(jp)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
    end,
 })
 
 local InfMoneySection = MainTab:CreateSection("Infinite Money")
 
 local Button = MainTab:CreateButton({
   Name = "Infinite Money",
   Callback = function()
  game:GetService('RunService').Stepped:Connect(function() for i = 1, 50 do game:GetService("ReplicatedStorage").packages.Net["RE/DailyReward/Claim"]:FireServer() end end)
   end,
})
