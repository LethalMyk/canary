
local rewards = {
    { id = 29424, name = "Pair of Dreamwalkers" },
    { id = 32619, name = "Pair of Nightmare Boots" },
    { id = 29420, name = "Shoulder Plate" },
    { id = 3399, name = "Elven Mail" },
    { id = 29422, name = "Winter Blade" },
    { id = 29421, name = "Summer Blade" },
    { id = 21614, name = "Tagralt Blade" },
    { id = 31581, name = "Bow of Cataclysm" },
    { id = 29417, name = "Long Vine Bow" },
    { id = 32617, name = "Fabulus Legs" },
    { id = 29431, name = "Spirit Guide" },
    { id = 29423, name = "Dream Shroud" },
    { id = 13993, name = "Ornate Chestplate" },
    { id = 20087, name = "Umbral Master Crossbow" },
    { id = 20090, name = "Umbral Master Spellbook" },
    { id = 29419, name = "Resizer" },
    { id = 31580, name = "Mortal Mace" },
    { id = 32316, name = "Phantasmal Axe" },
    { id = 29430, name = "Ectoplasmic Shield" },
    { id = 31577, name = "Terra Helmet" }


    

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
falconChest:id(60130)
falconChest:register()  