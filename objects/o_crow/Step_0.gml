switch (state) {
	case "chase":
		if not instance_exists(o_skeleton) break;
		if place_meeting(x, y, o_skeleton)and o_skeleton.state != "roll" and attacked = false {
			create_hitbox(x, y, self, sprite_index, knockback, 1, damage, image_xscale)
			attacked = true
		}
		if attacked == true {
			vspeed = -1;
		}
		
	break;
	
	
}