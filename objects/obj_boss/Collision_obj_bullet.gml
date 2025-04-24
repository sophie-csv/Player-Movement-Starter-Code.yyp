if (global.boss_health >= 500)
{
	global.boss_health -= 5;
}
else if( global.boss_health <= 0)
{
	instance_destroy();
}
else
{
	global.boss_health -= 1;
}
