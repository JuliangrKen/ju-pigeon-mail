
local letterMat = Material 'ju_pigeon_mail/letter.vmt'
local letterMatSize = 2048

local textColor = Color(56, 37, 5)
local dColor = Color(255, 255, 255, 255)

DEFINE_BASECLASS 'EditablePanel'
local PANEL = {}

function PANEL:Init()
    
    local hScreen = ScrH()
    local w, h = hScreen / 1.5, hScreen - hScreen / 10
    
    self:SetSize(w, h)
    self:Center()

end

function PANEL:Paint(w, h)

    surface.SetMaterial(letterMat)
    surface.SetDrawColor(dColor)
    surface.DrawTexturedRect(0, 0, w, h)

    draw.DrawText('Test', 'juPigeonMailLetterMainFont', 0, 0, textColor)

end

vgui.Register('juPigeonMailLetter', PANEL, 'EditablePanel')
