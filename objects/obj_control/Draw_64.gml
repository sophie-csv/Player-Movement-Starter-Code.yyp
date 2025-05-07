if(room == rm_level1)
{
if (global.boss_health <= 0)
{
	draw_text(504 ,8,"Boss Health: DEFEATED");
}
else
{
	
if (global.boss_health <= 0)
{
	draw_text(504 ,8,"Boss Health: DEFEATED");
}
else
{
	draw_text(504 ,8,"Boss Health: " + string(global.boss_health));
	draw_set_halign(fa_left);
}
}


draw_text(0 ,0,"Player Health: " + string(global.player_health));
draw_set_halign(fa_left);
}
else if(room == rm_win)
{
	draw_text(719 ,371, "YOU WON");
	draw_set_halign(fa_left);
}
else if(room == rm_lose)
{
	draw_text(719 ,371, "YOU LOST");
	draw_set_halign(fa_left);
}