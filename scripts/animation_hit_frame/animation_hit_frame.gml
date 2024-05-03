function animation_hit_frame(frame, range)
{
	range = image_speed * (sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps));
	return image_index >= frame and image_index < frame+range;
}