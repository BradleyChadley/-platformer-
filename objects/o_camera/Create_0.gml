 /// @description set up camera

cam = view_camera[0];
follow = o_player;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = x;
yTo = y;

shake_length = 60;
shake_magnitude = 4;
shake_remain = 4;
buff = 32;