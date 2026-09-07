taskOptions = {
	bonusReward = 65001, -- storage bonus reward
	bonusRate = 10, -- rate bonus reward
	taskBoardPositions = {
		{x = 31704, y = 32041, z = 6},
    },
	selectLanguage = 1, -- options: 1 = pt_br or 2 = english
	uniqueTask = true, -- do one task at a time
	uniqueTaskStorage = 65002
}

task_pt_br = {
	exitButton = "Fechar",
	confirmButton = "Validar",
	cancelButton = "Anular",
	returnButton = "Voltar",
	title = "Quadro De Missaos",
	missionError = "Missao esta em andamento ou ela ja foi concluida.",
	uniqueMissionError = "Voce precisa cancelar alguma outra antes.",
	missionErrorTwo = "Voce concluiu a missao",
	missionErrorTwoo = "\nAqui estao suas recompensas:",
	choiceText = "Lvl | Coins: + ",
	messageAcceptedText = "Voce aceitou essa missao!",
	messageDetailsText = "Detalhes da missao:",
	choiceMonsterName = "Missao: ",
	choiceMonsterRace = "Alvos: ",
	choiceMonsterKill = "Abates: ",
	choiceEveryDay = "Repeaticao: Todos os dias",
	choiceRepeatable = "Repeticao: Sempre",
	choiceOnce = "Repeaticao: Apenas uma vez",
	choiceReward = "Recompensas:",
	messageAlreadyCompleteTask = "Voce ja concluiu essa missao.",
	choiceCancelTask = "Voce cancelou essa missao",
	choiceCancelTaskError = "Voce nao pode cancelar essa missao, porque ela ja foi concluida ou nao foi iniciada.",
	choiceBoardText = "PVP TASK, use os botoes abaixo:",
	choiceRewardOnHold = "Resgatar Premio",
	choiceDailyConclued = "Diaria Concluida",
	choiceConclued = "Concluida",
	messageTaskBoardError = "O quadro de missoes esta muito longe ou esse nao eh o quadro de missoes correto.",
	messageCompleteTask = "Voce terminou essa missao! \nRetorne para o quadro de missoes e pegue sua recompensa.",
}

taskConfiguration = {





{name = "Energy -Every", color = 40, total = 7, type = "repeatable", storage = 190000, storagecount = 190001, 
	rewards = {
	{"exp", 3},
	{3043, 15},
	{23477, 1},
	{23474, 1},
	},
	races = {
		"Fragar players na Energy",
		"Invasoes na Energy",
	},
},
{name = "Fire -Every", color = 40, total = 7, type = "repeatable", storage = 191014, storagecount = 190004, 
	rewards = {
	 
	{"exp", 3},
	{3043, 15},
	},
	races = {
		"",
	},
},



{name = "Ice  -Every", color = 40, total = 7, type = "repeatable", storage = 191015, storagecount = 190005, 
rewards = {
	{28714, 3},
	{3043, 15},
	{"exp", 0},
},
races = {
	"",
},
},

{name = "True Asura -Every", color = 40, total = 3, type = "daily", storage = 191016, storagecount = 190006, 
	rewards = {
	 
	{"exp", 4},
	{3043, 20},
	},
	races = {
		"",
	},
},
{name = "Ferumbras -Only", color = 40, total = 5, type = "once", storage = 191017, storagecount = 190007, 
	rewards = {
	 
	{"exp", 4},
	{3043, 35},
	},
	races = {
		"",
	},
},

{name = "Girtabilu -Every", color = 40, total = 7, type = "repeatable", storage = 191018, storagecount = 190008, 
	rewards = {
	 
	{"exp", 3},
	{3043, 15},
	},
	races = {
		"",
	},
},
{name = "Goanna -Every", color = 40, total = 7, type = "repeatable", storage = 191019, storagecount = 190009, 
	rewards = {
	 
	{"exp", 3},
	{3043, 15},
	},
	races = {
		"",
	},
},
{name = "Bashmu-Only", color = 40, total = 5, type = "once", storage = 191110, storagecount = 190010, 
	rewards = {
	 
	{"exp", 4},
	{3043, 35},
	},
	races = {
		"",
	},
},
{name = "Roshamuul -Every", color = 40, total = 7, type = "repeatable", storage = 191111, storagecount = 190011, 
	rewards = {
	 
	{"exp", 3},
	{3043, 15},
	},
	races = {
		"",
	},
},

{name = "Deathling-Daily", color = 40, total = 5, type = "daily", storage = 191112, storagecount = 190012, 
	rewards = {
	 
	{"exp", 4},
	{3043, 35},
	},
	races = {
		"",
	},
},
{name = "Skeletin -Daily", color = 40, total = 3, type = "daily", storage = 191113, storagecount = 190013, 
	rewards = {
	 
	{"exp", 4},
	{3043, 35},
	},
	races = {
		"",
	},
},
{name = "Burning Issavi -Daily", color = 40, total = 3, type = "daily", storage = 191114, storagecount = 190014, 
	rewards = {
	 
	{"exp", 4},
	{3043, 30},
	},
	races = {
		"",
	},
},
{name = "Buried -Daily", color = 40, total = 3, type = "daily", storage = 191115, storagecount = 190015, 
	rewards = {
	 
	{"exp", 4},
	{3043, 30},
	},
	races = {
		"",
	},
},
{name = "Flimsy Alminha -Every", color = 40, total = 5, type = "repeatable", storage = 191116, storagecount = 190016, 
	rewards = {
	 
	{"exp", 4},
	{3043, 25},
	},
	races = {
		"",
	},
},

{name = "Cobra -Only", color = 40, total = 5, type = "once", storage = 191117, storagecount = 190017, 
	rewards = {
	 
	{"exp", 4},
	{3043, 35},
	},
	races = {
		"",
	},
},
{name = "Falcon -Only", color = 40, total = 5, type = "once", storage = 191118, storagecount = 190018, 
	rewards = {
	 
	{"exp", 4},
	{3043, 35},
	},
	races = {
		"",
	},
},
{name = "Elfo Fogo -Only", color = 40, total = 5, type = "once", storage = 191120, storagecount = 190021, 
rewards = {
	
	{"exp", 4},
	{3043, 35},
},
races = {
	"",
},
},

{name = "Elfo Gelo -Only", color = 40, total = 5, type = "once", storage = 191119, storagecount = 190019, 
	rewards = {
	 
	{"exp", 4},
	{3043, 35},
	},
	races = {
		"",
	},
},
{name = "RipperScpectre -Daily", color = 40, total = 3, type = "daily", storage = 191121, storagecount = 190021, 
	rewards = {
	 
	{"exp", 3},
	{3043, 20},
	},
	races = {
		"",
	},
},
{name = "GazerSpectre -Daily", color = 40, total = 3, type = "daily", storage = 191122, storagecount = 190022, 
	rewards = {
	 
	{"exp", 3},
	{3043, 20},
	},
	races = {
		"",
	},
},
{name = "BursterSpectre -Daily", color = 40, total = 3, type = "daily", storage = 191123, storagecount = 190023, 
	rewards = {
	 
	{"exp", 3},
	{3043, 20},
	},
	races = {
		"",
	},
},
{name = "Sphinx -Daily", color = 40, total = 3, type = "daily", storage = 191124, storagecount = 190024, 
	rewards = {
	 
	{"exp", 3},
	{3043, 35},
	},
	races = {
		"",
	},
},
{name = "Hellspawn -Only", color = 40, total = 3, type = "once", storage = 191125, storagecount = 190025, 
	rewards = {
	 
	{"exp", 5},
	{3043, 25},
	},
	races = {
		"",
	},
},
{name = "Hero Cave -Only", color = 40, total = 3, type = "once", storage = 191126, storagecount = 190026, 
	rewards = {
	 
	{"exp", 4},
	{3043, 20},
	},
	races = {
		"",
	},
},


{name = "Shirek -Only", color = 40, total = 5, type = "once", storage = 191127, storagecount = 190027, 
rewards = {
	
	{"exp", 4},
	{3043, 40},
},
races = {
	"",
},
},

{name = "Sulphider -Only", color = 40, total = 5, type = "once", storage = 191128, storagecount = 190028, 
rewards = {
	
	{"exp", 4},
	{3043, 40},
},
	races = {
		"",
	},
},

{name = "HulkingBehe -Only", color = 40, total = 5, type = "once", storage = 191129, storagecount = 190029, 
rewards = {
	
	{"exp", 4},
	{3043, 40},
},
races = {
	"",
},
},

{name = "RBlood1 -Only", color = 40, total = 7, type = "once", storage = 191130, storagecount = 190030, 
rewards = {
	
	{"exp", 5},
	{3043, 50},
},
races = {
	"",
},
},

{name = "RBlood2 -Only", color = 40, total = 7, type = "once", storage = 191131, storagecount = 190031, 
rewards = {
	
	{"exp", 5},
	{3043, 50},
},
races = {
	"",
},
},

{name = "RBlood3 -Only", color = 40, total = 7, type = "once", storage = 191132, storagecount = 190032, 
rewards = {
	
	{"exp", 5},
	{3043, 50},
},
races = {
	"",
},
},

{name = "RBlood4 -Only", color = 40, total = 7, type = "once", storage = 191133, storagecount = 190033, 
rewards = {
	
	{"exp", 5},
	{3043, 50},
},
races = {
	"",
},
},

{name = "Rotten -Only", color = 40, total = 7, type = "once", storage = 191134, storagecount = 190034, 
rewards = {
	
	{"exp", 5},	
	{3043, 50},
},
races = {
	"",
},	
},	

{name = "Cloak -Only", color = 40, total = 7, type = "once", storage = 191135, storagecount = 190035, 
rewards = {
	
	{"exp", 5},	
	{3043, 50},
},
races = {
	"",
},	
},	

{name = "InfernalDemon -Only", color = 40, total = 7, type = "once", storage = 191136, storagecount = 190036, 
rewards = {
	
	{"exp", 5},	
	{3043, 50},
},
races = {
		"",
	},	
},	

{name = "Peixinho -Only", color = 40, total = 7, type = "once", storage = 191137, storagecount = 190037, 
rewards = {
	
	{"exp", 5},	
	{3043, 50},
},
races = {
	"",
},	
},	

{name = "DarkThais -Only", color = 40, total = 7, type = "once", storage = 191138, storagecount = 190038, 
rewards = {
	
	{"exp", 5},	
	{3043, 50},
},
races = {
	"",
},	
},	

{name = "Mino Oramond -Only", color = 40, total = 3, type = "once", storage = 191139, storagecount = 190039, 
	rewards = {
	 
	{"exp", 4},
	{3043, 30},
	},
	races = {
		"",
	},
},




}

squareWaitTime = 5000
taskQuestLog = 65000 -- A storage so you get the quest log
dailyTaskWaitTime = 20 * 60 * 60 

function Player.getCustomActiveTasksName(self)
	local player = self
	if not player then
		return false
	end
	local tasks = {}
	for i, data in pairs(taskConfiguration) do
		if player:getStorageValue(data.storagecount) ~= -1 then
		tasks[#tasks + 1] = data.name
		end
	end
	return #tasks > 0 and tasks or false
end


function getTaskByStorage(storage)
	for i, data in pairs(taskConfiguration) do
		if data.storage == tonumber(storage) then
			return data
		end
	end
	return false
end

function getTaskByMonsterName(name)
	for i, data in pairs(taskConfiguration) do
		for _, dataList in ipairs(data.races) do
		if dataList:lower() == name:lower() then
			return data
		end
		end
	end
	return false
end

function Player.startTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if player:getStorageValue(taskQuestLog) == -1 then
		player:setStorageValue(taskQuestLog, 1)
	end
	player:setStorageValue(storage, player:getStorageValue(storage) + 1)
	player:setStorageValue(data.storagecount, 0)
	return true
end

function Player.canStartCustomTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if data.type == "daily" then
		return os.time() >= player:getStorageValue(storage)
	elseif data.type == "once" then
		return player:getStorageValue(storage) == -1
	elseif data.type[1] == "repeatable" and data.type[2] ~= -1 then
		return player:getStorageValue(storage) < (data.type[2] - 1)
	else
		return true
	end
end

function Player.endTask(self, storage, prematurely)
	local player = self
	if not player then
		return false
	end
	local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if prematurely then
		if data.type == "daily" then
			player:setStorageValue(storage, -1)
		else
			player:setStorageValue(storage, player:getStorageValue(storage) - 1)
	end
	else
		if data.type == "daily" then
			player:setStorageValue(storage, os.time() + dailyTaskWaitTime)
		end
	end
	player:setStorageValue(data.storagecount, -1)

	return true
end

function Player.hasStartedTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	return player:getStorageValue(data.storagecount) ~= -1
end


function Player.getTaskKills(self, storage)
local player = self
	if not player then
		return false
	end
	return player:getStorageValue(storage)
end

function Player.addTaskKill(self, storage, count)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	local kills = player:getTaskKills(data.storagecount)
	if kills >= data.total then
		return false
	end
	if kills + count >= data.total then
		if taskOptions.selectLanguage == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, task_pt_br.messageCompleteTask)
		else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "[Task System] You have finished this task! To claim your rewards, return to the quest board and claim your reward.")
		end
		return player:setStorageValue(data.storagecount, data.total)
	end
		player:say('Task: '..data.name ..' - ['.. kills + count .. '/'.. data.total ..']', TALKTYPE_MONSTER_SAY)
		return player:setStorageValue(data.storagecount, kills + count)
end