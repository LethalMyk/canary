-- Escala Relativa
-- Azar         = 400 = 40%
-- Sorte baixa  = 300 = 30%
-- Sorte média  = 200 = 20%
-- Sorte alta   = 100 = 10%
-- Sorte maxima = 030 = 3%

local rewards = {

    { id = 28716, name = "Falcon Rod", chance = 030 },            -- Sorte maxima
    { id = 30400, name = "Cobra Rod", chance = 030 },            -- Sorte maxima
    { id = 34151, name = "Lion Rod", chance = 030 },            -- Sorte maxima
    { id = 39163, name = "Naga Rod", chance = 030 },            -- Sorte maxima
    { id = 36674, name = "Eldritch Rod", chance = 030 },            -- Sorte maxima
    { id = 27458, name = "Rod of Destruction", chance = 030 },            -- Sorte maxima
    { id = 35521, name = "Jungle Rod", chance = 030 },            -- Sorte maxima




    
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

falconChest:id(60150)
falconChest:register()