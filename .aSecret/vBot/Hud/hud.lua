local ui = setupUI([[
Panel
  width: 2000
  height:2000

  Label
    id: targetLabel
    x: 10           
    y: 080
    font: verdana-11px-rounded

  Label
    id: caveLabel
    x: 10
    y: 095
    font: verdana-11px-rounded   
    
  Label
    id: staminaLabel
    x: 10
    y: 110
    font: verdana-11px-rounded

  Label
    id: positionLabel
    x: 10
    y: 125
    font: verdana-11px-rounded
  
  Label
    id: taskCounter
    x: 10
    y: 300
    font: verdana-11px-rounded
]], g_ui.getRootWidget())

local function getTargetBotStatus()
  return TargetBot.isOn() and "ON" or TargetBot.isOff() and "OFF"
end

local function getCaveBotStatus()
  return CaveBot.isOn() and "ON" or CaveBot.isOff() and "OFF"
end

local function getColorFromStatus(status)
  return status == "ON" and "green" or status == "OFF" and "red"
end

local function getStamina()
  local stamina = stamina()
  local minutes = math.floor(stamina / 60)
  local seconds = stamina % 60
  local stamina = string.format("%02d:%02d", minutes, seconds)
  return stamina
end

local function getPosition()
  local myposition = pos().x .. " ".. pos().y .. " " .. pos().z
  return myposition
end

local function getMagicLevel()
  local magiclevel = player
  return
end

macro(100, function()
  local targetStatus = getTargetBotStatus()
  local caveStatus = getCaveBotStatus()
  local targetColor = getColorFromStatus(targetStatus)
  local caveColor = getColorFromStatus(caveStatus)

  ui.targetLabel:setColoredText({"Target: ", "white", targetStatus, targetColor})
  ui.caveLabel:setColoredText({"Cavebot: ",  "white", caveStatus, caveColor})
  ui.staminaLabel:setColoredText({"Stamina: ",  "white", getStamina(), 'yellow'})
  ui.positionLabel:setColoredText({"Position: ",  "white", getPosition(), 'yellow'})
  ui.taskCounter:setColoredText({"TaskCounter: ",  "white", storage.caveVariables.monsterAmountNow .. " / " .. storage.caveVariables.monsterAmountMax, 'yellow'})

end)
dofile("/vBot/Hud/Extensions/general.lua")