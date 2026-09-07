local specialItemRanges = {
	{ rangeStart = ITEM_HEALTH_CASK_START, rangeEnd = ITEM_HEALTH_CASK_END },
	{ rangeStart = ITEM_MANA_CASK_START, rangeEnd = ITEM_MANA_CASK_END },
	{ rangeStart = ITEM_SPIRIT_CASK_START, rangeEnd = ITEM_SPIRIT_CASK_END },
	{ rangeStart = ITEM_KEG_START, rangeEnd = ITEM_KEG_END },
}

local function isSpecialItem(itemId)
	for _, range in ipairs(specialItemRanges) do
		if itemId >= range.rangeStart and itemId <= range.rangeEnd then
			return true
		end
	end

	return false
end

local function getPositionDescription(position)
	if position.x == 65535 then
		return "Position: In your inventory."
	else
		return string.format(
			"Position: (%d, %d, %d)",
			position.x,
			position.y,
			position.z
		)
	end
end

local function handleItemDescription(inspectedThing, lookDistance, player)
	local descriptionText = inspectedThing:getDescription(lookDistance)

	if not player:getGroup():getAccess() then
		if inspectedThing:getId() == ITEM_MAGICWALL
			or inspectedThing:getId() == ITEM_MAGICWALL_SAFE then

			return "You see a magic wall."

		elseif inspectedThing:getId() == ITEM_WILDGROWTH
			or inspectedThing:getId() == ITEM_WILDGROWTH_SAFE then

			return "You see rush wood."
		end
	end

	if isSpecialItem(inspectedThing:getId()) then
		local itemCharges = inspectedThing:getCharges()

		if itemCharges > 0 then
			return string.format(
				"You see %s\nIt has %d refillings left.",
				descriptionText,
				itemCharges
			)
		end
	else
		return "You see " .. descriptionText
	end

	return descriptionText
end

local function handleCreatureDescription(inspectedThing, lookDistance)
	local descriptionText = inspectedThing:getDescription(lookDistance)

	if inspectedThing:isMonster() then
		local monsterMaster = inspectedThing:getMaster()

		if monsterMaster
			and table.contains(FAMILIARSNAME, inspectedThing:getName():lower()) then

			local summonTimeRemaining =
				monsterMaster:kv():get("familiar-summon-time") or 0

			descriptionText = string.format(
				"%s (Master: %s). It will disappear in %s",
				descriptionText,
				monsterMaster:getName(),
				Game.getTimeInWords(
					summonTimeRemaining - os.time()
				)
			)
		end
	end

	return "You see " .. descriptionText
end

local function appendAdminDetails(descriptionText, inspectedThing, inspectedPosition)
	if inspectedThing:isItem() then
		descriptionText = string.format(
			"%s\nClient ID: %d",
			descriptionText,
			inspectedThing:getId()
		)

		local itemActionId = inspectedThing:getActionId()

		if itemActionId ~= 0 then
			descriptionText = string.format(
				"%s, Action ID: %d",
				descriptionText,
				itemActionId
			)
		end

		local itemUniqueId = inspectedThing:getUniqueId()

		if itemUniqueId > 0 and itemUniqueId < 65536 then
			descriptionText = string.format(
				"%s, Unique ID: %d",
				descriptionText,
				itemUniqueId
			)
		end

		local doorIdAttribute =
			inspectedThing:getAttribute(ITEM_ATTRIBUTE_DOORID)

		if doorIdAttribute and doorIdAttribute > 0 then
			descriptionText = string.format(
				"%s, Door ID: %d",
				descriptionText,
				doorIdAttribute
			)
		end

		local itemType = inspectedThing:getType()

		local transformOnEquipId =
			itemType:getTransformEquipId()

		local transformOnDeEquipId =
			itemType:getTransformDeEquipId()

		if transformOnEquipId ~= 0 then
			descriptionText = string.format(
				"%s\nTransforms to: %d (onEquip)",
				descriptionText,
				transformOnEquipId
			)

		elseif transformOnDeEquipId ~= 0 then
			descriptionText = string.format(
				"%s\nTransforms to: %d (onDeEquip)",
				descriptionText,
				transformOnDeEquipId
			)
		end

		local itemDecayId = itemType:getDecayId()

		if itemDecayId ~= -1 then
			descriptionText = string.format(
				"%s\nDecays to: %d",
				descriptionText,
				itemDecayId
			)
		end

	elseif inspectedThing:isCreature() then

		local healthDescription = "%s\n%s\nHealth: %d / %d"
		local creatureId = ""

		if inspectedThing:isPlayer()
			and inspectedThing:getMaxMana() > 0 then

			creatureId = string.format(
				"Player ID: %i",
				inspectedThing:getGuid()
			)

			healthDescription = string.format(
				"%s, Mana: %d / %d",
				healthDescription,
				inspectedThing:getMana(),
				inspectedThing:getMaxMana()
			)

		elseif inspectedThing:isMonster() then

			creatureId = string.format(
				"Monster ID: %i",
				inspectedThing:getId()
			)

		elseif inspectedThing:isNpc() then

			creatureId = string.format(
				"NPC ID: %i",
				inspectedThing:getId()
			)
		end

		descriptionText = string.format(
			healthDescription,
			descriptionText,
			creatureId,
			inspectedThing:getHealth(),
			inspectedThing:getMaxHealth()
		)
	end

	descriptionText = string.format(
		"%s\n%s",
		descriptionText,
		getPositionDescription(inspectedPosition)
	)

	if inspectedThing:isCreature() then
		local creatureBaseSpeed = inspectedThing:getBaseSpeed()
		local creatureCurrentSpeed = inspectedThing:getSpeed()

		descriptionText = string.format(
			"%s\nSpeed Base: %d\nSpeed: %d",
			descriptionText,
			creatureBaseSpeed,
			creatureCurrentSpeed
		)

		if inspectedThing:isPlayer() then
			descriptionText = string.format(
				"%s\nIP: %s",
				descriptionText,
				Game.convertIpToString(inspectedThing:getIp())
			)
		end
	end

	return descriptionText
end

local callback = EventCallback("PlayerOnLookBaseEvent")

function callback.playerOnLook(
	player,
	inspectedThing,
	inspectedPosition,
	lookDistance
)
	local descriptionText = ""

	-- =========================================================
	-- DESCRIÇÃO DO OBJETO
	-- =========================================================

	if inspectedThing:isItem() then

		descriptionText = handleItemDescription(
			inspectedThing,
			lookDistance,
			player
		)

	elseif inspectedThing:isCreature() then

		descriptionText = handleCreatureDescription(
			inspectedThing,
			lookDistance
		)
	end

	-- =========================================================
	-- KILLS / DEATHS / RESETS / FIGHT POINTS
	-- =========================================================

	if inspectedThing:isPlayer()
		and not inspectedThing:getGroup():getAccess() then

		local killStorage = 884734
		local deathStorage = 884735
		local resetStorage = 500
		local fightPointsStorage = Storage.PvpFight.Points

		local killAmount =
			inspectedThing:getStorageValue(killStorage)

		local deathAmount =
			inspectedThing:getStorageValue(deathStorage)

		local resetAmount =
			inspectedThing:getStorageValue(resetStorage)

		local fightPoints =
			inspectedThing:getStorageValue(fightPointsStorage)

		-- Storage não inicializado
		if killAmount < 0 then
			killAmount = 0
		end

		if deathAmount < 0 then
			deathAmount = 0
		end

		if resetAmount < 0 then
			resetAmount = 0
		end

		if fightPoints < 0 then
			fightPoints = 0
		end

		-- Adiciona as informações à descrição
		descriptionText = descriptionText
			.. "\nKilleds: ["
			.. killAmount
			.. "] and Deaths: ["
			.. deathAmount
			.. "]"
			.. "\nResets: ["
			.. resetAmount
			.. "]"
			.. "\nFight Points: ["
			.. fightPoints
			.. "]"
	end

	-- =========================================================
	-- INFORMAÇÕES DE ADMIN
	-- =========================================================

	if player:getGroup():getAccess() then
		descriptionText = appendAdminDetails(
			descriptionText,
			inspectedThing,
			inspectedPosition
		)
	end

	-- =========================================================
	-- ENVIA A DESCRIÇÃO
	-- =========================================================

	player:sendTextMessage(
		MESSAGE_LOOK,
		descriptionText
	)
end

callback:register()