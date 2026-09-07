local internalNpcName = "Down Level"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
    lookType = 278,
    lookHead = 95,
    lookBody = 95,
    lookLegs = 95,
    lookFeet = 95,
    lookAddons = 3
}

npcConfig.flags = {
    floorchange = false
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
    npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
    npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
    npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
    npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
    npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
    npcHandler:onCloseChannel(npc, creature)
end

local function creatureSayCallback(npc, creature, type, message)
    local player = Player(creature)
    local playerId = player:getId()

    if not npcHandler:checkInteraction(npc, creature) then
        return false
    end

    local levelMax = 2000

    local function getExpForLevel(level)
        level = level - 1
        return ((400 * level * level * level) - (150 * level * level) + (50 * level)) / 3
    end

    if MsgContains(message, message) then
        if creature:getLevel() - tonumber(message) >= 8 then
            local targetLevel = creature:getLevel() + tonumber(message)
            local targetExp = getExpForLevel(targetLevel)
            local addExp = targetExp - creature:getExperience()
            creature:removeExperience(addExp, false)
        else
            return false
        end
    end
    return true
end
local levelMax = 2000

npcHandler:setMessage(MESSAGE_GREET, "Ola quantos leveis deseja retirar no maximo " .. levelMax .. "?")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)
