local extensions = "SecretBot/Main/Extensions/"
local standards = "SecretBot/Main/Standards/"
setDefaultTab("Main")

--------------------------------------------------------------
UI.Separator()
dofile(extensions .. 'smarttarget.lua')
dofile(extensions .. 'holdtarget.lua')
--------------------------------------------------------------
UI.Separator()
dofile(extensions .. 'safemltrainer.lua')
--------------------------------------------------------------
UI.Separator()
dofile(extensions .. 'followleader.lua')
--------------------------------------------------------------
UI.Separator()
dofile(extensions .. 'autoparty.lua')
--------------------------------------------------------------
UI.Separator()
dofile(extensions .. 'playerlist.lua')
dofile(extensions .. 'botserver.lua')
--------------------------------------------------------------
UI.Separator()
dofile(extensions .. 'healfriend.lua')
dofile(extensions .. 'pushmax.lua')
dofile(extensions .. 'combobot.lua')
-- dofile(extensions .. 'attackbot.lua')
--------------------------------------------------------------
UI.Separator()
dofile(extensions .. 'containers.lua')
--------------------------------------------------------------
UI.Separator()
dofile(extensions .. 'equipper.lua')
--------------------------------------------------------------




