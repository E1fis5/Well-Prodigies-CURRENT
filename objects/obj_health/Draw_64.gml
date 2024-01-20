if (global.health <= 6) and (global.gamemode_hard = true)
{
	draw_sprite(spr_health_new,0,1550,870)
}

if (global.health <= 5) and (global.gamemode_hard = true)
{
	draw_sprite(spr_health_new,1,1550,870)
}

if (global.health <= 4) and (global.gamemode_hard = true)
{
	draw_sprite(spr_health_new,2,1550,870)
}

if (global.health <= 3) and (global.gamemode_hard = true)
{
	draw_sprite(spr_health_new,3,1550,870)
}

if (global.health <= 2) and (global.gamemode_hard = true)
{
	draw_sprite(spr_health_new,4,1550,870)
}

if (global.health <= 1) and (global.gamemode_hard = true)
{
	draw_sprite(spr_health_new,5,1550,870)
}

if (global.health <= 0) and (global.gamemode_hard = true)
{
	draw_sprite(spr_health_new,6,1550,870)
	global.sanity = 0
	game_restart();
}



