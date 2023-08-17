macro(200, "SAFETY MANA RUNE",  function()
    if (manapercent() <= 85) then
      usewith(3162, player)
    end
end)