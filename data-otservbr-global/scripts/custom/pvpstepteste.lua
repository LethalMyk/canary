local PvpStep = MoveEvent()

function PvpStep.onStepIn(creature, item, position, toPosition, fromPosition)
    local player = creature:getPlayer()
    local check = Storage.PvpFight.Check
    local storagelevel = player:getStorageValue(Storage.PvpFight.Level)
    local storagehp = player:getStorageValue(Storage.PvpFight.Hp)
    local storagemana = player:getStorageValue(Storage.PvpFight.Mana)
    local storagespeed = player:getStorageValue(Storage.PvpFight.Speed)
    local storagecap = player:getStorageValue(Storage.PvpFight.Cap)
    local playerlevel = player:getLevel()
    local playerhp = player:getMaxHealth()

    
    local hpvoc = player:getVocation():getHealthGain()
    
    
    
    if not player then
        return true
    end
    
    
    
    if creature:isPlayer() then
        player:setLevel(storagelevel)
        player:setMaxHealth(playerlevel, hpvoc * storagelevel)        
        player:setStorageValue(check, 0)
    else 
        player:setStorageValue(check, 0)
end
end

PvpStep:type("stepin")
PvpStep:aid(41102)
PvpStep:register() 

