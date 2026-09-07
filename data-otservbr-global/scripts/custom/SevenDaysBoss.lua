local bosses = {
	["grand master oberon"] = { storage = Storage.SevenDays.Oberon},
 	["scarlett etzel"] = { storage = Storage.SevenDays.Scarlett},
	["drume"] = { storage = Storage.SevenDays.Drume},
	["the brainstealer"] = { storage = Storage.SevenDays.Eldritch},
	["the baron from below"] = { storage = Storage.SevenDays.Gnome},
	["the count of the core"] = { storage = Storage.SevenDays.Gnome},
	["the duke of the depths"] = { storage = Storage.SevenDays.Gnome},
	["ratmiral blackwhiskers"] = { storage = Storage.SevenDays.Ratmiral},
	["the monster"] = { storage = Storage.SevenDays.Monster},
	["timira the many-headed"] = { storage = Storage.SevenDays.Timira},
}

local BossesSevenDays = CreatureEvent("SevenDaysDeath")
function BossesSevenDays.onDeath(creature)
	local bossConfig = bosses[creature:getName():lower()]
	if not bossConfig then
		return true
	end
	onDeathForDamagingPlayers(creature, function(creature, player)
		local StorageBoss = player:getStorageValue(bossConfig.storage)
		if bossConfig.storage then
			player:setStorageValue(bossConfig.storage, StorageBoss + 1)
		end
	end)
	return true
end

BossesSevenDays:register()













-- local bosses = {
-- 	["grand master oberon"] = { storage = Storage.SevenDays.Oberon},
-- 	["Scarlett Etzel"] = { storage = Storage.SevenDays.Scarlett},
-- 	["Drume"] = { storage = Storage.SevenDays.Drume},
-- 	["The Brainstealer"] = { storage = Storage.SevenDays.Eldritch},
-- 	["The Baron from Below"] = { storage = Storage.SevenDays.Gnome},
-- 	["The Count Of The Core"] = { storage = Storage.SevenDays.Gnome},
-- 	["The Duke Of The Depths"] = { storage = Storage.SevenDays.Gnome},
-- 	["Ratmiral Blackwhiskers"] = { storage = Storage.SevenDays.Ratmiral},
-- 	["The Monster"] = { storage = Storage.SevenDays.Monster},
-- 	["Timira The Many-Headed"] = { storage = Storage.SevenDays.Timira},

-- }

-- local SevenDaysBossDeath = CreatureEvent("SevenDaysBossDeath")
-- function SevenDaysBossDeath.onDeath(creature)
-- 	local bossConfig = bosses[creature:getName():lower()]
	
-- 	print('Part1')
-- 	if not bossConfig then
-- 		return true
-- 	end
-- 	onDeathForDamagingPlayers(creature, function(creature, player)
-- 		local StorageBoss = player:getStorageValue(bossConfig.storage)
-- 		if bossConfig.storage then
-- 			player:setStorageValue(bossConfig.storage, StorageBoss + 1)
-- 			print('Part2')
-- 		end
-- 	end)
-- 	return true
-- end

-- SevenDaysBossDeath:register()
