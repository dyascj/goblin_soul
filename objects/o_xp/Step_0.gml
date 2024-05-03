if !instance_exists(o_skeleton) exit;
var dir = point_direction(x, y, o_skeleton.x, o_skeleton.y);  
var acceleration = 0.25;
motion_add(dir, acceleration);

var max_speed = 6;

if speed > max_speed 
{
	speed = max_speed
}