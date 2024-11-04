Collisions()
if (hsp == 0 && onGround == 1 && emoting == 0 && canceling == 0 && global.hitting == 0)
    sprite_index = trixidle
if (hsp != 0 && onGround == 1 && emoting == 0 && canceling == 0 && global.hitting == 0)
    sprite_index = trixwalk_ASHINGO
if (onGround != 1 && vsp > 0 && emoting == 0 && canceling == 0 && global.hitting == 0)
    sprite_index = trixairbound
if (onGround != 1 && vsp < -3 && emoting == 0 && canceling == 0 && global.hitting == 0)
    sprite_index = trixfally
DeathDetection()
if (_keyEmote && emoting == 0 && canEmote == 1 && canceling == 0 && global.hitting == 0 && !onGround)
{
    canEmote = 0
    emoting = 1
    sprite_index = trixdance
    alarm = 50
}
if (emoting == 1)
{
    vsp = lastvsp
    vsp = 0
    hspWalk = 0
}
if (emoting == 1)
{
    alarm[0] = 0.01
    alarm[2] = 1
    alarm[1] = 30
}
if onGround
{
    canceling = 0
	grv = 0.2
}
StunDetection()
if canceling = 0
{
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
}
if canceling = 1
{
	sprite_set_speed(sprite_index, vsp + 15, spritespeed_framespersecond);
}
