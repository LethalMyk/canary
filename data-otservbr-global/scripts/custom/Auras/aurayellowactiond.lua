local inativeYellowAura = Action()
function inativeYellowAura.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getItemCount(60851) == 1 then
        player:removeItem(60851, 1)
        player:addItem(61029, 1)
        player:setStorageValue(Storage.BlueAura, 0)
        player:setStorageValue(Storage.YellowAura, 0)
        player:setStorageValue(Storage.GreenAura, 0)
        player:setStorageValue(Storage.RedAura, 0)

        return true
    else
        if player:getItemCount(60851) <= 0 then
            player:say("O item nao esta em sua backpack!", TALKTYPE_MONSTER_SAY)
            return false
        end
    end
end
inativeYellowAura:id(60851)
inativeYellowAura:register()