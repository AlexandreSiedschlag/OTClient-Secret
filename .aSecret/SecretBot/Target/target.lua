local extensions = "SecretBot/Target/Extensions/"
local standards = "SecretBot/Target/Standards/"
local sprites = "SecretBot/Target/Sprites/"
setDefaultTab("Cave")
-- if storage.extras.joinBot then UI.Label("-- [[ TargetBot ]] --") end
TargetBot = {} -- global namespace
importStyle(sprites .. "looting.otui")
importStyle(sprites .. "target.otui")
importStyle(sprites .. "creature_editor.otui")
dofile(standards .. "creature.lua")
dofile(standards .. "creature_attack.lua")
dofile(standards .. "creature_editor.lua")
dofile(standards .. "creature_priority.lua")
dofile(standards .. "looting.lua")
dofile(standards .. "walking.lua")
-- main targetbot file, must be last
dofile(standards .. "target.lua")
