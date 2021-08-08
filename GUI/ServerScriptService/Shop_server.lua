--[[
	Shop_server.lua (Server)
]]

RStorage = game.ReplicatedStorage
buy_tool = RStorage:WaitForChild("buy_tool")

buy_tool.OnServerEvent:Connect(function(player, tool)
	local give_tool = RStorage.Shop_Items[tool.Name]:Clone()
	give_tool.Parent = player.Backpack
end)