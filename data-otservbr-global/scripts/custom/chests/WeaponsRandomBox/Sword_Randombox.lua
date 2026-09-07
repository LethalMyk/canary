-- Escala Relativa
-- Azar         = 400 = 40%
-- Sorte baixa  = 300 = 30%
-- Sorte média  = 200 = 20%
-- Sorte alta   = 100 = 10%
-- Sorte maxima = 030 = 3%

local rewards = {


    { id = 29421, name = "Summer Blade", chance = 030 },            -- Sorte baixa
    { id = 29422, name = "Wineter blade", chance = 030 },            -- Sorte baixa
    { id = 30398, name = "Cobra Sword", chance = 030 },            -- Sorte baixa
    { id = 31614, name = "Tagralt Blade", chance = 030 },            -- Sorte baixa
    { id = 34155, name = "Lion Longsword", chance = 030 },            -- Sorte baixa
    { id = 27651, name = "Gnome Sword", chance = 030 },            -- Sorte baixa
    { id = 39155, name = "Naga Sword", chance = 030 },            -- Sorte baixa
    { id = 27449, name = "Blade of Destruction", chance = 030 },            -- Sorte baixa
    { id = 27450, name = "Slayer of Destruction", chance = 030 },            -- Sorte baixa
    { id = 36657, name = "Eldritch Claymore", chance = 030 },            -- Sorte baixa
    { id = 28723, name = "Falcon Longsword", chance = 030 },            -- Sorte baixa




    
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

falconChest:id(60144)
falconChest:register()