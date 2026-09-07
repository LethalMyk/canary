local AcessBossScarlett = MoveEvent()
MESSAGE_COLOR_YELLOW = 36792 -- item id de um item que tenha a cor yellow no nome.
local mensagem = "7 Scarlett Charges"

function AcessBossScarlett.onStepIn(creature, item, position, toPosition, fromPosition)
    local player = creature:getPlayer()
    local LocalBoss = Position(31704, 32217, 9)
    local storageBoss = player:getStorageValue(Storage.SevenDays.Scarlett)
    if not player then
        return true
    end
    if player:isPlayer() then
        player:teleportTo(LocalBoss)
        
      --  player:teleportTo(LocalBoss)

        player:getPosition():sendMagicEffect(261)
        return true
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce precisa de 7 charges para trocar")

        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:teleportTo(toPosition)
        return false
    end
end

AcessBossScarlett:type("stepin")
AcessBossScarlett:aid(40000)
AcessBossScarlett:register() 
