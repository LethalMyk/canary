local config = {
    interval = 4 * 1000, -- 4 segundos
    text = "[Top Kills]",
    effect = 195
}

local event = GlobalEvent("TopKillsEffect")

function event.onThink(interval)
    local resultId = db.storeQuery("SELECT name FROM players WHERE group_id < 2 ORDER BY kills DESC LIMIT 3;")
    if not resultId then
        return true
    end

    repeat
        local playerName = result.getString(resultId, "name")
        local player = Player(playerName)
        if player then
            local position = player:getPosition()
            local skillBonus = 10 -- Define o bônus de skill baseado no número de resets
            local manaleechcalc = skillBonus * 100
            local lifeleechcalc = skillBonus * 100
            local criticalchancecalc = skillBonus * 150 + 500
            local criticaldamagecalc = skillBonus * 300
            local absorbdano = skillBonus * 20
            local topkillscondition = Condition(CONDITION_ATTRIBUTES)
            
            topkillscondition:setParameter(CONDITION_PARAM_SUBID, skillBonusMl)
            topkillscondition:setParameter(CONDITION_PARAM_TICKS, -1)
            topkillscondition:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, mlcalc)
            topkillscondition:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_CHANCE, 1000)
            topkillscondition:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_AMOUNT, manaleechcalc)
            topkillscondition:setParameter(CONDITION_PARAM_SKILL_LIFE_LEECH_CHANCE, 1000)
            topkillscondition:setParameter(CONDITION_PARAM_SKILL_LIFE_LEECH_AMOUNT, lifeleechcalc)
            topkillscondition:setParameter(CONDITION_PARAM_SKILL_CRITICAL_HIT_CHANCE, criticalchancecalc)
            topkillscondition:setParameter(CONDITION_PARAM_SKILL_CRITICAL_HIT_DAMAGE, criticaldamagecalc)					
            player:addCondition(topkillscondition)
            position:sendMagicEffect(config.effect)
        end
    until not result.next(resultId)

    result.free(resultId)
    return true
end

event:interval(config.interval)
event:register()
