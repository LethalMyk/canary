local resetSys = TalkAction("!reset")

local config = {
    backToLevel = 1,
    redskull = true, -- need to be without redskull to reset?
    battle = true, -- need to be without battle to reset?
    pz = true, -- need to be in protect zone to reset?
    stages = {
        {resets = 0, level = 1200, premium = 1200},
        {resets = 1, level = 1300, premium = 1300},
        {resets = 2, level = 1500, premium = 1500},
        {resets = 3, level = 1700, premium = 1700},
        {resets = 4, level = 1900, premium = 1900},
        {resets = 50, level = 1000, premium = 1000}
    }
}

function resetSys.onSay(player, words, param)
    local function getExperienceForLevel(lv)
        lv = lv - 1
        return ((50 * lv * lv * lv) - (150 * lv * lv) + (400 * lv)) / 3
    end
    local function getPlayerResets()
        local resets = player:getStorageValue(Storage.ResetSystem.Resets)
        return resets < 0 and 0 or resets
    end
   
    local function doPlayerAddResets(count)
        player:setStorageValue(500, getPlayerResets() + count)
    end
   
    if config.redskull and player:getSkull() == 4 then
        player:sendCancelMessage("You need to be without red skull to reset.")
        return false
    elseif config.pz and player:isPzLocked() then
        player:sendCancelMessage("You need to be in protection zone to reset.")
        return false
    elseif config.battle and player:getCondition(CONDITION_INFIGHT) then
        player:sendCancelMessage("You need to be without battle to reset.")
        return false
    end
   
    local resetLevel = 0
    for x, y in ipairs(config.stages) do
        if getPlayerResets() <= y.resets then
            resetLevel = player:isPremium() and y.premium or y.level
            break
        end
    end
   
    if getPlayerLevel(player) < resetLevel then
        player:sendCancelMessage("You need level " .. resetLevel .. " or more to reset.")
        return false
    end


    doPlayerAddResets(1)

    local healthMax, manaMax, health, mana = player:getMaxHealth(), player:getMaxMana(), player:getHealth(), player:getMana()
    local resets = player:getStorageValue(Storage.ResetSystem.Resets)
    local newvida = healthMax * 0.05
    local newmana = manaMax * 0.05



    player:removeExperience(getExperienceForLevel(player:getLevel()) - getExperienceForLevel(config.backToLevel + getPlayerResets() * 50) )
--[[     player:setMaxHealth(newvida)
    player:setMaxMana(newmana)
    player:addHealth(newvida)
    player:addMana(newmana) ]]
    player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_RED)
    player:setIcon("hazard", CreatureIconCategory_Quests, CreatureIconQuests_GreenShield, resets)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "Now you have " .. getPlayerResets() .. " " .. (getPlayerResets() == 1 and "reset" or "resets") .. ".")
    return false
end
resetSys:groupType("normal")
resetSys:register() 