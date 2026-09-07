
local rewards = {
    { id = 27457, name = "Wand of Destruction" },
    { id = 27458, name = "Rod of Destruction" },
    { id = 27449, name = "Blade of Destruction" },
    { id = 27450, name = "Slayer of Destruction" },
    { id = 27451, name = "Axe of Destruction" },
    { id = 27452, name = "Chooper of Destruction" },
    { id = 27453, name = "Mace of Destruction" },
    { id = 28454, name = "Hammer of Destruction" },
    { id = 27455, name = "Bow of Destruction" },
    { id = 27456, name = "Crossbow of Destruction" },
    { id = 22536, name = "Thundermind Raiment" },
    { id = 22537, name = "Frostmind Raiment" },
    { id = 22534, name = "Firemind Raiment" },
    { id = 22535, name = "Earthmind Raiment" },
    { id = 27457, name = "Wand of Destruction" },
    { id = 27458, name = "Rod of Destruction" },
    { id = 27449, name = "Blade of Destruction" },
    { id = 27450, name = "Slayer of Destruction" },
    { id = 27451, name = "Axe of Destruction" },
    { id = 27452, name = "Chooper of Destruction" },
    { id = 27453, name = "Mace of Destruction" },
    { id = 28454, name = "Hammer of Destruction" },
    { id = 27455, name = "Bow of Destruction" },
    { id = 27456, name = "Crossbow of Destruction" },
    { id = 22536, name = "Thundermind Raiment" },
    { id = 22537, name = "Frostmind Raiment" },
    { id = 22534, name = "Firemind Raiment" },
    { id = 22535, name = "Earthmind Raiment" },

    { id = 22536, name = "Thundermind Raiment" },
    { id = 22537, name = "Frostmind Raiment" },
    { id = 22534, name = "Firemind Raiment" },
    { id = 22535, name = "Earthmind Raiment" },
    { id = 27455, name = "Bow of Destruction" },
    { id = 27456, name = "Crossbow of Destruction" },
    { id = 30401, name = "Theurgic Amulet" },
    { id = 30344, name = "Enchanted Pendulet" },
    { id = 28493, name = "Bone Fiddle" },
    { id = 29428, name = "Sleep Shawl" },
    { id = 30323, name = "Rainbow Necklace" },
    { id = 30401, name = "Theurgic Amulet" },
    { id = 30344, name = "Enchanted Pendulet" },
    { id = 28493, name = "Bone Fiddle" },
    { id = 29428, name = "Sleep Shawl" },
    { id = 30323, name = "Rainbow Necklace" },


    { id = 22526, name = "Thunderhearth Platemail" },
    { id = 22527, name = "Earthhearth Platemail" },
    { id = 22528, name = "Firehearth Platemail" },
    { id = 22529, name = "Frosthearth Platemail" },
    { id = 22525, name = "Thunderhearth Hauberk" },
    { id = 22522, name = "Earthhearth Hauberk" },
    { id = 22519, name = "Firehearth Hauberk" },
    { id = 22528, name = "Frosthearth Hauberk" },
    { id = 22533, name = "Frostsoul Tabard" },
    { id = 22532, name = "Thundersoul Tabard" },
    { id = 22530, name = "Firesoul Tabard" },
    { id = 22531, name = "Earthsoul Tabard" }




    

}

local falconChest = Action()
function falconChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]

	player:addItem(rewardItem.id, 1)
	item:remove(1)

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You received a ' .. rewardItem.name .. '.')
	return true
end
falconChest:id(60146)
falconChest:register()  