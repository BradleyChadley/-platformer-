if(hp<=0)
{
	with(instance_create_layer(x,y,layer,o_enemyD))
	{
		direction = other.hit_from;
		hsp = lengthdir_x(3, direction);
		vsp = lengthdir_y(-3, direction);
		image_xscale = sign(hsp);
	}
	
	
	instance_destroy();
}
