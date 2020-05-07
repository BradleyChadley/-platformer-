x = o_player.x+2.5;
y = o_player.y+7;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firing_delay = firing_delay - 1;

recoil = max(0,recoil - 1);
 
if (mouse_check_button(mb_left)) and (firing_delay < 0)
{
	recoil = 4;
	firing_delay = 55;
	with (instance_create_layer(x,y,"Bullet",o_bullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-0.5, 0.5);
		image_angle = direction;
	}
}

if (firing_delay < 15) image_index = 0 else image_index = 1;
x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) and (image_angle < 270)  image_yscale = -1 else image_yscale = 1;