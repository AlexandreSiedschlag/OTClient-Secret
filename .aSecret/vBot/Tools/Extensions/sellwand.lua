local sellWandID = 651
local itemsToSell = {3028, 3419, 3382, 3053, 3428, 6299, 3026, 3027, 3033, 3030, 3029, 3032, 8061, 7418, 823, 7383, 5741, 3370, 824, 3436, 3392, 3079, 7413, 3324, 825, 3360, 3006, 3567, 3281, 3420, 3371, 3381, 3280, 3414, 3366, 3309, 3364, 3320, 7382, 3402, 8098, 7453, 7434, 7429, 8104, 8047, 7993, 12993, 12992, 12994, 7452, 3369, 3342, 3554, 10406, 812, 811, 813, 3386, 7402, 3356}

macro(400, "SELL WAND", function()
    for _, container in pairs(g_game.getContainers()) do
        for _, item in ipairs(container:getItems()) do
            if table.find(itemsToSell, item:getId()) then
                useWith(sellWandID, item)
            end
        end
   end
end)