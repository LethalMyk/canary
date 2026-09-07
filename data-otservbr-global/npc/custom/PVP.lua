local mType = Game.createMonsterType("PVP")
local monster = {}

monster.description = "a PVP"
monster.experience = 21100
monster.outfit = {
	lookTypeEx = 60970,
}

monster.health = 32700
monster.maxHealth = 32700
monster.race = "undead"
monster.corpse = 43832
monster.speed = 210
monster.manaCost = 0

monster.raceId = 2396
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 3394,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Sanctuary."
	}

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 80,
	health = 10,
	damage = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 800,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {

}

monster.loot = {
	{ name = "crystal coin", chance = 6961, maxCount = 1 },
	{ name = "soul orb", chance = 10090, maxCount = 3 },
	{ name = "lichen gobbler", chance = 8558, maxCount = 1 },
	{ name = "decayed finger bone", chance = 10309, maxCount = 1 },
	{ name = "rotten root", chance = 7678, maxCount = 1 },
	{ name = "yellow gem", chance = 12992, maxCount = 1 },
	{ name = "underworld rod", chance = 12980, maxCount = 1 },
	{ id = 3039, chance = 11333, maxCount = 1 }, -- red gem
	{ name = "ripper lance", chance = 8304, maxCount = 1 },
}

monster.attacks = {
}

monster.defenses = {
	defense = 109,
	armor = 109
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 35 },
	{ type = COMBAT_EARTHDAMAGE, percent = -15 },
	{ type = COMBAT_FIREDAMAGE, percent = -5 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 50 },
	{ type = COMBAT_HOLYDAMAGE , percent = -20 },
	{ type = COMBAT_DEATHDAMAGE , percent = 60 }
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false }
}

mType:register(monster)
