--Play Button
local TweenService = game:GetService("TweenService")
local FadeIn = TweenService:Create(script.Parent.Parent.Parent.Parent.IntroCreditScreenGui.IntroCreditFrame, TweenInfo.new(.25), {BackgroundTransparency = 1})
local FadeOut = TweenService:Create(script.Parent.Parent.Parent.Parent.IntroCreditScreenGui.IntroCreditFrame, TweenInfo.new(.25), {BackgroundTransparency = 0})
local IntroValue = game:GetService("ReplicatedStorage").Values:WaitForChild("Camera")

script.Parent.MouseButton1Click:Connect(function()
	FadeOut:Play()
	wait(.25)
	game:GetService("UserInputService").MouseIconEnabled = false
	game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.LockCenter	
	IntroValue.Value = false
	workspace.Camera.CameraType = Enum.CameraType.Custom
	workspace.Camera.FieldOfView = 70
	script.Parent.Parent.Parent.BackgroundFrame.Visible = false
	script.Parent.Parent.Parent.Parent.TitleScreenGui.Enabled = false
	script.Parent.Parent.Parent.Parent.Parent.IGGUI.UI.Enabled = true
	FadeIn:Play()
end)