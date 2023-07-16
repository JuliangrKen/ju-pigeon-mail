
local netName = 'juPigeonMailLetter_Open'

if SERVER then

    util.AddNetworkString(netName)

    ju.pigeon_mail.OpenLetterMenu = function(ply)
        
        net.Start(netName)
        net.Send(ply)

    end

else

    net.Receive(netName, function()
        
        local letter = vgui.Create 'juPigeonMailLetter'

    end)

end
