local ativeYellowAura = Action()
function ativeYellowAura.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getStorageValue(Storage.YellowAura) < 1 and player:getItemCount(61029) >= 1 then
        player:removeItem(61029, 1)
        player:addItem(60851, 1)
        player:setStorageValue(Storage.BlueAura, 0)
        player:setStorageValue(Storage.YellowAura, 1)
        player:setStorageValue(Storage.GreenAura, 0)
        player:setStorageValue(Storage.RedAura, 0)
        return true
    else
        if player:getStorageValue(Storage.YellowAura) == 1 then
            player:say("Voce tem essa gema ativa no seu jogador!", TALKTYPE_MONSTER_SAY)
            return false
        end
        if player:getItemCount(61029) <= 0 then
            player:say("O item nao esta em sua backpack!", TALKTYPE_MONSTER_SAY)
            return false
        end
    end
end
ativeYellowAura:id(61029)
ativeYellowAura:register()