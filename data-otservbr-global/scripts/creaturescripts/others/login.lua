local playerLogin = CreatureEvent("PlayerLogin")

function playerLogin.onLogin(player)



		-- Bosses charges

	if player:getStorageValue(Storage.SevenDays.Oberon) <0 then
		player:setStorageValue(Storage.SevenDays.Oberon, 0) 
		end
		if player:getStorageValue(Storage.SevenDays.Scarlett) <0 then
		player:setStorageValue(Storage.SevenDays.Scarlett, 0) 
		end
		if player:getStorageValue(Storage.SevenDays.Drume) <0 then
		player:setStorageValue(Storage.SevenDays.Drume, 0) 
		end
		if player:getStorageValue(Storage.SevenDays.Eldritch) <0 then
		player:setStorageValue(Storage.SevenDays.Eldritch, 0) 
		end
		if player:getStorageValue(Storage.SevenDays.Gnome) <0 then
		player:setStorageValue(Storage.SevenDays.Gnome, 0) 
		end
		if player:getStorageValue(Storage.SevenDays.Ratmiral) <0 then
		player:setStorageValue(Storage.SevenDays.Ratmiral, 0) 
		end
		if player:getStorageValue(Storage.SevenDays.Monster) <0 then
		player:setStorageValue(Storage.SevenDays.Monster, 0) 
		end
		if player:getStorageValue(Storage.SevenDays.Timira) <0 then
		player:setStorageValue(Storage.SevenDays.Timira, 0) 
		end
		if player:getStorageValue(Storage.PvpFight.Points) < 0 then
			player:setStorageValue(Storage.PvpFight.Points, 0) 
			end
			
				if player:getStorageValue(Storage.TaskPoints.EnergyLevelUp) < 0 then
					player:setStorageValue(Storage.TaskPoints.EnergyLevelUp, 0) 
					end
				
					if player:getStorageValue(Storage.TaskPoints.FireLevelUp) < 0 then
					player:setStorageValue(Storage.TaskPoints.FireLevelUp, 0) 
					end
			
					if player:getStorageValue(Storage.TaskPoints.IceLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.IceLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.TrueAsuraLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.TrueAsuraLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.FerumbrasLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.FerumbrasLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.GirtabiluLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.GirtabiluLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.GoannaLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.GoannaLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.BashmuLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.BashmuLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.RoshamuulLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.RoshamuulLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.DeathlingLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.DeathlingLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.SkeletinLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.SkeletinLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.BurningIssaviLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.BurningIssaviLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.BuriedLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.BuriedLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.FlinsyAlminhaLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.FlinsyAlminhaLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.CobraLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.CobraLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.FalconLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.FalconLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.ElfFogoLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.ElfFogoLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.ElfGeloLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.ElfGeloLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.RipperSpectreLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.RipperSpectreLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.BursterSpectreLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.BursterSpectreLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.GazerSpectreLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.GazerSpectreLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.SphinxLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.SphinxLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.HellspawnLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.HellspawnLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.HeroLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.HeroLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.MinoOramondLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.MinoOramondLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.RottenLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.RottenLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.CloakLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.CloakLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.InfernalDemonLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.InfernalDemonLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.PeixinhoLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.PeixinhoLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.DarkThaisLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.DarkThaisLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.ShirekLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.ShirekLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.SulphiderLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.SulphiderLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.HulkingBeheLevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.HulkingBeheLevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.RBlood1LevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.RBlood1LevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.RBlood2LevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.RBlood2LevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.RBlood3LevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.RBlood3LevelUp, 0) 
						end
			
					if player:getStorageValue(Storage.TaskPoints.RBlood4LevelUp) < 0 then
						player:setStorageValue(Storage.TaskPoints.RBlood4LevelUp, 0) 
						end
			
						if player:getStorageValue(Storage.TaskPoints.FerumbrasActiveTask) < 0 then
							player:setStorageValue(Storage.TaskPoints.FerumbrasActiveTask, 0) 
							end

							if player:getStorageValue(Storage.TaskPoints.BashmuActiveTask) < 0 then
								player:setStorageValue(Storage.TaskPoints.BashmuActiveTask, 0) 
								end


			-- Reset System
			local function getPlayerResets(player, resetsIcon)
				local resets = player:getStorageValue(Storage.ResetSystem.Resets)
				return resets < 0 and 0 or resets
			end
			local resets = player:getStorageValue(Storage.ResetSystem.Resets)
			local vocationId = player:getVocation():getId()
			local ml = player:getMagicLevel()

				if resets > 0 and (vocationId == 2 or vocationId == 6) then
				local skillBonus = resets -- Define o bônus de skill baseado no número de resets
				local magicLevelCondition = Condition(CONDITION_ATTRIBUTES)

				local mlcalc = skillBonus * 2
				local manaleechcalc = skillBonus * 100
				local lifeleechcalc = skillBonus * 100
				local criticalchancecalc = skillBonus * 150 + 500
				local criticaldamagecalc = skillBonus * 100
				local absorbdano = skillBonus * 20

					magicLevelCondition:setParameter(CONDITION_PARAM_SUBID, skillBonusMl)
					magicLevelCondition:setParameter(CONDITION_PARAM_TICKS, -1)
					magicLevelCondition:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, mlcalc)
					magicLevelCondition:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_CHANCE, 1000)
					magicLevelCondition:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_AMOUNT, manaleechcalc)
					magicLevelCondition:setParameter(CONDITION_PARAM_SKILL_LIFE_LEECH_CHANCE, 1000)
					magicLevelCondition:setParameter(CONDITION_PARAM_SKILL_LIFE_LEECH_AMOUNT, lifeleechcalc)
					magicLevelCondition:setParameter(CONDITION_PARAM_SKILL_CRITICAL_HIT_CHANCE, criticalchancecalc)
					magicLevelCondition:setParameter(CONDITION_PARAM_SKILL_CRITICAL_HIT_DAMAGE, criticaldamagecalc)					
					magicLevelCondition:setParameter(CONDITION_PARAM_ABSORB_EARTHPERCENT, - absorbdano)					
					magicLevelCondition:setParameter(CONDITION_PARAM_ABSORB_FIREPERCENT, - absorbdano)					
					magicLevelCondition:setParameter(CONDITION_PARAM_ABSORB_DEATHPERCENT, - absorbdano)					
					magicLevelCondition:setParameter(CONDITION_PARAM_ABSORB_ENERGYPERCENT, - absorbdano)					
					magicLevelCondition:setParameter(CONDITION_PARAM_ABSORB_HOLYPERCENT, - absorbdano)					
					magicLevelCondition:setParameter(CONDITION_PARAM_ABSORB_PHYSICALPERCENT, - absorbdano)					
					magicLevelCondition:setParameter(CONDITION_PARAM_ABSORB_ICEPERCENT, - absorbdano)					
					
					player:addCondition(magicLevelCondition)

				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "[RESET BONNUS] ["..resets.."] Resets\n+ ".. mlcalc .." de ML \n+ ".. (manaleechcalc / 100) .."% de mana leech \n+ ".. (lifeleechcalc / 100).. "% de life leech \n + ".. (criticalchancecalc / 100) .."% de critical chance\n+ ".. (criticaldamagecalc / 100) .."% de critical damage.")
				
			end
			
		


	-- Premium Ends Teleport to Temple, change addon (citizen) houseless
	local defaultTown = "Thais" -- default town where player is teleported if his home town is in premium area
	local freeTowns = { "Ab'Dendriel", "Carlin", "Kazordoon", "Thais", "Venore", "Rookgaard", "Dawnport", "Dawnport Tutorial", "Island of Destiny" } -- towns in free account area

	if not player:isPremium() and not table.contains(freeTowns, player:getTown():getName()) then
		local town = player:getTown()
		local sex = player:getSex()
		local home = getHouseByPlayerGUID(getPlayerGUID(player))
		town = table.contains(freeTowns, town:getName()) and town or Town(defaultTown)
		player:teleportTo(town:getTemplePosition())
		player:setTown(town)
		player:sendTextMessage(MESSAGE_FAILURE, "Your premium time has expired!")

		if sex == 1 then
			player:setOutfit({ lookType = 128, lookHead = 114, lookBody = 120, lookLegs = 132, lookFeet = 115, lookAddons = 0 })
		elseif sex == 0 then
			player:setOutfit({ lookType = 136, lookHead = 114, lookBody = 120, lookLegs = 132, lookFeet = 115, lookAddons = 0 })
		end

		if home and not player:isPremium() then
			setHouseOwner(home, 0)
			player:sendTextMessage(MESSAGE_GAME_HIGHLIGHT, "You have lost your house because you are no longer a premium account.")
			player:sendTextMessage(MESSAGE_GAME_HIGHLIGHT, "Your items from the house have been sent to your inbox.")
		end
	end

	-- Open channels
	if table.contains({ TOWNS_LIST.DAWNPORT, TOWNS_LIST.DAWNPORT_TUTORIAL }, player:getTown():getId()) then
		player:openChannel(3) -- World chat
	else
		player:openChannel(3) -- World chat
		player:openChannel(5) -- Advertsing main
		if player:getGuild() then
			player:openChannel(0x00) -- guild
		end
	end
	return true
end

playerLogin:register()
