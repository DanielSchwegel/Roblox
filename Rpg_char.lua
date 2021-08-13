--[[
	Rpg_char
]]

local LVL2_EXP = 10
local EXP_LVL_FACTOR = 2

local Rpg_char = {}

Rpg_char.meta = {
	__call = function (self) -- constructor
		local charac = {}   
		setmetatable(charac, self)
		self.__index = self
		
		return charac
	end
}

-- Stats -------------------------------------
Rpg_char.identity = ""
Rpg_char.lvl = 5
Rpg_char.exp = 5
Rpg_char.points = 5

Rpg_char.str = 5
Rpg_char.dex = 5
Rpg_char.const = 5
Rpg_char.intel = 5
Rpg_char.wis = 5
Rpg_char.charis = 5

-- Abilities -----------------------------------------------
function Rpg_char:detonate_minor()
	print("Detonate Minor")
end

Rpg_char.abilities = {
    lvl1 = {},
	lvl2 = {detonate_minor = Rpg_char.detonate_minor},
	lvl3 = {},
	lvl4 = {},
	lvl5 = {},
	lvl6 = {},
	lvl7 = {},
	lvl8 = {},
	lvl9 = {},
	lvl10 = {}
}
-- Gets/Sets ------------------------------------------------

function Rpg_char:get_identity() return self.identity end
function Rpg_char:get_exp() return self.exp end
function Rpg_char:get_lvl() return self.lvl end

function Rpg_char:get_str() return self.str end
function Rpg_char:get_dex() return self.dex end
function Rpg_char:get_const() return self.const end
function Rpg_char:get_intel() return self.intel end
function Rpg_char:get_wis() return self.wis end
function Rpg_char:get_charis() return self.charis end

function Rpg_char:increment_exp(value) 
	self.exp += value
	if self.exp >= LVL2_EXP * EXP_LVL_FACTOR then
		self:increment_lvl()
	end
end

function Rpg_char:increment_lvl() self.lvl += 1 end
-------------------------------------------------

return setmetatable(Rpg_char, Rpg_char.meta)