local Aerval = loadstring(game:HttpGet('https://raw.githubusercontent.com/Noneeeeeeeee/Gui/main/source'))()

local Window = Aerval:CreateWindow({
   Name = "Aerval | Universal",
   LoadingTitle = "Aerval",
   LoadingSubtitle = "Universal",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Aerval", 
      FileName = game.PlaceId
   },
   Discord = {
    Enabled = false,
    Invite = "pEzCEwe8Wj",
    RememberJoins = true
   }
})

-- Aerval Notification

Aerval:Notify({
    Title = "Aerval",
    Content = "Thanks for using our hub.",
    Duration = 5
})

-- Main Tab

local Main = Window:CreateTab("Main")

local Main = Main:CreateSection("Main")

-- Player Tab

local Player = Window:CreateTab("Player")

local Player = Player:CreateSection("Player")

-- Credits Tab

local Tab = Window:CreateTab("Credits") 
local Section = Tab:CreateSection("Credits")

local Label = Tab:CreateLabel("Made by: Nonee")
local Label = Tab:CreateLabel("Discord: discord.gg/4eYF3Us4Jg7")
local Label = Tab:CreateLabel("Website: aerval.xyz")
