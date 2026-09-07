-- Escala Relativa
-- Azar         = 400 = 40%
-- Sorte baixa  = 300 = 30%
-- Sorte média  = 200 = 20%
-- Sorte alta   = 100 = 10%
-- Sorte maxima = 030 = 3%

local rewards = {


    { id = 29417, name = "Living Vine Bow", chance = 030 },            -- Sorte baixa
    { id = 30393, name = "Cobra Crossbow", chance = 030 },            -- Sorte baixa
    { id = 27456, name = "Crossbow of Destruction", chance = 030 },            -- Sorte baixa
    { id = 31581, name = "Bow of Cataclysm", chance = 030 },            -- Sorte baixa
    { id = 34150, name = "Lion Longbow", chance = 030 },            -- Sorte baixa
    { id = 36664, name = "Eldritch Bow", chance = 030 },            -- Sorte baixa
    { id = 39159, name = "Naga Crossbow", chance = 030 },            -- Sorte baixa
    { id = 27455, name = "Bow of Destruction", chance = 030 },            -- Sorte baixa
    { id = 28718, name = "Falcon Bow", chance = 020 },            -- 





    
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

falconChest:id(60148)
falconChest:register()