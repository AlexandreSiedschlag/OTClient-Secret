setDefaultTab("Cave")
CaveBot.Extensions = {}

importStyle("/cavebot/cavebot.otui")
importStyle("/cavebot/config.otui")
importStyle("/cavebot/editor.otui")
importStyle("/cavebot/supply.otui")
dofile("/vBot/Cave/Standards/actions.lua")
dofile("/vBot/Cave/Standards/config.lua")
dofile("/vBot/Cave/Standards/editor.lua")
dofile("/vBot/Cave/Standards/recorder.lua")
dofile("/vBot/Cave/Standards/walking.lua")
dofile("/cavebot/example_functions.lua")
dofile("/cavebot/minimap.lua")
-- in this section you can add extensions, check extension_template.lua
-- dofile("/cavebot/extension_template.lua")
-- dofile("/cavebot/travel.lua")
-- dofile("/cavebot/doors.lua")
-- dofile("/cavebot/pos_check.lua")
-- dofile("/cavebot/tasker.lua")
dofile("/cavebot/secret_tasker.lua")
-- dofile("/cavebot/imbuing.lua")

-- Dont change this, this file must be last
dofile("/cavebot/cavebot.lua")
-- Dont change this, this file must be last

