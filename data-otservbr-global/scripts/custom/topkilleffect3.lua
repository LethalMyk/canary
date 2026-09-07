local config = {
    interval = 28 * 1010, -- 10 seconds
    text = "[Top Frag]",
    effect = 214
}

local event = GlobalEvent("TopKillsEffect3")

function event.onThink(interval)
    local resultId = db.storeQuery("SELECT name FROM players WHERE group_id < 2 ORDER BY kills DESC LIMIT 3;")
    if not resultId then
        return true
    end

    local player = Player(result.getString(resultId, "name"))
    if player then
        local position = player:getPosition()
        player:say(config.text, TALKTYPE_MONSTER_SAY, false, nil, position)
    end

    result.free(resultId)
    return true
end

event:interval(config.interval)
event:register()

