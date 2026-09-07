local backpack = TalkAction("!backpack", "!bp")

function backpack.onSay(player, words, param)
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
		player:addItem(2854, 1)
	end


backpack:groupType("normal")
backpack:register()
