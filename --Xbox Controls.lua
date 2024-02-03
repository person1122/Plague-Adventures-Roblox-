--Xbox Controls
local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChild("Humanoid")
local UserInputService = game:GetService("UserInputService")
local Toggled, Debounce = false, false

Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
Humanoid.WalkSpeed = 16

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Animation

local function Roll()
	ReplicatedStorage.RemoteEvents:WaitForChild("RoleEvent"):FireServer(game.Players.LocalPlayer)
	Animation = Instance.new("Animation")
	Animation:SetAttribute(game.Players.LocalPlayer.Character:WaitForChild("Humanoid"))
	Animation.AnimationId = "rbxassetid://11701474548"

	local RollAnimation = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(Animation)
	RollAnimation:Play(0,10)
end

local function SwordSwingWoosh()
	Character.Humanoid.WalkSpeed = 0
	Character:WaitForChild("Right Arm"):FindFirstChild("Regular Sword"):WaitForChild("Handle").Swoosh.Enabled = true
	wait(.25)
	Character:WaitForChild("Right Arm"):FindFirstChild("Regular Sword"):WaitForChild("Handle").Swoosh.Enabled = false
	Character.Humanoid.WalkSpeed = 16
end

local last_press = tick()
local last_press1 = tick()
UserInputService.InputBegan:Connect(function(input, game_processed)
	if input.KeyCode == Enum.KeyCode.ButtonR2 then
		if ReplicatedStorage:WaitForChild("Values"):WaitForChild("IsSheathed").Value == false then	
			if game_processed or tick() - last_press < .75 then
				return
			end

			local animationsFolder = ReplicatedStorage:WaitForChild("Animations"):GetChildren()
			local soundFolder = ReplicatedStorage:WaitForChild("Regular Sword"):WaitForChild("Handle"):WaitForChild("Sounds"):GetChildren()

			local randomAnimation = animationsFolder[math.random(1, #animationsFolder)]
			local randomSound = soundFolder[math.random(1, #soundFolder)]
			game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(randomAnimation):Play()
			randomSound:Play()

			last_press = tick()

			ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("SwordEvent1"):FireServer(LocalPlayer)
			SwordSwingWoosh()
		else
			return
		end
	elseif input.KeyCode == Enum.KeyCode.ButtonL1 then
		local SheathAnimation = Instance.new("Animation")
		SheathAnimation.AnimationId = "rbxassetid://11725026414"
		if Debounce == false then
				Debounce = true
			if not Toggled then
				game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(SheathAnimation):Play()
				wait(.2)
				ReplicatedStorage.RemoteEvents:WaitForChild("Sheath"):FireServer(LocalPlayer)
				ReplicatedStorage.RemoteEvents:WaitForChild("Sheath1"):FireServer(LocalPlayer)
				ReplicatedStorage:WaitForChild("Values"):WaitForChild("IsSheathed").Value = true
			else
				game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(SheathAnimation):Play()
				wait(.2)
				ReplicatedStorage.RemoteEvents:WaitForChild("Unsheath"):FireServer(LocalPlayer)
				ReplicatedStorage.RemoteEvents:WaitForChild("Unsheath1"):FireServer(LocalPlayer)
				ReplicatedStorage:WaitForChild("Values"):WaitForChild("IsSheathed").Value = false
			end
		
			Toggled = not Toggled
			wait(1)
			Debounce = false
		end
	end
	
	if input.KeyCode == Enum.KeyCode.ButtonA then
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").MoveDirection.Magnitude > 0 and ReplicatedStorage:WaitForChild("Values").IsFalling.Value == false then
			if game_processed or tick() - last_press1 < 1 then
				return
			end

			last_press1 = tick()
		
			Debounce = true
			Roll()
			wait(1)
			Debounce = false
		end
		print("Test1")
	end
end)