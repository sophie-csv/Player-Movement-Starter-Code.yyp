if (global.boss_health < 500)
{
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	speed = 1;
	if(can_shoot)
	{
		alarm[0] = room_speed * 2;
		can_shoot = false;
	}
}

