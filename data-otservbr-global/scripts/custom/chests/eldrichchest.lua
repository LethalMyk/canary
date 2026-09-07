
local rewards = {
    { id = 36656, name = "Eldrich Shield" },
    { id = 36657, name = "Eldrich Claymore" },
    { id = 36659, name = "Eldrich Warmace" },
    { id = 36661, name = "Eldrich Greataxe" },
    { id = 36663, name = "Eldrich Cuirass" },
    { id = 36664, name = "Eldrich Bow" },
    { id = 36666, name = "Eldrich Quiver" },
    { id = 36667, name = "Eldrich Breeches" },
    { id = 36668, name = "Eldrich Wand" },
    { id = 36670, name = "Eldrich Cowl" },
    { id = 60071, name = "Eldrich Hood" },
    { id = 60072, name = "Eldrich Folio" },
    { id = 60073, name = "Eldrich Tome" },
    { id = 60074, name = "Eldrich Rod" }    

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
falconChest:id(60905)
falconChest:register()  