local PvpStep = MoveEvent()

function PvpStep.onStepIn(creature, item, position, toPosition, fromPosition)
    local player = creature:getPlayer()
    
    if not player then
        return true
    end
    
    local playerlevel = player:getLevel()
    local playerhp = player:getMaxHealth()
    local playermana = player:getMaxMana()
    local playercap = player:getCapacity()

    local check = Storage.PvpFight.Check
    local storagelevel = Storage.PvpFight.Level 
    local storagehp = Storage.PvpFight.Hp
    local storagemana = Storage.PvpFight.Mana
    local storagecap = Storage.PvpFight.Cap

    -- Storages Tasks
    local checkenergytask = Storage.TaskPoints.Energy
    local checkfiretask = Storage.TaskPoints.Fire
 
    local checkIcetask = Storage.TaskPoints.Ice
    local checkTrueAsuratask = Storage.TaskPoints.TrueAsura
    local checkFerumbrastask = Storage.TaskPoints.Ferumbras
    local checkGirtabilutask = Storage.TaskPoints.Girtabilu
    local checkGoannatask = Storage.TaskPoints.Goanna
    local checkBashmutask = Storage.TaskPoints.Bashmu
    local checkRoshamuultask = Storage.TaskPoints.Roshamuul
    local checkDeathlingtask = Storage.TaskPoints.Deathling
    local checkSkeletintask = Storage.TaskPoints.Skeletin
    local checkBurningIssavitask = Storage.TaskPoints.BurningIssavi
    local checkBuriedtask = Storage.TaskPoints.Buried
    local checkFlinsyAlminhatask = Storage.TaskPoints.FlinsyAlminha
    local checkCobratask = Storage.TaskPoints.Cobra
    local checkFalcontask = Storage.TaskPoints.Falcon
    local checkElfFogotask = Storage.TaskPoints.ElfFogo
    local checkElfGelotask = Storage.TaskPoints.ElfGelo
    local checkRipperSpectretask = Storage.TaskPoints.RipperSpectre
    local checkGazerSpectretask = Storage.TaskPoints.GazerSpectre
    local checkBursterSpectretask = Storage.TaskPoints.BursterSpectre
    local checkSphinxtask = Storage.TaskPoints.Sphinx
    local checkHellspawntask = Storage.TaskPoints.Hellspawn
    local checkHerotask = Storage.TaskPoints.Hero
    local checkMinoOramondtask = Storage.TaskPoints.MinoOramond
    
    local checkRottentask = Storage.TaskPoints.Rotten
    local checkCloaktask = Storage.TaskPoints.Cloak
    local checkInfernalDemontask = Storage.TaskPoints.InfernalDemon
    local checkPeixinhotask = Storage.TaskPoints.Peixinho
    local checkDarkThaistask = Storage.TaskPoints.DarkThais
    local checkShirektask = Storage.TaskPoints.Shirek
    local checkSulphidertask = Storage.TaskPoints.Sulphider
    local checkHulkingBehetask = Storage.TaskPoints.HulkingBehe
    local checkRBlood1task = Storage.TaskPoints.RBlood1
    local checkRBlood2task = Storage.TaskPoints.RBlood2
    local checkRBlood3task = Storage.TaskPoints.RBlood3
    local checkRBlood4task = Storage.TaskPoints.RBlood4
    




    local hpvoc = player:getVocation():getHealthGain()
    local manavoc = player:getVocation():getManaGain()
    local capvoc = player:getVocation():getCapacityGain()
    local PvpPoints = player:getStorageValue(Storage.PvpFight.Points)


    local newMaxHealth = hpvoc * (storagelevel - 8) + 185
    local newMaxMana = manavoc * (storagelevel - 8) + 90
    local newMaxCap = capvoc * playerlevel + 470
    local newSpeed = 117 + storagelevel

    -- Resetar Checagem da area do respaw
    --[[ if player:getStorageValue(checkenergytask) >= 1 then
        player:setStorageValue(checkenergytask, 0)    
        player:setStorageValue(checkfiretask, 0)    
    end ]]

    -- Armazenar Infos caso seja a primeira vez 
    if player:getStorageValue(check) < 1 then
        player:setStorageValue(storagelevel, playerlevel - (PvpPoints * 5))
        player:setStorageValue(storagehp, 185 + hpvoc * (playerlevel - 8))
        player:setStorageValue(storagemana, 90 + manavoc * (playerlevel - 8))
        player:setStorageValue(storagecap, playercap)
        player:setStorageValue(check, 1)
        player:setStorageValue(checkenergytask, 0)
        player:setStorageValue(checkfiretask, 0)
        player:setStorageValue(checkTrueAsuratask, 0)
        player:setStorageValue(checkFerumbrastask, 0)
        player:setStorageValue(checkGirtabilutask, 0)
        player:setStorageValue(checkGoannatask, 0)
        player:setStorageValue(checkBashmutask, 0)
        player:setStorageValue(checkRoshamuultask, 0)
        player:setStorageValue(checkDeathlingtask, 0)
        player:setStorageValue(checkSkeletintask, 0)
        player:setStorageValue(checkBurningIssavitask, 0)
        player:setStorageValue(checkBuriedtask, 0)
        player:setStorageValue(checkFlinsyAlminhatask, 0)
        player:setStorageValue(checkCobratask, 0)
        player:setStorageValue(checkFalcontask, 0)
        player:setStorageValue(checkElfFogotask, 0)
        player:setStorageValue(checkElfGelotask, 0)
        player:setStorageValue(checkRipperSpectretask, 0)
        player:setStorageValue(checkGazerSpectretask, 0)
        player:setStorageValue(checkBursterSpectretask, 0)
        player:setStorageValue(checkSphinxtask, 0)
        player:setStorageValue(checkHellspawntask, 0)
        player:setStorageValue(checkHerotask, 0)
        player:setStorageValue(checkMinoOramondtask, 0)
        player:setStorageValue(checkRottentask, 0)
        player:setStorageValue(checkCloaktask, 0)
        player:setStorageValue(checkInfernalDemontask, 0)
        player:setStorageValue(checkPeixinhotask, 0)
        player:setStorageValue(checkDarkThaistask, 0)
        player:setStorageValue(checkShirektask, 0)
        player:setStorageValue(checkSulphidertask, 0)
        player:setStorageValue(checkHulkingBehetask, 0)
        player:setStorageValue(checkRBlood1task, 0)
        player:setStorageValue(checkRBlood2task, 0)
        player:setStorageValue(checkRBlood3task, 0)
        player:setStorageValue(checkRBlood4task, 0)
        
        

        
        
    -- Devolve o Level Original
    else
        local storagelevel2 = player:getStorageValue(Storage.PvpFight.Level)
        local storagehp2 = player:getStorageValue(Storage.PvpFight.Hp)
        local storagemana2 = player:getStorageValue(Storage.PvpFight.Mana)
        local storagecap2 = player:getStorageValue(Storage.PvpFight.Cap)

        player:setMaxHealth(storagehp2)
        player:setMaxMana(storagemana2)
        player:setCapacity(storagecap2)  
        player:addHealth(storagehp2)
        player:addMana(storagemana2)
        player:setLevel(storagelevel2 + (PvpPoints * 5))
        player:setStorageValue(checkfiretask, 0)
        player:setStorageValue(checkenergytask, 0)
        player:setStorageValue(checkIcetask, 0)
        player:setStorageValue(checkTrueAsuratask, 0)
        player:setStorageValue(checkFerumbrastask, 0)
        player:setStorageValue(checkGirtabilutask, 0)
        player:setStorageValue(checkGoannatask, 0)
        player:setStorageValue(checkBashmutask, 0)
        player:setStorageValue(checkRoshamuultask, 0)
        player:setStorageValue(checkDeathlingtask, 0)
        player:setStorageValue(checkSkeletintask, 0)
        player:setStorageValue(checkBurningIssavitask, 0)
        player:setStorageValue(checkBuriedtask, 0)
        player:setStorageValue(checkFlinsyAlminhatask, 0)
        player:setStorageValue(checkCobratask, 0)
        player:setStorageValue(checkFalcontask, 0)
        player:setStorageValue(checkElfFogotask, 0)
        player:setStorageValue(checkElfGelotask, 0)
        player:setStorageValue(checkRipperSpectretask, 0)
        player:setStorageValue(checkGazerSpectretask, 0)
        player:setStorageValue(checkBursterSpectretask, 0)
        player:setStorageValue(checkSphinxtask, 0)
        player:setStorageValue(checkHellspawntask, 0)
        player:setStorageValue(checkHerotask, 0)
        player:setStorageValue(checkMinoOramondtask, 0)
        player:setStorageValue(checkRottentask, 0)
        player:setStorageValue(checkCloaktask, 0)
        player:setStorageValue(checkInfernalDemontask, 0)
        player:setStorageValue(checkPeixinhotask, 0)
        player:setStorageValue(checkDarkThaistask, 0)
        player:setStorageValue(checkShirektask, 0)
        player:setStorageValue(checkSulphidertask, 0)
        player:setStorageValue(checkHulkingBehetask, 0)
        player:setStorageValue(checkRBlood1task, 0)
        player:setStorageValue(checkRBlood2task, 0)
        player:setStorageValue(checkRBlood3task, 0)
        player:setStorageValue(checkRBlood4task, 0)


    end
end

PvpStep:type("stepin")
PvpStep:aid(41100)
PvpStep:register()
