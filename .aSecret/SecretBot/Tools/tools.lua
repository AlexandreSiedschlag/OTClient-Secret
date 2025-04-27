local extensions = "SecretBot/Tools/Extensions/"
local standards = "SecretBot/Tools/Standards/"
setDefaultTab("Tools")
--------------------------------------------------------------
dofile(standards .. 'extras.lua')
UI.Separator()
-- dofile(standards .. 'autoequip.lua')
-- UI.Separator()
dofile(standards .. 'dropper.lua')
UI.Separator()
dofile(standards .. 'bless.lua')
dofile(extensions .. 'holybless.lua')
UI.Separator()
dofile(standards .. 'antikick.lua')
dofile(standards .. 'antiredskull.lua')
dofile(standards .. 'automount.lua')
dofile(standards .. 'cutgrass.lua')
dofile(standards .. 'exchangemoney.lua')
dofile(standards .. 'haste.lua')
dofile(standards .. 'hidetrees.lua')

UI.Separator()
dofile(extensions .. 'cast.lua')
dofile(extensions .. 'exchangeonlinetokes.lua')
dofile(extensions .. 'sellwand.lua')
UI.Separator()
dofile(extensions .. 'useonlinetoken.lua')
dofile(standards .. 'analyzer.lua')
UI.Separator()
--------------------------------------------------------------


