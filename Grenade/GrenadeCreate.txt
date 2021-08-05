-- Put this in ServerScriptServices

--[[ 
  GrenadeCreate.lua
]]

local RStorage = game:GetService("ReplicatedStorage")
local grenade_event = RStorage:WaitForChild("GrenadeEvent")

grenade_event.OnServerEvent:Connect(function(player, mousePos)
	local grenade = Instance.new("Part")
	grenade.Name = "Grenade"
	grenade.Parent = game.Workspace
	grenade.Shape = Enum.PartType.Ball
	grenade.Size = Vector3.new(1,1,1)
	grenade.BrickColor = BrickColor.new("Dark green")
	
	local speed = 100
	local arcPos = mousePos + Vector3.new(0,5,0)
	grenade.CFrame = CFrame.new(player.Character.Head.Position, arcPos)
	grenade.Velocity = grenade.CFrame.lookVector * speed
	local grenadeScript = game.ServerStorage:FindFirstChild("GrenadeExplode"):Clone()
	grenadeScript.Parent = grenade
end)  
