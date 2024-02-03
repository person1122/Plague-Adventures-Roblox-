--Chat
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Character = game.Players.LocalPlayer.Character		

UserInputService.InputChanged:Connect(function(Input)
	for _,v in pairs(workspace:GetChildren()) do
		if v:IsA("Part") and v.Name == "DialogueTrigger" then
			local LocalPlayer = game.Players.LocalPlayer
			local VDistanceFromCharacter = LocalPlayer:DistanceFromCharacter(v.Position)
			local DialogueBillboardGui = ReplicatedStorage:WaitForChild("DialogueBillboardGui"):Clone()
			
			if VDistanceFromCharacter <= 15 then
				DialogueBillboardGui.Parent = v
				DialogueBillboardGui.Adornee = v
			else
				DialogueBillboardGui.Parent = nil
				DialogueBillboardGui.Adornee = nil
			end
		end
	end
end)

--[[local Animation
local function Roll()
	ReplicatedStorage:WaitForChild("RoleEvent"):FireServer(game.Players.LocalPlayer)
	Animation = Instance.new("Animation")
	Animation:SetAttribute(game.Players.LocalPlayer.Character:WaitForChild("Humanoid"))
	Animation.AnimationId = "rbxassetid://11701474548"

	local RollAnimation = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(Animation)
	RollAnimation:Play(0,10)
end

local last_press = tick()
UserInputService.InputBegan:Connect(function(input, game_processed)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").MoveDirection.Magnitude > 0 then
		if game_processed or tick() - last_press < 1 then
			return
		end
		
		last_press = tick()
		
		if input.KeyCode == Enum.KeyCode.Space then
			Roll()
		elseif input.UserInputType == Enum.UserInputType.Gamepad1 then
			if input.KeyCode == Enum.KeyCode.ButtonA then
				return Roll()
			end
		end
	end
end)--]]