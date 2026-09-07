local AuraRed = GlobalEvent("AuraRed")

function AuraRed.onThink(interval, lastExecution)
    for _, player in ipairs(Game.getPlayers()) do
        local DamageAura = player:getStorageValue(Storage.RedAura)
        local position = player:getPosition()
        if DamageAura == 1 and player:getItemCount(60854) == 1 then
            player:say("", TALKTYPE_MONSTER_SAY)
         

            position:sendMagicEffect(363)
        end
    end
    return true
end

AuraRed:interval(930)
AuraRed:register()