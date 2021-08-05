--Put this as a local scirpt under StarterPlayerScirpts

--[[
  grenade.lua
]]
local userInput = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

local mouse = player:GetMouse()

local RStorage = game:GetService("ReplicatedStorage")
local grenade_event = RStorage:WaitForChild("GrenadeEvent")

local function throw(input, gameProcessed)
	if not gameProcessed then
		if input.UserInputType == Enum.UserInputType.Keyboard then
			local keycode = input.KeyCode
			if keycode == Enum.KeyCode.F and script.Grenades.Value > 0 then
				grenade_event:FireServer(mouse.Hit.p)
				script.Grenades.Value -= 1
				--player.PlayerGui.AWPGuiTemplate.Grenades.Text = "Grenades: " ..script.Grenades.Value
			end
		end
	end
end

userInput.InputBegan:Connect(throw)

