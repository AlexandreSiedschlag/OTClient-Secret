local extensions = "SecretBot/HP/Extensions/"
local standards = "SecretBot/HP/Standards/"
setDefaultTab("HP")

--------------------------------------------------------------
dofile(standards .. 'conditions.lua')
dofile(standards .. 'heal.lua')
dofile(standards .. 'eat_food.lua')
--------------------------------------------------------------
UI.Separator()
dofile(extensions .. 'cast_food.lua')
--------------------------------------------------------------


