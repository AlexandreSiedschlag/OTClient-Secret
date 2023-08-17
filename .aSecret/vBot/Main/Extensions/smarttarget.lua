macro(500, "SMART TARGET", function()
    if isInPz() then
		TargetBot:setOff()
		return
	end
    local monsters = 0
    for i, mob in ipairs(getSpectators(posz())) do
        if mob:isMonster() and getDistanceBetween(player:getPosition(), mob:getPosition()) >= 1 and getDistanceBetween(player:getPosition(), mob:getPosition()) <= 5 then
            monsters = monsters + 1
        end
    end
    if monsters >= 1  then
      if TargetBot:isOff() then
		TargetBot:setOn()
		end
    end
end)