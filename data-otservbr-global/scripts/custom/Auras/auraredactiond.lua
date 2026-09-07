local inativeRedAura = Action()
function inativeRedAura.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getItemCount(60854) == 1 then
        player:removeItem(60854, 1)
        player:addItem(60850, 1)
        player:setStorageValue(Storage.BlueAura, 0)
        player:setStorageValue(Storage.YellowAura, 0)
        player:setStorageValue(Storage.GreenAura, 0)
        player:setStorageValue(Storage.RedAura, 0)

        return true
    else
        if player:getItemCount(60854) <= 0 then
            player:say("O item nao esta em sua backpack!", TALKTYPE_MONSTER_SAY)
            return false
        end
    end
end
inativeRedAura:id(60854)
inativeRedAura:register()