local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Bedwars AirForce-X V4 Beta Release comes on 7/12/22 or 7/13/22", "BloodTheme")

-- Tab

local Tab1 = Window:NewTab("Main")
local Tab1Section = Tab1:NewSection("Main")

local Tab2 = Window:NewTab("Other Scripts")
local Tab2Section = Tab2:NewSection("Other")

local Tab3 = Window:NewTab("AutoToxic you can't turn off after enabled")
local Tab3Section = Tab3:NewSection("AutoToxic")

local Tab4 = Window:NewTab("Animations")
local Tab4Section = Tab4:NewSection("Animations")

local Tab5 = Window:NewTab("Misc")
local Tab5Section = Tab5:NewSection("Misc")

local Tab6 = Window:NewTab("Credits")
local Tab6Section = Tab3:NewSection("Credits")

-- Buttons

Tab1Section:NewToggle("speed", "", function(state)

	if state then

		BindToStepped("SpeedWalkSpeed", 1, function(time, delta)

			if entity.isAlive then

				local newpos = (lplr.Character.Humanoid.MoveDirection  * (speedval["Value"] - lplr.Character.Humanoid.WalkSpeed)) * delta

				local raycastparameters = RaycastParams.new()

				raycastparameters.FilterDescendantsInstances = {lplr.Character}

				local ray = workspace:Raycast(lplr.Character.HumanoidRootPart.Position, newpos, raycastparameters)

				if ray then newpos = (ray.Position - lplr.Character.HumanoidRootPart.Position) end

				lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + newpos

			end

		end)

	else

		UnbindFromStepped("CFrameWalkSpeed")

	end

end)

Tab1Section:NewSlider("Speed 1-42", "Adjust speed", 42, 1, function(s)

	speedval["Value"] = s

end)

Tab3Section:NewButton("AutoToxic (Kids)" , " Opens AutoToxic (Kids)",function()

loadstring(game:HttpGet("https://pastebin.com/raw/LZAuYBzF",true))()

end)

Tab3Section:NewButton("AutoToxic (VeryToxic)" , " Opens AutoToxic (VeryToxic)",function()

loadstring(game:HttpGet("https://pastebin.com/raw/9xeUZLNT",true))()

end)

Tab3Section:NewButton("Auto Toxic (Ultra Toxic)" , "Opens Auto Toxic",function()

local choosePlayer = false --set true if you want to insult one person only

local chosenPlayer = "" --if chosePlayer = true, type playername in quotes

local Taunts = { --add as many as you wish

  "Imagine Not Being Able To Exploit",

  "Air on top",

  "Air on top",

  "Get Lost Loser",

  "The dog is better than you",

"Better fork in the table",

"You like jasmine",

"Noob sheets",

"How are you so good at the game lol",

"You like Jasmine DM her",

"Use Air hub beta instead of vxpe v4",

"Air on top",

"Roblox bedwars never improved their anti cheat",

"Join are DC for more",

"Ahh ahh your mom goes so hard",

"I know where you live hehe",

}

local Remote = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

local function Insult()

   local players = game.Players:GetChildren()

   local howManyPlayers = #players

   

   local ran = math.random(1,howManyPlayers)

   local chosenOne = players[ran]

   local chance = math.random(1,20)

   

   if choosePlayer == true then

       Remote:FireServer(chosenPlayer.." " ..Taunts[math.random(1,#Taunts)],"All")

   elseif chance <= 5 then

       Remote:FireServer(chosenOne.Name.." " ..Taunts[math.random(1,#Taunts)],"All")

   else

       Remote:FireServer(Taunts[math.random(1,#Taunts)],"All")

   end

end

local randTime = math.random(5,15)

while true and wait(randTime) do

   Insult()

end

end)

Tab4Section:NewButton("Zombie Animation" , "Plays Zombie Animation",function()

loadstring(game:HttpGet("https://pastebin.com/raw/t3yTSPRn",true))()

end)

Tab4Section:NewButton("Ninja Animation","Plays Ninja Animation",function()

loadstring(game:HttpGet("https://pastebin.com/raw/bwGLPVV7",true))()

end)

Tab4Section:NewButton("Robot Animation","Plays Robot Animation",function()

local Animate =

game.Players.LocalPlayer.Character.Animate

Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"

Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"

Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"

Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"

Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"

Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"

Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"

end)

Tab4Section:NewButton("Toy Animation","Opens Toy Animation",function()

local Animate =

game.Players.LocalPlayer.Character.Animate

Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"

Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"

Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"

Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"

Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"

Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"

Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"

end)

Tab1Section:NewToggle("KillAura", "Autoswing the sword if someone is near you", function(state)

	if state then

		BindToStepped("Killaura", 1, function()

			if entity.isAlive then

				KillauraRemote()

			end

		end)

	else

		UnbindFromStepped("Killaura")

	end

end)

Tab1Section:NewSlider("Distance 1-20", "Increase killaura distance", 20, 1, function(val)

	DistVal["Value"] = val

end)

Tab1Section:NewToggle("No Swing", "Disable killaura swing", function(state)

	if state then

		if killauraswing["Enabled"] == true then

			killauraswing["Enabled"] = false

		end

	else

		if killauraswing["Enabled"] == false then

			killauraswing["Enabled"] = true

		end

	end

end)

Tab1Section:NewSlider("Sound 1-0", "Adjust killaura sound", 1, 0, function(val)

	killaurasoundval["Value"] = val

end)

Tab1Section:NewToggle("BedNuker", "Auto break bed and covers", function(state) 
         if state then 
                 BindToStepped("BedNuker", 1, function() 
                         nuker() 
                 end) 
         else 
                 UnbindFromStepped("BedNuker") 

Tab1Section:NewToggle("No Fall Damage", "Opens No Fall Damage", function(callback)

    local nofall = true

    if callback then

        if nofall then

            spawn(function()

                repeat

                    wait()

                    if nofall == false then

                        return end

                        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.GroundHit:FireServer()

                    until nofall == false

                end)

            end

    else

        local nofall = false

    end

end)



Tab2Section:NewButton("Vape V4", "Loads Vape Script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

Tab2Section:NewButton("Keyboard", "Opens Keyboard", function()
loadstring(game:HttpGet("https://pastebin.com/raw/kC3dAMvt"))()
end)

--infinite jumps

Tab2Section:NewButton("Inf Jumps", "Loads My Old Script", function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

Tab1Section:NewToggle("Velocity", "Prevents taking a knockback", function(state) 
         if state then 
                 KnockbackTable["kbDirectionStrength"] = 0 
                 KnockbackTable["kbUpwardStrength"] = 0 
         else 
                 KnockbackTable["kbDirectionStrength"] = 100 
                 KnockbackTable["kbUpwardStrength"] = 100 
         end 
 end) 

 Tab1Section:NewToggle("Reach", "Extend your attack range", function(state) 
         if state then 
                 CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = (reachval["Value"] - 0.0001) 
         else 
                 CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = 14.4 
         end 
 end) 
  
Tab1Section:NewSlider("Range 18-1", "", 18, 1, function(val) -- 500 (MaxValue) | 0 (MinValue) 
         reachval["Value"] = val 
 end) 
 
 Tab5Section:NewToggle("AntiVoid", "Give's you a second chance to get back on land", function(state) 
         if state then 
                 antivoidp = Instance.new("Part", workspace) 
                 antivoidp.Name = "AntiVoid" 
                 antivoidp.CanCollide = true 
                 antivoidp.Size = Vector3.new(2048, 1, 2048) 
                 antivoidp.Anchored = true 
                 antivoidp.Transparency = 1 - (antivoidtransparent["Value"] / 100) 
                 antivoidp.Material = Enum.Material.Neon 
                 antivoidp.Color = Color3.fromHSV(antivoidcolor["Hue"], antivoidcolor["Sat"], antivoidcolor["Value"]) 
                 antivoidp.Position = Vector3.new(0, 23.5, 0) 
                 antivoidp.Touched:connect(function(touchedvoid) 
                         if touchedvoid.Parent:FindFirstChild("Humanoid") and touchedvoid.Parent.Name == lplr.Name then 
                                 lplr.Character.Humanoid.Jump = true 
                                 lplr.Character.Humanoid:ChangeState("Jumping") 
                                 wait(0.2) 
                                 lplr.Character.Humanoid:ChangeState("Jumping") 
                                 wait(0.2) 
                                 lplr.Character.Humanoid:ChangeState("Jumping") 
                         end 
                 end) 
         else 
                 if antivoidp then 
                         antivoidp:Remove() 
                 end 
         end 
 end) 
  
 Tab5Section:NewColorPicker("Color", "Adjust antivoid color", Color3.fromHSV(antivoidcolor["Hue"], antivoidcolor["Sat"], antivoidcolor["Value"]), function(val) 
         if antivoidp then 
                 antivoidp.Color = (val) 
         end 
 end) 
  
 Tab5Section:NewSlider("Invisible 1-100", "Adjust antivoid transparency", 100, 0, function(val) 
         if antivoidp then 
                 antivoidp.Transparency = 1 - (val / 100) 
         end 
 end) 

Tab5Section:NewTextBox("Set FOV","Max FOV number 120", function(txt) game.Workspace.CurrentCamera.FieldOfView = txt
end)

Tab5Section:NewToggle("ESP", "ToggleInfo", function(state)
    if state then
        local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0,3,0)

for i,v in pairs(game.Players:GetChildren()) do
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    local HealthBarOutline = Drawing.new("Square")
    HealthBarOutline.Thickness = 3
    HealthBarOutline.Filled = false
    HealthBarOutline.Color = Color3.new(0,0,0)
    HealthBarOutline.Transparency = 1
    HealthBarOutline.Visible = false

    local HealthBar = Drawing.new("Square")
    HealthBar.Thickness = 1
    HealthBar.Filled = false
    HealthBar.Transparency = 1
    HealthBar.Visible = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then
                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    HealthBarOutline.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
                    HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
                    HealthBarOutline.Visible = true

                    HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / math.clamp(game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value, 0, game:GetService("Players")[v.Character.Name].NRPBS:WaitForChild("MaxHealth").Value)))
                    HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1 / HealthBar.Size.Y))
                    HealthBar.Color = Color3.fromRGB(255 - 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 0)
                    HealthBar.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        --- Our Team
                        BoxOutline.Visible = false
                        Box.Visible = false
                        HealthBarOutline.Visible = false
                        HealthBar.Visible = false
                    else
                        ---Enemy Team
                        BoxOutline.Visible = true
                        Box.Visible = true
                        HealthBarOutline.Visible = true
                        HealthBar.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                    HealthBarOutline.Visible = false
                    HealthBar.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
                HealthBarOutline.Visible = false
                HealthBar.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end

game.Players.PlayerAdded:Connect(function(v)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    local HealthBarOutline = Drawing.new("Square")
    HealthBarOutline.Thickness = 3
    HealthBarOutline.Filled = false
    HealthBarOutline.Color = Color3.new(0,0,0)
    HealthBarOutline.Transparency = 1
    HealthBarOutline.Visible = false

    local HealthBar = Drawing.new("Square")
    HealthBar.Thickness = 1
    HealthBar.Filled = false
    HealthBar.Transparency = 1
    HealthBar.Visible = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then
                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    HealthBarOutline.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
                    HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
                    HealthBarOutline.Visible = true

                    HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / math.clamp(game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value, 0, game:GetService("Players")[v.Character.Name].NRPBS:WaitForChild("MaxHealth").Value)))
                    HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1/HealthBar.Size.Y))
		    HealthBar.Color = Color3.fromRGB(255 - 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 0)                    
		    HealthBar.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        --- Our Team
                        BoxOutline.Visible = false
                        Box.Visible = false
                        HealthBarOutline.Visible = false
                        HealthBar.Visible = false
                    else
                        ---Enemy Team
                        BoxOutline.Visible = true
                        Box.Visible = true
                        HealthBarOutline.Visible = true
                        HealthBar.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                    HealthBarOutline.Visible = false
                    HealthBar.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
                HealthBarOutline.Visible = false
                HealthBar.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end)
    else
        print("Toggle Off")
    end
end)

Tab5Section:NewToggle("Tracers", "Lines", function(state)
    if state then
        local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

_G.TeamCheck = false -- Use True or False to toggle TeamCheck

for i,v in pairs(game.Players:GetChildren()) do
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1,1,1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    function lineesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)

                    if _G.TeamCheck and v.TeamColor == lplr.TeamColor then
                        --//Teammates
                        Tracer.Visible = false
                    else
                        --//Enemies
                        Tracer.Visible = true
                    end
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(lineesp)()
end

game.Players.PlayerAdded:Connect(function(v)
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1,1,1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    function lineesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)

                    if _G.TeamCheck and v.TeamColor == lplr.TeamColor then
                        --//Teammates
                        Tracer.Visible = false
                    else
                        --//Enemies
                        Tracer.Visible = true
                    end
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(lineesp)()
end)
    else
        print("Toggle Off")
    end
end)

Tab2Section:NewButton("Inf Yield", "Loads Inf Yield", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

Tab2Section:NewButton("Rekt Sky", "Loads Rekt Sky", function()ÿ
loadstring(game:HttpGet('https://raw.githubusercontent.com/joeengo/Future/main/loadstring.lua', true))()
end)

Tab2Section:NewButton("Rejoin", "Rejoins The Game", function()
loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
end)

 
Tab5Section:NewButton("FixCam", "fix camera bug on mobile", function()

	cam.CameraType = Enum.CameraType.Fixed

	cam.CameraType = Enum.CameraType.Custom

end)
			
--bednuker

Tab1Section:NewToggle("BedNuker", "Auto break bed and covers", function(state) 
         if state then 
                 BindToStepped("BedNuker", 1, function() 
                         nuker() 
                 end) 
         else 
                 UnbindFromStepped("BedNuker") 
         end 
 end) 
 
--cape

Tab4Section:NewButton("Cape", "Opens Cape", function()

local player = game:GetService("Players")

local lplr = player.LocalPlayer

if lplr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then

      if lplr.Character:FindFirstChild("Torso") then

        torso = lplr.Character.Torso

      else

        torso = lplr.Character.UpperTorso

      end

      local CapeP = Instance.new("Part", torso.Parent)

      CapeP.Name = "Cape"

      CapeP.Anchored = false

      CapeP.CanCollide = false

      CapeP.TopSurface = 0

      CapeP.BottomSurface = 0

      CapeP.Color = Color3.fromRGB(0,0,0)

      CapeP.FormFactor = "Custom"

      CapeP.Size = Vector3.new(0.2,0.2,0.2)

      local decal = Instance.new("Decal", CapeP)

      decal.Texture = "http://www.roblox.com/asset/?id=9608953346"

      decal.Face = "Back"

      local msh = Instance.new("BlockMesh", CapeP)

      msh.Scale = Vector3.new(9,17.5,0.5)

      local motor = Instance.new("Motor", CapeP)

      motor.Part0 = CapeP

      motor.Part1 = torso

      motor.MaxVelocity = 0.01

      motor.C0 = CFrame.new(0,1.75,0) * CFrame.Angles(0,math.rad(90),0)

      motor.C1 = CFrame.new(0,1,0.45) * CFrame.Angles(0,math.rad(90),0)

      local wave = false

      repeat wait(1/44)

        decal.Transparency = torso.Transparency

        local ang = 0.1

        local oldmag = torso.Velocity.magnitude

        local mv = 0.002

        if wave then

          ang = ang + ((torso.Velocity.magnitude/10) * 0.05) + 0.05

          wave = false

        else

          wave = true

        end

        ang = ang + math.min(torso.Velocity.magnitude/11, 0.5)

        motor.MaxVelocity = math.min((torso.Velocity.magnitude/111), 0.04) + mv

        motor.DesiredAngle = -ang

        if motor.CurrentAngle < -0.2 and motor.DesiredAngle > -0.2 then

          motor.MaxVelocity = 0.04

        end

        repeat wait() until motor.CurrentAngle == motor.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag) >= (torso.Velocity.magnitude/10) + 1

        if torso.Velocity.magnitude < 0.1 then

          wait(0.1)

        end

      until not CapeP or CapeP.Parent ~= torso.Parent

    end

end)

        }
    }

    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.DamageBlock:InvokeServer(unpack(args))
end

local function getItem(itemName)
	for i5, v5 in pairs(getinv(lplr)["items"]) do
		if v5["itemType"] == itemName then
			return v5, i5
		end
	end
	return nil
end
    else
        print("Toggle Off")
    end
end)

--chat spammer

Tab5Section:NewToggle("chat spammer", "ayo", function(state)
    if state then        
while true do wait(0) 

local A_1 = "Air on top" local A_2 = "All" 
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) end
    else
        print("Toggle Off")
    end
end)

			end;
		end;
		if thing and reason and offensive then
			lib:report(player, thing, reason, offensive);
		end;
	end;
end);

if not success then
	error(error);
end;

for i, plr in pairs(game.Players:GetPlayers()) do
	if plr ~= game.Players.LocalPlayer then
		plr.Chatted:Connect(function(msg)
			(getgenv()).autoreport.Message = msg;
			handler(plr, msg);
		end);
	end;
end;
game.Players.PlayerAdded:Connect(function(plr)
	if plr ~= game.Players.LocalPlayer then
		plr.Chatted:Connect(function(msg)
			(getgenv()).autoreport.Message = msg;
			handler(plr, msg);
		end);
	end;
end);

(

--sprint

Tab5Section:NewToggle("Sprint", "Automatically on your sprint", function(state) 
         if state then 
                 BindToStepped("Sprint", 1, function() 
                         if SprintCont.sprinting == false then 
                                 SprintCont:startSprinting() 
                         end 
                 end) 
         else 
                 UnbindFromStepped("Sprint") 
                 SprintCont:stopSprinting() 
         end 
 end) 

--damage return

Tab5Section:NewToggle("damage return", "ToggleInfo", function(state)
    if state then
        
local TS = game:GetService("TweenService")
local Tinfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)

local DamageEvent = game.ReplicatedStorage.DamageEvent --You can remove this line since it is actually unnecessary 
local DamageBoard = game.ReplicatedStorage.DamageBoard

local Red = Color3.fromRGB(255, 0, 0)
local Green = Color3.fromRGB(95,111,64)



game.Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Connect(function(char)
		
		local hum = char:WaitForChild("Humanoid")
		local humH = hum.Health
		
		hum.HealthChanged:Connect(function(Health)
			if Health < humH and Health > 0 then
				
				local Damage = math.floor(humH - Health)
				print(Damage.." Damage was taken")
				
				local BoardClone = DamageBoard:Clone()
				BoardClone:FindFirstChild("Damage").Text = Damage
				
				local maxH = hum.MaxHealth
				BoardClone.Damage.TextColor3 = Green:lerp(Red, Damage / maxH)
				
				
				BoardClone.Parent = char.HumanoidRootPart
				BoardClone.Damage:TweenSize(UDim2.new(1,0,1,0), "InOut", "Quint", 0.3)
			
		                wait(0.3)
				
				local UIupTween = TS:Create(BoardClone, Tinfo, {StudsOffset = BoardClone.StudsOffset + Vector3.new(0,1,0)})
				local textFade = TS:Create(BoardClone.Damage, Tinfo, {TextTransparency = 1})
								
				UIupTween:Play()
				textFade:Play()
				
				game:GetService("Debris"):AddItem(BoardClone, 0.5)
			end
			humH = hum.Health
		end)
		
	end)
end)
    else
        print("Toggle Off")
    end
end)

--anti cheat

Tab5Section:NewToggle("Anti cheat", "removes some anticheats", function(state)
    if state then
        shared.enabled = w
game:GetService("RunService").heartbeat:connect(function()
if not shared.enabled then return end
game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.GroundHit:FireServer(workspace.Map.Blocks,1645488277.345853)
wait()
end)
    else
        print("Toggle Off")
    end
end)

--hitbox

Tab5Section:NewToggle("hitbox", "hitbox players", function(state)
    if state then
        _G.HeadSize = 23
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.8
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Plastic"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
    else
        print("Toggle Off")
    end
end)

--bednuker v2 fix

Tab1Section:NewToggle("bednuker fix", "ToggleInfo", function(state)
    if state then
        function getclosebed()
    for i,v in pairs(game:GetService("Workspace").Map.Blocks:GetChildren()) do
        if v.Name == "bed" and v:FindFirstChild("Covers") then
            local magcheck = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Covers.Position).Magnitude
            if magcheck <= 45 then
                return v
            end
        end
    end
end

local added
function getanumber()
    added = 0
    for i,v in pairs(game.Workspace.Map.Blocks:GetChildren()) do
        local target = getclosebed()
        if target ~= nil and v.Position then
            if target.Position.X == v.Position.X and target.Position.Z == v.Position.Z then
                if v.Position.Y > target.Position.Y and v.Position.Y - target.Position.Y < 16.5 then
                    added = added + 1
                end
                if v.Position.Y < target.Position.Y and v.Position.Y - target.Position.Y < 16.5 then
                    added = added - 1
                end
            end
        end
    end
    return added
end

function hitblock(X,Y,Z)
    local args = {
        [1] = {
            ["blockRef"] = {
                ["blockPosition"] = Vector3.new(X/3,Y/3,Z/3)
            },
            ["hitPosition"] = Vector3.new(X/3,Y/3,Z/3),
            ["hitNormal"] = Vector3.new(X/3,Y/3,Z/3)
        }
    }

    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.DamageBlock:InvokeServer(unpack(args))
end

local function getItem(itemName)
	for i5, v5 in pairs(getinv(lplr)["items"]) do
		if v5["itemType"] == itemName then
			return v5, i5
		end
	end
	return nil
end
    else
        print("Toggle Off")
    end
end)

--auto report

Tab7Section:NewToggle("auto report", "report player", function(state)
    if state then
        setfflag("AbuseReportScreenshotPercentage", 0)
setfflag("DFFlagAbuseReportScreenshot", "False") 

local Default = {
	Advertise = true;
	Safe = false;
	Webhook = "";
	
	Words = {
	    Blacklist = "https://raw.githubusercontent.com/CF-Trail/Auto-Report/main/words/blacklisted.lua";
	    Whitelist = "https://raw.githubusercontent.com/CF-Trail/Auto-Report/main/words/whitelisted.lua";
	};
}

if not getgenv().autoreport then
	getgenv().autoreport = Default
end;

for _,v in next, Default do
	if not getgenv().autoreport[_] then getgenv().autoreport[_] = v end
end

if (getgenv()).autoreport.library == nil then
	(getgenv()).autoreport.library = (loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source")))();
end;

local messages = {
	blacklisted = loadstring(game:HttpGet(getgenv().autoreport.Words.Blacklist))(),
	whitelisted = loadstring(game:HttpGet(getgenv().autoreport.Words.Whitelist))()
}

local lib = {};
local success, error = pcall(function()
	function lib:notify(title, text)
		(getgenv()).autoreport.library:MakeNotification({
			Name = title,
			Content = text,
			Time = 3
		});
	end;
	function lib:report(player, thing, reason, offensive)

		for word, _ in next, messages.whitelisted do
			if string.match(getgenv().autoreport.Message, word) then
				return false;
			end;
		end;
		if (getgenv()).autoreport.Webhook == "" or (getgenv()).autoreport.Webhook == nil then
			lib:notify("Report", "Reported " .. player.Name .. " because of \"" .. (getgenv()).autoreport.Message .. "\"");
		else
				local data = 
				{
					["embeds"] = {{
						["title"] = "**" .. gameName .. "**",
						["description"] = "Auto-reported a player",
						["type"] = "rich",
						["color"] = tonumber(0x00aff4),
						["url"] = "https://www.roblox.com/games/" .. game.PlaceId,
						["fields"] = {
							{
								["name"] = "Name",
								["value"] = "[" .. player.Name .. "](https://www.roblox.com/users/" .. player.UserId .. ")",
								["inline"] = true
							},
							{
								["name"] = "Message",
								["value"] = getgenv().autoreport.Message,
								["inline"] = true
							},
							{
								["name"] = "Offensive part",
								["value"] = offensive,
								["inline"] = true
							}
						},
						["footer"] = {
							["text"] = "\nIf you think this is a mistake, contact snnwer#1349 or .gg#1780"
						},
						["author"] = {
							["name"] = "Auto Report"
						}
					}}
				}
			local newdata = (game:GetService("HttpService")):JSONEncode(data);
			local headers = {
				["content-type"] = "application/json"
			};
			request = http_request or request or HttpPost or syn.request;
			local abcdef = {
				Url = (getgenv()).autoreport.Webhook,
				Body = newdata,
				Method = "POST",
				Headers = headers
			};
			request(abcdef);
		end;

		for i = 1, (getgenv().autoreport.Safe and math.random(1,2) or math.random(5, 12)) do
			wait(math.random(1, 15) / 10)
			game.Players:ReportAbuse(player, thing, reason)
		end;
	end;

	function handler(player, msg)
		local thing, reason;
		msg = string.lower(msg);
		for i, v in next, messages.blacklisted do
			if string.match(msg, i) then
				thing, reason, offensive = v[1], v[2], i;
				if (getgenv()).autoreport.Advertise == true then (game:GetService("ReplicatedStorage")).DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. player.Name .. " you got mass reported by .gg/outliershub", "All"); end;
			end;
		end;
		if thing and reason and offensive then
			lib:report(player, thing, reason, offensive);
		end;
	end;
end);

if not success then
	error(error);
end;

for i, plr in pairs(game.Players:GetPlayers()) do
	if plr ~= game.Players.LocalPlayer then
		plr.Chatted:Connect(function(msg)
			(getgenv()).autoreport.Message = msg;
			handler(plr, msg);
		end);
	end;
end;
game.Players.PlayerAdded:Connect(function(plr)
	if plr ~= game.Players.LocalPlayer then
		plr.Chatted:Connect(function(msg)
			(getgenv()).autoreport.Message = msg;
			handler(plr, msg);
		end);
	end;
end);

(getgenv()).autoreport.library:MakeNotification({
	Name = "auto report load!",
	Content = "credits to nobody",
	Time = 8
});

(getgenv()).autoreport.library:MakeNotification({
	Name = "idk",
	Content = "credits to nobody",
	Time = 8
});
    else
        print("Toggle Off")
    end
end)

