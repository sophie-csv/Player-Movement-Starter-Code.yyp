if(global.player_health <= 0)
{
	switch(room)
	{
		case(rm_level1):
		room_goto(rm_lose);
	}
}
if(global.boss_health <= 0)
{

	switch(room)
	{
		case(rm_level1):
		room_goto(rm_win);
	}
}
