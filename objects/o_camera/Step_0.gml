/// @description update camera

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) / 30
y += (yTo - y) / 30


x = clamp(x,view_w_half + buff, (room_width +16) - view_w_half - buff);
y = clamp(y,view_h_half + buff/2, (room_height - 16) - view_h_half - buff/2);

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain -((1/shake_length)*shake_magnitude));


camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if (layer_exists("Mountains"))
{
	layer_x("Mountains",x/2);
}

if (layer_exists("Clouds"))
{
	layer_x("Clouds",x/1.8);
}

if (layer_exists("Trees"))
{
	layer_x("Trees",x/4);
}