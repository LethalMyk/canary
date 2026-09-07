local PvpStep = MoveEvent()

function PvpStep.onStepIn(creature, item, position, toPosition, fromPosition)
    -- Verifica se o creature é um jogador
    if not creature:isPlayer() then
        return true
    end

    local player = creature:getPlayer()

    -- Verifica se o jogador existe
    if not player then
        return true
    end

    -- Verifica se o jogador já recebeu os benefícios
    local checkFire = Storage.TaskPoints.Fire
    if player:getStorageValue(checkFire) == 1 then
        return true
    end

    -- Obtém informações do jogador
    local playerlevel = player:getLevel()
    local hpvoc = player:getVocation():getHealthGain()
    local manavoc = player:getVocation():getManaGain()
    local capvoc = player:getVocation():getCapacityGain()
    
    
    -- Define um valor de level respawn
    local Firelevelup = player:getStorageValue(Storage.TaskPoints.FireLevelUp)
    local levelresp = 650 + Firelevelup
    player:setLevel(levelresp)
     -- Define os valores de armazenamento
    local storagelevel = Storage.PvpFight.Level 
    local storagehp = Storage.PvpFight.Hp
    local storagemana = Storage.PvpFight.Mana
    local storagecap = Storage.PvpFight.Cap
    local check = Storage.PvpFight.Check
    -- Define os novos valores máximos de vida, mana e capacidade do jogador
    local newMaxHealth = 185 + (hpvoc * (levelresp - 8))
    local newMaxMana = 90 + (manavoc * (levelresp - 8))
    local newMaxCap = 470 + (capvoc * (levelresp - 8))
	local PvpPoints = player:getStorageValue(Storage.PvpFight.Points)
    local newSpeed = 117 + levelresp - 8 + PvpPoints

    


    player:setMaxHealth(newMaxHealth)
    player:setMaxMana(newMaxMana)
    player:setCapacity(newMaxCap)  
        player:addHealth(newMaxHealth)
        player:addMana(newMaxMana)
        player:setSpeed(newSpeed)
        

        
            -- Define os valores de armazenamento
            player:setStorageValue(storagelevel, playerlevel - (PvpPoints * 5))
            player:setStorageValue(storagehp, 185 + (hpvoc * (playerlevel -8)))
            player:setStorageValue(storagemana, 90 + (manavoc * (playerlevel -8)))
            player:setStorageValue(check, 1)
            player:setStorageValue(checkFire, 1)    -- Define que o jogador está no respawn
        
        
--[[                 -- Checa se o jogador está com a task do respawn ativa
            local Fireactivetask = Storage.TaskPoints.FireAtiveTask
            if player:getStorageValue(Fireactivetask) <= 0 then      
            end
            ]]          
            
end

PvpStep:type("stepin")
PvpStep:aid(41104)
PvpStep:register()
