local config = {
    interval = 4 * 1010, -- 10 segundos
    text = "[Top Kills]",
    effect = 214
}

local event = GlobalEvent("TopKillsEffect2")

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
            position:sendMagicEffect(config.effect)
        end
    until not result.next(resultId)

    result.free(resultId)
    return true
end

event:interval(config.interval)
event:register()
