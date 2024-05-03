if not instance_exists(other) exit;

with (other) 

{ 
	xp += 1;
	if (xp >= max_xp)
	{
		level += 1;
		xp = xp - max_hp
		max_xp += max_xp;
		max_hp += 5;
		hp = max_hp;
		strength += 5;
	}
	
}

instance_destroy();