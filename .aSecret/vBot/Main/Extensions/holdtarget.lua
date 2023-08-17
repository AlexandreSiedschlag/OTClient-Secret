local timeHoldTarget = 100
macro(timeHoldTarget, "HOLD TARGET [ESC]", nil, function()
    if isInPz() then return true end
      if g_game.isAttacking() then
         oldTarget = g_game.getAttackingCreature()
      end
      if (oldTarget and oldTarget:getPosition()) then
       if (not g_game.isAttacking() and getDistanceBetween(pos(), oldTarget:getPosition()) <= 8) then
          if (oldTarget:getPosition().z == posz()) then
            g_game.attack(oldTarget)
          end
        end
      end
    end)
    onKeyDown(function(keys)
    if keys == "Escape" then
        oldTarget = nil
    g_game.cancelAttack()
      end
  end)