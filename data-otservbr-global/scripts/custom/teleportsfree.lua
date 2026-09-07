local tplist = {


    
    [59100] = {name = "Thais", level = 1, positions = {{x = 32400, y = 32203, z = 7}}, subareas = {}},
    [59101] = {name = "Minotaur", level = {1, 1}, positions = {{x = 32376, y = 32120, z = 15}, {x = 0, y = 0, z = 0},}, subareas = {'Minotaur Mintwalin', 'Cancel'}},
    [59102] = {name = "Orcs", level = {1, 20}, positions = {{x = 32578, y = 31674, z = 7}, {x = 32821 , y = 31767, z = 7}}, subareas = {'Orcs Ab Elvenbane', 'Orc Fortless'}},
    [59103] = {name = "Portal Black", level = {1, 20}, positions = {{x = 32807, y = 31695, z = 8}, {x = 0 , y = 0, z = 0}}, subareas = {'Portal Black', 'Cancel'}},
    [59104] = {name = "Dwarf", level = {1, 20}, positions = {{x = 32527, y = 31948, z = 11}, {x = 0 , y = 0, z = 0}}, subareas = {'Dwarfs',  'Cancel'}},
    [59105] = {name = "Mota", level = {30, 20}, positions = {{x = 33246, y = 32112, z = 8}, {x = 0 , y = 0, z = 0}}, subareas = {'Mota',  'Cancel'}},
    [59106] = {name = "Orclops", level = {50, 0}, positions = {{x = 32720, y = 32241, z = 8}, {x = 0 , y = 0, z = 0}}, subareas = {'Orclops',  'Cancel'}},
    [59107] = {name = "Boquinha Feyrist", level = {100, 100}, positions = {{x = 33585, y = 32262, z = 7}, {x = 33544 , y = 32270, z = 8}}, subareas = {'Surface Boquinha Feyrist', '-1 Boquinha Feyrist'}},
    [59108] = {name = "Elfo de Fogo", level = {100, 100}, positions = {{x = 33669, y = 32219, z = 7}, {x = 0 , y = 0, z = 0}}, subareas = {'Elfo de Fogo - Entrada', 'Cancel'}},
    [59109] = {name = "Roshamuul", level = {1, 100, 150}, positions = {{x = 33495, y = 32566, z = 7}, {x = 33542, y = 32369, z = 7}, {x = 33593 , y = 32433, z = 8}}, subareas = {'Roshamuul Entrada', 'Roshamuul DP', 'Prison -1'}},


    [59120] = {name = "Carlin", level = 1, positions = {{x = 32336, y = 31802, z = 7}}, subareas = {}},
    [59121] = {name = "Ghostland", level = {1,1}, positions = {{x = 32193, y = 31789, z = 7}, {x = 0 , y = 0, z = 0}}, subareas = {'Ghostland', 'Cancel'}},
    [59122] = {name = "Cult Carlin", level = {35,1}, positions = {{x = 32404, y = 31813, z = 8}, {x = 0 , y = 0, z = 0}}, subareas = {'Cult Carlin', 'Cancel'}},
    [59123] = {name = "Corym", level = {20, 20}, positions = {{x = 32362, y = 31841, z = 11}, {x = 0 , y = 0, z = 0}}, subareas = {'Corym Carlin', 'Cancel'}},
    [59124] = {name = "Dragon", level = {30, 20}, positions = { {x = 32474, y = 31854, z = 10}, {x = 0 , y = 0, z = 0}}, subareas = {'Dragon Carlin', 'Cancel'}},
    [59125] = {name = "Warlock", level = {60, 20}, positions = { {x = 32512, y = 31723, z = 15}, {x = 0 , y = 0, z = 0}}, subareas = {'Warlock Demona', 'Cancel'}},
    [59126] = {name = "Lost Exile", level = {60, 20}, positions = { {x = 32500, y = 31842, z = 15}, {x = 0 , y = 0, z = 0}}, subareas = {'Lost Exile', 'Cancel'}},
    [59127] = {name = "Water Elemental Folda", level = {35, 20}, positions = {{x = 31927, y = 31652, z = 9}, {x = 0 , y = 0, z = 0}}, subareas = {'Water Elemental - Folda', 'Cancel'}},
    [59128] = {name = "Barkless", level = {100, 20}, positions = {{x = 32725, y = 31532, z = 9}, {x = 0 , y = 0, z = 0}}, subareas = {'Barkless - Ab', 'Cancel'}},


    [59140] = {name = "Edron", level = 1, positions = {{x = 33246, y = 31836, z = 7}}, subareas = {}},
    [59141] = {name = "Cyclops", level = {1, 1}, positions = {{x = 33256, y = 31706, z = 7}, {x = 0 , y = 0, z = 0}}, subareas = {'Cyclops Edron', 'Cancel'}},
    [59142] = {name = "Behemoth", level = {60, 20}, positions = {{x = 33295 , y = 31686, z = 14}, {x = 0 , y = 0, z = 0}}, subareas = {'Behe Edron', 'Cancel'}},
    [59143] = {name = "Grimvale", level = {60, 60, 80}, positions = {{x = 33342 , y = 31693, z = 7},{x = 33189, y = 31914, z = 7} , {x = 33416 , y = 31570, z = 10}}, subareas = {'Grimvale Norte - Entrada', 'Grimvale Sul', 'Grimvale Norte -4'}},
    [59144] = {name = "GrimvaleCormaya", level = {100, 20}, positions = {{x = 33366, y = 32006, z = 8}, {x = 0 , y = 0, z = 0}}, subareas = {'Grimvale Cormaya', 'Cancel'}},
    [59145] = {name = "Vampire", level = {40, 20}, positions = {{x = 33068, y = 31599, z = 10}, {x = 0 , y = 0, z = 0}}, subareas = {'Vampires - Edron', 'Cancel'}},
    [59146] = {name = "Hero Cave", level = {20, 30}, positions = {{x = 33266, y = 31650, z = 7}, {x = 33261 , y = 31597, z = 8}}, subareas = {'Hero Cave - Entrada', 'Hero Cave -2'}},
    [59147] = {name = "Demon", level = {100, 20}, positions = {{x = 33284, y = 31594, z = 12}, {x = 0 , y = 0, z = 0}}, subareas = {'Demon H', 'Cancel'}},
    [59148] = {name = "Carnysilvan", level = {300, 20}, positions = {{x = 32396, y = 32495, z = 10}, {x = 0 , y = 0, z = 0}}, subareas = {'Carnysilvan', 'Cancel'}},
    [59149] = {name = "Ingol", level = {300, 1}, positions = {{x = 33711, y = 32602, z = 6}, {x = 0 , y = 0, z = 0}}, subareas = {'Ingol', 'Cancel'}},
    [59150] = {name = "Falcons", level = {250, 1}, positions = {{x = 33358, y = 31310, z = 4}, {x = 0 , y = 0, z = 0}}, subareas = {'Falcons Entrada', 'Cancel'}},
    [59151] = {name = "Mega Dragon", level = {600, 1}, positions = { {x = 33216, y = 31126, z = 14}, {x = 0 , y = 0, z = 0}}, subareas = {'Nimmersatts Breeding Ground', 'Cancel'}},

    [59160] = {name = "Ankrahmun", level = 1, positions = {{x = 33103, y = 32841, z = 7}}, subareas = {}},
    [59161] = {name = "Dragon", level = {30, 1}, positions = {{x = 33118 , y = 32601, z = 6}, {x = 0 , y = 0, z = 0}}, subareas = {'Dragons', 'Cancel'}},
    [59162] = {name = "Iks", level = {30, 1}, positions = {{x = 34015, y = 31885, z = 8}, {x = 0 , y = 0, z = 0}}, subareas = {'Iks', 'Cancel'}},
    [59163] = {name = "GT", level = {150, 1}, positions = {{x = 33176, y = 32636, z = 7}, {x = 0 , y = 0, z = 0}}, subareas = {'GT Ank', 'Cancel'}},
    [59164] = {name = "Asura", level = {100, 250}, positions = {{x = 32986, y = 32730, z = 7}, {x = 32812, y = 32762, z = 9}}, subareas = {'Asura Palace', 'Asura Mirror'}},
    [59165] = {name = "True Asura", level = {400, 1}, positions = {{x = 32878, y = 32808, z = 9}, {x = 0, y = 0, z = 0}}, subareas = {'True Asura', 'Cancel'}},
    [59166] = {name = "Cobra", level = {250, 1}, positions = {{x = 33305, y = 32653, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Cobra Bastion', 'Cancel'}},

    [59180] = {name = "Darashia", level = 1, positions = {{x = 33232, y = 32447, z = 7}}, subareas = {}},
    [59181] = {name = "Putred Mummy", level = {30, 1}, positions = {{x = 33290, y = 32276, z = 12}, {x = 0, y = 0, z = 0}}, subareas = {'Putred Mummy', 'Cancel'}},
    [59182] = {name = "Minotaur Darashia", level = {1, 1}, positions = {{x = 33298, y = 32297, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Minotaur Darashia', 'Cancel'}},
    [59183] = {name = "Ancient Scarab", level = {35, 1}, positions = {{x = 33328, y = 32597, z = 9}, {x = 0, y = 0, z = 0}}, subareas = {'Ancient Scarab', 'Cancel'}},
    [59184] = {name = "Lion Rock", level = {35, 1}, positions = {{x = 33122, y = 32302, z = 8}, {x = 0, y = 0, z = 0}}, subareas = {'Nobre Lion', 'Cancel'}},
    [59185] = {name = "Dragon", level = {40, 1}, positions = {{x = 33265 , y = 32266, z = 10}, {x = 0, y = 0, z = 0}}, subareas = {'Dragons', 'Cancel'}},
    [59186] = {name = "Dragon Lord", level = {60, 1}, positions = {{x = 33237, y = 32267, z = 11}, {x = 0, y = 0, z = 0}}, subareas = {'Dragon Lord', 'Cancel'}},
    [59187] = {name = "Burster Spectre", level = {130, 1}, positions = {{x = 33092 , y = 32392, z = 8}, {x = 0, y = 0, z = 0}}, subareas = {'Burster Spectre', 'Cancel'}},
    [59188] = {name = "Skeleton", level = {200, 1}, positions = {{x = 33114, y = 32382, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Skeletin', 'Cancel'}},
    [59189] = {name = "Wherewhyena", level = {150, 1}, positions = {{x = 33221, y = 32358, z = 9}, {x = 0, y = 0, z = 0}}, subareas = {'Wherewhyena', 'Cancel'}},
    [59190] = {name = "Grim Reaper", level = {40, 1}, positions = {{x = 33026, y = 32453, z = 11}, {x = 0, y = 0, z = 0}}, subareas = {'Grim Reaper Drefia', 'Cancel'}},
    [59191] = {name = "Elder Wyrm", level = {120, 1}, positions = {{x = 33087, y = 32378, z = 13}, {x = 0, y = 0, z = 0}}, subareas = {'Elder Wyrm Drefia', 'Cancel'}},
    [59192] = {name = "Ferumbras", level = {200, 500, 500, 500, 500, 500, 500, 500}, positions = {{x = 33320, y = 32319, z = 12}, {x = 33420, y = 32680, z = 13}, {x = 33466 , y = 32796, z = 8}, {x = 33380 , y = 32342, z = 10}, {x = 33433 , y = 32443, z = 13}, {x = 33618 , y = 32627, z = 13}, {x = 33641 , y = 32690, z = 11}, {x = 33229 , y = 31442, z = 11}}, subareas = {'Entrance', 'DT Seal', 'Spectre Seal', 'Undead Seal', 'Juger Seal', 'Fire Seal', 'Phantasm Seal', 'Plague Seal'}},
    [59193] = {name = "Hellfire Hell", level = {150, 1}, positions = {{x = 33289, y = 31788, z = 13}, {x = 0, y = 0, z = 0}}, subareas = {'Hellfire Hell', 'Cancel'}},

    [59200] = {name = "Port Hope", level = 1, positions = {{x = 32626, y = 32726, z = 7}}, subareas = {}},
    [59201] = {name = "Monkeys", level = {8, 1}, positions = {{x = 32779, y = 32521, z = 5}, {x = 0, y = 0, z = 0}}, subareas = {'Monkeys', 'Cancel'}},
    [59202] = {name = "Water Elemental", level = {30, 1}, positions = {{x = 32558, y = 32859, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Water ELemental', 'Cancel'}},
    [59203] = {name = "Carnivor", level = {250, 1}, positions = {{x = 32759, y = 32625, z = 8}, {x = 0, y = 0, z = 0}}, subareas = {'Carnivor', 'Cancel'}},
    [59204] = {name = "Ghastly Dragon", level = {80, 1}, positions = {{x = 33156 , y = 31161, z = 12}, {x = 0, y = 0, z = 0}}, subareas = {'Ghastly Dragon', 'Cancel'}},
    [59205] = {name = "Behemoth", level = {80, 1}, positions = {{x = 33024 , y = 32581, z = 6}, {x = 0, y = 0, z = 0}}, subareas = {'Forbidden Lands', 'Cancel'}},
    [59206] = {name = "Giant Spider", level = {50, 1}, positions = {{x = 32894 , y = 32896, z = 10}, {x = 0, y = 0, z = 0}}, subareas = {'Giant Spider', 'Cancel'}},
    [59207] = {name = "Hydra", level = {50, 1}, positions = {{x = 32996, y = 32677, z = 6}, {x = 32978 , y = 32628, z = 5}}, subareas = {'Hydra', 'Hydra2'}},
    [59208] = {name = "Medusa", level = {80, 120, 150}, positions = {{x = 32866, y = 32851, z = 8}, {x = 32808 , y = 32638, z = 11}, {x = 32731 , y = 32647, z = 15}}, subareas = {'Medusa Tower', 'Banuta Entrada', 'Banuta -4'}},
    [59209] = {name = "Gazer Spectre", level = {30, 1}, positions = {{x = 32673, y = 32647, z = 7}, {x = 0 , y = 0, z = 0}}, subareas = {'Gazer Spectre', 'Cancel'}},
    [59210] = {name = "True Asura", level = {250, 1}, positions = {{x = 32878, y = 32808, z = 9}, {x = 0 , y = 0, z = 0}}, subareas = {'True Asura', 'Cancel'}},
    [59211] = {name = "Asura", level = {100, 250}, positions = {{x = 32986, y = 32730, z = 7}, {x = 32812, y = 32762, z = 9}}, subareas = {'Asura Palace', 'Asura Mirror'}},
    
    [59212] = {name = "Galthen and the City of Gold", level = {500, 0}, positions = {{x = 34003, y = 31723, z = 9}, {x = 0, y = 0, z = 0}}, subareas = {'Galthen and the City of Gold', 'Cancel'}},
    

    [59220] = {name = "Svargrond", level = 1, positions = {{x = 32232, y = 31132, z = 6}}, subareas = {}},
    [59221] = {name = "Frost Dragon", level = {30, 1}, positions = {{x = 32225 , y = 31382, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Frost Dragon', 'Cancel'}},
    [59222] = {name = "Crystal Spider", level = {30, 1}, positions = {{x = 31927, y = 31374, z = 8}, {x = 0, y = 0, z = 0}}, subareas = {'Crystal Spider', 'Cancel'}},
    [59223] = {name = "Plaguesmith", level = {30, 1}, positions = {{x = 32153, y = 31144, z = 12}, {x = 0, y = 0, z = 0}}, subareas = {'Plaguesmith', 'Cancel'}},
    [59224] = {name = "GT Svar", level = {30, 1}, positions = {{x = 32160, y = 31297, z = 6}, {x = 0, y = 0, z = 0}}, subareas = {'GT Svar', 'Cancel'}},
    [59225] = {name = "Elf Gelo", level = {30, 1}, positions = {{x = 33681, y = 32153, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Elf Gelo', 'Cancel'}},
    
    
    [59240] = {name = "Yalahar", level = 1, positions = {{x = 32814, y = 31246, z = 6}}, subareas = {}},
    [59241] = {name = "Mistrock", level = {30, 1}, positions = {{x = 32639, y = 31439, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Mistrock', 'Cancel'}},
    [59242] = {name = "Mutateds", level = {30, 1}, positions = {{x = 32749, y = 31163, z = 5}, {x = 0, y = 0, z = 0}}, subareas = {'Mutateds', 'Cancel'}},
    [59243] = {name = "Hellspawn", level = {30, 1}, positions = {{x = 32816, y = 31028, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Hellspawn', 'Cancel'}},
    [59244] = {name = "Nightmare", level = {30, 1}, positions = {{x = 32802, y = 31070, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Nightmare', 'Cancel'}},
    [59245] = {name = "War Golem", level = {60, 80}, positions = {{x = 32881, y = 31312, z = 11}, {x = 32901 , y = 31299, z = 10}}, subareas = {'War Golem1', 'War Golem2'}},
    [59246] = {name = "Grimreaper", level = {30, 1}, positions = {{x = 32802, y = 31070, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Grimreaper', 'Cancel'}},
    [59247] = {name = "Dragons", level = {30, 1}, positions = {{x = 32750, y = 31296, z = 9}, {x = 0, y = 0, z = 0}}, subareas = {'Dragons', 'Cancel'}},
    [59248] = {name = "Dragon Lord", level = {60, 1}, positions = { {x = 32593 , y = 31408, z = 15}, {x = 0, y = 0, z = 0}}, subareas = {'Dl Fenrock', 'Cancel'}},
    [59249] = {name = "Demon", level = {60, 1}, positions = { {x = 32895 , y = 31048, z = 9}, {x = 0, y = 0, z = 0}}, subareas = {'Demon', 'Cancel'}},
    
    [59260] = {name = "Venore", level = 1, positions = {{x = 32922, y = 32081, z = 6}}, subareas = {}},
    [59261] = {name = "Amazon Camp Venore", level = {7, 1}, positions = {{x = 32825, y = 31912, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Amazon Camp Venore', 'Cancel'}},
    [59262] = {name = "Dark Catedral", level = {8, 1}, positions = {{x = 32657, y = 32340, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Dark Catedral', 'Cancel'}},
    [59263] = {name = "Rorc", level = {20, 1}, positions = {{x = 32780, y = 31833, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Rorc', 'Cancel'}},
    [59264] = {name = "Dragon Lair Venore", level = {30, 1}, positions = {{x = 32820, y = 32140, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Dragon Lair Venore', 'Cancel'}},
    [59265] = {name = "GS Venore", level = {20, 1}, positions = {{x = 32736 , y = 32265, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'GS Venore', 'Cancel'}},
    [59266] = {name = "DL POI", level = {60, 1}, positions = {{x = 32829 , y = 32335, z = 11}, {x = 0, y = 0, z = 0}}, subareas = {'DL POI', 'Cancel'}},
    [59267] = {name = "Corym Venore", level = {20, 1}, positions = {{x = 33091, y = 32074, z = 11}, {x = 0, y = 0, z = 0}}, subareas = {'Corym Venore', 'Cancel'}},
    [59268] = {name = "Stonerefiner", level = {10, 1}, positions = {{x = 33029, y = 32009, z = 12}, {x = 0, y = 0, z = 0}}, subareas = {'Stonerefiner', 'Cancel'}},
    [59269] = {name = "Flimsy Venore", level = {250, 1}, positions = {{x = 32625 , y = 32072, z = 7}, {x = 0, y = 0, z = 0}}, subareas = {'Flimsy Venore', 'Cancel'}},
    [59270] = {name = "Bulltaur Lair", level = {500, 1}, positions = {{x = 32820, y = 32368, z = 8}, {x = 0, y = 0, z = 0}}, subareas = {'Bulltaur Lair', 'Cancel'}}


}

local firstid = 59100 -- Put your first action id used here
local lastid = 59300 -- Put your last action id used here

-- Config End
local teleports = MoveEvent()
function teleports.onStepIn(player, item, position, fromPosition)
if not player:isPlayer() then
    return false
end

local tp = tplist[item.actionid]
local quantity = table.getn(tp.positions)

player:registerEvent("Teleport_Modal_Window_Free")
doTeleportThing(player, fromPosition, false) 

local title = "Teleport"
local message = "List of ".. tp.name .." Spawns"

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
    player:unregisterEvent("Teleport_Modal_Window_Free")
 
    local levelReq = tp.level
    if levelReq > 0 and player:getLevel() < levelReq then
        doTeleportThing(player, fromPosition, false) 
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You do not have the required level of '.. tp.level ..'.')
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
local modalTpFree = CreatureEvent("Teleport_Modal_Window_Free")
modalTpFree:type("modalwindow")
function modalTpFree.onModalWindow(player, modalWindowId, buttonId, choiceId)
player:unregisterEvent("Teleport_Modal_Window_Free")

if modalWindowId >= firstid and modalWindowId <= lastid then
    if buttonId == 100 then
     
        local levelReq = tplist[modalWindowId].level[choiceId]
        if levelReq > 0 and player:getLevel() < levelReq and player:getMoney() < 1000 then
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You do not have the required level of '.. levelReq ..' or 1000 gold coins.')

            return true
        end
 
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        player:teleportTo(tplist[modalWindowId].positions[choiceId])
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        if tplist[modalWindowId].subareas[choiceId] == nil then
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Teleported to '.. tplist[modalWindowId].name ..' '.. choiceId ..'.')
            player:removeMoneyBank(1000)
        else
            player:removeMoneyBank(1000)
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Teleported to '.. tplist[modalWindowId].subareas[choiceId] ..'.')
        end
    end
end
return true
end
modalTpFree:register()