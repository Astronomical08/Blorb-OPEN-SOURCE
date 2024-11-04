//STEP EVENT
Collisions()
if pounding
{
	if alarm[5] = -1
	{
		alarm[5] = 8
	}
}
if pounding = 0 && emoting = 0
{
	hspWalk = 10
}
if pounding = 1
{
	hspWalk = 5
}

if !onGround && pounding = 0 && _keySmoke && emoting = 0
{
	pounding = 1
	vsp = -10
	grv = 1
}

if onGround && pounding = 1
{
	grv = 0.15
	vsp = -8
	pounding = 0
}

slopeOn = keyboard_check(vk_control);

//animation code

if (hsp = 0) && (onGround = 1) && emoting = 0 && canceling = 0
        {
            sprite_index = gameinyan_idle
        } 

if (hsp != 0) && (onGround = 1) && emoting = 0  && canceling = 0
        {
            sprite_index = Gameinyan_walkj
        }
if emoting = 1
{
	image_xscale = -0.6
}
if (onGround != 1) && (vsp > 0) && emoting = 0  && canceling = 0 && pounding = 0
    {
            sprite_index = gameinyan_Fall
    }
if (onGround != 1) && (vsp < -3) && emoting = 0  && canceling = 0 && pounding = 0
{
            sprite_index = gameinyan_Jump105
}
if (onGround != 1) && (vsp > 8) && emoting = 0  && canceling = 0 && pounding = 1
    {
            sprite_index = gameinyan_pound
			canEmote = 1
    }
if (onGround != 1) && (vsp < 0) && emoting = 0  && canceling = 0 && pounding = 1
{
            sprite_index = gameinyan_pound_start
}

DeathDetection()

if _keyEmote && emoting = 0 && canEmote = 1 && canceling = 0
{
	canEmote = 0
	emoting = 1
	sprite_index = GameinyanEMOTE112
	alarm = 50
}

if emoting = 1
{
	grv = 0.15
	pounding = 0
	vsp = lastvsp
	vsp = 0
	hspWalk = 0
}

if _keyJump && emoting = 1
{
alarm[0] = 0.01
alarm[2] = 1
alarm[1] = 80 
}
StunDetection()
if onGround
{
	canceling = 0
}