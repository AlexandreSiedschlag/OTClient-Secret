local extensions = "vBot/HP/Extensions/"
local standards = "vBot/HP/Standards/"
setDefaultTab("HP")

--------------------------------------------------------------
dofile(standards .. 'conditions.lua')
dofile(standards .. 'heal.lua')
dofile(standards .. 'eatfood.lua')
--------------------------------------------------------------
UI.Separator()
dofile(extensions .. 'castfood.lua')
--------------------------------------------------------------


