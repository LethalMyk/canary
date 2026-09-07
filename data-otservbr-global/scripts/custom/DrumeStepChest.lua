local AcessBossDrume = MoveEvent()
MESSAGE_COLOR_YELLOW = 36792 -- item id de um item que tenha a cor yellow no nome.
local mensagem = "7 Drume Charges"

function AcessBossDrume.onStepIn(creature, item, position, toPosition, fromPosition)
    local player = creature:getPlayer()
    local LocalBoss = Position(1579, 1314, 6)
    local storageBoss = player:getStorageValue(Storage.SevenDays.Drume)
    if not player then
        return true
    end
    if player:getStorageValue(Storage.SevenDays.Drume) >= 7 then
        player:teleportTo(toPosition)
        player:addItem(60910, 1)
        player:setStorageValue(Storage.SevenDays.Drume, storageBoss - 7) 
        
      --  player:teleportTo(LocalBoss)

        player:getPosition():sendMagicEffect(261)
        player:sendTextMessage(MESSAGE_LOOT, string.format("Voce trocou {%d|%s} por um bau .", MESSAGE_COLOR_YELLOW, mensagem))
        return true
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce precisa de 7 charges para trocar")

        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:teleportTo(toPosition)
        return false
    end
end

AcessBossDrume:type("stepin")
AcessBossDrume:aid(41033)
AcessBossDrume:register() 
