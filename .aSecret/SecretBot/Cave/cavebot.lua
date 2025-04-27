local extensions = "SecretBot/Cave/Extensions/"
local standards = "SecretBot/Cave/Standards/"
local sprites = "SecretBot/Cave/Sprites/"
local lib = "/SecretBot/Cave/Lib/"
setDefaultTab("Cave")
CaveBot.Extensions = {}

-- Sprites
importStyle(sprites .. "cavebot.otui")
importStyle(sprites .. "config.otui")
importStyle(sprites .. "editor.otui")
importStyle(sprites .. "supply.otui")

-- Standards
dofile(standards .. "actions.lua")
dofile(standards .. "config.lua")
dofile(standards .. "editor.lua")
dofile(standards .. "recorder.lua")
dofile(standards .. "walking.lua")

-- Extensions
dofile(extensions .. "example_functions.lua")
dofile(extensions .. "minimap.lua")
-- dofile(extensions .. "tasker.lua")
dofile(extensions .. "secret_tasker.lua")

-- Dont change this, this file must be last
dofile(lib .. "cavebot_lib.lua")
-- Dont change this, this file must be last

