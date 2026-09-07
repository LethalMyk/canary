local ativeRedAura = Action()
function ativeRedAura.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getStorageValue(Storage.RedAura) < 1 and player:getItemCount(60850) >= 1 then
        player:removeItem(60850, 1)
        player:addItem(60854, 1)
        player:setStorageValue(Storage.BlueAura, 0)
        player:setStorageValue(Storage.YellowAura, 0)
        player:setStorageValue(Storage.GreenAura, 0)
        player:setStorageValue(Storage.RedAura, 1)
        return true
    else
        if player:getStorageValue(Storage.RedAura) == 1 then
            player:say("Voce tem essa gema ativa no seu jogador!", TALKTYPE_MONSTER_SAY)
            return false
        end
        if player:getItemCount(60850) <= 0 then
            player:say("O item nao esta em sua backpack!", TALKTYPE_MONSTER_SAY)
            return false
        end
    end
end
ativeRedAura:id(60850)
ativeRedAura:register()