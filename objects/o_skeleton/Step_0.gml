
switch (state)
{
	
	case "move":
		if state == "move" 
{

	if input.right
	{
		moving_and_collide(run_speed, 0);
		sprite_index = s_player_run
		image_xscale = 1;
		image_speed = 0.8;
	
	}

	if input.left
	{
		moving_and_collide(-run_speed, 0);
		//change sprite to run and fix speed
		sprite_index = s_player_run
		//Flip sprite left
		image_xscale = -1;
		image_speed = 0.6;
	}


	if not input.left and not input.right

	{
		sprite_index = s_player_idle
		image_speed = 0.3;
	}
	
	if input.roll{
		
		state = "roll";
	
	}
	
	if input.attack{
		
		state = "attack one";
	
	}
	
}
		
	break;
	
	case "roll":
	
	if state == "roll" {
	set_state_sprite(s_player_roll, 1, 0)
	
	if image_xscale == 1
	{
		moving_and_collide(roll_speed, 0);
		
	}
	
	
	if image_xscale == -1
	{
		moving_and_collide(-roll_speed, 0);
	}
	
	if animation_end(){
		state = "move"
	}
}
		
	break;
	
	case "attack one":

	set_state_sprite(s_player_attack_one, .5, 0)
	
	if animation_hit_frame(2)
	{
		create_hitbox(x, y, self, s_player_attack_one_damage, 2, 1, 5, image_xscale);
	}
	
	if input.attack and animation_hit_frame_range(2, 3)
	{
		state = "attack two";
	}
	
	if animation_end(){
		state = "move"
	}
	
	
	break;
	
	
	
	case "attack two":
	
	set_state_sprite(s_player_attack_two, .5, 0)
	
	if animation_hit_frame(2)
	{
		create_hitbox(x, y, self, s_player_attack_two_damage, 2, 1, 5, image_xscale);
	}
	
	if input.attack and animation_hit_frame_range(2, 4)
	{
		state = "attack three"
	}
	
	if animation_end(){
		state = "move"
	}
	
	break;
	
	case "attack three":
	
	set_state_sprite(s_player_attack_three, .5, 0)
	
	if animation_hit_frame(4)
	{
		create_hitbox(x, y, self, s_player_attack_three_damage, 4, 1, 8, image_xscale);
	}
	
	if animation_end(){
		state = "move"
	}
	
	break;
	
	case "knockback":
	
		knockback_state(s_player_knockback, "move");
		set_state_sprite(s_player_knockback, 1, 0)
		
	break;
	
	case "dead":
	
		

	break;

	
}





