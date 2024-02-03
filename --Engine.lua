--Engine
local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChild("Humanoid")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Toggled, Toggled1, Debounce = false, false, false

Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
Humanoid.WalkSpeed = 16

local PlayerGui = LocalPlayer.PlayerGui
local InventoryTween1 = TweenService:Create(PlayerGui.IGGUI.InventoryUI.InventoryFrame, TweenInfo.new(.1), {BackgroundTransparency = 0.6})
local InventoryTween2 = TweenService:Create(PlayerGui.IGGUI.InventoryUI.InventoryFrame.Inventory, TweenInfo.new(.1), {Position = UDim2.new(0.124, 0,0.124, 0)})
local InventoryTween3 = TweenService:Create(PlayerGui.IGGUI.InventoryUI.InventoryFrame, TweenInfo.new(.1), {BackgroundTransparency = 1})
local InventoryTween4 = TweenService:Create(PlayerGui.IGGUI.InventoryUI.InventoryFrame.Inventory, TweenInfo.new(.1), {Position = UDim2.new(1, 0,0.124, 0)})

local CinematicUpTween = TweenService:Create(PlayerGui.IGGUI.Cinematic.Cinematic_Top, TweenInfo.new(.25), {Position = UDim2.new(0,0,0,0)})
local CinematicDownTween = TweenService:Create(PlayerGui.IGGUI.Cinematic.Cinematic_Bottom, TweenInfo.new(.25), {Position = UDim2.new(0,0,0.85,0)})
local CinematicUpTween1 = TweenService:Create(PlayerGui.IGGUI.Cinematic.Cinematic_Top, TweenInfo.new(.25), {Position = UDim2.new(0,0,-0.15,0)})
local CinematicDownTween1 = TweenService:Create(PlayerGui.IGGUI.Cinematic.Cinematic_Bottom, TweenInfo.new(.25), {Position = UDim2.new(0,0,1,0)})
--{0, 0},{0.85, 0}
Humanoid.HealthChanged:Connect(function()
	
	if Humanoid.Health == 1 then
		game:GetService("SoundService"):WaitForChild("lowhealth").Playing = true
	else
		game:GetService("SoundService"):WaitForChild("lowhealth").Playing = false
	end
	
	Humanoid.Changed:Connect(function()
	if Humanoid.MaxHealth == 3 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
		
		if Humanoid.Health == 0 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.TopLeft3Hearts.Heart0.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.TopLeft3Hearts.Heart1.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.TopLeft3Hearts.Heart2.Visible = false
		elseif Humanoid.Health == 1  then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.TopLeft3Hearts.Heart0.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.TopLeft3Hearts.Heart1.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.TopLeft3Hearts.Heart2.Visible = true
		elseif Humanoid.Health == 2 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.TopLeft3Hearts.Heart0.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.TopLeft3Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.TopLeft3Hearts.Heart2.Visible = true
		elseif Humanoid.Health == 3 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.TopLeft3Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.TopLeft3Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.TopLeft3Hearts.Heart2.Visible = true
		end
		
	elseif Humanoid.MaxHealth == 4 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
		
		if Humanoid.Health == 0 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart0.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart1.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart2.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart3.Visible = false
		elseif Humanoid.Health == 1 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart1.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart2.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart3.Visible = false
		elseif Humanoid.Health == 2 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart2.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart3.Visible = false
		elseif Humanoid.Health == 3 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart3.Visible = false
		elseif Humanoid.Health == 4 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.TopLeft4Hearts.Heart3.Visible = true
		end
		
	elseif Humanoid.MaxHealth == 5 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
		
		if Humanoid.Health == 0 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart0.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart1.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart2.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart4.Visible = false
		elseif Humanoid.Health == 1 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart1.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart2.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart4.Visible = false
		elseif Humanoid.Health == 2 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart2.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart4.Visible = false
		elseif Humanoid.Health == 3 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart4.Visible = false
		elseif Humanoid.Health == 4 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart3.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart4.Visible = false
		elseif Humanoid.Health == 5 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart3.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.TopLeft5Hearts.Heart4.Visible = true
		end
		
	elseif Humanoid.MaxHealth == 6 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false

		if Humanoid.Health == 0 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart0.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart1.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart2.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart5.Visible = false
		elseif Humanoid.Health == 1 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart1.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart2.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart5.Visible = false
		elseif Humanoid.Health == 2 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart2.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart5.Visible = false
		elseif Humanoid.Health == 3 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart5.Visible = false
		elseif Humanoid.Health == 4 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart3.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart5.Visible = false
		elseif Humanoid.Health == 5 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart3.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart4.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart5.Visible = false
		elseif Humanoid.Health == 6 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart3.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart4.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.TopLeft6Hearts.Heart5.Visible = true
		end
		
	elseif Humanoid.MaxHealth == 7 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false

		if Humanoid.Health == 0 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart0.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart1.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart2.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart6.Visible = false
		elseif Humanoid.Health == 1 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart1.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart2.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart6.Visible = false
		elseif Humanoid.Health == 2 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart2.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart6.Visible = false
		elseif Humanoid.Health == 3 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart6.Visible = false
		elseif Humanoid.Health == 4 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart3.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart6.Visible = false
		elseif Humanoid.Health == 5 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart3.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart4.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart6.Visible = false
		elseif Humanoid.Health == 6 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart3.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart4.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart5.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart6.Visible = false
		elseif Humanoid.Health == 7 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart0.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart1.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart2.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart3.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart4.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart5.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.TopLeft7Hearts.Heart6.Visible = true
		end
			
		elseif Humanoid.MaxHealth == 8 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
	
			if Humanoid.Health == 0 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart0.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart7.Visible = false
			elseif Humanoid.Health == 1 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart7.Visible = false
			elseif Humanoid.Health == 2 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart7.Visible = false
			elseif Humanoid.Health == 3 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart7.Visible = false
			elseif Humanoid.Health == 4 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart7.Visible = false
			elseif Humanoid.Health == 5 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart7.Visible = false
			elseif Humanoid.Health == 6 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart7.Visible = false
			elseif Humanoid.Health == 7 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart7.Visible = false
			elseif Humanoid.Health == 8 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts8.TopLeft8Hearts.Heart7.Visible = true
			end
			
		elseif Humanoid.MaxHealth == 9 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
	
			if Humanoid.Health == 0 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart0.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart8.Visible = false
			elseif Humanoid.Health == 1 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart8.Visible = false
			elseif Humanoid.Health == 2 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart8.Visible = false
			elseif Humanoid.Health == 3 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart8.Visible = false
			elseif Humanoid.Health == 4 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart8.Visible = false
			elseif Humanoid.Health == 5 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart8.Visible = false
			elseif Humanoid.Health == 6 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart8.Visible = false
			elseif Humanoid.Health == 7 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart8.Visible = false
			elseif Humanoid.Health == 8	then
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart8.Visible = false
			elseif Humanoid.Health == 9 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts9.TopLeft9Hearts.Heart8.Visible = true
			end
			
		elseif Humanoid.MaxHealth == 10 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
	
			if Humanoid.Health == 0 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart0.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart9.Visible = false
			elseif Humanoid.Health == 1 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart9.Visible = false
			elseif Humanoid.Health == 2 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart9.Visible = false
			elseif Humanoid.Health == 3 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart9.Visible = false
			elseif Humanoid.Health == 4 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart9.Visible = false
			elseif Humanoid.Health == 5 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart9.Visible = false
			elseif Humanoid.Health == 6 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart9.Visible = false
			elseif Humanoid.Health == 7 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart9.Visible = false
			elseif Humanoid.Health == 8 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart9.Visible = false
			elseif Humanoid.Health == 9 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart9.Visible = false
			elseif Humanoid.Health == 10 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts10.TopLeft10Hearts.Heart9.Visible = true
			end
		elseif Humanoid.MaxHealth == 11 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
			
			if Humanoid.Health == 0 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart0.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart10.Visible = false	
			elseif Humanoid.Health == 1 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 2 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 3 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 4 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 5 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 6 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 7 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 8 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 9 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 10 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 11 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts11.TopLeft11Hearts.Heart10.Visible = true
			end
		elseif Humanoid.MaxHealth == 12 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
			if Humanoid.Health == 0 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 1 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 2 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 3 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 4 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 5 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 6 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 7 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 8 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 9 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 10 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 11 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = false
			elseif Humanoid.Health == 12 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts12.TopLeft12Hearts.Heart10.Visible = true
			end
		elseif Humanoid.MaxHealth == 13 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
			if Humanoid.Health == 0 then

			elseif Humanoid.Health == 1 then

			elseif Humanoid.Health == 2 then

			elseif Humanoid.Health == 3 then

			elseif Humanoid.Health == 4 then

			elseif Humanoid.Health == 5 then

			elseif Humanoid.Health == 6 then

			elseif Humanoid.Health == 7 then

			elseif Humanoid.Health == 8 then

			elseif Humanoid.Health == 9 then

			elseif Humanoid.Health == 10 then

			elseif Humanoid.Health == 11 then
				
			elseif Humanoid.Health == 12 then
				
			elseif Humanoid.Health == 13 then
				
			end	
		elseif Humanoid.MaxHealth == 14 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
				if Humanoid.Health == 0 then

				elseif Humanoid.Health == 1 then

				elseif Humanoid.Health == 2 then

				elseif Humanoid.Health == 3 then

				elseif Humanoid.Health == 4 then

				elseif Humanoid.Health == 5 then

				elseif Humanoid.Health == 6 then

				elseif Humanoid.Health == 7 then

				elseif Humanoid.Health == 8 then

				elseif Humanoid.Health == 9 then

				elseif Humanoid.Health == 10 then

				elseif Humanoid.Health == 11 then
				
				elseif Humanoid.Health == 12 then
					
				elseif Humanoid.Health == 13 then
				
				elseif Humanoid.Health == 14 then
				
			end
		elseif Humanoid.MaxHealth == 15 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
			if Humanoid.Health == 0 then
				
			elseif Humanoid.Health == 1 then
				
			elseif Humanoid.Health == 2 then
				
			elseif Humanoid.Health == 3 then
				
			elseif Humanoid.Health == 4 then
				
			elseif Humanoid.Health == 5 then
				
			elseif Humanoid.Health == 6 then
				
			elseif Humanoid.Health == 7 then
				
			elseif Humanoid.Health == 8 then
				
			elseif Humanoid.Health == 9 then
				
			elseif Humanoid.Health == 10 then
				
			elseif Humanoid.Health == 11 then
				
			elseif Humanoid.Health == 12 then
				
			elseif Humanoid.Health == 13 then
				
			elseif Humanoid.Health == 14 then
				
			elseif Humanoid.Health == 15 then
				
			end				
		elseif Humanoid.MaxHealth == 16 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
			if Humanoid.Health == 0 then
				
			elseif Humanoid.Health == 1 then
				
			elseif Humanoid.Health == 2 then
				
			elseif Humanoid.Health == 3 then
				
			elseif Humanoid.Health == 4 then
				
			elseif Humanoid.Health == 5 then
				
			elseif Humanoid.Health == 6 then
				
			elseif Humanoid.Health == 7 then
				
			elseif Humanoid.Health == 8 then
				
			elseif Humanoid.Health == 9 then
				
			elseif Humanoid.Health == 10 then
				
			elseif Humanoid.Health == 11 then
				
			elseif Humanoid.Health == 12 then
				
			elseif Humanoid.Health == 13 then
				
			elseif Humanoid.Health == 14 then
				
			elseif Humanoid.Health == 15 then	
				
			elseif Humanoid.Health == 16 then
				
			end
					
		elseif Humanoid.MaxHealth == 17 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
			if Humanoid.Health == 0 then
				
			elseif Humanoid.Health == 1 then
				
			elseif Humanoid.Health == 2 then
				
			elseif Humanoid.Health == 3 then
				
			elseif Humanoid.Health == 4 then
				
			elseif Humanoid.Health == 5 then
				
			elseif Humanoid.Health == 6 then
				
			elseif Humanoid.Health == 7 then
				
			elseif Humanoid.Health == 8 then
				
			elseif Humanoid.Health == 9 then
				
			elseif Humanoid.Health == 10 then
				
			elseif Humanoid.Health == 11 then
				
			elseif Humanoid.Health == 12 then
				
			elseif Humanoid.Health == 13 then
				
			elseif Humanoid.Health == 14 then
				
			elseif Humanoid.Health == 15 then
				
			elseif Humanoid.Health == 16 then
				
			elseif Humanoid.Health == 17 then
				
			end
					
		elseif Humanoid.MaxHealth == 18 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
			if Humanoid.Health == 0 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 1 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 2 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 3 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 4 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 5 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 6 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 7 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 8 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 9 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 10 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 11 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 12 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 13 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 14 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 15 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 16 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 17 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = false
			elseif Humanoid.Health == 18 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart13.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart14.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart15.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart16.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts18.TopLeft18Hearts.Heart17.Visible = true
			end
					
		elseif Humanoid.MaxHealth == 19 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = true
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = false
			if Humanoid.Health == 0 then
				
			elseif Humanoid.Health == 1 then
				
			elseif Humanoid.Health == 2 then
				
			elseif Humanoid.Health == 3 then
				
			elseif Humanoid.Health == 4 then
				
			elseif Humanoid.Health == 5 then
				
			elseif Humanoid.Health == 6 then
				
			elseif Humanoid.Health == 7 then
				
			elseif Humanoid.Health == 8 then
				
			elseif Humanoid.Health == 9 then
				
			elseif Humanoid.Health == 10 then
				
			elseif Humanoid.Health == 11 then
				
			elseif Humanoid.Health == 12 then
				
			elseif Humanoid.Health == 13 then
				
			elseif Humanoid.Health == 14 then
				
			elseif Humanoid.Health == 15 then
				
			elseif Humanoid.Health == 16 then
				
			elseif Humanoid.Health == 17 then
				
			elseif Humanoid.Health == 18 then
				
			elseif Humanoid.Health == 19 then
				
			end
					
		elseif Humanoid.MaxHealth == 20 then
			PlayerGui.IGGUI.UI.TopLeft.Hearts3.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts4.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts5.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts6.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts7.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts8.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts9.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts10.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts11.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts12.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts13.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts14.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts15.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts16.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts17.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts18.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts19.Visible = false
			PlayerGui.IGGUI.UI.TopLeft.Hearts20.Visible = true
			if Humanoid.Health == 0 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 1 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 2 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 3 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 4 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 5 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 6 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 7 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 8 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 9 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 10 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 11 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 12 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 13 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 14 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 15 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 16 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 17 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 18 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = false
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 19 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = false
			elseif Humanoid.Health == 20 then
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart0.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart1.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart2.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart3.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart4.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart5.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart6.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart7.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart8.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart9.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart10.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart11.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart12.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart13.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart14.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart15.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart16.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart17.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart18.Visible = true
				PlayerGui.IGGUI.UI.TopLeft.Hearts20.TopLeft20Hearts.Heart19.Visible = true
			end
		end
	end)
end)

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
UserInputService.InputBegan:Connect(function(input, game_processed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
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
	elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
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
	elseif input.KeyCode == Enum.KeyCode.Tab then
		if not Toggled1 then
			PlayerGui.IGGUI.InventoryUI.InventoryFrame.Visible = true
			PlayerGui.IGGUI.InventoryUI.InventoryFrame.BackgroundTransparency = 1
			PlayerGui.IGGUI.InventoryUI.InventoryFrame.Inventory.Position = UDim2.new(1, 0,0.124, 0)
		
			InventoryTween1:Play()
			InventoryTween2:Play()
		else
			InventoryTween3:Play()
			InventoryTween4:Play()
		end
		
		Toggled1 = not Toggled1
	elseif input.KeyCode == Enum.KeyCode.LeftShift then
		PlayerGui.IGGUI.Cinematic.Enabled = true
		PlayerGui.IGGUI.Cinematic.Cinematic_Bottom.Position = UDim2.new(0, 0,1, 0)
		PlayerGui.IGGUI.Cinematic.Cinematic_Top.Position = UDim2.new(0, 0,-0.15, 0)
		PlayerGui.IGGUI.UI.TopRight.Visible = false
		CinematicUpTween:Play()
		CinematicDownTween:Play()
	end
	
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").MoveDirection.Magnitude > 0 and ReplicatedStorage:WaitForChild("Values").IsFalling.Value == false then
		if game_processed or tick() - last_press < 1 then
			return
		end

		last_press = tick()
		
		if input.KeyCode == Enum.KeyCode.Space then
			Debounce = true
			Roll()
			wait(1)
			Debounce = false
		else
			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			ReplicatedStorage:WaitForChild("DialogueBillboardGui").DialogueGUI.Button.Button.Text = "E"
			ReplicatedStorage:WaitForChild("DialogueBillboardGui").DialogueGUI.Button.Shadow.Text = "E"
		end
	else
		return
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		PlayerGui.IGGUI.UI.TopRight.Visible = true
		CinematicUpTween1:Play()
		CinematicDownTween1:Play()
	end
end)

Humanoid.StateChanged:Connect(function(PreviousState, NewState)
	if NewState == Enum.HumanoidStateType.Freefall then
		ReplicatedStorage:WaitForChild("Values").IsFalling.Value = true
	elseif NewState == Enum.HumanoidStateType.Landed then
		ReplicatedStorage:WaitForChild("Values").IsFalling.Value = false
	end
end)