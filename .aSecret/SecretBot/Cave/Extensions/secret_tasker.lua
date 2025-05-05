CaveBot.Extensions.SecretTasker = {}

if not storage.secretTasker then
    storage.secretTasker = {
        monsterActual = "",
        monsterAmountMax = 0,
        monsterAmountNow = 0,
        monsterRegex = "\\[Task System\\] You kill \\[([0-9]+)/([0-9]+)\\] ([A-Za-z ]+)\\.",
        staminaMinimum = 15,
        staminaPotionEnabled = false,
        staminaPotionId = 11372,
        whatToDo = {"setup", "getTask", "checkTask", "checkStamina", "reportTask"},
        taskName = "",
        taskFinishedRegex = "\\[Task System\\] You completed the ([A-Za-z ]+) task, go to the NPC Tasks and report your achievement.",
        taskDeliveredRegex = "\\[Tasks\\]:? Awesome! you finished a task%. Talk to me again if you want to start a task%.",
        taskInfo = {
            ["Worms"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 30,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 1,
                ["experience"] = 550000,
                ["boss"] = {"Rotworm Queen"},
                ["monsters"] = {"Rotworm", "Carrion Worm", "Terramite"},
                ["drops"] = {},
            },
            ["Orcs"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 80,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 2,
                ["experience"] = 800000,
                ["boss"] = {"Orc Warlord"},
                ["monsters"] = {"Orc", "Orc Warrior", "Orc Spearman", "Orc Berserker", "Orc Leader", "Orc Shaman", "Orc Rider"},
                ["drops"] = {},
            },
            ["Dragons"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 300,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 3,
                ["experience"] = 1500000,
                ["boss"] = {"Dragon King"},
                ["monsters"] = {"Dragon", "Dragon Lord", "Dragon Hatchling", "Dragonling"},
                ["drops"] = {"red dragon leather"},
            },
            ["Minotaur"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 400,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 3,
                ["experience"] = 1600000,
                ["boss"] = {"Minotaur King"},
                ["monsters"] = {"Minotaur", "Minotaur Archer", "Minotaur Guard", "Minotaur Mage"},
                ["drops"] = {"minotaur leather"},
            },
            ["Medusas"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 1900,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 1,
                ["experience"] = 322000000,
                ["boss"] = {"Gorgo"},
                ["monsters"] = {"Medusa", "Serpent Spawn"},
                ["drops"] = {"medusa shield"},
            },
            ["Kongras"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 450,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 3,
                ["experience"] = 1700000,
                ["boss"] = {"Ape King"},
                ["monsters"] = {"Kongra", "Merlkin", "Sibang"},
                ["drops"] = {"ape fur"},
            },
            ["Giant Spider"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 500,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 4,
                ["experience"] = 1800000,
                ["boss"] = {"Spider Queen"},
                ["monsters"] = {"Giant Spider"},
                ["drops"] = {"knight armor", "knight legs", "time ring"},
            },
            ["Hydras"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 600,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 4,
                ["experience"] = 2000000,
                ["boss"] = {"Hydra King"},
                ["monsters"] = {"Hydra"},
                ["drops"] = {"hydra head", "medusa shield", "royal helmet", "boots of haste", "knight armor", "warrior helmet", "stone skin amulet"},
            },
            ["Elfs"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 600,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 4,
                ["experience"] = 2000000,
                ["boss"] = {"Elf Lord"},
                ["monsters"] = {"Elf", "Elf Scout", "Elf Arcanist"},
                ["drops"] = {},
            },
            ["Pirates"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 700,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 5,
                ["experience"] = 2200000,
                ["boss"] = {"Pirate Captain"},
                ["monsters"] = {"Pirate Buccaneer", "Pirate Corsair", "Pirate Cutthroat", "Pirate Ghost", "Pirate Marauder"},
                ["drops"] = {},
            },
            ["Behemoths"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 850,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 5,
                ["experience"] = 2500000,
                ["boss"] = {"Behemoth King"},
                ["monsters"] = {"Behemoth"},
                ["drops"] = {"behemoth claw", "perfect behemoth fang", "steel boots", "titan axe", "war axe", "giant sword"},
            },
            ["Wyrms"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 1100,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 6,
                ["experience"] = 2800000,
                ["boss"] = {"Wyrm Lord"},
                ["monsters"] = {"Wyrm"},
                ["drops"] = {"small diamond"},
            },
            ["Warlocks"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 1100,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 6,
                ["experience"] = 2800000,
                ["boss"] = {"Master Warlock"},
                ["monsters"] = {"Warlock"},
                ["drops"] = {"blue robe", "piggy bank", "ring of the sky", "stone skin amulet", "golden armor"},
            },
            ["Ancient Scarab"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 1300,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 6,
                ["experience"] = 3000000,
                ["boss"] = {"Scarab Lord"},
                ["monsters"] = {"Ancient Scarab"},
                ["drops"] = {},
            },
            ["Frost Dragons"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 1450,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 7,
                ["experience"] = 3200000,
                ["boss"] = {"Frost Dragon King"},
                ["monsters"] = {"Frost Dragon", "Frost Dragon Hatchling"},
                ["drops"] = {"shard", "dragon scale mail", "royal helmet", "tower shield", "dragon slayer"},
            },
            ["Elder Wyrms"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 1900,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 7,
                ["experience"] = 3500000,
                ["boss"] = {"Elder Wyrm Lord"},
                ["monsters"] = {"Elder Wyrm"},
                ["drops"] = {},
            },
            ["Quaras"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 2800,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 8,
                ["experience"] = 4000000,
                ["boss"] = {"Quara Queen"},
                ["monsters"] = {
                    "Quara Constrictor", "Quara Constrictor Scout", "Quara Hydromancer", "Quara Hydromancer Scout",
                    "Quara Mantassin", "Quara Mantassin Scout", "Quara Pincher", "Quara Pincher Scout",
                    "Quara Predator", "Quara Predator Scout"
                },
                ["drops"] = {},
            },
            ["Grim Reapers"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 3350,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 8,
                ["experience"] = 4500000,
                ["boss"] = {"Grim Reaper King"},
                ["monsters"] = {"Grim Reaper"},
                ["drops"] = {},
            },
            ["Demons"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 3500,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 9,
                ["experience"] = 5000000,
                ["boss"] = {"Demon Overlord"},
                ["monsters"] = {"Demon"},
                ["drops"] = {"magic plate armor", "golden legs", "demon shield", "mastermind shield", "devil helmet", "fire axe", "giant sword", "might ring"},
            },
            ["Dworcs"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 3500,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 9,
                ["experience"] = 5200000,
                ["boss"] = {"Dworc Leader"},
                ["monsters"] = {"Dworc Fleshhunter", "Dworc Venomsniper", "Dworc Voodoomaster"},
                ["drops"] = {},
            },
            ["Orshabaals"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 3750,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 10,
                ["experience"] = 5500000,
                ["boss"] = {"Orshabaal"},
                ["monsters"] = {"Orshabaal"},
                ["drops"] = {"thunder hammer", "magic plate armor", "golden legs", "demon shield", "mastermind shield", "devil helmet", "boots of haste", "fire axe", "giant sword", "might ring", "stone skin amulet", "ring of the sky"},
            },
            ["Wailing Widow"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 4000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 10,
                ["experience"] = 5700000,
                ["boss"] = {"Wailing Queen"},
                ["monsters"] = {"Wailing Widow"},
                ["drops"] = {},
            },
            ["Ferumbras"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 4000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 11,
                ["experience"] = 6000000,
                ["boss"] = {"Ferumbras"},
                ["monsters"] = {"Ferumbras"},
                ["drops"] = {"magic plate armor", "golden legs", "golden armor",  "demon shield", "mastermind shield", "devil helmet", "boots of haste", "fire axe", "giant sword", "might ring", "stone skin amulet", "ring of the sky"},
            },
            ["Blue Djins"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 4300,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 11,
                ["experience"] = 6200000,
                ["boss"] = {"Mahrdis"},
                ["monsters"] = {"Blue Djinn"},
                ["drops"] = {"Blue Piece of Cloth"},
            },
            ["Vampires"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 4750,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 12,
                ["experience"] = 6500000,
                ["boss"] = {"Countess Sorrow"},
                ["monsters"] = {"Vampire", "Vampire Bride", "Vampire Viscount"},
                ["drops"] = {"vampire shield"},
            },
            ["Sandstone Scorpion"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 4750,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 12,
                ["experience"] = 6700000,
                ["boss"] = {"Scorpion King"},
                ["monsters"] = {"Sandstone Scorpion"},
                ["drops"] = {},
            },
            ["Killer Caiman"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 5000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 13,
                ["experience"] = 7000000,
                ["boss"] = {"Caiman Master"},
                ["monsters"] = {"Killer Caiman"},
                ["drops"] = {},
            },
            ["Askarak Demon"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 7000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 14,
                ["experience"] = 8000000,
                ["boss"] = {"Askarak Emperor"},
                ["monsters"] = {"Askarak Demon", "Askarak Lord", "Askarak Prince"},
                ["drops"] = {"magic sulphur", "piggy bank", "magic plate armor", "mastermind shield"},
            },
            ["Lizards"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 7000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 14,
                ["experience"] = 8500000,
                ["boss"] = {"Lizard King"},
                ["monsters"] = {"Lizard Sentinel", "Lizard Templar", "Lizard Snakecharmer", "Lizard Dragon Priest", "Lizard High Guard", "Lizard Legionnaire"},
                ["drops"] = {},
            },
            ["Iron Servant"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 7250,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 15,
                ["experience"] = 8700000,
                ["boss"] = {"Iron Colossus"},
                ["monsters"] = {"Iron Servant"},
                ["drops"] = {"Slime Mould"},
            },
            ["Bane Bringer"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 7500,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 15,
                ["experience"] = 8900000,
                ["boss"] = {"Bringer of Bane"},
                ["monsters"] = {"Bane Bringer"},
                ["drops"] = {},
            },
            ["Azerus"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 7500,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 16,
                ["experience"] = 9000000,
                ["boss"] = {"Azerus"},
                ["monsters"] = {"Azerus"},
                ["drops"] = {},
            },
            ["Heroes"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 7700,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 16,
                ["experience"] = 9200000,
                ["boss"] = {"Mighty Hero"},
                ["monsters"] = {"Hero"},
                ["drops"] = {"Red Piece of Cloth", "might ring", "fire sword", "crown armor", "crown legs", "crown shield", "piggy bank"},
            },
            ["Green Djins"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 7700,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 17,
                ["experience"] = 9500000,
                ["boss"] = {"Nouryal"},
                ["monsters"] = {"Green Djinn"},
                ["drops"] = {},
            },
            ["Souleater"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 8000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 17,
                ["experience"] = 9800000,
                ["boss"] = {"Soulcrusher"},
                ["monsters"] = {"Souleater"},
                ["drops"] = {},
            },
            ["Glooth Golem"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 8000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 18,
                ["experience"] = 10000000,
                ["boss"] = {"Glooth Annihilator"},
                ["monsters"] = {"Glooth Golem"},
                ["drops"] = {},
            },
            ["Byron"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 8500,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 18,
                ["experience"] = 10500000,
                ["boss"] = {"Lord Byron"},
                ["monsters"] = {"Byron"},
                ["drops"] = {},
            },
            ["Dracarys"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 8500,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 19,
                ["experience"] = 11000000,
                ["boss"] = {"Dracarys"},
                ["monsters"] = {"Dracarys"},
                ["drops"] = {},
            },
            ["Hellflayer"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 9000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 19,
                ["experience"] = 11500000,
                ["boss"] = {"Hell King"},
                ["monsters"] = {"Hellflayer"},
                ["drops"] = {"magic plate armor", "mastermind sheild", "skull helmet", "golden armor", "magma boots", "magma legs", "titan axe"},
            },
            ["Deepling Brawler"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 9000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 20,
                ["experience"] = 12000000,
                ["boss"] = {"Deepling Champion"},
                ["monsters"] = {"Deepling Brawler"},
                ["drops"] = {},
            },
            ["Crawler"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 9000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 20,
                ["experience"] = 12300000,
                ["boss"] = {"Giant Crawler"},
                ["monsters"] = {"Crawler"},
                ["drops"] = {},
            },
            ["Crystalcrusher"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 9000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 21,
                ["experience"] = 12600000,
                ["boss"] = {"Crystal King"},
                ["monsters"] = {"Crystalcrusher"},
                ["drops"] = {},
            },
            ["Deathstrike"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 9000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 21,
                ["experience"] = 12900000,
                ["boss"] = {"Lord Deathstrike"},
                ["monsters"] = {"Deathstrike"},
                ["drops"] = {},
            },
            ["Deepling Elite"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 9000,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 22,
                ["experience"] = 13200000,
                ["boss"] = {"Deepling Master"},
                ["monsters"] = {"Deepling Elite"},
                ["drops"] = {},
            },
            ["Silencers"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 0,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 0,
                ["experience"] = 0,
                ["boss"] = {""},
                ["monsters"] = {"Silencer"},
                ["drops"] = {},
            },
            ["Retching Horror"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 0,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 0,
                ["experience"] = 0,
                ["boss"] = {""},
                ["monsters"] = {"Retching Horror"},
                ["drops"] = {},
            },
            ["Nightmare"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 0,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 0,
                ["experience"] = 0,
                ["boss"] = {""},
                ["monsters"] = {"Nightmare"},
                ["drops"] = {},
            },
            ["Juggernaut"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 0,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 0,
                ["experience"] = 0,
                ["boss"] = {""},
                ["monsters"] = {"Juggernaut"},
                ["drops"] = {},
            },
            ["Hellhound"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 0,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 0,
                ["experience"] = 0,
                ["boss"] = {""},
                ["monsters"] = {"Hellhound"},
                ["drops"] = {},
            },
            ["Choking Fear"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 0,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 0,
                ["experience"] = 0,
                ["boss"] = {""},
                ["monsters"] = {"Choking Fear"},
                ["drops"] = {},
            },
            ["Blightwalker"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 0,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 0,
                ["experience"] = 0,
                ["boss"] = {""},
                ["monsters"] = {"Blightwalker"},
                ["drops"] = {},
            },
            ["Betrayed Wraith"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 0,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 0,
                ["experience"] = 0,
                ["boss"] = {""},
                ["monsters"] = {"Betrayed Wraith"},
                ["drops"] = {},
            },
            ["Frazzlemaw"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 0,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 0,
                ["experience"] = 0,
                ["boss"] = {""},
                ["monsters"] = {"Frazzlemaw"},
                ["drops"] = {},
            },
            ["Guzzlemaw"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 0,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 0,
                ["experience"] = 0,
                ["boss"] = {""},
                ["monsters"] = {"Guzzlemaw"},
                ["drops"] = {},
            },
            ["Sight of Surrender and Shock Head"] = {
                ["monsters_killed"] = 0,
                ["monsters_to_kill"] = 0,
                ["amount_of_task_done"] = 0,
                ["amount_of_task_todo"] = 3,
                ["task_points"] = 0,
                ["experience"] = 0,
                ["boss"] = {""},
                ["monsters"] = {"Sight of Surrender", "Shock Head"},
                ["drops"] = {},
            }
        }
    }
end

--------------------------------------------------------------
-- functions start

local checkWhatToDo = function(data)
    if data then
        for _, value in ipairs(storage.secretTasker.whatToDo) do
            if data == value then
                return true
            end
        end
    end
    return false
end

local checkTaskName = function(data)
    if data then
        for name, _ in pairs(storage.secretTasker.taskInfo) do
            if data == name then
                return true
            end
        end
    end
    return false
end


local function getStamina()
    local stamina = tonumber(string.format("%02d", math.floor(stamina() / 60)))
    return stamina
end

local dataIsCorrect = function(data)
    local list = string.split(data, ",")
    local whatToDo = list[1] and list[1]:trim() or ""
    -- Setup exige taskName
    if whatToDo == "setup" then
        local taskName = list[2] and list[2]:trim() or ""
        if checkWhatToDo(whatToDo) and checkTaskName(taskName) then
            return true
        else
            print("CaveBot[SecretTasker]: Comando ou Task inválido em setup.")
            return false
        end
    -- Demais comandos podem rodar "vazios"
    elseif checkWhatToDo(whatToDo) then
        return true
    else
        print("CaveBot[SecretTasker]: Comando inválido.")
        return false
    end
end

local setupAutoLoot = function(taskName)
    say("!autoloot clear")
    local monsterData = storage.secretTasker.taskInfo[taskName]
    if monsterData and monsterData.drops then
        for _, item in ipairs(monsterData.drops) do
            if item and item ~= "" then
                say("!autoloot add," .. item)
            end
        end
    end
end

function followTarget(targetName)
    local c = getCreatureByName(targetName)
    if c and not g_game.isFollowing() then
        g_game.follow(c)
    elseif c and g_game.isFollowing() and getDistanceBetween(pos(), c:getPosition()) > 1 then
        g_game.cancelFollow()
        g_game.follow(c)
    end
end


-- functions end
--------------------------------------------------------------

--------------------------------------------------------------
CaveBot.Extensions.SecretTasker.setup = function()
    CaveBot.registerAction("tasker", "yellow", function(data, retries)
        if dataIsCorrect(data) then
            local list = string.split(data, ",")
            local whatToDo = list[1]:trim()

            if whatToDo == 'setup' then
                local taskName = list[2]:trim()
                local staminaPotionEnabled = list[3]:trim()
                storage.secretTasker.taskName = taskName
                modules.game_console.removeTab("Task")
                setupAutoLoot(taskName)
                return true

            elseif whatToDo == 'getTask' then
                followTarget("Tasks")
                delay(2000)
                CaveBot.Conversation(storage.secretTasker.taskName, "yes")
                delay(2000)
                CaveBot.Conversation("status")
                delay(2000)
                return true

            elseif whatToDo == 'checkTask' then
                local labelTrue = list[2] and list[2]:trim()
                local labelFalse = list[3] and list[3]:trim()
                if storage.secretTasker.taskInfo[storage.secretTasker.taskName]['monsters_killed'] == storage.secretTasker.taskInfo[storage.secretTasker.taskName]['monsters_to_kill'] then
                    CaveBot.gotoLabel(labelTrue)
                else
                    CaveBot.gotoLabel(labelFalse)
                end
                return true

            elseif whatToDo == "reportTask" then
                followTarget("Tasks")
                delay(2000)
                CaveBot.Conversation("hi")
                delay(2000)
                CaveBot.Conversation("report", storage.secretTasker.taskName, "yes")
                delay(2000)
                CaveBot.Conversation("yes")
                delay(2000)
                CaveBot.Conversation("status")
                delay(2000)
                storage.secretTasker.taskInfo[storage.secretTasker.taskName]['monsters_killed'] = 0
                return true

            elseif whatToDo == "checkStamina" then
                local labelTrue = list[2] and list[2]:trim()
                local labelFalse = list[3] and list[3]:trim()
                local stamina = tonumber(string.format("%02d", math.floor(stamina() / 60)))
                if stamina >= storage.secretTasker.staminaMinimum then
                    CaveBot.gotoLabel(labelTrue)
                else
                    CaveBot.gotoLabel(labelFalse)
                end
                return true
            end
        else
            return false
        end
    end)

    CaveBot.Editor.registerAction("tasker", "SecretTasker", {
            value=[["whatToDo, taskName, staminaPotionEnabled, labelIfTrue, labelIfFalse"

Exemplo:
"setup, Hydras, false"
"checkTask, HUNT START, REPORT TASK"
"checkStamina, GO TRAIN, CONTINUE HUNT"
            ]],
            title="SecretTasker",
            multiline = true
        })
end
--------------------------------------------------------------

--------------------------------------------------------------
-- Função para atualizar progresso quando receber mensagem da task
onTextMessage(function(mode, text)

    -- Task Counting
    local taskMatch = regexMatch(text, storage.secretTasker.monsterRegex)
    if #taskMatch == 1 and #taskMatch[1] == 4 then
        local monsterAmountNow = tonumber(taskMatch[1][2])
        local monsterAmountMax = tonumber(taskMatch[1][3])
        local taskName = taskMatch[1][4]

        storage.secretTasker.monsterActual = taskName
        storage.secretTasker.monsterAmountNow = monsterAmountNow
        storage.secretTasker.monsterAmountMax = monsterAmountMax

        if storage.secretTasker.taskInfo[taskName] then
            if storage.secretTasker.taskInfo[taskName].monsters_killed < storage.secretTasker.taskInfo[taskName].monsters_to_kill then
                storage.secretTasker.taskInfo[taskName].monsters_killed = monsterAmountNow
                storage.secretTasker.taskInfo[taskName].monsters_to_kill = monsterAmountMax
            end
        end

        print("[CaveBot][SecretTasker]: Current amount: " ..
            monsterAmountNow .. "/" .. monsterAmountMax)
        return
    end

    -- Task delivered
    local taskDeliveredMatch = regexMatch(text, storage.secretTasker.taskDeliveredRegex)
    if #taskDeliveredMatch == 1 then
        print("[CaveBot][SecretTasker]: Task entregue com sucesso!")
        storage.secretTasker.taskInfo[storage.secretTasker.taskName].amount_of_task_done = storage.secretTasker.taskInfo[storage.secretTasker.taskName].amount_of_task_done + 1
    end
end)

--------------------------------------------------------------
