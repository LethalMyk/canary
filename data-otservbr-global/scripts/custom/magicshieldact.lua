local magicShield = Action("magicShieldAction")

function magicShield.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local vocation = player:getVocation():getBaseId()
    local position = player:getPosition()

    if player:removeItem(35563, 1) and (vocation == 1 or vocation == 2) then
        local condition = Condition(CONDITION_MANASHIELD)
        condition:setParameter(CONDITION_PARAM_TICKS, 60000)
        condition:setParameter(CONDITION_PARAM_MANASHIELD, math.min(player:getMaxMana(), 300 + 7.6 * player:getLevel() + 7 * player:getMagicLevel()))
        player:addCondition(condition)
        position:sendMagicEffect(CONST_ME_ENERGYAREA, player)
    else 
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Only sorcerers and druids can use this pot.")
        return false
    end
end

magicShield:id(35563)
magicShield:register()
