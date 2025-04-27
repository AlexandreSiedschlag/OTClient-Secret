CaveBot.Extensions.Exercise = {}
CaveBot.registerAction("exercise", "#00FFFF", function(value, retries, prev)
  local data = string.split(value, ",")

  if #data ~= 3 then
    warn("wrong format, should be: dummyId, itemId, maxdistance")
    return false
  end

  local dummyId = tonumber(data[1])
  local itemId = tonumber(data[2])
  local dist = tonumber(data[3])

  for _, tile in ipairs(g_map.getTiles(posz())) do
    if getDistanceBetween(pos(), tile:getPosition()) <= dist then
      local item = tile:getTopUseThing()
      if item and item:getId() == dummyId then
        g_game.useInventoryItemWith(itemId, item)
        return true
      end
    end
  end
  return "retry"
end)

CaveBot.Extensions.Exercise.setup = function()
  CaveBot.Editor.registerAction("exercise", "Exercise", {
    value=function() return '1949, 35288, 3' end,
    title="Find Exercise",
    description="Finds item x distance from character and uses item on it. dummy, item,maxdistance",
    multiline=false,
  })
end