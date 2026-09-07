-- Escala Relativa
-- Azar         = 400 = 40%
-- Sorte baixa  = 300 = 30%
-- Sorte média  = 200 = 20%
-- Sorte alta   = 100 = 10%
-- Sorte maxima = 030 = 3%

local rewards = {


    { id = 28725, name = "Falcon Mace", chance = 030 },            -- 
    { id = 29419, name = "Resizer", chance = 030 },            -- 
    { id = 30395, name = "Cobra Club", chance = 030 },            -- 
    { id = 31580, name = "Mortal Mace", chance = 030 },            -- 
    { id = 34254, name = "Lion Hammer", chance = 030 },            -- 
    { id = 39457, name = "Naga Club", chance = 030 },            -- 
    { id = 27454, name = "hammer of destruction", chance = 030 },            -- 
    { id = 27453, name = "Mace of Destruction", chance = 030 },            -- 
    { id = 36659, name = "Eldritch Warmace", chance = 030 },            -- 








    
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

falconChest:id(60145)
falconChest:register()