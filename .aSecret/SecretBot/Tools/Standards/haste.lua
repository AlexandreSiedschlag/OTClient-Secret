local PlayerStates = {
    None = 0, Poison = 1, Burn = 2, Energy = 4, Drunk = 8, ManaShield = 16,
    Paralyze = 32, Haste = 64, Swords = 128, Drowning = 256, Freezing = 512,
    Dazzled = 1024, Cursed = 2048, PartyBuff = 4096, PzBlock = 8192,
    Pz = 16384, Bleeding = 32768, Hungry = 65536
}
local hasteSpell = "Utani Gran Hur"
macro(500, "HASTE", function()
    if not player:hasState(PlayerStates.Haste, player:getStates()) and not g_game.isAttacking() then
        say(hasteSpell)
    end
end)