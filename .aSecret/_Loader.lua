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
dofile("/SecretBot/FirstLoadThis/items.lua")
dofile("/SecretBot/FirstLoadThis/vlib.lua")
dofile("/SecretBot/FirstLoadThis/new_cavebot_lib.lua")
dofile("/SecretBot/FirstLoadThis/configs.lua")

-- The SecretBot needs the class CaveBot and TargetBot to work, so load them first
dofile("/SecretBot/Cave/cavebot.lua")
dofile("/SecretBot/Target/target.lua")

loadUI('/bot/.aSecret/SecretBot/Main/Sprites')
loadUI('/bot/.aSecret/SecretBot/Tools/Sprites')
loadUI('/bot/.aSecret/SecretBot/HP/Sprites')
loadUI('/bot/.aSecret/SecretBot/Hud/Sprites')
loadUI('/bot/.aSecret/SecretBot/Cave/Sprites')
loadUI('/bot/.aSecret/SecretBot/Target/Sprites')
-- Dont change this
--------------------------------------------------------------

-- Change this
--------------------------------------------------------------
UI.Separator()
dofile("/SecretBot/Main/main.lua")
--------------------------------------------------------------
UI.Separator()
dofile("/SecretBot/Tools/tools.lua")
--------------------------------------------------------------
UI.Separator()
dofile("/SecretBot/HP/hp.lua")
--------------------------------------------------------------
UI.Separator()
dofile("/SecretBot/Hud/hud.lua")
--------------------------------------------------------------

-- Change this