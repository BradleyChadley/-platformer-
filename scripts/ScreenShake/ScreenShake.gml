/// @description ScreenShake(Magnitude,frames)
/// @arg magnitude sets radius of pixels
/// @arg frames sets length of shake (60 fps)

with(o_camera)
{
	if(argument0 > shake_remain)
	{
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}