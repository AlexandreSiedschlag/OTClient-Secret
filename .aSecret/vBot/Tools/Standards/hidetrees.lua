local treeChange = 3681
local tree_array = {3621, 3622, 3620, 3617, 3619, 3615, 3614 }
local hide_tree = macro(20000, "HIDE TREES", function() end, rightPanel)

onAddThing(function(tile, thing)
    if hide_tree:isOff() then return end
    if not thing:isItem() then return end
    if table.find(tree_array, thing:getId()) then
        thing:setId(treeChange)
        thing:setMarked('#00FF00')
    end
end)