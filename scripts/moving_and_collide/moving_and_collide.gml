/// @argument xspeed
/// @argument yspeed


function moving_and_collide(xspeed, yspeed)
{
	
	if not place_meeting(x+xspeed, y, o_wall)
	{
		x += xspeed;
	}

	if  not place_meeting(x, y+yspeed, o_wall)
	{
		y += yspeed;
        }
}