-- Escala Relativa
-- Azar         = 400 = 40%
-- Sorte baixa  = 300 = 30%
-- Sorte média  = 200 = 20%
-- Sorte alta   = 100 = 10%
-- Sorte maxima = 030 = 3%

local rewards = {



    { id = 22537, name = "Frostmind Raiment", chance = 030 },            -- 
    { id = 22534, name = "Firemind Raiment", chance = 030 },            -- 
    { id = 22535, name = "Earthmind Raiment", chance = 030 },            -- 
    { id = 22536, name = "Thundermind Raiment", chance = 030 },            -- 
    { id = 29426, name = "Dream Shroud", chance = 030 },            -- 
    { id = 3399, name = "Elven Mail", chance = 030 },            -- 

    { id = 19366, name = "Icy Culottes", chance = 030 },            -- 
    { id = 27649, name = "Gnome Legs", chance = 030 },            -- 
    { id = 32618, name = "Soulful Legs", chance = 030 },            -- 
    { id = 27647, name = "Gnome Helmet", chance = 030 },            -- 
    { id = 28714, name = "Falcon Circlet", chance = 030 },            -- 
    { id = 29424, name = "Pair of Dreamwalkers", chance = 030 },            -- 
    { id = 32619, name = "Pair of Nightmare Boots", chance = 030 },            -- 



    { id = 31583, name = "Toga Mortis", chance = 030 },            -- 
    { id = 39164, name = "Dawnfire Sherwani", chance = 030 },            -- 

    { id = 40592, name = "Alchemist's Boots", chance = 030 },            -- 
    { id = 35519, name = "Makeshift Boots", chance = 030 },            -- 
    { id = 36670, name = "Eldritch Cowl", chance = 030 },            -- 
    { id = 31582, name = "Galea Mortis", chance = 030 },            -- 







    
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

falconChest:id(60116)
falconChest:register()