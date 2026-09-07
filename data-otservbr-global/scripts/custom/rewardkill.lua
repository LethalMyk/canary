

local killPlayerReward = CreatureEvent("RewardPlayer")

function killPlayerReward.onDeath(player, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
local check = Storage.PvpFight.Check
local points = killer:getStorageValue(Storage.PvpFight.Points)
local checkenergytask = Storage.TaskPoints.Energy
local checkfiretask = Storage.TaskPoints.Fire
local energytask = killer:getStorageValue(Storage.TaskPoints.EnergyTask)
local energylevelup = killer:getStorageValue(Storage.TaskPoints.EnergyLevelUp)
local energyActivetask = Storage.TaskPoints.EnergyActiveTask


local checkFiretask = Storage.TaskPoints.Fire
local Firetask = killer:getStorageValue(Storage.TaskPoints.FireTask)
local Firelevelup = killer:getStorageValue(Storage.TaskPoints.FireLevelUp)
local FireActivetask = Storage.TaskPoints.FireActiveTask


local checkIcetask = Storage.TaskPoints.Ice
local Icetask = killer:getStorageValue(Storage.TaskPoints.IceTask)
local Icelevelup = killer:getStorageValue(Storage.TaskPoints.IceLevelUp)
local IceActivetask = Storage.TaskPoints.IceActiveTask

local checkTrueAsuratask = Storage.TaskPoints.TrueAsura
local TrueAsuratask = killer:getStorageValue(Storage.TaskPoints.TrueAsuraTask)
local TrueAsuralevelup = killer:getStorageValue(Storage.TaskPoints.TrueAsuraLevelUp)
local TrueAsuraActivetask = Storage.TaskPoints.TrueAsuraActiveTask

local checkFerumbrastask = Storage.TaskPoints.Ferumbras
local Ferumbrastask = killer:getStorageValue(Storage.TaskPoints.FerumbrasTask)
local Ferumbraslevelup = killer:getStorageValue(Storage.TaskPoints.FerumbrasLevelUp)
local FerumbrasActivetask = Storage.TaskPoints.FerumbrasActiveTask

local checkGirtabilutask = Storage.TaskPoints.Girtabilu
local Girtabilutask = killer:getStorageValue(Storage.TaskPoints.GirtabiluTask)
local Girtabilulevelup = killer:getStorageValue(Storage.TaskPoints.GirtabiluLevelUp)
local GirtabiluActivetask = Storage.TaskPoints.GirtabiluActiveTask

local checkGoannatask = Storage.TaskPoints.Goanna
local Goannatask = killer:getStorageValue(Storage.TaskPoints.GoannaTask)
local Goannalevelup = killer:getStorageValue(Storage.TaskPoints.GoannaLevelUp)
local GoannaActivetask = Storage.TaskPoints.GoannaActiveTask

local checkBashmutask = Storage.TaskPoints.Bashmu
local Bashmutask = killer:getStorageValue(Storage.TaskPoints.BashmuTask)
local Bashmulevelup = killer:getStorageValue(Storage.TaskPoints.BashmuLevelUp)
local BashmuActivetask = Storage.TaskPoints.BashmuActiveTask

local checkRoshamuultask = Storage.TaskPoints.Roshamuul
local Roshamuultask = killer:getStorageValue(Storage.TaskPoints.RoshamuulTask)
local Roshamuullevelup = killer:getStorageValue(Storage.TaskPoints.RoshamuulLevelUp)
local RoshamuulActivetask = Storage.TaskPoints.RoshamuulActiveTask

local checkDeathlingtask = Storage.TaskPoints.Deathling
local Deathlingtask = killer:getStorageValue(Storage.TaskPoints.DeathlingTask)
local Deathlinglevelup = killer:getStorageValue(Storage.TaskPoints.DeathlingLevelUp)
local DeathlingActivetask = Storage.TaskPoints.DeathlingActiveTask

local checkSkeletintask = Storage.TaskPoints.Skeletin
local Skeletintask = killer:getStorageValue(Storage.TaskPoints.SkeletinTask)
local Skeletinlevelup = killer:getStorageValue(Storage.TaskPoints.SkeletinLevelUp)
local SkeletinActivetask = Storage.TaskPoints.SkeletinActiveTask

local checkBurningIssavitask = Storage.TaskPoints.BurningIssavi
local BurningIssavitask = killer:getStorageValue(Storage.TaskPoints.BurningIssaviTask)
local BurningIssavilevelup = killer:getStorageValue(Storage.TaskPoints.BurningIssaviLevelUp)
local BurningIssaviActivetask = Storage.TaskPoints.BurningIssaviActiveTask

local checkBuriedtask = Storage.TaskPoints.Buried
local Buriedtask = killer:getStorageValue(Storage.TaskPoints.BuriedTask)
local Buriedlevelup = killer:getStorageValue(Storage.TaskPoints.BuriedLevelUp)
local BuriedActivetask = Storage.TaskPoints.BuriedActiveTask

local checkFlinsyAlminhatask = Storage.TaskPoints.FlinsyAlminha
local FlinsyAlminhatask = killer:getStorageValue(Storage.TaskPoints.FlinsyAlminhaTask)
local FlinsyAlminhalevelup = killer:getStorageValue(Storage.TaskPoints.FlinsyAlminhaLevelUp)
local FlinsyAlminhaActivetask = Storage.TaskPoints.FlinsyAlminhaActiveTask

local checkCobratask = Storage.TaskPoints.Cobra
local Cobratask = killer:getStorageValue(Storage.TaskPoints.CobraTask)
local Cobralevelup = killer:getStorageValue(Storage.TaskPoints.CobraLevelUp)
local CobraActivetask = Storage.TaskPoints.CobraActiveTask

local checkFalcontask = Storage.TaskPoints.Falcon
local Falcontask = killer:getStorageValue(Storage.TaskPoints.FalconTask)
local Falconlevelup = killer:getStorageValue(Storage.TaskPoints.FalconLevelUp)
local FalconActivetask = Storage.TaskPoints.FalconActiveTask


local checkElfFogotask = Storage.TaskPoints.ElfFogo
local ElfFogotask = killer:getStorageValue(Storage.TaskPoints.ElfFogoTask)
local ElfFogolevelup = killer:getStorageValue(Storage.TaskPoints.ElfFogoLevelUp)
local ElfFogoActivetask = Storage.TaskPoints.ElfFogoActiveTask

local checkElfGelotask = Storage.TaskPoints.ElfGelo
local ElfGelotask = killer:getStorageValue(Storage.TaskPoints.ElfGeloTask)
local ElfGelolevelup = killer:getStorageValue(Storage.TaskPoints.ElfGeloLevelUp)
local ElfGeloActivetask = Storage.TaskPoints.ElfGeloActiveTask

local checkRipperSpectretask = Storage.TaskPoints.RipperSpectre
local RipperSpectretask = killer:getStorageValue(Storage.TaskPoints.RipperSpectreTask)
local RipperSpectrelevelup = killer:getStorageValue(Storage.TaskPoints.RipperSpectreLevelUp)
local RipperSpectreActivetask = Storage.TaskPoints.RipperSpectreActiveTask

local checkGazerSpectretask = Storage.TaskPoints.GazerSpectre
local GazerSpectretask = killer:getStorageValue(Storage.TaskPoints.GazerSpectreTask)
local GazerSpectrelevelup = killer:getStorageValue(Storage.TaskPoints.GazerSpectreLevelUp)
local GazerSpectreActivetask = Storage.TaskPoints.GazerSpectreActiveTask

local checkBursterSpectretask = Storage.TaskPoints.BursterSpectre
local BursterSpectretask = killer:getStorageValue(Storage.TaskPoints.BursterSpectreTask)
local BursterSpectrelevelup = killer:getStorageValue(Storage.TaskPoints.BursterSpectreLevelUp)
local BursterSpectreActivetask = Storage.TaskPoints.BursterSpectreActiveTask

local checkSphinxtask = Storage.TaskPoints.Sphinx
local Sphinxtask = killer:getStorageValue(Storage.TaskPoints.SphinxTask)
local Sphinxlevelup = killer:getStorageValue(Storage.TaskPoints.SphinxLevelUp)
local SphinxActivetask = Storage.TaskPoints.SphinxActiveTask

local checkHellspawntask = Storage.TaskPoints.Hellspawn
local Hellspawntask = killer:getStorageValue(Storage.TaskPoints.HellspawnTask)
local Hellspawnlevelup = killer:getStorageValue(Storage.TaskPoints.HellspawnLevelUp)
local HellspawnActivetask = Storage.TaskPoints.HellspawnActiveTask

local checkHerotask = Storage.TaskPoints.Hero
local Herotask = killer:getStorageValue(Storage.TaskPoints.HeroTask)
local Herolevelup = killer:getStorageValue(Storage.TaskPoints.HeroLevelUp)
local HeroActivetask = Storage.TaskPoints.HeroActiveTask
local checkMinoOramondtask = Storage.TaskPoints.MinoOramond
local MinoOramondtask = killer:getStorageValue(Storage.TaskPoints.MinoOramondTask)
local MinoOramondlevelup = killer:getStorageValue(Storage.TaskPoints.MinoOramondLevelUp)
local MinoOramondActivetask = Storage.TaskPoints.MinoOramondActiveTask

local checkRottentask = Storage.TaskPoints.Rotten
local Rottentask = killer:getStorageValue(Storage.TaskPoints.RottenTask)
local Rottenlevelup = killer:getStorageValue(Storage.TaskPoints.RottenLevelUp)
local RottenActivetask = Storage.TaskPoints.RottenActiveTask

local checkCloaktask = Storage.TaskPoints.Cloak
local Cloaktask = killer:getStorageValue(Storage.TaskPoints.CloakTask)
local Cloaklevelup = killer:getStorageValue(Storage.TaskPoints.CloakLevelUp)
local CloakActivetask = Storage.TaskPoints.CloakActiveTask

local checkInfernalDemontask = Storage.TaskPoints.InfernalDemon
local InfernalDemontask = killer:getStorageValue(Storage.TaskPoints.InfernalDemonTask)
local InfernalDemonlevelup = killer:getStorageValue(Storage.TaskPoints.InfernalDemonLevelUp)
local InfernalDemonActivetask = Storage.TaskPoints.InfernalDemonActiveTask

local checkPeixinhotask = Storage.TaskPoints.Peixinho
local Peixinhotask = killer:getStorageValue(Storage.TaskPoints.PeixinhoTask)
local Peixinholevelup = killer:getStorageValue(Storage.TaskPoints.PeixinhoLevelUp)
local PeixinhoActivetask = Storage.TaskPoints.PeixinhoActiveTask

local checkDarkThaistask = Storage.TaskPoints.DarkThais
local DarkThaistask = killer:getStorageValue(Storage.TaskPoints.DarkThaisTask)
local DarkThaislevelup = killer:getStorageValue(Storage.TaskPoints.DarkThaisLevelUp)
local DarkThaisActivetask = Storage.TaskPoints.DarkThaisActiveTask

local checkShirektask = Storage.TaskPoints.Shirek
local Shirektask = killer:getStorageValue(Storage.TaskPoints.ShirekTask)
local Shireklevelup = killer:getStorageValue(Storage.TaskPoints.ShirekLevelUp)
local ShirekActivetask = Storage.TaskPoints.ShirekActiveTask

local checkSulphidertask = Storage.TaskPoints.Sulphider
local Sulphidertask = killer:getStorageValue(Storage.TaskPoints.SulphiderTask)
local Sulphiderlevelup = killer:getStorageValue(Storage.TaskPoints.SulphiderLevelUp)
local SulphiderActivetask = Storage.TaskPoints.SulphiderActiveTask

local checkHulkingBehetask = Storage.TaskPoints.HulkingBehe
local HulkingBehetask = killer:getStorageValue(Storage.TaskPoints.HulkingBeheTask)
local HulkingBehelevelup = killer:getStorageValue(Storage.TaskPoints.HulkingBeheLevelUp)
local HulkingBeheActivetask = Storage.TaskPoints.HulkingBeheActiveTask

local checkRBlood1task = Storage.TaskPoints.RBlood1
local RBlood1task = killer:getStorageValue(Storage.TaskPoints.RBlood1Task)
local RBlood1levelup = killer:getStorageValue(Storage.TaskPoints.RBlood1LevelUp)
local RBlood1Activetask = Storage.TaskPoints.RBlood1ActiveTask

local checkRBlood2task = Storage.TaskPoints.RBlood2
local RBlood2task = killer:getStorageValue(Storage.TaskPoints.RBlood2Task)
local RBlood2levelup = killer:getStorageValue(Storage.TaskPoints.RBlood2LevelUp)
local RBlood2Activetask = Storage.TaskPoints.RBlood2ActiveTask

local checkRBlood3task = Storage.TaskPoints.RBlood3
local RBlood3task = killer:getStorageValue(Storage.TaskPoints.RBlood3Task)
local RBlood3levelup = killer:getStorageValue(Storage.TaskPoints.RBlood3LevelUp)
local RBlood3Activetask = Storage.TaskPoints.RBlood3ActiveTask

local checkRBlood4task = Storage.TaskPoints.RBlood4
local RBlood4task = killer:getStorageValue(Storage.TaskPoints.RBlood4Task)
local RBlood4levelup = killer:getStorageValue(Storage.TaskPoints.RBlood4LevelUp)
local RBlood4Activetask = Storage.TaskPoints.RBlood4ActiveTask



if killer:isPlayer() and killer:getStorageValue(check) then 
            local moneyAtual = killer:getBankBalance()
            local playerMortoLevel = player:getLevel() / 10
            local coinsacc = killer:getTibiaCoins()
            local calcValueMoney = math.max(playerMortoLevel * 1000, 1000)

            db.query("UPDATE `players` SET `kills` = `kills` + 1 WHERE `id` = " .. killer:getGuid())
            killer:say("[FRAG!] Added: 5cc + " .. calcValueMoney .. " bank, +1 PvPLevel, + 1 Coin", TALKTYPE_MONSTER_SAY)
            killer:setBankBalance(moneyAtual + calcValueMoney)
            killer:addTibiaCoins(10)
            killer:setStorageValue(Storage.PvpFight.Points, points + 1)
            
        end
            
            if killer:getStorageValue(checkenergytask) == 1 and killer:getStorageValue(energyActivetask) >= 0 then
                killer:setStorageValue(Storage.TaskPoints.EnergyTask, energytask + 1)
             end
             if killer:getStorageValue(checkenergytask) == 1 then
                killer:setStorageValue(Storage.TaskPoints.EnergyLevelUp, energylevelup + 1)
             end
            
             
               if killer:getStorageValue(checkFiretask) == 1 and killer:getStorageValue(FireActivetask) >= 0 then
                  killer:setStorageValue(Storage.TaskPoints.FireTask, Firetask + 1)
               end
               if killer:getStorageValue(checkFiretask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.FireLevelUp, Firelevelup + 1)
               end  
             
               if killer:getStorageValue(checkIcetask) == 1 and killer:getStorageValue(IceActivetask) >= 0 then
                  killer:setStorageValue(Storage.TaskPoints.IceTask, Icetask + 1)
               end
               if killer:getStorageValue(checkIcetask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.IceLevelUp, Icelevelup + 1)
               end  
             
               if killer:getStorageValue(checkTrueAsuratask) == 1 and killer:getStorageValue(TrueAsuraActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.TrueAsuraTask, TrueAsuratask + 1)
               end
               if killer:getStorageValue(checkTrueAsuratask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.TrueAsuraLevelUp, TrueAsuralevelup + 1)
               end  
             
               if killer:getStorageValue(checkFerumbrastask) == 1 and killer:getStorageValue(FerumbrasActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.FerumbrasTask, Ferumbrastask + 1)
               end
               if killer:getStorageValue(checkFerumbrastask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.FerumbrasLevelUp, Ferumbraslevelup + 1)
               end  
             
               if killer:getStorageValue(checkGirtabilutask) == 1 and killer:getStorageValue(GirtabiluActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.GirtabiluTask, Girtabilutask + 1)
               end
               if killer:getStorageValue(checkGirtabilutask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.GirtabiluLevelUp, Girtabilulevelup + 1)
               end  
             
               if killer:getStorageValue(checkGoannatask) == 1 and killer:getStorageValue(GoannaActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.GoannaTask, Goannatask + 1)
               end
               if killer:getStorageValue(checkGoannatask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.GoannaLevelUp, Goannalevelup + 1)
               end  
             
               if killer:getStorageValue(checkBashmutask) == 1 and killer:getStorageValue(BashmuActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.BashmuTask, Bashmutask + 1)
               end
               if killer:getStorageValue(checkBashmutask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.BashmuLevelUp, Bashmulevelup + 1)
               end  
             
               if killer:getStorageValue(checkRoshamuultask) == 1 and killer:getStorageValue(RoshamuulActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.RoshamuulTask, Roshamuultask + 1)
               end
               if killer:getStorageValue(checkRoshamuultask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.RoshamuulLevelUp, Roshamuullevelup + 1)
               end  
             
               if killer:getStorageValue(checkDeathlingtask) == 1 and killer:getStorageValue(DeathlingActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.DeathlingTask, Deathlingtask + 1)
               end
               if killer:getStorageValue(checkDeathlingtask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.DeathlingLevelUp, Deathlinglevelup + 1)
               end  
             
               if killer:getStorageValue(checkSkeletintask) == 1 and killer:getStorageValue(SkeletinActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.SkeletinTask, Skeletintask + 1)
               end
               if killer:getStorageValue(checkSkeletintask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.SkeletinLevelUp, Skeletinlevelup + 1)
               end  
             
               if killer:getStorageValue(checkBurningIssavitask) == 1 and killer:getStorageValue(BurningIssaviActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.BurningIssaviTask, BurningIssavitask + 1)
               end
               if killer:getStorageValue(checkBurningIssavitask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.BurningIssaviLevelUp, BurningIssavilevelup + 1)
               end  
             
               if killer:getStorageValue(checkBuriedtask) == 1 and killer:getStorageValue(BuriedActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.BuriedTask, Buriedtask + 1)
               end
               if killer:getStorageValue(checkBuriedtask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.BuriedLevelUp, Buriedlevelup + 1)
               end  
             
               if killer:getStorageValue(checkFlinsyAlminhatask) == 1 and killer:getStorageValue(FlinsyAlminhaActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.FlinsyAlminhaTask, FlinsyAlminhatask + 1)
               end
               if killer:getStorageValue(checkFlinsyAlminhatask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.FlinsyAlminhaLevelUp, FlinsyAlminhalevelup + 1)
               end  
             
               if killer:getStorageValue(checkCobratask) == 1 and killer:getStorageValue(CobraActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.CobraTask, Cobratask + 1)
               end
               if killer:getStorageValue(checkCobratask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.CobraLevelUp, Cobralevelup + 1)
               end  
             
               if killer:getStorageValue(checkFalcontask) == 1 and killer:getStorageValue(FalconActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.FalconTask, Falcontask + 1)
               end
               if killer:getStorageValue(checkFalcontask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.FalconLevelUp, Falconlevelup + 1)
               end  
             
               if killer:getStorageValue(checkElfFogotask) == 1 and killer:getStorageValue(ElfFogoActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.ElfFogoTask, ElfFogotask + 1)
               end
               if killer:getStorageValue(checkElfFogotask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.ElfFogoLevelUp, ElfFogolevelup + 1)
               end  
             
               if killer:getStorageValue(checkElfGelotask) == 1 and killer:getStorageValue(ElfGeloActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.ElfGeloTask, ElfGelotask + 1)
               end
               if killer:getStorageValue(checkElfGelotask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.ElfGeloLevelUp, ElfGelolevelup + 1)
               end  
             
               if killer:getStorageValue(checkRipperSpectretask) == 1 and killer:getStorageValue(RipperSpectreActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.RipperSpectreTask, RipperSpectretask + 1)
               end
               if killer:getStorageValue(checkRipperSpectretask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.RipperSpectreLevelUp, RipperSpectrelevelup + 1)
               end  
             
               if killer:getStorageValue(checkGazerSpectretask) == 1 and killer:getStorageValue(GazerSpectreActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.GazerSpectreTask, GazerSpectretask + 1)
               end
               if killer:getStorageValue(checkGazerSpectretask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.GazerSpectreLevelUp, GazerSpectrelevelup + 1)
               end  
             
               if killer:getStorageValue(checkBursterSpectretask) == 1 and killer:getStorageValue(BursterSpectreActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.BursterSpectreTask, BursterSpectretask + 1)
               end
               if killer:getStorageValue(checkBursterSpectretask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.BursterSpectreLevelUp, BursterSpectrelevelup + 1)
               end  
             
               if killer:getStorageValue(checkSphinxtask) == 1 and killer:getStorageValue(SphinxActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.SphinxTask, Sphinxtask + 1)
               end
               if killer:getStorageValue(checkSphinxtask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.SphinxLevelUp, Sphinxlevelup + 1)
               end  
             
               if killer:getStorageValue(checkHellspawntask) == 1 and killer:getStorageValue(HellspawnActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.HellspawnTask, Hellspawntask + 1)
               end
               if killer:getStorageValue(checkHellspawntask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.HellspawnLevelUp, Hellspawnlevelup + 1)
               end  
             
               if killer:getStorageValue(checkHerotask) == 1 and killer:getStorageValue(HeroActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.HeroTask, Herotask + 1)
               end
               if killer:getStorageValue(checkHerotask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.HeroLevelUp, Herolevelup + 1)
               end  
             
               if killer:getStorageValue(checkMinoOramondtask) == 1 and killer:getStorageValue(MinoOramondActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.MinoOramondTask, MinoOramondtask + 1)
               end
               if killer:getStorageValue(checkMinoOramondtask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.MinoOramondLevelUp, MinoOramondlevelup + 1)
               end  

               if killer:getStorageValue(checkRottentask) == 1 and killer:getStorageValue(RottenActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.RottenTask, Rottentask + 1)
               end
               if killer:getStorageValue(checkRottentask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.RottenLevelUp, Rottenlevelup + 1)
               end  

               if killer:getStorageValue(checkCloaktask) == 1 and killer:getStorageValue(CloakActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.CloakTask, Cloaktask + 1)
               end
               if killer:getStorageValue(checkCloaktask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.CloakLevelUp, Cloaklevelup + 1)
               end  

               if killer:getStorageValue(checkInfernalDemontask) == 1 and killer:getStorageValue(InfernalDemonActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.InfernalDemonTask, InfernalDemontask + 1)
               end
               if killer:getStorageValue(checkInfernalDemontask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.InfernalDemonLevelUp, InfernalDemonlevelup + 1)
               end  

               if killer:getStorageValue(checkPeixinhotask) == 1 and killer:getStorageValue(PeixinhoActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.PeixinhoTask, Peixinhotask + 1)
               end
               if killer:getStorageValue(checkPeixinhotask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.PeixinhoLevelUp, Peixinholevelup + 1)
               end  

               if killer:getStorageValue(checkDarkThaistask) == 1 and killer:getStorageValue(DarkThaisActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.DarkThaisTask, DarkThaistask + 1)
               end
               if killer:getStorageValue(checkDarkThaistask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.DarkThaisLevelUp, DarkThaislevelup + 1)
               end  

               if killer:getStorageValue(checkShirektask) == 1 and killer:getStorageValue(ShirekActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.ShirekTask, Shirektask + 1)
               end
               if killer:getStorageValue(checkShirektask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.ShirekLevelUp, Shireklevelup + 1)
               end  

               if killer:getStorageValue(checkSulphidertask) == 1 and killer:getStorageValue(SulphiderActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.SulphiderTask, Sulphidertask + 1)
               end
               if killer:getStorageValue(checkSulphidertask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.SulphiderLevelUp, Sulphiderlevelup + 1)
               end  

               if killer:getStorageValue(checkHulkingBehetask) == 1 and killer:getStorageValue(HulkingBeheActivetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.HulkingBeheTask, HulkingBehetask + 1)
               end
               if killer:getStorageValue(checkHulkingBehetask) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.HulkingBeheLevelUp, HulkingBehelevelup + 1)
               end  

               if killer:getStorageValue(checkRBlood1task) == 1 and killer:getStorageValue(RBlood1Activetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.RBlood1Task, RBlood1task + 1)
               end
               if killer:getStorageValue(checkRBlood1task) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.RBlood1LevelUp, RBlood1levelup + 1)
               end  

               if killer:getStorageValue(checkRBlood2task) == 1 and killer:getStorageValue(RBlood2Activetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.RBlood2Task, RBlood2task + 1)
               end
               if killer:getStorageValue(checkRBlood2task) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.RBlood2LevelUp, RBlood2levelup + 1)
               end  

               if killer:getStorageValue(checkRBlood3task) == 1 and killer:getStorageValue(RBlood3Activetask) == 0 then
                  killer:setStorageValue(Storage.TaskPoints.RBlood3Task, RBlood3task + 1)
               end
               if killer:getStorageValue(checkRBlood3task) == 1 then
                  killer:setStorageValue(Storage.TaskPoints.RBlood3LevelUp, RBlood3levelup + 1)
               end  
                          
        

end

killPlayerReward:register()
