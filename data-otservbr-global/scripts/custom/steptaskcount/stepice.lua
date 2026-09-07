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
    local checkIce = Storage.TaskPoints.Ice

    if player:getStorageValue(checkIce) == 1 then
        return true
    end

    -- Obtém informações do jogador
    local playerlevel = player:getLevel()
    local hpvoc = player:getVocation():getHealthGain()
    local manavoc = player:getVocation():getManaGain()
    local capvoc = player:getVocation():getCapacityGain()

    -- Define o level do respawn
    local IceLevelUp = player:getStorageValue(Storage.TaskPoints.IceLevelUp)
    local levelresp = 650 + IceLevelUp

    player:setLevel(levelresp)

    -- Define os Storages
    local storagelevel = Storage.PvpFight.Level
    local storagehp = Storage.PvpFight.Hp
    local storagemana = Storage.PvpFight.Mana
    local storagecap = Storage.PvpFight.Cap
    local check = Storage.PvpFight.Check

    -- Define os novos valores máximos
    local newMaxHealth = 185 + (hpvoc * (levelresp - 8))
    local newMaxMana = 90 + (manavoc * (levelresp - 8))
    local newMaxCap = 470 + (capvoc * (levelresp - 8))

    local PvpPoints = player:getStorageValue(Storage.PvpFight.Points)
    local newSpeed = 117 + levelresp - 8 + PvpPoints

    -- Aplica os novos atributos
    player:setMaxHealth(newMaxHealth)
    player:setMaxMana(newMaxMana)
    player:setCapacity(newMaxCap)

    player:addHealth(newMaxHealth)
    player:addMana(newMaxMana)

    player:setSpeed(newSpeed)

    -- Salva os valores nos Storages
    player:setStorageValue(storagelevel, playerlevel - (PvpPoints * 5))
    player:setStorageValue(storagehp, 185 + (hpvoc * (playerlevel - 8)))
    player:setStorageValue(storagemana, 90 + (manavoc * (playerlevel - 8)))
    player:setStorageValue(check, 1)
    player:setStorageValue(checkIce, 1)

    return true
end

PvpStep:type("stepin")
PvpStep:aid(41105)
PvpStep:register()