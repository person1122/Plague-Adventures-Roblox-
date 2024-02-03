--Role
script.Parent.Humanoid.MaxHealth = 3
script.Parent.Humanoid.Health = 3
--script.Parent.Humanoid.JumpPower = 0

local BodyVelocity
local ReplicatedStorage = game:GetService("ReplicatedStorage")

ReplicatedStorage.RemoteEvents:WaitForChild("RoleEvent").OnServerEvent:Connect(function(Player)
	local HumanoidRootPart = Player.Character:WaitForChild("HumanoidRootPart")
	BodyVelocity = Instance.new("BodyVelocity", HumanoidRootPart)
	BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	BodyVelocity.Velocity = HumanoidRootPart.CFrame.LookVector * 25
	wait(.25)
	BodyVelocity:Destroy()
end)
