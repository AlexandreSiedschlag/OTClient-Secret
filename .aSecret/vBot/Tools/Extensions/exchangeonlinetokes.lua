local onlineToken = {6526}
macro(1000, "EXCHANGE ONLINE TOKENS", function()
    local containers = g_game.getContainers()
    for index, container in pairs(containers) do
      if not container.lootContainer then
        for i, item in ipairs(container:getItems()) do
          if item:getCount() >= 25 then
            for m, mId in ipairs(onlineToken) do
              if item:getId() == mId then
                return g_game.use(item)      
              end
            end
          end
        end
      end
    end
  end)