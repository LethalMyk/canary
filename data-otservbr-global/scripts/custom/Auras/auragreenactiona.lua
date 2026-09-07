local activeGreenAura = Action()
function activeGreenAura.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getStorageValue(Storage.GreenAura) < 1 and player:getItemCount(60849) >= 1 then
        player:removeItem(60849, 1)
        player:addItem(60853, 1)
        player:setStorageValue(Storage.BlueAura, 0)
        player:setStorageValue(Storage.YellowAura, 0)
        player:setStorageValue(Storage.GreenAura, 1)
        player:setStorageValue(Storage.RedAura, 0)
        return true
    else
        if player:getStorageValue(Storage.GreenAura) == 1 then
            player:say("Voce tem essa gema ativa no seu jogador!", TALKTYPE_MONSTER_SAY)
            return false
        end
        if player:getItemCount(60849) <= 0 then
            player:say("O item nao esta em sua backpack!", TALKTYPE_MONSTER_SAY)
            return false
        end
    end
end
activeGreenAura:id(60849)
activeGreenAura:register()