///@arg low
///@arg high

function animation_hit_frame_range( low , high ) 
{
	return image_index >= low and image_index <= high;
}