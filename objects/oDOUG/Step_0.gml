//STEP EVENT
Collisions()

//animation code

if (hsp = 0) && (onGround = 1) && emoting = 0 && canceling = 0 && boosting = 0 && global.hitting = 0
        {
            sprite_index = DOUGLAS
        } 

if (hsp != 0) && (onGround = 1) && emoting = 0  && canceling = 0 && boosting = 0 && global.hitting = 0
        {
            sprite_index = DOUGLASrun
        }
if (onGround != 1) && (vsp > 0) && emoting = 0  && canceling = 0 && boosting = 0 && global.hitting = 0
    {
            sprite_index = DOUGLASairbound
    }
if (onGround != 1) && (vsp < -3) && emoting = 0  && canceling = 0 && boosting = 0 && global.hitting = 0
{
            sprite_index = DOUGLASfally
}

DeathDetection()
if onGround && emoting != 1
{
	canceling = 0
	canEmote = 1
	boosting = 0
}

if _keyEmote && emoting = 0 && canEmote = 1 && canceling = 0 
{
	canEmote = 0
	emoting = 1
	sprite_index = Doug_Ready
	alarm[0] = 15
	hspWalk = 4
}
if onGround && emoting = 1
{
	vsp = -4
}
if _keyJump
{
	if emoting = 1 or boosting = 1
	{
	alarm[0] = 0.01
	alarm[2] = 1
	alarm[1] = 30
	}
}
StunDetection()
if emoting = 1 or boosting = 1
	{
	hspWalk = 4
	}
if onGround
{
	hspWalk = 10
}
if boosting = 1 or canceling = 1
{
	if alarm[4] = -1
	{
		alarm[4] = 8
	}
}

if _keyAttack && canceling = 0 
{
	sprite_index = DOUGLAShit
	image_index = 0
	global.hitting = 1
}

if global.hitting = 1
{
	if alarm[5] = -1
	{
		alarm[5] = 20
	}
}
if canceling = 1 && _keySmoke
{
	vsp = 8
}
if canceling = 1
{
	global.hitting = 1
}
if _keyEscape
{
	room_goto(CSroom)
}