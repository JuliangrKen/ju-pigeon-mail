
local netName = 'juPigeonMailLetter_Open'

if SERVER then

    util.AddNetworkString(netName)

    ju.pigeon_mail.OpenLetterMenu = function(ply)
        
        net.Start(netName)
        net.Send(ply)

    end

else

    net.Receive(netName, function()
        
        if ju.pigeon_mail.letter then
            ju.pigeon_mail.letter:Remove()
            ju.pigeon_mail.letter = nil
            return
        end
        
        ju.pigeon_mail.letter = vgui.Create 'juPigeonMailLetter'

    end)

end
