
function add_screenshake(intensity, duration){
	if not instance_exists(o_camera) exit;
	
	with (o_camera)
	{
		screenshake = intensity;
		alarm[0] = duration;
	
	}
	

}