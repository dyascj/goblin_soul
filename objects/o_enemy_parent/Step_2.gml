if hp < 0 {
	instance_destroy();	
	
	repeat(xp)
	{
		instance_create_layer(x+random_range(-4, 4), y+random_range(-4, 4), "Effects", o_xp);
	}
}