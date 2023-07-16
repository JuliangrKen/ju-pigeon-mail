
-- Q-menu
SWEP.Category = ju.pigeon_mail.cfg.q_menu_category
SWEP.Author = 'jujaken'
SWEP.Spawnable = false

-- Selector
SWEP.Slot = 2
SWEP.SlotPos = 0

-- Hud
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false


function SWEP:PrimaryAttack()
    if !IsFirstTimePredicted() then return end

    print 'PrimaryAttack'
end

function SWEP:SecondaryAttack()
    if !IsFirstTimePredicted() then return end

    print 'SecondaryAttack'
end
