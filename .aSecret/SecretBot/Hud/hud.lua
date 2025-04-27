local ui = setupUI([[
Panel
  width: 2000
  height:2000

  Label
    id: targetLabel
    x: 202
    y: 075
    font: verdana-11px-rounded

  Label
    id: caveLabel
    x: 202
    y: 090
    font: verdana-11px-rounded

  Label
    id: staminaLabel
    x: 202
    y: 105
    font: verdana-11px-rounded

  Label
    id: positionLabel
    x: 202
    y: 120
    font: verdana-11px-rounded

  Label
    id: taskCounterLabel
    x: 202
    y: 135
    font: verdana-11px-rounded

  Label
    id: magicLevelLabel
    x: 202
    y: 150
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
  local magiclevel = player:getMagicLevel()
  return magiclevel
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
  ui.taskCounterLabel:setColoredText({"Task Counter: ",  "white", storage.caveVariables.monsterAmountNow .. " / " .. storage.caveVariables.monsterAmountMax, 'yellow'})
  ui.magicLevelLabel:setColoredText({"Magic Level: ",  "white", getMagicLevel(), 'yellow'})

end)