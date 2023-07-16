
local letterMat = Material 'ju_pigeon_mail/letter.vmt'
local letterMatSize = 2048

local textColor = Color(56, 37, 5)
local placeholderColor = Color(76, 62, 39, 130)
local dColor = Color(255, 255, 255, 255)
local cursorColor = Color(40, 40, 40)

-- paddigs
local p1 = 64

DEFINE_BASECLASS 'DTextEntry'
local PANEL = {}

function PANEL:Init()

    self:SetPaintBackground(false)
    self:SetMultiline(true)
    self:SetDrawLanguageID(false)
    self:SetTabbingDisabled(false)

    self:SetPlaceholderText 'Write, bro...'
    self:SetPlaceholderColor(placeholderColor)

    self:SetFont 'juPigeonMailLetterMainFont'
    self:SetTextColor(textColor)

end

function PANEL:GetCursorColor()
    return cursorColor
end

vgui.Register('juPigeonMailLetterTextEntry', PANEL, 'DTextEntry')


DEFINE_BASECLASS 'EditablePanel'
PANEL = {}

function PANEL:Init()
    
    local hScreen = ScrH()
    local w, h = hScreen / 1.5, hScreen - hScreen / 10
    
    self:SetSize(w, h)
    self:Center()

    self:MakePopup()

    self.textPanel = vgui.Create('juPigeonMailLetterTextEntry', self)
    self.textPanel:SetSize(w - p1 * 2, h - p1 * 2)
    self.textPanel:Center()

end

function PANEL:Paint(w, h)

    surface.SetMaterial(letterMat)
    surface.SetDrawColor(dColor)
    surface.DrawTexturedRect(0, 0, w, h)

end

vgui.Register('juPigeonMailLetter', PANEL, 'EditablePanel')
