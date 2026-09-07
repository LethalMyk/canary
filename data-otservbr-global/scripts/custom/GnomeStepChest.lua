local AcessBossGnome = MoveEvent()
MESSAGE_COLOR_YELLOW = 36792 -- item id de um item que tenha a cor yellow no nome.
local mensagem = "7 Gnome Charges"

function AcessBossGnome.onStepIn(creature, item, position, toPosition, fromPosition)
    local player = creature:getPlayer()
    local LocalBoss = Position(1579, 1314, 6)
    local storageBoss = player:getStorageValue(Storage.SevenDays.Gnome)
    if not player then
        return true
    end
    if player:getStorageValue(Storage.SevenDays.Gnome) >= 15 then
        player:teleportTo(toPosition)
        player:addItem(60914, 1)
        player:setStorageValue(Storage.SevenDays.Gnome, storageBoss -15)
        
      --  player:teleportTo(LocalBoss)

        player:getPosition():sendMagicEffect(261)
        player:sendTextMessage(MESSAGE_LOOT, string.format("Voce trocou {%d|%s} por um bau.", MESSAGE_COLOR_YELLOW, mensagem))
        return true
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce precisa de 7 charges para trocar")

        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:teleportTo(toPosition)
        return false
    end
end

AcessBossGnome:type("stepin")
AcessBossGnome:aid(41037)
AcessBossGnome:register() 
