local bossCharges = TalkAction("!pvptask")

function bossCharges.onSay(player, words, param)
	local text
	local OberonCharges = player:getStorageValue(Storage.SevenDays.Oberon)
	local ScarlettCharges = player:getStorageValue(Storage.SevenDays.Scarlett)
	local DrumeCharges = player:getStorageValue(Storage.SevenDays.Drume)
	local EldritchCharges = player:getStorageValue(Storage.SevenDays.Eldritch)
	local GnomeCharges = player:getStorageValue(Storage.SevenDays.Gnome)
	local RatmiralCharges = player:getStorageValue(Storage.SevenDays.Ratmiral)
	local MonsterCharges = player:getStorageValue(Storage.SevenDays.Monster)
	local TimiraCharges = player:getStorageValue(Storage.SevenDays.Timira)
	local PvpCheck = player:getStorageValue(Storage.PvpFight.Check)
	local PvpLevel = player:getStorageValue(Storage.PvpFight.Level)
	local PvpPoints = player:getStorageValue(Storage.PvpFight.Points)
	local PvpHp = player:getStorageValue(Storage.PvpFight.Hp)
	local PvpMana = player:getStorageValue(Storage.PvpFight.Mana)
	local PvpEnergyCheck = player:getStorageValue(Storage.TaskPoints.Energy)
	local PvpEnergyActiveTask = player:getStorageValue(Storage.TaskPoints.EnergyActiveTask)
	local PvpFireActiveTask = player:getStorageValue(Storage.TaskPoints.FireActiveTask)
	local PvpEnergy = player:getStorageValue(Storage.TaskPoints.EnergyLevelUp)
	local PvpFireCheck = player:getStorageValue(Storage.TaskPoints.Fire)
	local PvpFire = player:getStorageValue(Storage.TaskPoints.FireLevelUp)
	local GlobalTaskLevel = player:getStorageValue(Storage.TaskPoints.GlobalTaskLevel)
	
	local PvpIce = player:getStorageValue(Storage.TaskPoints.IceLevelUp)
	local TrueAsura = player:getStorageValue(Storage.TaskPoints.TrueAsuraLevelUp)
	local Ferumbras = player:getStorageValue(Storage.TaskPoints.FerumbrasLevelUp)
	local Girtabilu = player:getStorageValue(Storage.TaskPoints.GirtabiluLevelUp)
	local Goanna = player:getStorageValue(Storage.TaskPoints.GoannaLevelUp)
	local Bashmu = player:getStorageValue(Storage.TaskPoints.BashmuLevelUp)
	local PvpFire = player:getStorageValue(Storage.TaskPoints.FireLevelUp)
	local Roshamuul = player:getStorageValue(Storage.TaskPoints.RoshamuulLevelUp)
	local Deathling = player:getStorageValue(Storage.TaskPoints.DeathlingLevelUp)
	local Skeletin = player:getStorageValue(Storage.TaskPoints.SkeletinLevelUp)
	local BurningIssavi = player:getStorageValue(Storage.TaskPoints.BurningIssaviLevelUp)
	local Buried = player:getStorageValue(Storage.TaskPoints.BuriedLevelUp)
	local FlinsyAlminha = player:getStorageValue(Storage.TaskPoints.FlinsyAlminhaLevelUp)
	local Cobra = player:getStorageValue(Storage.TaskPoints.CobraLevelUp)
	local Falcon = player:getStorageValue(Storage.TaskPoints.FalconLevelUp)
	local ElfFogo = player:getStorageValue(Storage.TaskPoints.ElfFogoLevelUp)
	local ElfGelo = player:getStorageValue(Storage.TaskPoints.ElfGeloLevelUp)
	local RipperSpectre = player:getStorageValue(Storage.TaskPoints.RipperSpectreLevelUp)
	local GazerSpectre = player:getStorageValue(Storage.TaskPoints.GazerSpectreLevelUp)
	local BursterSpectre = player:getStorageValue(Storage.TaskPoints.BursterSpectreLevelUp)
	local Sphinx = player:getStorageValue(Storage.TaskPoints.SphinxLevelUp)
	local Hellspawn = player:getStorageValue(Storage.TaskPoints.HellspawnLevelUp)
	local Hero = player:getStorageValue(Storage.TaskPoints.HeroLevelUp)
	local MinoOramond = player:getStorageValue(Storage.TaskPoints.MinoOramondLevelUp)
	local Rotten = player:getStorageValue(Storage.TaskPoints.RottenLevelUp)
	local Cloak = player:getStorageValue(Storage.TaskPoints.CloakLevelUp)
	local InfernalDemon = player:getStorageValue(Storage.TaskPoints.InfernalDemonLevelUp)
	local Peixinho = player:getStorageValue(Storage.TaskPoints.PeixinhoLevelUp)
	local DarkThais = player:getStorageValue(Storage.TaskPoints.DarkThaisLevelUp)
	local Shirek = player:getStorageValue(Storage.TaskPoints.ShirekLevelUp)
	local Sulphider = player:getStorageValue(Storage.TaskPoints.SulphiderLevelUp)
	local HulkingBehe = player:getStorageValue(Storage.TaskPoints.HulkingBeheLevelUp)
	local RBlood1 = player:getStorageValue(Storage.TaskPoints.RBlood1LevelUp)
	local RBlood2 = player:getStorageValue(Storage.TaskPoints.RBlood2LevelUp)
	local RBlood3 = player:getStorageValue(Storage.TaskPoints.RBlood3LevelUp)
	local RBlood4 = player:getStorageValue(Storage.TaskPoints.RBlood4LevelUp)
	

	text = "      PVP Level Contruibuition \n"
		.. "\nLevel Total PVP: "
		.. PvpPoints
		.. "\n"
		.. "\nLevel Energy: "
		.. PvpEnergy
		.. "\n"
		.. "\nLevel Fire: "
		.. PvpFire
		.. "\n"
		.. "\nLevel Ice: "
		.. PvpIce
		.. "\n"
		.. "\nLevel TrueAsura: "
		.. TrueAsura
		.. "\n"
		.. "\nLevel Ferumbras: "
		.. Ferumbras
		.. "\n"
		.. "\nLevel Girtabilu: "
		.. Girtabilu
		.. "\n"
		.. "\nLevel Goanna: "
		.. Goanna
		.. "\n"
		.. "\nLevel Bashmuu: "
		.. Bashmu
		.. "\n"
		.. "\nLevel Roshamuul: "
		.. Roshamuul
		.. "\n"
		.. "\nLevel Deathling: "
		.. Deathling
		.. "\n"
		.. "\nLevel Skeletin: "
		.. Skeletin
		.. "\n"
		.. "\nLevel BurningIssavi: "
		.. BurningIssavi
		.. "\n"
		.. "\nLevel Buried: "
		.. Buried
		.. "\n"
		.. "\nLevel FlinsyAlminha: "
		.. FlinsyAlminha
		.. "\n"
		.. "\nLevel Cobra: "
		.. Cobra
		.. "\n"
		.. "\nLevel Falcon: "
		.. Falcon
		.. "\n"
		.. "\nLevel ElfFogo: "
		.. ElfFogo
		.. "\n"
		.. "\nLevel ElfGelo: "
		.. ElfGelo
		.. "\n"
		.. "\nLevel RipperSpectre: "
		.. RipperSpectre
		.. "\n"
		.. "\nLevel GazerSpectre: "
		.. GazerSpectre
		.. "\n"
		.. "\nLevel BursterSpectre: "
		.. BursterSpectre
		.. "\n"
		.. "\nLevel Sphinx: "
		.. Sphinx
		.. "\n"
		.. "\nLevel Hellspawn: "
		.. Hellspawn
		.. "\n"
		.. "\nLevel Hero: "
		.. Hero
		.. "\n"
		.. "\nLevel MinoOramond: "
		.. MinoOramond
		.. "\n"
		.. "\nLevel Rotten: "
		.. Rotten
		.. "\n"
		.. "\nLevel Cloak: "
		.. Cloak
		.. "\n"
		.. "\nLevel InfernalDemon: "
		.. InfernalDemon
		.. "\n"
		.. "\nLevel Peixinho: "
		.. Peixinho
		.. "\n"
		.. "\nLevel DarkThais: "
		.. DarkThais
		.. "\n"
		.. "\nLevel Shirek: "
		.. Shirek
		.. "\n"
		.. "\nLevel Sulphider: "
		.. Sulphider
		.. "\n"
		.. "\nLevel HulkingBehe: "
		.. HulkingBehe
		.. "\n"
		.. "\nLevel RBlood1: "
		.. RBlood1
		.. "\n"
		.. "\nLevel RBlood2: "
		.. RBlood2
		.. "\n"
		.. "\nLevel RBlood3: "
		.. RBlood3
		.. "\n"
		.. "\nLevel RBlood4: "
		.. RBlood4
		.. "\n"

		




	player:showTextDialog(34266, text)
	return false -- Não retorna true para não interromper o processamento de outros scripts relacionados a comandos de conversa
end

bossCharges:separator(" ")
bossCharges:groupType("normal")
bossCharges:register()
