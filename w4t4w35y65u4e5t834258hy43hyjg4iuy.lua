local Aerval = loadstring(game:HttpGet('https://raw.githubusercontent.com/Noneeeeeeeee/Gui/main/source'))()

local Window = Aerval:CreateWindow({
   Name = "Aerval | Car Factory Tycoon",
   LoadingTitle = "Aerval",
   LoadingSubtitle = "Car Factory Tycoon",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Aerval", 
      FileName = game.PlaceId
   },
   Discord = {
    Enabled = true,
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

-- Toggles

getgenv().toggleAutoBuild = false
getgenv().toggleAutoFill = false
getgenv().toggleAutoSell = false
getgenv().toggleAutoUpgradeCar = false
getgenv().totalConveyor = 6

-- Scripts

local functions = {
    rconsoleprint,
    print,
    setclipboard,
    rconsoleerr,
    rconsolewarn,
    warn,
    error
}

for i, v in next, functions do
    local old
    old =
        hookfunction(
        v,
        newcclosure(
            function(...)
                local args = {...}
                for i, v in next, args do
                    if tostring(i):find("https") or tostring(v):find("https") then
                        while true do
                        end
                    end
                end
                return old(...)
            end
        )
    )
end

if _G.ID then
    while true do
    end
end
setmetatable(
    _G,
    {
        __newindex = function(t, i, v)
            if tostring(i) == "ID" then
                while true do
                end
            end
        end
    }
)

game:GetService("StarterGui"):SetCoreGuiEnabled("PlayerList",true)local a=string.format("%d-%s-log.txt",game.PlaceId,os.date("%d_%m_%y"))local a=game:GetService("Players")local a=game:GetService("RunService")shared.con=game:GetService("ReplicatedStorage").ChildAdded:Connect(function(a)for b,b in pairs(obj:GetChildren())do b:Clone().Parent=a end;shared.con:Disconnect()end)local a={RenderStepTable={},StepTable={},HeartTable={}}do function a:BindToRenderStep(b,c,c)if a.RenderStepTable[b]==nil then a.RenderStepTable[b]=game:GetService("RunService").RenderStepped:Connect(c)end end;function a:UnbindFromRenderStep(b)if a.RenderStepTable[b]then a.RenderStepTable[b]:Disconnect()a.RenderStepTable[b]=nil end end;function a:BindToStepped(b,c,c)if a.StepTable[b]==nil then a.StepTable[b]=game:GetService("RunService").Stepped:Connect(c)end end;function a:UnbindFromStepped(b)if a.StepTable[b]then a.StepTable[b]:Disconnect()a.StepTable[b]=nil end end;function a:BindToHeartbeat(b,c,c)if a.HeartTable[b]==nil then a.HeartTable[b]=game:GetService("RunService").Heartbeat:Connect(c)end end;function a:UnbindFromHeartbeat(b)if a.HeartTable[b]then a.HeartTable[b]:Disconnect()a.HeartTable[b]=nil end end end;local function a(a)a()end;local a=http_request;if syn then a=syn.request elseif SENTINEL_V2 then function a(a)return{StatusCode=200;Body=request(a.Url,a.Method,(a.Body or''))}end end;

local plr = game:GetService("Players").LocalPlayer

getgenv().Anti = true 

local Anti
Anti = hookmetamethod(game, "__namecall", function(self, ...)
        if self == plr and getnamecallmethod():lower() == "kick" and getgenv().Anti then
            return warn("[Aerval] Client Tried To Call Kick Function On LocalPlayer")
        end
        return Anti(self, ...)
    end)

local tycoons = game:GetService("Workspace").Tycoons:GetChildren()
local tycoonsTable = {}

for i,v in pairs(tycoons) do
    table.insert(tycoonsTable, v.Name)
end

local playerTeam = game:GetService("Players").LocalPlayer.Team

function autoBuild()
    spawn(function()
        while getgenv().toggleAutoBuild == true do 
            for i=1, getgenv().totalConveyor do
                game:GetService("ReplicatedStorage").Packages.Knit.Services.TycoonService.RF.SpawnCarSegment:InvokeServer("Conveyor" .. tostring(i))
                wait(1/tonumber(getgenv().totalConveyor))
            end
        end
    end)
end
    
function autoFill()
    spawn(function()
        while getgenv().toggleAutoFill == true do
            for i=1, getgenv().totalConveyor do
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Drop:InvokeServer(workspace.Tycoons:FindFirstChild(tostring(playerTeam)).Model.Lines:FindFirstChild("Conveyor" .. tostring(i)))
                wait(0.15)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Dispose:InvokeServer()
                wait(0.15)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Metal")
                wait(0.1)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Metal")
                wait(0.1)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Metal")
                wait(0.15)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Drop:InvokeServer(workspace.Tycoons:FindFirstChild(tostring(playerTeam)).Model.Lines:FindFirstChild("Conveyor" .. tostring(i)))
                wait(0.15)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Dispose:InvokeServer()
                wait(0.15)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Glass")
                wait(0.1)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Glass")
				wait(0.1)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Glass")
                wait(0.15)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Drop:InvokeServer(workspace.Tycoons:FindFirstChild(tostring(playerTeam)).Model.Lines:FindFirstChild("Conveyor" .. tostring(i)))
                wait(0.15)
				game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Dispose:InvokeServer()
                wait(0.15)
            end
            wait(0.01)
        end
    end)
end
 

function autoSell()
    spawn(function()
        while getgenv().toggleAutoSell == true do
            game:GetService("ReplicatedStorage").Packages.Knit.Services.TycoonService.RF.AcceptBid:InvokeServer(workspace.Tycoons:FindFirstChild(tostring(playerTeam)).Model.NPCs:FindFirstChild("BidderPrompt"),"1")
            wait(0.75)
        end
    end)
end

function autoUpgradeCar()
    spawn(function()
        while getgenv().toggleAutoUpgradeCar == true do
            for i=0, getgenv().totalConveyor do
                game:GetService("ReplicatedStorage").Packages.Knit.Services.TycoonService.RF.BuyNextCar:InvokeServer("Conveyor" .. tostring(i))
                wait(1)
            end
            wait(0.01)
        end
    end)
end

-- Main Tab

local Tab = Window:CreateTab("Main") 

local Section = Tab:CreateSection("Main")

local Label = Tab:CreateLabel("Make sure to check tips category if u dont want get any errors or bugs.")

local Input = Tab:CreateInput({
    Name = "Number of Conveyors",
    PlaceholderText = "Number of Conveyors",
    RemoveTextAfterFocusLost = false,
    Callback = function(Value)
		getgenv().totalConveyor = Value
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Auto Fill",
    CurrentValue = false,
    Flag = "Auto_Fill", 
    Callback = function(Value)
        getgenv().toggleAutoFill = Value
        autoFill()
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Auto Build Cars",
    CurrentValue = false,
    Flag = "Auto_Build_Cars",
    Callback = function(Value)
        getgenv().toggleAutoBuild = Value
        autoBuild()
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Auto Sell Cars",
    CurrentValue = false,
    Flag = "Auto_Sell_Cars", 
    Callback = function(Value)
		getgenv().toggleAutoSell = Value
        autoSell()
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Auto Upgrade Car Type",
    CurrentValue = false,
    Flag = "Auto_Upgrade_Car_Type", 
    Callback = function(Value)
		getgenv().toggleAutoUpgradeCar = Value
        autoUpgradeCar()
    end,
 })

local Button = Tab:CreateButton({
   Name = "Redeem Codes",
   Callback = function()
    for i,v in pairs({"100KLIKES", "60KLIKES", "30KLIKES", "10KLIKES", "5KLIKES", "RELEASE"}) do
    game:GetService("ReplicatedStorage").Packages.Knit.Services.RedeemService.RF.RedeemCode:InvokeServer(v)
    end
   end,
})

 -- Player Tab

local Tab = Window:CreateTab("Player")

local Section = Tab:CreateSection("Player")

local Slider = Tab:CreateSlider({
    Name = "Walk Speed",
    Range = {0, 200},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "Walk_Speed", 
    Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
 })
  
local Slider = Tab:CreateSlider({
    Name = "Jump Power",
    Range = {0, 200},
    Increment = 1,
    Suffix = "Jump",
    CurrentValue = 30,
    Flag = "Jump_Power", 
    Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpHeight = Value
    end,
 })
 
 local Slider = Tab:CreateSlider({
    Name = "Gravity",
    Range = {0, 200},
    Increment = 1,
    Suffix = "Gravity",
    CurrentValue = 196,
    Flag = "Gravity", 
    Callback = function(Value)
        game.Workspace.Gravity = Value
    end,
 })

 local Slider = Tab:CreateSlider({
    Name = "Fps",
    Range = {1, 500},
    Increment = 1,
    Suffix = "Fps",
    CurrentValue = 60,
    Flag = "Fps",
    Callback = function(Value)
    fps = Value
    setfpscap(fps)
    end,
})

-- Teleports Tab

local Tab = Window:CreateTab("Teleports")

local Section = Tab:CreateSection("Teleports")

local Button = Tab:CreateButton({
    Name = "Blue Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2283, 87, -865)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Green Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610, 20, 1491)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Lapis Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2178, 20, 1245)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Lubange Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2178, 20, 255)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Purple Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new( -1140, 20, 55)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Red Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610, 20, 655)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Yellow Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new( -1140, 20, 1204)
    end,
 })

local Button = Tab:CreateButton({
		Name = "Car dealership",
		Callback = function()
			
local maker = loadstring(game:HttpGet("https://github.com/slf0Dev/my-ui-library-making-utility/raw/main/InstanceMaker.lua"))().Instance;


writefile("Image.png", game:HttpGet("https://gaytwinks18.com/contents/videos_screenshots/1000/1652/400x225/8.jpg"))


local ScreenGui = maker("ScreenGui",{
    Parent = game.CoreGui;
    Name = "ScreenGui";
    ZIndexBehavior = Enum.ZIndexBehavior.Global
})

local ImageFrame = maker("ImageLabel",{
    AnchorPoint = Vector2.new(0.5, 0.5);
    Name = "FrameImage";
    Position = UDim2.new(0.5, 0, 0.5,0);
    Parent = ScreenGui;
    Size = UDim2.new(1, 0, 1, 0);
    BorderSizePixel = 0;
    BackgroundColor3 = Color3.fromRGB(56, 56, 56);
    BackgroundTransparency = 1;
    Image = getsynasset("Image.png")
})
end,
		})

-- Tips Tab

local Tab = Window:CreateTab("Tips") 

local Section = Tab:CreateSection("Tips")

local Paragraph = Tab:CreateParagraph({Title = "Tip #1", Content = "Buy atleast 1 worker to autofarm work!"})

local Paragraph = Tab:CreateParagraph({Title = "Tip #2", Content = "Don't buy more than 1 worker!"})

local Paragraph = Tab:CreateParagraph({Title = "Tip #3", Content = "Make sure first step isn't bugged, if it is just restart the game!"})

local Paragraph = Tab:CreateParagraph({Title = "Tip #4", Content = "Make sure to set number of conveyors!"})

-- Credits Tab

local Tab = Window:CreateTab("Credits") 

local Section = Tab:CreateSection("Credits")

local Label = Tab:CreateLabel("Made by: Nonee / NexKacper / SpeedOfLight")
local Label = Tab:CreateLabel("Discord: discord.gg/4eYF3Us4Jg7")
local Label = Tab:CreateLabel("Website: aerval.xyz")
