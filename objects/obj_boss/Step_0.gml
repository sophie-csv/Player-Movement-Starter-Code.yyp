if (global.boss_health >= 500 and global.player_health > 0)
{
	alarm[1] = room_speed * 1;
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	speed = 1;
	if(can_shoot)
	{
		alarm[0] = room_speed * 2;
		can_shoot = false;
	}
}
else if (global.boss_health < 500 and global.player_health > 0){
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	speed = 1.5;
	if(can_shoot)
	{
		alarm[0] = room_speed * .5;
		can_shoot = false;
	}
}



