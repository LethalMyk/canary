local tplist = {
    [57000] = {
        name = "PVP Area",
        level = {1},
        positions = {
            {x = 31706, y = 32046, z = 6}
        },
        subareas = {
            "PVP Area - 10k"
        }
    }
}

local firstid = 57000
local lastid = 57000

local teleports = MoveEvent()

function teleports.onStepIn(player, item, position, fromPosition)
    if not player:isPlayer() then
        return false
    end

    local tp = tplist[item.actionid]

    if not tp then
        return true
    end

    local quantity = #tp.positions

    player:registerEvent("Teleport_Modal_Window_PVP")

    -- Mantém o jogador no lugar enquanto escolhe
    player:teleportTo(fromPosition, false)

    local title = "PVP AREA"
    local message =
        "Ao entrar nessa area voce podera escolher seu level para pelegar, quando sair seu level original sera restaurado.\n" ..
        "Ao matar um player nesta area voce podera ganhar:\n" ..
        "Pvp Coins e Fight Points"

    local window = ModalWindow(item.actionid, title, message)

    for i = 1, quantity do
        window:addChoice(i, tp.subareas[i] or (tp.name .. " " .. i))
    end

    window:setDefaultEnterButton(100)
    window:setDefaultEscapeButton(101)

    window:addButton(100, "Go")
    window:addButton(101, "Cancel")

    if quantity < 2 then
        player:unregisterEvent("Teleport_Modal_Window_PVP")

        local check = Storage.PvpFight.Check

        if player:getStorageValue(check) == 1 then
            player:teleportTo(fromPosition, false)

            player:sendTextMessage(
                MESSAGE_EVENT_ADVANCE,
                "Seu level esta armazenado incorretamente, faca residencia em Thais para resetar."
            )

            return true
        end

        player:sendTextMessage(
            MESSAGE_EVENT_ADVANCE,
            "Teleported to " .. tp.name .. "."
        )

        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)

        player:teleportTo(tp.positions[1])

        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)

        return true
    end

    window:sendToPlayer(player)

    return true
end

for j = firstid, lastid do
    teleports:aid(j)
end

teleports:type("stepin")
teleports:register()


local modalTpFree = CreatureEvent("Teleport_Modal_Window_PVP")
modalTpFree:type("modalwindow")

function modalTpFree.onModalWindow(player, modalWindowId, buttonId, choiceId)
    player:unregisterEvent("Teleport_Modal_Window_PVP")

    if modalWindowId < firstid or modalWindowId > lastid then
        return true
    end

    -- CANCELAR
    if buttonId == 101 then
        return true
    end

    -- Só continua se clicou em GO
    if buttonId ~= 100 then
        return true
    end

    local tp = tplist[modalWindowId]

    if not tp then
        return true
    end

    local check = Storage.PvpFight.Check

    if player:getStorageValue(check) == 1 then
        player:sendTextMessage(
            MESSAGE_EVENT_ADVANCE,
            "Voce ja esta em uma PVP Area."
        )

        return true
    end

    if player:getMoney() < 10000 then
        player:sendTextMessage(
            MESSAGE_EVENT_ADVANCE,
            "Voce precisa de 10.000 gold coins para entrar na PVP Area."
        )

        return true
    end

    local destination = tp.positions[choiceId]

    if not destination then
        player:sendTextMessage(
            MESSAGE_EVENT_ADVANCE,
            "Opcao de PVP invalida."
        )

        return true
    end

    player:removeMoneyBank(10000)

    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)

    player:teleportTo(destination)

    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)

    player:sendTextMessage(
        MESSAGE_EVENT_ADVANCE,
        "Teleported to " .. (tp.subareas[choiceId] or tp.name) .. "."
    )

    return true
end

modalTpFree:register()