
local mainColor = Color(218, 209, 137)
local textColor = Color(56, 37, 5)

DEFINE_BASECLASS 'EditablePanel'
local PANEL = {}

function PANEL:Init()
    
    local w, h = ScrW(), ScrH()
    self:SetSize(w / 3, h - h / 10)
    self:Center()
    
end

function PANEL:Paint(w, h)

    draw.RoundedBox(10, 0, 0 , w, h, mainColor)
    draw.DrawText('Test', 'juPigeonMailLetterMainFont', 0, 0, textColor)

end

vgui.Register('juPigeonMailLetter', PANEL, 'EditablePanel')
