macro(5000, "AUTO MOUNT", function() 
    if not player:isMounted() then
        player:mount()
    end
  end)