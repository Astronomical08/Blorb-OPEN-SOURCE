image_alpha = 0
draw_set_halign(fa_center)
fade = 0
soundplayed = 0
if debug_mode {
room_goto(menu)
}
if !file_exists("Languages/en.ini")
{
	ini_open("Languages/en.ini")
	ini_write_string("CharacterSelect","CS1","The Star of The Show!")
	ini_write_string("CharacterSelect","CS2","He can jump pretty high ig.")
	ini_write_string("CharacterSelect","CS3","He's a little special.")
	ini_write_string("CharacterSelect","CS4","Who's that Handsome Man")
	ini_write_string("Huds","Blorb UI","blorui")
	ini_write_string("Huds","Gameinyan UI","gameui")
	ini_write_string("Huds","Trixter UI","trixui")
	ini_write_string("Huds","Doug UI","dougui")
	ini_write_string("Options","Video","Video Resolution:")
	ini_write_string("Options","Audio","Volume:")
	ini_write_string("Options","Fullscreen","Fullscreen:")
	ini_write_string("Options","Discord RPC","Discord Rich Presence:")
	ini_write_string("Options","Yes","Yes")
	ini_write_string("Options","No","No")
	ini_write_string("Discord RPC","In The Menus","In The Menus")
	ini_write_string("Discord RPC","Boring.","Boring.")
	ini_write_string("Discord RPC","Playing as","Playing as")
	ini_close()
}

	global.Language_option[0] = "en.ini"
	global.Language_option[1] = "IMPORT LANGUAGE"
	global.Language_option[2] = "IMPORT LANGUAGE"
	global.Language_option[3] = "IMPORT LANGUAGE"
	global.Language_option[4] = "IMPORT LANGUAGE"
	global.Language_option[5] = "IMPORT LANGUAGE"
	global.Language_option[6] = "IMPORT LANGUAGE"
	global.Language_option[7] = "IMPORT LANGUAGE"
	global.Language_option[8] = "IMPORT LANGUAGE"
	global.Language_option[9] = "IMPORT LANGUAGE"
if file_exists("Languages/en.ini")
{
	ini_open("Languages/en.ini")
	global.LANG[0] = ini_read_string("CharacterSelect","CS1","The Star of The Show!")
	global.LANG[1] = ini_read_string("CharacterSelect","CS2","He can jump pretty high ig.")
	global.LANG[2] = ini_read_string("CharacterSelect","CS3","He's a little special.")
	global.LANG[3] = ini_read_string("CharacterSelect","CS4","Who's that Handsome Man")
	global.LANG[4] = ini_read_string("Huds","Blorb UI","blorui")
	global.LANG[5] = ini_read_string("Huds","Gameinyan UI","gameui")
	global.LANG[6] = ini_read_string("Huds","Trixter UI","trixui")
	global.LANG[7] = ini_read_string("Huds","Doug UI","dougui")
	global.LANG[8] = ini_read_string("Options","Video","Video Resolution:")
	global.LANG[9] = ini_read_string("Options","Audio","Volume:")
	global.LANG[10] = ini_read_string("Options","Fullscreen","Fullscreen:")
	global.LANG[11] = ini_read_string("Options","Discord RPC","Discord Rich Presence:")
	global.LANG[12] = ini_read_string("Options","Yes","Yes")
	global.LANG[13] = ini_read_string("Options","No","No")
	global.LANG[14] = ini_read_string("Discord RPC","In The Menus","In The Menus")
	global.LANG[15] = ini_read_string("Discord RPC","Boring.","Boring.")
	global.LANG[16] = ini_read_string("Discord RPC","Playing as","Playing as")
	ini_close()
}