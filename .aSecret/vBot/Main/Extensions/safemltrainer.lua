macro(1000, 'SAFE ML TRAINER',function()
    if TargetBot and TargetBot.isActive() then
        return
    end
    local mana = math.min(100, math.floor(100 * (player:getMana() / player:getMaxMana())))
    if (manapercent() >= 90 and not g_game.isAttacking()) then
        if isInPz() then
            say("Utana Vid")
        else
            say("Demonic Pox")
        end
    end
end)