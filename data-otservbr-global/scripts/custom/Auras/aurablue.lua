local effectBlack = GlobalEvent("effectBlack")

function effectBlack.onThink(interval, lastExecution)
    for _, player in ipairs(Game.getPlayers()) do
        local DamageAura = player:getStorageValue(Storage.BlueAura)
        local position = player:getPosition()
        if DamageAura == 1 and player:getItemCount(60852) == 1 then
            player:say("", TALKTYPE_MONSTER_SAY)
         

            position:sendMagicEffect(362)
        end
    end
    return true
end

effectBlack:interval(930)
effectBlack:register()