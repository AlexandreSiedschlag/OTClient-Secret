local PlayerStates = {
    None = 0, Poison = 1, Burn = 2, Energy = 4, Drunk = 8, ManaShield = 16,
    Paralyze = 32, Haste = 64, Swords = 128, Drowning = 256, Freezing = 512,
    Dazzled = 1024, Cursed = 2048, PartyBuff = 4096, PzBlock = 8192,
    Pz = 16384, Bleeding = 32768, Hungry = 65536
}
macro(4000, "HEAL AILMENTS", function()
    if player:hasState(PlayerStates.Poison, player:getStates()) and
not g_game.isAttacking() then say("exana pox") end
    if player:hasState(PlayerStates.Burn, player:getStates()) and
not g_game.isAttacking() then say("exana flam") end
    if player:hasState(PlayerStates.Energy, player:getStates()) and
not g_game.isAttacking() then say("exana vis") end
    if player:hasState(PlayerStates.Drowning, player:getStates()) and
not g_game.isAttacking() then say("exana drown") end
    if player:hasState(PlayerStates.Cursed, player:getStates()) and
not g_game.isAttacking() then say("exana mort") end
end)