local killPlayerRewardList = CreatureEvent("RewardPlayerList")
local attackers = {}

function killPlayerRewardList.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if attacker and attacker:isPlayer() and creature:isPlayer() and creature:getHealth() > 0 then
        local creatureId = creature:getId()
        if not attackers[creatureId] then 
            attackers[creatureId] = {}  
        end
        -- Verifica se o atacante já está na lista de atacantes
        local found = false
        for _, existingAttacker in ipairs(attackers[creatureId]) do
            if existingAttacker == attacker then
                found = true
                break
            end
        end
        if not found then
            table.insert(attackers[creatureId], attacker:getId())
        end
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end

local killPlayerRewardDeath = CreatureEvent("RewardPlayerDeath")

function killPlayerRewardDeath.onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
    if creature:isPlayer() then
        if attackers[creature:getId()] == nil then return true end
        for _, attackerId in ipairs(attackers[creature:getId()]) do
local attacker = Player(attackerId)
            if attacker then
                attacker:addItem(3043, 5)
            end
        end
        attackers[creature:getId()] = nil  
    end
    return true
end

killPlayerRewardList:register()
killPlayerRewardDeath:register()
