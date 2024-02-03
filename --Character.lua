--Character
local Sword, Weld

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function onCharacterAdded(character)
	character:WaitForChild("Health"):Destroy()
	local humanoid = character:WaitForChild("Humanoid")
	local animator = humanoid:WaitForChild("Animator")

	for _, playingTrack in pairs(animator:GetPlayingAnimationTracks()) do
		playingTrack:Stop(0)
	end

	local animateScript = character:WaitForChild("Animate")
	animateScript.run.RunAnim.AnimationId = "rbxassetid://11703127989"
	animateScript.walk.WalkAnim.AnimationId = "rbxassetid://11703127989"
	animateScript.idle.Animation1.AnimationId = "rbxassetid://11704391539"
	animateScript.idle.Animation2.AnimationId = "rbxassetid://11703473342"	
	
	for _,v in pairs(character:GetChildren()) do
		if v:IsA("Accessory") or v:IsA("ShirtGraphic") then
			v:Destroy()
		elseif v:IsA("BasePart") and v.Name == "Head" then
			local PlagueDoctorMask, TopHat, BlackCombatScarf = ReplicatedStorage:WaitForChild("Accessories"):WaitForChild("Plague Doctors Mask"):Clone(),  ReplicatedStorage:WaitForChild("Accessories"):WaitForChild("TopHat"):Clone(), ReplicatedStorage:WaitForChild("Accessories"):WaitForChild("Black Combat Scarf"):Clone()
			PlagueDoctorMask.Parent = character
			PlagueDoctorMask.Handle:WaitForChild("AccessoryWeld").Part1 = v
			
			BlackCombatScarf.Parent = character
			BlackCombatScarf.Handle:WaitForChild("AccessoryWeld").Part1 = v
			
			TopHat.Parent = character
			TopHat.Handle:WaitForChild("AccessoryWeld").Part1 = v
		elseif v:IsA("BodyColors") then
			v.HeadColor = BrickColor.new("Really black")
			v.RightArmColor = BrickColor.new("Institutional white")
			v.LeftArmColor = BrickColor.new("Institutional white")
		elseif v:IsA("Shirt") then
			v.ShirtTemplate = "http://www.roblox.com/asset/?id=1950145921"
		elseif v:IsA("Pants") then
			v.PantsTemplate = "http://www.roblox.com/asset/?id=1213758366"
		elseif v:IsA("BasePart") and v.Name == "Torso" then
			local FakeSword = ReplicatedStorage:WaitForChild("FakeSword"):Clone()
			FakeSword.Parent = v
			FakeSword.FakeSwordMotor6D.Part0 = FakeSword
			FakeSword.FakeSwordMotor6D.Part1 = v
			
			ReplicatedStorage.RemoteEvents:WaitForChild("Sheath1").OnServerEvent:Connect(function(Player)
				FakeSword.Transparency = 0
			end)
			
			ReplicatedStorage.RemoteEvents:WaitForChild("Unsheath1").OnServerEvent:Connect(function(Player)
				FakeSword.Transparency = 1
			end)
		elseif v:IsA("BasePart") and v.Name == "Right Arm" then
			Sword = ReplicatedStorage:WaitForChild("Regular Sword"):Clone()
			
			Sword.Parent = v
			Sword.Handle.HandleMotor6D.Part0 = Sword.Handle
			Sword.Handle.HandleMotor6D.Part1 = v
			
			ReplicatedStorage.RemoteEvents:WaitForChild("Sheath").OnServerEvent:Connect(function(Player)
				Sword.Handle.Transparency = 1
				Sword.Handle.Sheath:Play()
			end)
			
			ReplicatedStorage.RemoteEvents:WaitForChild("Unsheath").OnServerEvent:Connect(function(Player)
				Sword.Handle.Transparency = 0
				Sword.Handle.Unsheath:Play()
			end)
			
			ReplicatedStorage.RemoteEvents:WaitForChild("SwordEvent1").OnServerEvent:Connect(function(Player)
				ReplicatedStorage.Values:WaitForChild("SwingValue").Value = true
				wait(.25)
				ReplicatedStorage.Values:WaitForChild("SwingValue").Value = false
			end)
		end
	end
end


Players.PlayerAdded:Connect(function(Player)
	Player.CharacterAppearanceLoaded:Connect(onCharacterAdded)
end)