
-- by jujaken

ju = ju or {}
ju.pigeon_mail = ju.pigeon_mail or {}
ju.pigeon_mail.cfg = ju.pigeon_mail.cfg or {}
ju.pigeon_mail.resources = ju.pigeon_mail.resources or {}

-- include functions:

local rDir = 'ju_pigeon_mail/'

local addSv = SERVER and include or function() end
local addCl = SERVER and AddCSLuaFile or include
local addSh = function(...)
    addSv(...)
    addCl(...)
end

local addFile = function(name, dir)
    local prefix = string.Left(name, 3)
    local path = (dir or rDir) .. name

    if prefix == 'sv_' then
        addSv(path)
        return
    end

    if prefix == 'cl_' then
        addCl(path)
        return
    end

    addSh(path)
end

local addDir = function(name)
    local dir = rDir..name..'/'
    local files, _ = file.Find(dir..'*', 'LUA')
    
    for _, v in ipairs(files) do
        if !string.EndsWith(v, '.lua') then return end
        addFile(v, dir)
    end
end

addFile 'resourses.lua'
addFile 'cfg.lua'
addDir 'core'

-- Hello msg:
MsgC(Color(134, 156, 223), "\n~~~\tJuliandrKen (jujaken) Pigeon Mail was loaded. Don't touch my crumb!\t~~~\n")
