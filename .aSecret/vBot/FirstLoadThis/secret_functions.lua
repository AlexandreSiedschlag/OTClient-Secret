function SecretGetTargetBotStatus()
    return TargetBot.isOn() and true or TargetBot.isOff() and false
end

function SecretGetCaveBotStatus()
    return CaveBot.isOn() and true or CaveBot.isOff() and false
end

function SecretGetStaminaHoursMinutes()
    local minutes = math.floor(stamina() / 60)
    local seconds = stamina() % 60
    local stamina = tonumber(string.format("%02d:%02d", minutes, seconds))
    return stamina
end

function SecretGetStaminaHours()
    local stamina = tonumber(string.format("%02d", math.floor(stamina() / 60)))
    return stamina
end

function SecretGetPosition()
    local myposition = pos().x .. " ".. pos().y .. " " .. pos().z
    return myposition
end

