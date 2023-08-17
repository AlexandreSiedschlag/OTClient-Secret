local lastManaShield = 0
local manashieldspell = "Utamo Vita"
macro(20, "SAFETY MANA SHIELD", function()
    if not hasManaShield() then
        if TargetBot then
            TargetBot.saySpell(manashieldspell) -- sync spell with targetbot if available
        else
            say(manashieldspell)
        end
    end
    lastManaShield = lastManaShield + 30
    if lastManaShield > 5000 then
        say(manashieldspell)
        lastManaShield = 0
    end
end)