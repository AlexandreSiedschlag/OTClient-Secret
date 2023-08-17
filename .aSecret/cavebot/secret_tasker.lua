CaveBot.Extensions.SecretTasker = {}

storage.caveVariables = {
    monsterName = "",
    monsterActual = "",
    monsterAmountMax = 0,
    monsterAmountNow = 0,
    monsterRegex = "Loot of ([a-z])* ([a-z A-Z]*):",
    monsterRegex2 = "Loot of ([a-z A-Z]*):",
    taskName = "",
    taskInProgress = false,
    taskDone = false,
    monsterInfo = {
        ["Worms"] = {
            ["amount"] = 30,
            ["drops"] = {}
        },
        ["Orcs"] = {
            ["amount"] = 80,
            ["drops"] = {}
        },
        ["Dragons"] = {
            ["amount"] = 300,
            ["drops"] = {"red dragon leather", "red dragon scale", "dragon scale mail", "royal helmet", "dragon slayer"}
        },
        ["Minotaur"] = {
            ["amount"] = 400,
            ["drops"] = {"minotaur leather"}
        },
        ["Kongras"] = {
            ["amount"] = 450,
            ["drops"] = {"ape fur"}
        },
        ["Giant Spider"] = {
            ["amount"] = 500,
            ["drops"] = {"knight armor", "knight legs"}
        },
        ["Hydras"] = {
            ["amount"] = 600,
            ["drops"] = {"hydra head", "royal helmet", "boots of haste", "knight armor", "medusa shield"}
        },
        ["Elfs"] = {
            ["amount"] = 600,
            ["drops"] = {}
        },
        ["Pirates"] = {
            ["amount"] = 700,
            ["drops"] = {}
        },
        ["Behemoths"] = {
            ["amount"] = 850,
            ["drops"] = {"behemoth claw", "perfect behemoth fang", "steel boots", "titan axe", "war axe", "giant sword", "dark armor", "plate armor"}
        },
        ["Wyrms"] = {
            ["amount"] = 1100,
            ["drops"] = {"small diamond"}
        },
        ["Warlocks"] = {
            ["amount"] = 1100,
            ["drops"] = {"blue robe", "piggy bank", "ring of the sky", "stone skin amulet", "golden armor"}
        },
        ["Ancient Scarab"] = {
            ["amount"] = 1300,
            ["drops"] = {}
        },
        ["Frost Dragons"] = {
            ["amount"] = 1450,
            ["drops"] = {"shard", "dragon scale mail", "royal helmet", "tower shield", "dragon slayer"}
        },
        ["Elder Wyrms"] = {
            ["amount"] = 1900,
            ["drops"] = {}
        },
        ["Medusas"] = {
            ["amount"] = 1900,
            ["drops"] = {"strand of medusa hair", "boots of haste", "medusa shield", "knight armor", "titan axe"}
        },
        ["Quaras"] = {
            ["amount"] = 2800,
            ["drops"] = {}
        },
        ["Grim Reapers"] = {
            ["amount"] = 3350,
            ["drops"] = {}
        },
        ["Demons"] = {
            ["amount"] = 3500,
            ["drops"] = {"magic plate armor", "golden legs", "demon shield", "mastermind shield", "devil helmet", "fire axe", "giant sword", "might ring"}
        },
        ["Dworcs"] = {
            ["amount"] = 3500,
            ["drops"] = {}
        },
        ["Orshabaals"] = {
            ["amount"] = 3750,
            ["drops"] = {"thunder hammer", "magic plate armor", "golden legs", "demon shield", "mastermind shield", "devil helmet", "boots of haste", "fire axe", "giant sword", "might ring", "stone skin amulet", "ring of the sky"}
        },
        ["Wailing Widow"] = {
            ["amount"] = 4000,
            ["drops"] = {}
        },
        ["Ferumbras"] = {
            ["amount"] = 4000,
            ["drops"] = {"magic plate armor", "golden legs", "golden armor",  "demon shield", "mastermind shield", "devil helmet", "boots of haste", "fire axe", "giant sword", "might ring", "stone skin amulet", "ring of the sky"}
        },
        ["Blue Djins"] = {
            ["amount"] = 4300,
            ["drops"] = {"Blue Piece of Cloth", }
        },
        ["Vampires"] = {
            ["amount"] = 4750,
            ["drops"] = {"vampire shield"}
        },
        ["Sandstone Scorpion"] = {
            ["amount"] = 4750,
            ["drops"] = {}
        },
        ["Killer Caiman"] = {
            ["amount"] = 5000,
            ["drops"] = {}
        },
        ["Askarak Demon"] = {
            ["amount"] = 7000,
            ["drops"] = {"magic sulphur", "piggy bank", "magic plate armor", "mastermind shield"}
        },
        ["Lizards"] = {
            ["amount"] = 7000,
            ["drops"] = {"magic plate armor", "golden armor", "golden legs", "demon shield", "mastermind shield"}
        },
        ["Iron Servant"] = {
            ["amount"] = 7250,
            ["drops"] = {"Slime Mould"}
        },
        ["Bane Bringer"] = {
            ["amount"] = 7500,
            ["drops"] = {}
        },
        ["Azerus"] = {
            ["amount"] = 7500,
            ["drops"] = {}
        },
        ["Heroes"] = {
            ["amount"] = 7700,
            ["drops"] = {"Red Piece of Cloth", "might ring", "fire sword", "crown armor", "crown legs", "crown shield", "piggy bank" }
        },
        ["Green Djins"] = {
            ["amount"] = 7700,
            ["drops"] = {}
        },
        ["Souleater"] = {
            ["amount"] = 8000,
            ["drops"] = {}
        },
        ["Glooth Golem"] = {
            ["amount"] = 8000,
            ["drops"] = {}
        },
        ["Byron"] = {
            ["amount"] = 8500,
            ["drops"] = {}
        },
        ["Dracarys"] = {
            ["amount"] = 8500,
            ["drops"] = {}
        },
        ["Hellflayer"] = {
            ["amount"] = 9000,
            ["drops"] = {"magic plate armor", "mastermind sheild", "skull helmet", "golden armor", "magma boots", "magma legs", "titan axe"}
        },
        ["Deepling Brawler"] = {
            ["amount"] = 9000,
            ["drops"] = {}
        },
        ["Crawler"] = {
            ["amount"] = 9000,
            ["drops"] = {}
        },
        ["Crystalcrusher"] = {
            ["amount"] = 9000,
            ["drops"] = {}
        },
        ["Deathstrike"] = {
            ["amount"] = 9000,
            ["drops"] = {}
        },
        ["Deepling Elite"] = {
            ["amount"] = 9000,
            ["drops"] = {}
        },
    },
    staminaToGoToTrainers = 15,
    staminaPotionUse = false,
    staminaToUsePotion = 15,
    staminaPotionId = 11372,
    autoLootEnabled = true,
    labelToHunt = "",
    labelToTrainers = "",
    labelToReportTask = "",
    whatToDo = {"setup", "getTask", "checkTask", "reportTask", "checkStamina"}
}


--------------------------------------------------------------
-- functions start
local resetTaskData = function()
    storage.caveVariables.monsterName = ""
    storage.caveVariables.monsterActual = ""
    storage.caveVariables.monsterAmountMax = 0
    storage.caveVariables.monsterAmountNow = 0
    storage.caveVariables.taskName = ""
    storage.caveVariables.taskInProgress = false
    storage.caveVariables.taskDone = false
    storage.caveVariables.staminaToGoToTrainers = 15
    storage.caveVariables.staminaPotionUse = false
    storage.caveVariables.staminaToUsePotion = 15
    storage.caveVariables.staminaPotionId = 11372
    storage.caveVariables.autoLootEnabled = true
    storage.caveVariables.autoLootList = {}
end

local addMonsterAmountNow = function()
    storage.caveVariables.monsterAmountNow = storage.caveVariables.monsterAmountNow + 1
end

local checkWhatToDo = function(data)
    if data then
        for _, value in ipairs(storage.caveVariables.whatToDo) do
            if data == value then
                return true
            end
        end
    end
    return false
end

local checkTaskName = function(data)
    if data then
        for name, _ in pairs(storage.caveVariables.monsterInfo) do
            if data == name then
                return true
            end
        end
    end
    return false
end

local checkstamina = function(data)
    local stamina = tonumber(data)
    if stamina then
        return true
    else
        return false
    end
end

local dataIsCorrect = function(data)
    local list = string.split(data, ",")
    if #list == 1 then
        local whatToDo = data
        return true
    end
    if #list == 8 then
        local whatToDo = list[1]:trim()
        local monsterName = list[2]:trim()
        local taskName = list[3]:trim()
        local staminaToGoToTrainers = tonumber(list[4]:trim())
        local staminaPotionUse = list[5]:trim() or false
        local autoLootEnabled = list[6]:trim() or true
        local labelToHunt = list[7]:trim()
        local labelToTrainers = list[8]:trim()

        if checkWhatToDo(whatToDo) then
            if checkTaskName(taskName) then
                if checkstamina(staminaToGoToTrainers) then
                    return true
                else
                    warn("CaveBot[SecretTasker]: " .. list[4] .. " is not and integer list[4]")
                    return false
                end
            else
                warn("CaveBot[SecretTasker]: " .. list[3] .. " is not on the list list[3]")
                return false
            end
        else
            warn("CaveBot[SecretTasker]: " .. list[1] .. " is not on the list list[1]")
            return false
        end
    else
        warn("CaveBot[SecretTasker]: " .. data .. " sintax has not 6 elements")
        return false
    end

end

local setAutoLoot = function()
    say("!autoloot on")
    say("!autoloot clear")
    print(storage.caveVariables.monsterInfo[storage.caveVariables.taskName]['drops'])
    for _, itemName in ipairs(storage.caveVariables.monsterInfo[storage.caveVariables.taskName]['drops']) do
        say("!autoloot add," .. itemName)
    end
    return true
end

local getStamina = function()
    local stamina = tonumber(string.format("%02d", math.floor(stamina() / 60)))
    return stamina
end
-- functions end
--------------------------------------------------------------


--------------------------------------------------------------
CaveBot.Extensions.SecretTasker.setup = function()
    CaveBot.registerAction("tasker", "white", function(data, retries)
        if dataIsCorrect(data) then
            local list = string.split(data, ",")
            local whatToDo = ''

            if #list == 1 then
                whatToDo = data
            elseif #list == 8 then
                whatToDo = list[1]
            end

            if whatToDo == 'setup' then
                local monsterName = list[2]:trim()
                local taskName = list[3]:trim()
                local staminaToGoToTrainers = tonumber(list[4]:trim())
                local staminaPotionUse = list[5]:trim()
                local autoLootEnabled = list[6]:trim()
                local labelToHunt = list[7]:trim()
                local labelToTrainers = list[8]:trim()
                storage.caveVariables.monsterName = monsterName
                storage.caveVariables.taskName = taskName
                storage.caveVariables.taskInProgress = true
                storage.caveVariables.monsterAmountMax = storage.caveVariables.monsterInfo[taskName]['amount']
                storage.caveVariables.staminaToGoToTrainers = staminaToGoToTrainers
                storage.caveVariables.staminaPotionUse = staminaPotionUse
                storage.caveVariables.autoLootEnabled = autoLootEnabled
                storage.caveVariables.labelToHunt = labelToHunt
                storage.caveVariables.labelToTrainers = labelToTrainers
                if autoLootEnabled then
                    setAutoLoot()
                end
                return true
            elseif whatToDo == 'getTask' then
                CaveBot.Conversation("hi", "join", "report", storage.caveVariables.taskName, "yes")
                return true
            elseif whatToDo == 'checkTask' then
                if storage.caveVariables.monsterAmountNow <= storage.caveVariables.monsterAmountMax then
                    CaveBot.gotoLabel(storage.caveVariables.labelToHunt)
                else
                    CaveBot.gotoLabel(storage.caveVariables.labelToTrainers)
                end
                return true
            elseif whatToDo == "reportTask" then
                CaveBot.Conversation("hi", "join", "report", storage.caveVariables.taskName, "yes")
                resetTaskData()
                return true
            elseif whatToDo == "checkStamina" then
                local stamina = tonumber(string.format("%02d", math.floor(stamina() / 60)))
                if stamina <= storage.caveVariables.staminaToGoToTrainers then
                    CaveBot.gotoLabel(storage.caveVariables.labelToTrainers)
                else
                    CaveBot.gotoLabel(storage.caveVariables.labelToHunt)
                end
                return true
            else
                resetTaskData()
                return false
            end
        else
            resetTaskData()
            return false
        end
end)

    CaveBot.Editor.registerAction("tasker", "tasker", {
            value=[["whatToDo, monsterName, taskName, staminaToGoToTrainers, staminaPotionUse, autoLootEnabled"

Examples:
Use this command at the begining
"setup, Hydra, Hydras, 15, false, true"

Use this as you will
"getTask"
"checkTask"
"reportTask"
"checkStamina"
            ]],
            title="SecretTasker",
            multiline = true,
            description="testasdasdsad"
    })
end
--------------------------------------------------------------

--------------------------------------------------------------
-- When monster dies, get text, get monster name and test it
onTextMessage(function(mode, text)
    if not text:lower():find("loot of") then
        return
    end

    local monster
    if #regexMatch(text, storage.caveVariables.monsterRegex) == 1 and #regexMatch(text, storage.caveVariables.monsterRegex)[1] == 3 then
        monster = regexMatch(text, storage.caveVariables.monsterRegex)[1][3]
    elseif #regexMatch(text, storage.caveVariables.monsterRegex2) == 1 and #regexMatch(text, storage.caveVariables.monsterRegex2)[1] == 2 then
        monster = regexMatch(text, storage.caveVariables.monsterRegex2)[1][2]
    end
    storage.caveVariables.monsterActual =  monster

    if storage.caveVariables.monsterActual == storage.caveVariables.monsterName then
        addMonsterAmountNow()
    end
end)

if target == "Trainer" and getStamina() == 42 then

end
--------------------------------------------------------------







