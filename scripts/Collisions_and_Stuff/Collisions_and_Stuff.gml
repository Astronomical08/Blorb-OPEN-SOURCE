function Collisions(){
_keyRight = keyboard_check(global.RightKey) + (gamepad_axis_value(0,gp_axislh) > 0);
_keyRight = clamp(_keyRight, 0, 1);
_keyLeft = keyboard_check(global.LeftKey) + (gamepad_axis_value(0,gp_axislh) < 0);
_keyLeft = clamp(_keyLeft, 0, 1);
_keyJump = keyboard_check_pressed(global.JumpKey) + gamepad_button_check_pressed(0,gp_face1);
_keyJump = clamp(_keyJump, 0, 1);
_keyJumpHELD = keyboard_check(global.JumpKey) + gamepad_button_check(0,gp_face1);
_keyJumpHELD = clamp(_keyJump, 0, 1);
_keySprint = keyboard_check(global.SprintKey) + gamepad_button_check(0,gp_face2);
_keySprint = clamp(_keySprint, 0, 1);
_keyAttack = keyboard_check_pressed(global.AttackKey) + gamepad_button_check_pressed(0,gp_face2);
_keyAttack = clamp(_keyAttack, 0, 1);
_keyEmote = keyboard_check_pressed(global.EmoteKey) + gamepad_button_check_pressed(0,gp_face3);
_keyEmote = clamp(_keyEmote, 0, 1);
_keySmoke = keyboard_check_pressed(global.SmokeKey) + (gamepad_button_check_pressed(0, gp_stickr));
_keySmoke = clamp(_keySmoke, 0, 1);
_keyEscape = keyboard_check_pressed(vk_escape) + gamepad_button_check_pressed(0,gp_face3);
_keyEscape = clamp(_keyEscape, 0, 1);
//Horizontal Movement
if global.stun = 0 or global.stun = 3
{
hsp = (_keyRight - _keyLeft) * hspWalk;
}
if global.stun = 1 or global.stun = 2 or global.stun = 4
{
hsp = round(image_xscale) * hspWalk;
}
 
//Work out where to move vertically
vsp = vsp + grv;
 
//Work out if we should jump
if (canJump-- > 0) && (_keyJump)
{
		audio_play_sound(JumpBLORB, 10, false, 1)
    vsp = vspJump;
    canJump = 0;
	// For CHARACTER SPECIFIC CHANGES:
	// if global.player = oGameinyan
	// {
	//		blahblahlbah
	// }
}
 
//Are we on the ground?
onGround = place_meeting(x,y+1,oWall);
 
//Horizontal move & collide
var _hCol = move_and_collide(hsp, 0, oWall, abs(hsp))
 
//Walk down slope
if (onGround) && (place_meeting(x,y + abs(hsp) + 1 ,oWall)) && (vsp >= 0) 
{   
    vsp += abs(hsp) + 1;
}
 
//Vertical move & collide
var _vCol = move_and_collide(0, vsp, oWall, abs(vsp)+1 , hsp, vsp, hsp, vsp)
if (array_length(_vCol)  > 0) && emoting = 0
{
    if (vsp > 0) canJump = 10;
    vsp = 0;
}
if _keyLeft && (global.stun = 0 or global.stun = 3)
{
	image_xscale = -0.6
}
if _keyRight && (global.stun = 0 or global.stun = 3)
{
	image_xscale = 0.6
}
}