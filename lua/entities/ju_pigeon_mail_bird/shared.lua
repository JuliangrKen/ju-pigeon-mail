
ENT.Type = 'anim'
ENT.Author = 'Julik#8946'

ENT.Category = ju.pigeon_mail.cfg.q_menu_category
ENT.Spawnable = false

function ENT:Initialize()
    
end
 
function ENT:SetSender(ply)
    
    self.sender = ply
    print(ply:Nick() .. ' is sender')

end

function ENT:SetRecipient(ply)
    
    self.recipient = ply
    print(ply:Nick() .. ' is recipient')

end

function ENT:SetMessage(str)
    
    self.message = str
    print(str)

end

function ENT:Fly()

    print(self .. ' fly to ' .. self.recipient:Nick() .. ' with message: "' .. self.message .. '" from ' .. self.sender:Nick() .. '.')

end