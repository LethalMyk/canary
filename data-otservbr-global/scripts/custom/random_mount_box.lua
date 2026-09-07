local SingeingSteed = Action()
function SingeingSteed.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local config = {
        {mountId = 1, message = "You receive the permission to ride a Widow Queen."},
        {mountId = 2, message = "You receive the permission to ride a Racing Bird."},
        {mountId = 3, message = "You receive the permission to ride a War Bear."},
        {mountId = 4, message = "You receive the permission to ride a Black Sheep."},
        {mountId = 5, message = "You receive the permission to ride a Midnight Panther."},
        {mountId = 6, message = "You receive the permission to ride a Draptor."},
        {mountId = 7, message = "You receive the permission to ride a Titanica."},
        {mountId = 8, message = "You receive the permission to ride a Tin Lizzard."},
        {mountId = 10, message = "You receive the permission to ride a Rapid Boar."},
        {mountId = 11, message = "You receive the permission to ride a Stampor."},
        {mountId = 12, message = "You receive the permission to ride an Undead Cavebear."},
        {mountId = 13, message = "You receive the permission to ride a Donkey."},
        {mountId = 14, message = "You receive the permission to ride a Tiger Slug."},
        {mountId = 15, message = "You receive the permission to ride a Uniwheel."},
        {mountId = 16, message = "You receive the permission to ride a Crystal Wolf."},
        {mountId = 17, message = "You receive the permission to ride a War Horse."},
        {mountId = 18, message = "You receive the permission to ride a Kingly Deer."},
        {mountId = 19, message = "You receive the permission to ride a Tamed Panda."},
        {mountId = 20, message = "You receive the permission to ride a Dromedary."},
        {mountId = 21, message = "You receive the permission to ride a Scorpion King."},
        {mountId = 27, message = "You receive the permission to ride a Lady Bug."},
        {mountId = 28, message = "You receive the permission to ride a Manta Ray."},
        {mountId = 29, message = "You receive the permission to ride an Ironblight."},
        {mountId = 30, message = "You receive the permission to ride a Magma Crawler."},
        {mountId = 31, message = "You receive the permission to ride a Dragonling."},
        {mountId = 32, message = "You receive the permission to ride a Gnarlhound."},
        {mountId = 35, message = "You receive the permission to ride a Water Buffalo."},
        {mountId = 119, message = "You receive the permission to ride a Mole."},
   }

    local randomIndex = math.random(1, #config)
    local mount = config[randomIndex]

    if item.itemid == 60039 then
        if not player:hasMount(mount.mountId) then
            player:addMount(mount.mountId)
            player:say(mount.message, TALKTYPE_MONSTER_SAY)
            item:remove(1)
        else
            player:sendTextMessage(19, "You already have this mount")
        end
    else
        return true
    end

    return true
end

SingeingSteed:id(60039)
SingeingSteed:register()