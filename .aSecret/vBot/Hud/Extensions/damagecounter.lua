if not storage.highscores then
    storage.highscores = {
        creature_damage = 0,
        creature_name = nil,
        player_damage = 0,
        player_name = nil,
    }
end

local widgetHighscore = setupUI([[
Label
  height: 26
  width: 26
  anchors.bottom: parent.bottom
  anchors.left: parent.left
  margin-left: 2
  margin-bottom: 12

  Label
    id: lblHighscore
    color: red
    font: verdana-11px-rounded
    height: 12
    background-color: #00000040
    opacity: 0.87
    anchors.left: parent.left
    anchors.top: prev.bottom
    text-horizontal-auto-resize: true
    text-auto-resize: true
    !text: tr('Highest DMG: 0')

  Label
    id: lblPlayerHighscore
    color: green
    height: 12
    font: verdana-11px-rounded
    background-color: #00000040
    opacity: 0.87
    anchors.left: parent.left
    anchors.top: prev.bottom
    text-horizontal-auto-resize: true
    text-auto-resize: true
    text-align: center
    !text: tr('Player DMG: 0')
]], modules.game_interface.getMapPanel())

widgetHighscore.lblHighscore:setText('Highest DMG: ' .. storage.highscores.creature_damage .. (storage.highscores.creature_name and ' (' .. storage.highscores.creature_name .. ')' or ''))
widgetHighscore.lblPlayerHighscore:setText('Player DMG: ' .. storage.highscores.player_damage .. (storage.highscores.player_name and ' (' .. storage.highscores.player_name .. ')' or ''))
function broadcastMessage(text)
    return modules.game_textmessage.displayBroadcastMessage(text)
end
onTextMessage(function(mode, text)
    warn(mode)
    if (mode == 21 or mode == 28) and text:find("due to your attack") then
        local data_player = regexMatch(text, "([a-z A-Z-]*) loses ([0-9]*) ([a-z A-Z-]*) due to your attack")[1]
        local data_creature = regexMatch(text, "(A|An) ([a-z A-Z-\\[\\]]*) loses ([0-9]*) hitpoints due to your attack.")[1]
        if data_creature and data_creature[3] and data_creature[4] then
            local dmgvalue = tonumber(data_creature[4])
            if dmgvalue > storage.highscores.creature_damage then
                storage.highscores.creature_damage = dmgvalue
                storage.highscores.creature_name = data_creature[3]
                broadcastMessage("New Damage: " .. data_creature[3] .. ' - ' .. dmgvalue)
                widgetHighscore.lblHighscore:setText('Highest DMG: ' .. dmgvalue .. ' (' .. data_creature[3] .. ')')
            end
        elseif (data_player and data_player[2] and data_player[3]) then
            local dmgvalue = tonumber(data_player[3])
            if dmgvalue > storage.highscores.player_damage then
                local creature = getPlayerByName(data_player[2])
                if creature then
                    storage.highscores.player_damage = dmgvalue
                    storage.highscores.player_name = data_player[2]
                    broadcastMessage("New Player Damage: " .. data_player[2] .. ' - ' .. dmgvalue)
                    widgetHighscore.lblPlayerHighscore:setText('Player DMG: ' .. dmgvalue .. ' (' .. data_player[2] .. ')')
                end
            end
        end
    end
end)