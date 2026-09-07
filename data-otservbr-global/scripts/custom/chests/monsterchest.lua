
local rewards = {
    { id = 40592, name = "Alchemist Boots" },
    { id = 40591, name = "Mutated Skin Armor" },
    { id = 40590, name = "Mutated Skin Legs" },
    { id = 40594, name = "Alchemist Notepad" },
    { id = 40593, name = "Mutant Bone Boots" },
    { id = 40595, name = "Mutant Kilt Bone" },
    { id = 40589, name = "Stitched Hide Legs" },
    { id = 40588, name = "Antler-Horn Helmet"}



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
falconChest:id(60131)
falconChest:register()  