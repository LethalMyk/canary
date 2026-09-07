local bananaQuest = Action()

function bananaQuest.onUse(player, item, fromPosition, target, toPosition, isHotkey)

if(item.uid == 50000) then
		if player:removeMoneyBank(2000) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a sacred tree amulet .')
		player:addItem(9302, 5)

		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have money.")
		end


elseif(item.uid == 50001) then
		if player:removeMoneyBank(5000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a shockwave amulet.')
		player:addItem(9304, 5)
	else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have money.")
		end
		elseif(item.uid == 50002) then
		if player:removeMoneyBank(5000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a leviathan amulet.')
		player:addItem(9303, 5)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have money.")
		end
		elseif(item.uid == 50003) then
		if player:removeMoneyBank(10000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a tiara of power.')
		player:addItem(23474, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have money.")
		end
		elseif(item.uid == 50004) then
		if player:removeMoneyBank(10000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have void boots.')
		player:addItem(23477, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have money.")
		end
		elseif(item.uid == 50005) then
		if player:removeMoneyBank(100000) or player:removeMoney(100000) then
					local container = player:addItem(2854)
			local ssa = 3048
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
			container:addItem(ssa, 20)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have might ring.')
		player:addItem(3048, 20)
		
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have money.")
		end
		elseif(item.uid == 50006) then
		if player:removeMoneyBank(100000) or player:removeMoney(100000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a stone skin amulet.')
		local container = player:addItem(2854)
		local ssa = 3081
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)
			container:addItem(ssa, 5)


		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have money.")
		end
		elseif(item.uid == 50007) then
		if player:removeMoneyBank(30000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a prismatic ring.')
		player:addItem(16114, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have money.")
		end
		
	elseif(item.uid == 50008) then
		if player:removeMoneyBank(0) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a backpack.')
		player:addItem(2854,1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have money.")
		end
		
		elseif(item.uid == 50009) then
		if player:removeMoneyBank(5000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a time ring.')
		player:addItem(3053,1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 5k.")
		end
		
		
		
		
		
		
		
		elseif(item.uid == 50010) then
		if player:getTibiaCoins() > 30 then
		player:addItem(3398, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Voce comprou dwarven legs por 30 PVP Coins.')
		player:removeTibiaCoins(30)
		
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont 30 pvp coins.")
		end
			elseif(item.uid == 50011) then
				if player:getTibiaCoins() > 10 then
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a soulful legs.')
		player:addItem(32618, 1)
		player:removeTibiaCoins(10)

		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont 30 pvp coins.")
		end
		
		elseif(item.uid == 50012) then
			if player:getTibiaCoins() > 30 then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a grasshoper legs.')
		player:addItem(14087, 1)
		player:removeTibiaCoins(30)

		
		
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont 30 pvp coins.")
		end

		elseif(item.uid == 50013) then
			if player:getTibiaCoins() > 30 then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a swan feather cloak.')
		player:addItem(25779, 1)
		player:removeTibiaCoins(30)

	
		
		
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont 30 pvp coins.")
		end
		elseif(item.uid == 50014) then
			if player:getTibiaCoins() > 10 then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a dwarven helmet.')
		player:addItem(3396, 1)
		player:removeTibiaCoins(10)

		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont 20 pvp coins.")
		end
		elseif(item.uid == 50015) then
			if player:getTibiaCoins() > 30 then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a dwarven armor.')
		player:addItem(3397, 1)
		player:removeTibiaCoins(30)

		
		
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont 30 pvp coins.")
		end
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		elseif(item.uid == 50016) then
			if player:getTibiaCoins() > 15 then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a cres of deep seas.')
		player:addItem(30401, 1)

		player:removeTibiaCoins(15)

		
		
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont 15 pvp coins.")
		end
		
		
		
		elseif(item.uid == 50017) then
		if player:removeMoneyBank(2000000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a last druid set BIS.')
		player:addItem(31631, 1)
		player:addItem(39153, 1)
		player:addItem(34096, 1)
		player:addItem(34093, 1)
		player:addItem(39154, 1)
		player:addItem(34091, 1)
		player:addItem(94093, 1)
		player:addItem(39188, 1)
		
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 2kk.")
		end
		
		elseif(item.uid == 50018) then
		if player:removeMoneyBank(10000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a tiara of power.')
		player:addItem(23474, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have money.")
		end
		
		
		
	
	
		
		elseif(item.uid == 50019) then
		if player:removeMoneyBank(800000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a blueberry cupcake.')
		player:addItem(28484, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont 800k.")
		end
		
		
		

		
		elseif(item.uid == 50020) then
		if player:removeMoneyBank(800000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a blessed steak.')
		player:addItem(9086, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 800k.")
		end
		
		
	elseif(item.uid == 50021) then
		if player:removeMoneyBank(600000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Basic Knight Set.')
		player:addItem(31577, 1)
		player:addItem(13993, 1)
		player:addItem(32617, 1)
		player:addItem(10323, 1)
		player:addItem(34154, 1)
		player:addItem(30396, 1)
	else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 600k.")
		end



	elseif(item.uid == 50022) then
		if player:removeMoneyBank(1000000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Medium Knight Set.')
		player:addItem(28715, 1)
		player:addItem(28719, 1)
		player:addItem(13999, 1)
		player:addItem(27650, 1)
		player:addItem(32616, 1)
		player:addItem(34158, 1)
		player:addItem(29430, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 1kk.")
		end
		
		
	elseif(item.uid == 50024) then
		if player:removeMoneyBank(2000000) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Advanced Knight Set')
			player:addItem(39148, 1)
			player:addItem(39147, 1)
			player:addItem(28720, 1)
			player:addItem(34097, 1)
			player:addItem(34099, 1)
			player:addItem(28722, 1)
			player:addItem(34084, 1)
			player:addItem(31631, 1)
			player:addItem(39179, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 2kk.")
		end
		

	
	elseif(item.uid == 50025) then
		if player:getTibiaCoins() > 10 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a 10 silver tokens.')
		player:addItem(22516, 10)
		player:removeTibiaCoins(10)
	
	else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont 10 pvp coins.")
		end

			
	elseif(item.uid == 50026) then
		if player:removeMoneyBank(100000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a Sorcerer Advanced Set.')
		player:addItem(39151, 1)
		player:addItem(34095, 1)
		player:addItem(34092, 1)
		player:addItem(34090, 1)
		player:addItem(39152, 1)
		player:addItem(31631, 1)
		player:addItem(39185, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 1kk.")
		end

			
	elseif(item.uid == 50027) then
		if player:removeMoneyBank(200000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a Paladin Set.')
		player:addItem(29427, 1)
		player:addItem(16110, 1)
		player:addItem(8863, 1)
		player:addItem(31617, 1)
		player:addItem(34150, 1)
		player:addItem(30393, 1)
		player:addItem(29428, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 200k.")
		end
			
	elseif(item.uid == 50028) then
		if player:removeMoneyBank(50000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a Basic Paladin Set.')
		player:addItem(11689, 1)
		player:addItem(13994, 1)
		player:addItem(16111, 1)
		player:addItem(16112, 1)
		player:addItem(28718, 1)
		player:addItem(39159, 1)
		player:addItem(30323, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have money.")
		end

			
	elseif(item.uid == 50029) then
		if player:removeMoneyBank(1000000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a Advanced Paladin Set.')
		player:addItem(34156, 1)
		player:addItem(27648, 1)
		player:addItem(32617, 1)
		player:addItem(10323, 1)
		player:addItem(31581, 1)
		player:addItem(20087, 1)
		player:addItem(29429, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 1kk.")
		end

			
	elseif(item.uid == 50030) then
		if player:removeMoneyBank(2000000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a Ultimate Paladin Set')
		player:addItem(39149, 1)
		player:addItem(34094, 1)
		player:addItem(28720, 1)
		player:addItem(34098, 1)
		player:addItem(34088, 1)
		player:addItem(34089, 1)
		player:addItem(31631, 1)
		player:addItem(9086, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 2kk.")
		end



	elseif(item.uid == 50031) then
		if player:removeMoneyBank(800000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a strawberry cupcake.')
		player:addItem(28485, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 800k.")
		end
		
	elseif(item.uid == 50032) then
		if player:removeMoneyBank(800000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a Rotworm Stew.')
		player:addItem(9079, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 800k.")
		end
		

	elseif(item.uid == 50033) then
		if player:removeMoneyBank(100000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a 5 Magic Shield Potion.')
		player:addItem(35563, 5)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dont have 50k.")
		end
		




	end


	return true
end

bananaQuest:uid(50000, 50001, 50002, 50003, 50004, 50005, 50006, 50007, 50008, 50009, 50010, 50011, 50012, 50013, 50014, 50015, 50016, 50017, 50018, 50019, 50020, 50021, 50022, 50024, 50025, 50026, 50027, 50028, 50029, 50030, 50031, 50032, 50033)
bananaQuest:register()
