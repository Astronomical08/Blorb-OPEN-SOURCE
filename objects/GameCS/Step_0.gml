if chosen = 1 && alarm[0] = -1 && start = 0
{
	start = 1
	sprite_index = gameinyan_pound_start
	vspeed = - 5
	if alarm[0] = -1
	{
		alarm[0] = 30
	}

}
if global.character == 2
{
	image_alpha = 1
	image_xscale = 1
	image_yscale = 1
	image_blend = make_colour_hsv(40,80,255)
}
if global.character != 2
{
	image_alpha = 0.5
	image_xscale = 0.5
	image_yscale = 0.5
	image_blend = c_white
}