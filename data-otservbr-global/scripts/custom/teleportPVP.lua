local tplist = {


    
    [57000] = {name = "PVP Area", level = {1, 1}, positions = {{x = 31706, y = 32046, z = 6}, {x = 0 , y = 0, z = 0}}, subareas = {'PVP Area - 10k', 'Cancel'}}


}

local firstid = 57000 -- Put your first action id used here
local lastid = 57000 -- Put your last action id used here

-- Config End
local teleports = MoveEvent()
function teleports.onStepIn(player, item, position, fromPosition)
if not player:isPlayer() then
    return false
end

local tp = tplist[item.actionid]
local quantity = table.getn(tp.positions)

player:registerEvent("Teleport_Modal_Window_PVP")
doTeleportThing(player, fromPosition, false) 

local title = "PVP AREA"
local message = " Ao entrar nessa area voce podera escolher seu level para pelegar, quando sair seu level original sera restaurado.\n Ao matar um player nesta area voce podera ganhar: \n Pvp Coins e Fight Points"

local window = ModalWindow(item.actionid, title, message)

for i = 1, quantity do
    if tp.subareas[i] == nil then
        window:addChoice(i,"".. tp.name .." ".. i .."")
    else
        window:addChoice(i,"".. tp.subareas[i] .."")
    end
end


window:setDefaultEnterButton(0)
window:setDefaultEscapeButton(1)
window:addButton(100, "Go")
window:addButton(101, "Cancel")


if tp and quantity < 2 then
    player:unregisterEvent("Teleport_Modal_Window_PVP")
 
    local levelReq = tp.level
    local check = Storage.PvpFight.Check

    if player:getStorageValue(check) == 1 then
        doTeleportThing(player, fromPosition, false) 
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Seu level está armazenado incorretamente, faça residencia em thais para resetar.')
        return true
    end

    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Teleported to '.. tp.name ..'.')
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    player:teleportTo(tp.positions[1])
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
else
    window:sendToPlayer(player)
end
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

if modalWindowId >= firstid and modalWindowId <= lastid then
    if buttonId == 100 then
     
        local levelReq = tplist[modalWindowId].level[choiceId]
        local check = Storage.PvpFight.Check

        if player:getStorageValue(check) == 1 or player:getMoney() < 10000 then
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You do not have 10.000 gold coins or need reset residence Thais to enter PVP area.')

            return true
        end
 
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        player:teleportTo(tplist[modalWindowId].positions[choiceId])
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        if tplist[modalWindowId].subareas[choiceId] == nil then
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Teleported to '.. tplist[modalWindowId].name ..' '.. choiceId ..'.')
            player:removeMoneyBank(10000)
        else
            player:removeMoneyBank(10000)
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Teleported to '.. tplist[modalWindowId].subareas[choiceId] ..'.')
        end
    end
end
return true
end
modalTpFree:register()