if(global.player_health <= 0)
{
	room_goto(rm_lose);
}
if(global.boss_health <= 0)
{

	room_goto(rm_win);
}
