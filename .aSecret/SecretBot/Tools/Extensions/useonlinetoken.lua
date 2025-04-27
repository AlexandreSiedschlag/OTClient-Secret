local holyPointsToken = {12759}
macro(400, "USE ONLINE TOKENS", function()
    for _, container in pairs(g_game.getContainers()) do
      for _, item in ipairs(container:getItems()) do
        if item:getCount() >= 1 then
          for _, id in ipairs(holyPointsToken) do
            if item:getId() == id then
              return g_game.use(item)
            end
          end
        end
      end
    end
  end)