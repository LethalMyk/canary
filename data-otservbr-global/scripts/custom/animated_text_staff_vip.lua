local colors = {5, 30, 35, 95, 108, 129, 143, 155, 180, 198, 210, 215}

local globalevent = GlobalEvent("staffvip")

function globalevent.onThink(interval)
    for _, player in ipairs(Game.getPlayers()) do
        local position = player:getPosition()
       
        if player:isVip() then
            local color = colors[math.random(#colors)]
            player:sendTextMessage(MESSAGE_INFO_DESCR, "VIP", position, color)
        elseif player:getGroup():getAccess() and not player:isInGhostMode() then
            local color = colors[math.random(#colors)]
            player:sendTextMessage(MESSAGE_INFO_DESCR, "STAFF", position, color)
        end
    end
    return true
end

globalevent:interval(100000) -- Will run every 1000ms (1 second)
globalevent:register()
