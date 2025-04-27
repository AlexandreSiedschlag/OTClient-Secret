macro(100,"Monster Skull on Screen", function()
    local spectators = getSpectators(pos(), false)
    for i, spec in pairs(spectators) do
        if spec:isMonster() and spec:getSkull() == 4 then
            CaveBot.gotoLabel("EXIT HUNT \\/")
            TargetBot.setOff()
            return 
        end
    end
  
    if CaveBot.isOff() then
      return CaveBot.setOn()
    end
  end)