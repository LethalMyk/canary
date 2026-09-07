
local rewards = {
    { id = 13994, name = "Depth Lorica" },
    { id = 13997, name = "Depth Calcei" },
    { id = 13996, name = "Depth Ocrea" },
    { id = 13995, name = "Depth Galea" },
    { id = 14000, name = "Depth Shield" },
    { id = 16112, name = "Prismatic Boots" },
    { id = 16111, name = "Prismatic Legs" },
    { id = 16110, name = "Prismatic Armor" },
    { id = 16106, name = "Gill legs" },
    { id = 16104, name = "Gill Gugel" },
    { id = 16107, name = "Spellbook of Vigilance" },
    { id = 3396, name = "Dwarven Helmet" },
    { id = 3398, name = "Dwarven Legs" },
    { id = 3397, name = "Dwarven Armor" },
    { id = 20088, name = "Crude Umbral Spellbook" },
    { id = 31617, name = "Winged Boots"},
    { id = 20066, name = "Umbral Masterblade" },
    { id = 20072, name = "Umbral Masteraxe" },
    { id = 20069, name = "Umbral Masterslayer" },
    { id = 11688, name = "Shield of Corruption" },
    { id = 20078, name = "Umbral Master Mace" }



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
falconChest:id(61016)
falconChest:register()  