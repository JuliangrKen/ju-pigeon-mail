local resources = ju.pigeon_mail.resources

resources.fonts = {
    'resource/fonts/sweet_mavka_script.ttf',
}

resources.images = {
    'materials/ju_pigeon_mail/letter.vmt',
    'materials/ju_pigeon_mail/letter.vtf',
}

resources.weaponIcons = {
    'materials/entities/ju_pigeon_mail_tame_pigeon.png',
}

resources.enitityIcons = {
}

if SERVER then

    for _, v1 in ipairs(resources) do

        for _, v2 in ipairs(v1) do
            print(v2)
            resource.AddFile(v2)
        end
        
    end
    
end
