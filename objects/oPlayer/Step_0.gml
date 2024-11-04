//STEP EVENT

slopeOn = keyboard_check(vk_control);
 
Collisions() // go to the collisions script 

//animation code

if global.stun = 1 or global.stun = 2
{
	sprite_index = Blorb_hit
}
if (hsp = 0) && (onGround = 1) && emoting = 0 && canceling = 0 && smoking = 0 && global.hitting = 0 && (global.stun = 0 or global.stun = 3)
        {
            sprite_index = bloridle1
        } 

if (hsp != 0) && (onGround = 1) && emoting = 0  && canceling = 0 && global.hitting = 0 && (global.stun = 0 or global.stun = 3)
        {
			if sprinting = 0
			{
            sprite_index = bloright
			}
			else
			{
			sprite_index = blorbfast
			}
			smoking = 0
        }
if (onGround != 1) && (vsp > 0) && emoting = 0  && canceling = 0 && global.hitting = 0 && (global.stun = 0 or global.stun = 3)
    {
			if sprinting = 0
			{
            sprite_index = blorairbound
			}
			else
			{
			sprite_index = BlorbFASTFALL
			}
			smoking = 0
    }
if (onGround != 1) && (vsp < -3) && emoting = 0  && canceling = 0 && global.hitting = 0 && (global.stun = 0 or global.stun = 3)
{
			if sprinting = 0
			{
            sprite_index = blorfally
			}
			else
			{
			sprite_index = BlorbFASTJUMP
			}
			smoking = 0
}

DeathDetection()

if _keyEmote && emoting = 0 && canEmote = 1 && canceling = 0 && (global.stun = 0 or global.stun = 3)
{
	canEmote = 0
	emoting = 1
	global.hitting = 0
	sprite_index = bloremote
	alarm = 50
}

if emoting = 1
{
	vsp = lastvsp
	vsp = 0
	hspWalk = 0
}

if _keyJump && emoting = 1
{
	global.hitting = 0
alarm[0] = 0.01
alarm[2] = 1
alarm[1] = 30
}

if onGround
{
	canceling = 0
}

if _keySmoke
{
	smoking = 1
}

if _keyEscape
{
	room_goto(CSroom)
}

if smoking = 1 && (global.stun = 0 or global.stun = 3)
{
	sprite_index = blorbcigarette
	if alarm[4] = -1
	{
		alarm[4] = 140
	}
} 


if _keyAttack && global.hitting = 0 && emoting = 0  && canceling = 0
{
	global.hitting = 1
	sprite_index = blorpunch
	image_index = 0
}

if global.hitting = 1 && (global.stun = 0 or global.stun = 3)
{
	if alarm[5] = -1
	{
		alarm[5] = 20
	}
} 
StunDetection()
if global.stun = 0 && emoting = 0 && canceling = 0 && global.hitting = 0 && sprinting = 0
{
	hspWalk = 8
}
if global.stun = 0 && sprinting = 1
{
	hspWalk = 12
}
if onGround && global.stun = 2
{
	hspWalk = 8
	global.stun = 3
}

if _keySprint && emoting = 0 && canceling = 0 && global.hitting = 0
{
	sprinting = 1
}
else
{
	sprinting = 0
}

if sprinting = 0
{
	vspJump = -6
}
else
{
	vspJump = -8
}
