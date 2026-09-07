local effectYellow = GlobalEvent("effectYellow")

function effectYellow.onThink(interval, lastExecution)
    for _, player in ipairs(Game.getPlayers()) do
        local DamageAura = player:getStorageValue(Storage.YellowAura)
        local position = player:getPosition()
        if DamageAura == 1 and player:getItemCount(60851) == 1 then
            player:say("", TALKTYPE_MONSTER_SAY)
            position:sendMagicEffect(365)
        end
    end
    return true
end

effectYellow:interval(930)
effectYellow:register()