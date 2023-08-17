local moneyIDs = {3031, 3035, 3043}
macro(1000, "EXCHANGE MONEY", function()
    for _, container in pairs(g_game.getContainers()) do
      if not container.lootContainer then
        for _, item in ipairs(container:getItems()) do
          if item:getCount() == 100 then
            for _, id in ipairs(moneyIDs) do
              if item:getId() == id then
                return g_game.use(item)      
              end
            end
          end
        end
      end
    end
  end)