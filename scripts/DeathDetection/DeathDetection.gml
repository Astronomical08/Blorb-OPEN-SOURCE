// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StunDetection(){
switch ( global.stun ) {
case 1 :
    hspWalk = -6
    hsp = 0
    vsp = -3;

    if alarm[3] = -1
    {
        alarm[3] = 10
    }
    break;
case 2 :
    hspWalk = -4
    hsp = 0

    if alarm[6] = -1
    {
        alarm[6] = 60
    }
    break;
case 3 :
     image_alpha = 0.7
    if alarm[7] = -1
    {
        alarm[7] = 120
    }
    break;
case 4 :
sprite_index = Blorb_Door
hspWalk = 0
canJump = 0
x = oDoor.x
if vsp < 0
{
	vsp = 0
}
}
}
function DeathDetection() {
if place_meeting(x,y,DeathBarrior)
{
	x = Spawn.x
	y = Spawn.y
	global.deaths = global.deaths + 1
	if global.player = oPlayer {
	switch ( global.deaths ) {
	case 10 :
		url_open("https://www.wikihow.com/Become-a-Master-Gamer")
	break;
	case 20 :
		url_open("https://www.amazon.com/Ninja-Good-Ultimate-Guide-Gaming/dp/1984826751/ref=sr_1_1?crid=1AYSU4HYSDQLU&dib=eyJ2IjoiMSJ9.lBxZbMmf1X27PtHWz6zgU15MZYQUiJX5RCG89dktUUCT9UuNz8MobOaguRRchWELHj1pp7gFrD98YsHaQjtpuwmFD3WepPlfEc91oyZk7PBTNnD9Tu1hK8FV_ICCiJwR32VrLex6p5tBmH64ATCdaj8IdOPCG4nnzwIYKTL2ZsXD-peVTZV4fStgcMce3iOKqWyVAn3n8i01tDFJRuLFF7cGj8fPnYBNiVHQZ8DJDXA.zXAg8AqlJSVVtqxM93jMWQj96o0QshfQ7oOBKYrpYts&dib_tag=se&keywords=gamer+guide&qid=1712182118&sprefix=gamer+guide%2Caps%2C231&sr=8-1")
	break;
	}
	}
	if global.player = oDOUG {
	switch ( global.deaths ) {
	case 10 :
		url_open("https://docs.google.com/document/d/1jJ7o6zrOQdXHJxEYdRyYhzV2T0S9hqCP-rgOQhsw_NE/edit?tab=t.0")
	break;
	case 20 :
		url_open("https://www.youtube.com/watch?v=B1bM-pv5P5s")
	break;
	}
	}
}
}