-- load all otui files, order doesn't matter
local configName = modules.game_bot.contentsPanel.config:getCurrentOption().text

local function loadUI(path)
  local files = g_resources.listDirectoryFiles(path, true, false)
  for _, file in ipairs(files) do
    local ext = file:split(".")
    if ext[#ext]:lower() == "ui" or ext[#ext]:lower() == "otui" then
      g_ui.importStyle(file)
    end
  end
end

--------------------------------------------------------------
-- Dont change this
dofile("/vBot/FirstLoadThis/items.lua")
dofile("/vBot/FirstLoadThis/vlib.lua")
dofile("/vBot/FirstLoadThis/new_cavebot_lib.lua")
dofile("/vBot/FirstLoadThis/configs.lua")
dofile("/vBot/FirstLoadThis/secret_functions.lua")

-- The vBot needs the class CaveBot and TargetBot to work, so load them first
dofile("/vBot/Cave/cavebot.lua")
dofile("/vBot/Target/target.lua")

loadUI('/bot/.aSecret/vBot/Main/Sprites')
loadUI('/bot/.aSecret/vBot/Tools/Sprites')
loadUI('/bot/.aSecret/vBot/HP/Sprites')
loadUI('/bot/.aSecret/vBot/Hud/Sprites')
loadUI('/bot/.aSecret/vBot/Cave/Sprites')
loadUI('/bot/.aSecret/vBot/Target/Sprites')
-- Dont change this
--------------------------------------------------------------

-- Change this
--------------------------------------------------------------
UI.Separator()
dofile("/vBot/Main/main.lua")
--------------------------------------------------------------
UI.Separator()
dofile("/vBot/Tools/tools.lua")
--------------------------------------------------------------
UI.Separator()
dofile("/vBot/HP/hp.lua")
--------------------------------------------------------------
UI.Separator()
dofile("/vBot/Hud/hud.lua")

--------------------------------------------------------------

-- Change this