
local rewards = {
    { id = 39155, name = "Naga Sword" },
    { id = 39156, name = "Naga Axe" },
    { id = 39157, name = "Naga Club" },
    { id = 39159, name = "Naga Crossbow" },
    { id = 39160, name = "Naga Quiver" },
    { id = 39162, name = "Naga Wand" },
    { id = 39163, name = "Naga Rod" },
    { id = 39233, name = "Turtle Amulet" },
    { id = 39158, name = "Frosflower Boots" },
    { id = 39161, name = "Feverbloom Boots" },
    { id = 39164, name = "Dawfire Shenrwani" },
    { id = 39167, name = "Dawfire Pantaloons" },
    { id = 39165, name = "Midnight Tunic" },
    { id = 39167, name = "Midnight Sarong" },


    

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
falconChest:id(60912)
falconChest:register()  