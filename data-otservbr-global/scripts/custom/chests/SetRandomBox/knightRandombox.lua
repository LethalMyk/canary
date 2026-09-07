-- Escala Relativa
-- Azar         = 400 = 40%
-- Sorte baixa  = 300 = 30%
-- Sorte média  = 200 = 20%
-- Sorte alta   = 100 = 10%
-- Sorte maxima = 030 = 3%

local rewards = {



    { id = 30397, name = "Cobra Hood", chance = 030 },            -- 
    { id = 31577, name = "Terra Helmet", chance = 030 },            -- 
    { id = 28715, name = "Falcon Coif", chance = 030 },            -- 
    { id = 36663, name = "Eldritch Cuirass", chance = 030 },            -- 
    { id = 28719, name = "Falcon Plate", chance = 030 },            -- 
    { id = 34157, name = "Lion Plate", chance = 030 },            -- 
    { id = 13993, name = "Ornate Chestplate", chance = 030 },            -- 
    { id = 3399, name = "Elven Mail", chance = 030 },            -- 
    { id = 13999, name = "Ornate Legs", chance = 030 },            -- 
    { id = 35516, name = "Exotic Legs", chance = 030 },            -- 
    { id = 40589, name = "Stitched Mutant Hide Legs", chance = 030 },            -- 
    { id = 32617, name = "Fabulous Legs", chance = 030 },            -- 
    { id = 28720, name = "Falcon Greaves", chance = 030 },            -- 
    { id = 30394, name = "Cobra Boots", chance = 030 },            -- 
    { id = 39158, name = "Frostflower Boots", chance = 030 },            -- 








    
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

falconChest:id(60118)
falconChest:register()