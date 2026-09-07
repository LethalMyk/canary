-- Escala Relativa
-- Azar         = 400 = 40%
-- Sorte baixa  = 300 = 30%
-- Sorte média  = 200 = 20%
-- Sorte alta   = 100 = 10%
-- Sorte maxima = 030 = 3%

local rewards = {


    { id = 28724, name = "Falcon Battleaxe", chance = 030 },            -- 
    { id = 30396, name = "Cobra Axe", chance = 030 },            -- 
    { id = 32616, name = "Phantasmal Axe", chance = 030 },            -- 
    { id = 34253, name = "Lion Axe", chance = 030 },            -- 
    { id = 27451, name = "Axe of Destruction", chance = 030 },            -- 
    { id = 27452, name = "Chooper of Destruction", chance = 030 },            -- 
    { id = 36661, name = "Eldritch Axe", chance = 030 },            -- 
    { id = 39156, name = "Naga Axe", chance = 030 },            -- 





    
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

falconChest:id(60147)
falconChest:register()