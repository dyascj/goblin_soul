if hp <= 0
{
	instance_destroy();
	room_goto(r_game_over);
}