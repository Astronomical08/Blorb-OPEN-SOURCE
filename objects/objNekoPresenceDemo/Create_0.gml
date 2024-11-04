/// @description Initialize Discord.

#macro DISCORD_APP_ID "1283102931780112454"

ready = false;

alarm[0] = room_speed * 5;

if (!np_initdiscord(DISCORD_APP_ID, true, 0))
{
	show_error("NekoPresence init fail.", true);
}