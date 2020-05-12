// Movement
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) or keyboard_check(vk_space);

var move = key_right - key_left;

hsp = move * walkspd;

if (place_meeting(x+hsp,y,o_wall))
{
	while (!place_meeting(x+sign(hsp),y,o_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

vsp = vsp + grv;

if (place_meeting(x,y+1,o_wall)) and (key_jump)
{
	vsp = -5;
	
}

if (dj == 1) and (keyboard_check_pressed(vk_space)) and (!place_meeting(x,y+1,o_wall))
{
	vsp = -3;
	dj = 0;
}

if (place_meeting(x,y+1,o_wall))
{
	dj = 1;
}

if (place_meeting(x,y+vsp,o_wall))
{
	while (!place_meeting(x,y+sign(vsp),o_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,o_wall))
{
	sprite_index = s_playerA;
	image_speed = 0;
	if (sign(vsp) > 0)  image_index = 1;  else image_index = 0;
}
else 
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = s_player;
	}
	else
	{
		sprite_index = s_playerR;
	}
}
if (hsp != 0) image_xscale = sign(hsp);