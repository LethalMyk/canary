local presentBox = function (player)
    local gifts = {
        {name = "lasting exercise shield", charges = 14400},
        {name = "lasting exercise sword", charges = 14400},
        {name = "lasting exercise club", charges = 14400},
        {name = "lasting exercise bow", charges = 14400},
        {name = "lasting exercise axe", charges = 14400},
        -- ampliavel e regulavel conforme necessario
    }

    local window = ModalWindow {
        title = "Exercise Box",
        message = 'Escolha seu Exercise Weapon:'
    }

    for _, gift in pairs(gifts) do
        window:addChoice(gift.name, function (player, button, choice)
            if button.name == 'Select' then
                -- Verifique se o jogador ainda tem o item no inventario
                if player:getItemCount(60151) > 0 then
                    player:removeItem(60151, 1) -- Remova o item primeiro
                    local item = player:addItem(gift.name, 1)
                    if item then
                        item:setAttribute(ITEM_ATTRIBUTE_CHARGES, gift.charges)
                    end
                    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Voce recebeu ' .. gift.name .. ' com ' .. gift.charges .. ' cargas!')
                else
                    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Voce nao esta com o exercise box em seu inventario!')
                end
            end
        end)
    end

    window:addButton("Select")
    window:addButton("Close")
    window:sendToPlayer(player)
end

local presentBoxOnUse = Action()
function presentBoxOnUse.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    -- Verifique se o jogador ainda tem o item no inventario antes de abrir a janela
    if player:getItemCount(60151) > 0 then
        presentBox(player)
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Voce nao esta com o exercise box em seu inventario!')
    end
end

presentBoxOnUse:id(60151) -- Substitua "Caixa de Presentes" pelo ID do item da caixa de presentes
presentBoxOnUse:register()
-- Created by Habdel for free community use
