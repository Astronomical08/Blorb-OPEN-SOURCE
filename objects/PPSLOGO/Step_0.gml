if image_alpha != 1 && fade = 0
{
	image_alpha = image_alpha + 0.05
}
if image_alpha = 1 && fade = 0
{
	if alarm[0] = -1
	{
	alarm[0] = 120
	}
	if soundplayed = 0
	{
		soundplayed = 1
		audio_play_sound(PPS_logo_REAL,5,false)
	}
}
if fade = 1
{
	image_alpha = image_alpha - 0.05
}
if fade = 1 && image_alpha = 0
{
	if alarm[1] = -1
	{
	alarm[1] = 60
	}
}
index = 0;

var _file = file_find_first("Languages/" + "*.ini", 0);

while ( _file != "" ) // file_find_first() / file_find_next() return "" (empty string) if no files found.
{
    global.Language_option[index++] = _file; 
    _file = file_find_next();
}

//if _file = "" {
//show_message("Found " + string(index) + " files.");
//}
file_find_close();