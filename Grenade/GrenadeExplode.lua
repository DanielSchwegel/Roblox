-- Put this in ServerStorage

--[[
  GrenadeExplode.lua
 ]]

local grenade = script.Parent

local EXPLODE_TIME = 2
local RADIUS = 20

wait(EXPLODE_TIME)
local explosion = Instance.new("Explosion")
explosion.ExplosionType = Enum.ExplosionType.NoCraters
explosion.Parent = game.Workspace
explosion.Position = grenade.Position
explosion.BlastRadius = RADIUS
grenade:Destroy()
