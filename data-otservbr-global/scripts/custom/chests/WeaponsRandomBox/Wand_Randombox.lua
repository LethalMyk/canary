-- Escala Relativa
-- Azar         = 400 = 40%
-- Sorte baixa  = 300 = 30%
-- Sorte média  = 200 = 20%
-- Sorte alta   = 100 = 10%
-- Sorte maxima = 030 = 3%

local rewards = {

    { id = 28717, name = "Falcon Wand", chance = 030 },            -- Sorte maxima
    { id = 34151, name = "Lion Wand", chance = 030 },            -- Sorte maxima
    { id = 36668, name = "Eldritch Wand", chance = 030 },            -- Sorte maxima
    { id = 39162, name = "Naga Wand", chance = 030 },            -- Sorte maxima
    { id = 35522, name = "Jungle Wand", chance = 030 },            -- Sorte maxima
    { id = 30399, name = "Cobra Wand", chance = 030 },            -- Sorte maxima
    { id = 30399, name = "Wand of Destruction", chance = 030 },            -- Sorte maxima




    
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

falconChest:id(60149)
falconChest:register()