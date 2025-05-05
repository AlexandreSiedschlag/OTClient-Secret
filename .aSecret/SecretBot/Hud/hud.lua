local ui = setupUI([[
Panel
  width:  5000
  height: 5000

  Label
    id: cavebotMarkerLabel
    x: 202
    y: 075
    font: verdana-11px-rounded
  Label
    id: targetLabel
    x: 202
    y: 090
    font: verdana-11px-rounded
  Label
    id: caveLabel
    x: 202
    y: 0105
    font: verdana-11px-rounded
  Label
    id: positionLabel
    x: 202
    y: 120
    font: verdana-11px-rounded

  Label
    id: skillsMarkerLabel
    x: 202
    y: 200
    font: verdana-11px-rounded
  Label
    id: staminaLabel
    x: 202
    y: 215
    font: verdana-11px-rounded
  Label
    id: magicLevelLabel
    x: 202
    y: 230
    font: verdana-11px-rounded

  Label
    id: taskMarkerLabel
    x: 202
    y: 500
    font: verdana-11px-rounded
  Label
    id: taskNameLabel
    x: 202
    y: 515
    font: verdana-11px-rounded
  Label
    id: taskCounterLabel
    x: 202
    y: 530
    font: verdana-11px-rounded
  Label
    id: taskBossLabel
    x: 202
    y: 545
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
    -- Target
    local targetStatus = getTargetBotStatus()
    local targetColor = getColorFromStatus(targetStatus)
    ui.targetLabel:setColoredText({"Target: ", "white", targetStatus, targetColor})

    -- CaveBot
    local caveStatus = getCaveBotStatus()
    local caveColor = getColorFromStatus(caveStatus)
    ui.cavebotMarkerLabel:setColoredText({"----CaveBot----", "white", "", "yellow"})
    ui.caveLabel:setColoredText({"Cavebot: ",  "white", caveStatus, caveColor})
    ui.positionLabel:setColoredText({"Position: ",  "white", getPosition(), 'yellow'})

    -- Skills
    ui.skillsMarkerLabel:setColoredText({"----Skills----", "white", "", "yellow"})
    ui.staminaLabel:setColoredText({"Stamina: ",  "white", getStamina(), 'yellow'})
    ui.magicLevelLabel:setColoredText({"Magic Level: ",  "white", getMagicLevel(), 'yellow'})

    -- Tasker
    local taskName = storage.secretTasker.taskName or ""
    local taskData = storage.secretTasker.taskInfo[taskName]
    local taskCounter = "No Task"
    if taskData then
        taskCounter = taskData.monsters_killed .. " / " .. taskData.monsters_to_kill
        taskBoss = taskData.boss[1]
    end

    ui.taskMarkerLabel:setColoredText({"----Task----", "white", "", "yellow"})
    ui.taskNameLabel:setColoredText({"Name: ", "white", taskName, "yellow"})
    ui.taskCounterLabel:setColoredText({"Counter: ", "white", taskCounter, "yellow"})
    ui.taskBossLabel:setColoredText({"Boss: ", "white", taskBoss, "yellow"})

end)
