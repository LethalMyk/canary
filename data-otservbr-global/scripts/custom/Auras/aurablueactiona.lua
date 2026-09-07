local ativeGemBlack = Action()
function ativeGemBlack.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getStorageValue(Storage.BlueAura) < 1 and player:getItemCount(60848) >= 1 then
        player:removeItem(60848, 1)
        player:addItem(60852, 1)
        player:setStorageValue(Storage.BlueAura, 1)
        player:setStorageValue(Storage.YellowAura, 0)
        player:setStorageValue(Storage.GreenAura, 0)
        player:setStorageValue(Storage.RedAura, 0)

        return true
    else
        if player:getStorageValue(Storage.BlueAura) == 1 then
            player:say("Voce tem essa gema ativa no seu jogador!", TALKTYPE_MONSTER_SAY)
            return false
        end
        if player:getItemCount(60848) <= 0 then
            player:say("O item nao esta em sua backpack!", TALKTYPE_MONSTER_SAY)
            return false
        end
    end
end
ativeGemBlack:id(60848)
ativeGemBlack:register()