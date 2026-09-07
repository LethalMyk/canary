--local actionId = 8000

local outfits = {



    {1725, 1725, "Ursao"},
    
}

local randOutfit = Action("RandomOutfitForNewPlayers")

function randOutfit.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local outfit = outfits[math.random(1, #outfits)]
    local addon = math.random(1, 2)
    if player:hasOutfit(outfit[1], addon) and player:hasOutfit(outfit[2], addon) then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already have this outfit.")
        return true
    end

    player:addOutfit(outfit[1])
    player:addOutfit(outfit[2])
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("You obtained the %s outfit with addon %d.", outfit[3], addon))
    item:remove(1)
    return true
end

randOutfit:id(21962)
--randOutfit:aid(actionId)
randOutfit:register()