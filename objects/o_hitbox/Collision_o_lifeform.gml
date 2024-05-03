if creator == noone or creator == other or ds_list_find_index(hit_objects, other)
{
	exit;
}

other.hp -= damage;
repeat (10)
{
	instance_create_layer(other.x, other.y - 12,"Effects", o_hit_effect); 
}


if instance_exists(o_skeleton) and creator.object_index == o_skeleton and other.hp <= 0 and other.state != "death" {
	o_skeleton.kills += 1;
}

	if other.object_index == o_skeleton
	{
		add_screenshake(15, 8);
		
		if other.hp <= 0
		{
			ini_open("save.ini")
			ini_write_real("Scores", "Kills", other.kills);
			var highscore = ini_read_real("Scores", "Highscore", 0);
			if other.kills > highscore
			{
				ini_write_real("Scores", "Highscore", other.kills);
			}
			ini_close();
		}
		
	}
	else 
	{
	other.alarm[0] = 120;
	add_screenshake(2, 10);
	}


ds_list_add(hit_objects, other);

other.state = "knockback";
other.knockback_speed = knockback * image_xscale;
other.image_xscale = -image_xscale;

