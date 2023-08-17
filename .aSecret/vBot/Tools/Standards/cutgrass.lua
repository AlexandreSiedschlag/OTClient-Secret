local timeCutGrass = 500
local itemid = 3308
local grass = {2130}
local z = posz()
macro(timeCutGrass, "CUT GRASS [" ..timeCutGrass.. "ms]", function()
      for _, tile in ipairs(g_map.getTiles(z)) do
        if z ~= posz() then
            return
        end
        if getDistanceBetween(pos(), tile:getPosition()) <= 2 then
          if table.find(grass, tile:getTopLookThing():getId()) then
              usewith(itemid, tile:getTopLookThing())
          end
        end
      end
    end)