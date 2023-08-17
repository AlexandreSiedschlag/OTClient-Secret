local extensions = "vBot/Tools/Extensions/"
local standards = "vBot/Tools/Standards/"
setDefaultTab("Tools")
--------------------------------------------------------------
dofile(standards .. 'extras.lua')
UI.Separator()
-- dofile(standards .. 'autoequip.lua')
-- UI.Separator()
dofile(standards .. "conditions.lua")
dofile(standards .. "heal.lua")
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
dofile(standards .. 'healailments.lua')
dofile(standards .. 'hidetrees.lua')
dofile(standards .. 'manashield.lua')

UI.Separator()
dofile(extensions .. 'cast.lua')
dofile(extensions .. 'exchangeonlinetokes.lua')
dofile(extensions .. 'safetymanarune.lua')
dofile(extensions .. 'sellwand.lua')
UI.Separator()
dofile(extensions .. 'useonlinetoken.lua')
dofile(standards .. 'analyzer.lua')
UI.Separator()
--------------------------------------------------------------


