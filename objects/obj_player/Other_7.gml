if (sprite_index = spr_player_gem_collect) and (global.dJump_active = true) and (onground = false)
{
	global.dJump_idle = true
}

if (sprite_index = spr_player_idlebreaker_1)
{
	sprite_index = spr_playernew;
	global.idlespr_active = false;
}