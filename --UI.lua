--UI
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)	
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
local UserInputService = game:GetService("UserInputService")

local Text_In, Text_Out = game:GetService("ReplicatedStorage").RemoteEvents:WaitForChild("Text_In"), game:GetService("ReplicatedStorage").RemoteEvents:WaitForChild("Text_Out")
local Cutscene = game:GetService("ReplicatedStorage").RemoteEvents:WaitForChild("Cutscene")
local Transition_In, Transition_Out = game:GetService("ReplicatedStorage").RemoteEvents:WaitForChild("TransitionIn"), game:GetService("ReplicatedStorage").RemoteEvents:WaitForChild("TransitionOut")

local SwordEvent2, SwordEvent3 = game:GetService("ReplicatedStorage").RemoteEvents:WaitForChild("SwordEvent2"), game:GetService("ReplicatedStorage").RemoteEvents:WaitForChild("SwordEvent3")

local TextSpeedValue = game:GetService("ReplicatedStorage").Values:WaitForChild("TextSpeedValue")

local TextFrame = script.Parent.IGGUI.UI.TextFrame
local TweenService = game:GetService("TweenService")
local PlayerGui = game.Players.LocalPlayer.PlayerGui

local CinematicUpTween = TweenService:Create(PlayerGui.IGGUI.Cinematic.Cinematic_Top, TweenInfo.new(.25), {Position = UDim2.new(0,0,0,0)})
local CinematicDownTween = TweenService:Create(PlayerGui.IGGUI.Cinematic.Cinematic_Bottom, TweenInfo.new(.25), {Position = UDim2.new(0,0,0.85,0)})
local CinematicUpTween1 = TweenService:Create(PlayerGui.IGGUI.Cinematic.Cinematic_Top, TweenInfo.new(.25), {Position = UDim2.new(0,0,-0.15,0)})
local CinematicDownTween1 = TweenService:Create(PlayerGui.IGGUI.Cinematic.Cinematic_Bottom, TweenInfo.new(.25), {Position = UDim2.new(0,0,1,0)})

local FadeIn, FadeOut = TweenService:Create(PlayerGui.IntroGUI.IntroCreditScreenGui.IntroCreditFrame, TweenInfo.new(1), {BackgroundTransparency = 1}), TweenService:Create(PlayerGui.IntroGUI.IntroCreditScreenGui.IntroCreditFrame, TweenInfo.new(1), {BackgroundTransparency = 0})

Text_In.OnClientEvent:Connect(function(TextValue)
	TextFrame.Visible = true
	TextFrame.Position = UDim2.new(0.333, 0,1, 0)
	local TextFrame_In = TweenService:Create(TextFrame, TweenInfo.new(.25), {Position = UDim2.new(0.333, 0,0.677, 0)})
	TextFrame_In:Play()
	TextFrame.Text.Visible = true
	TextFrame.Text.Text = TextValue
			
	for i = 1,#TextValue do
		TextFrame.Text.Text = string.sub(TextValue,1,i)
		wait(TextSpeedValue:GetPropertyChangedSignal("Value"))
	end
end)


Text_Out.OnClientEvent:Connect(function(RandomSound)
	local TextFrame_Out = TweenService:Create(TextFrame, TweenInfo.new(.25), {Position = UDim2.new(0.333, 0,1, 0)})
	TextFrame_Out:Play()
	wait(.25)
	TextFrame.Visible = false
	TextFrame.Text.Visible = false
	TextFrame.Text.Text = ""
	TextFrame.Position = UDim2.new(0.333, 0,0.677, 0)
end)

SwordEvent2.OnClientEvent:Connect(function(RandomSound)
	RandomSound:Play()
	script.Parent.ParticalAttachment.Spark.Enabled = true
	script.Parent.ParticalAttachment.Flash.Enabled = true
	wait(.1)
	script.Parent.ParticalAttachment.Spark.Enabled = false
	script.Parent.ParticalAttachment.Flash.Enabled = false
end)

SwordEvent3.OnClientEvent:Connect(function(RandomSound)
	RandomSound:Play()
end)

Cutscene.OnClientEvent:Connect(function()
	workspace.CurrentCamera.FieldOfView = 50
	for i = 0, 150 do
		if i == 0 then
			PlayerGui.IGGUI.Cinematic.Enabled = true
			PlayerGui.IGGUI.UI.TopRight.Visible = false
			PlayerGui.IGGUI.Cinematic.Cinematic_Bottom.Position = UDim2.new(0, 0,1, 0)
			PlayerGui.IGGUI.Cinematic.Cinematic_Top.Position = UDim2.new(0, 0,-0.15, 0)
			CinematicUpTween:Play()
			CinematicDownTween:Play()
			PlayerGui.IntroGUI.IntroCreditScreenGui.IntroCreditFrame.BackgroundTransparency = 0
			PlayerGui.IntroGUI.IntroCreditScreenGui.IntroCreditFrame.Visible = true
			PlayerGui.IntroGUI.IntroCreditScreenGui.Enabled = true
			FadeIn:Play()
		elseif i == 50 then
			local CameraFieldOfViewTween = TweenService:Create(workspace.CurrentCamera, TweenInfo.new(1.5), {FieldOfView = 65})
			CameraFieldOfViewTween:Play()
		end
		workspace.CurrentCamera.CFrame = workspace.CameraPart.CFrame
		workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
		wait(0)
	end
	
	CinematicUpTween1:Play()
	CinematicDownTween1:Play()
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	workspace.CurrentCamera.FieldOfView = 70
	
	workspace.CameraPart.Position = Vector3.new(18, -44, 73)
	workspace.CameraPart.Orientation = Vector3.new(0, 90, 0)
end)

Transition_In.OnClientEvent:Connect(function()
	FadeIn:Play()
end)

Transition_Out.OnClientEvent:Connect(function()
	FadeOut:Play()
end)