-- Escala Relativa
-- Azar         = 400 = 40%
-- Sorte baixa  = 300 = 30%
-- Sorte média  = 200 = 20%
-- Sorte alta   = 100 = 10%
-- Sorte maxima = 030 = 3%

local rewards = {



    { id = 3399, name = "Elven Mail", chance = 030 },            -- 
    { id = 32617, name = "Fabulous Legs", chance = 030 },            -- 
    { id = 28720, name = "Falcon Greaves", chance = 030 },            -- 
    { id = 28715, name = "Falcon Coif", chance = 030 },            -- 
    { id = 29427, name = "Dark Whispers", chance = 030 },            -- 
    { id = 34156, name = "Lion Spangenhelm", chance = 030 },            -- 
    { id = 13994, name = "Depth Lorica", chance = 030 },            -- 
    { id = 31579, name = "Embrace of Nature", chance = 030 },            -- 
    { id = 32628, name = "Ghost Chestplate", chance = 030 },            --          -- 
    { id = 27648, name = "Gnome Armor", chance = 030 },            -- 
    { id = 40591, name = "Mutated Skin Armor", chance = 030 },            -- 
    { id = 35517, name = "Bast Legs", chance = 030 },            -- 
    { id = 36667, name = "Eldritch Breeches", chance = 030 },            -- 
    { id = 40590, name = "Mutated Skin Legs", chance = 030 },            -- 
    { id = 39161, name = "Feverbloom Boots", chance = 030 },            -- 








    
}   

local falconChest = Action()
function falconChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local totalChance = 0
    for _, reward in ipairs(rewards) do
        totalChance = totalChance + reward.chance
    end

    local randChance = math.random(1, totalChance)
    local accumulatedChance = 0

    for _, reward in ipairs(rewards) do
        accumulatedChance = accumulatedChance + reward.chance
        if randChance <= accumulatedChance then
            player:addItem(reward.id, 1)
            item:remove(1)
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You received a ' .. reward.name .. '.')
            return true
        end
    end

    return true
end

falconChest:id(60119)
falconChest:register()