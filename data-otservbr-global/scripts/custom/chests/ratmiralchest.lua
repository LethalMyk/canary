
local rewards = {
    { id = 35523, name = "Exotic Amulet" },
    { id = 35516, name = "Exotic Legs" },
    { id = 35517, name = "Bast Legs" },
    { id = 35518, name = "Jungle Bow" },
    { id = 35521, name = "Jungle Rod" },
    { id = 35522, name = "Jungle Wand" },
    { id = 35524, name = "Jungle Quiver" },
    { id = 35514, name = "Jungle Flain" },
    { id = 35519, name = "Makeshift Boots" },
    { id = 35520, name = "Make-do Boots" },


    

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
falconChest:id(60477)
falconChest:register()  