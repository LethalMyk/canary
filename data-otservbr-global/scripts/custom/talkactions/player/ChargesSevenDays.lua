local bossCharges = TalkAction("!boss")

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
	local PvpEnergy = player:getStorageValue(Storage.TaskPoints.EnergyTask)
	local PvpFireCheck = player:getStorageValue(Storage.TaskPoints.Fire)
	local PvpFire = player:getStorageValue(Storage.TaskPoints.FireTask)
	


	text = "      Boss Charges \n"
		.. "\nOberon Charges: "
		.. OberonCharges
		.. "\n" 
		.. "\nScarlett Charges: "
		.. ScarlettCharges
		.. "\n"
		.. "\nDrume Charges: "
		.. DrumeCharges
		.. "\n"
		.. "\nEldritch Charges: "
		.. EldritchCharges
		.. "\n"
		.. "\nGnome Charges: "
		.. GnomeCharges
		.. "\n"
		.. "\nRatmiral Charges: "
		.. RatmiralCharges
		.. "\n"
		.. "\nMonster Charges: "
		.. MonsterCharges
		.. "\n"
		.. "\nTimira Charges: "
		.. TimiraCharges
	



	player:showTextDialog(34266, text)
	return false -- Não retorna true para não interromper o processamento de outros scripts relacionados a comandos de conversa
end

bossCharges:separator(" ")
bossCharges:groupType("normal")
bossCharges:register()
