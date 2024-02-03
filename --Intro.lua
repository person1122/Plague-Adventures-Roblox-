--Intro
local Camera = workspace.CurrentCamera	
local TweenService = game:GetService("TweenService")
local IntroValue = game:GetService("ReplicatedStorage").Values:WaitForChild("Camera")

local FadeIn = TweenService:Create(script.Parent.IntroCreditScreenGui.IntroCreditFrame, TweenInfo.new(1), {BackgroundTransparency = 1})
local FadeOut = TweenService:Create(script.Parent.IntroCreditScreenGui.IntroCreditFrame, TweenInfo.new(1), {BackgroundTransparency = 0})
local FOV = TweenService:Create(Camera, TweenInfo.new(6), {FieldOfView = 30})

IntroValue.Value = true
script.Parent.IntroCreditScreenGui.IntroCreditFrame.Visible = true
FadeIn:Play()
FOV:Play()
game:GetService("SoundService").swoosh:Play()
wait(6)
FadeOut:Play()
wait(2)
Camera.FieldOfView = 70
script.Parent.TitleScreenGui.BackgroundFrame.Visible = true
FadeIn:Play()
IntroValue.Value = false
wait(1)
script.CameraScript.Enabled = false