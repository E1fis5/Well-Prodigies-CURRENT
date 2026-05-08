if (sprite_index = spr_player_idle_extended_1)
{
	sprite_index = spr_player_extended_idle_2;	
}

if (sprite_index = spr_player_walljump_normal) or (sprite_index = spr_player_walljump_left_normal)
{
	walljump = false;
	sprite_index = spr_player_fall;
	dJump_sprite_start = false;
	if (player_left)
	{
		sprite_index = spr_player_fall_left;
	}
}

if (sprite_index = spr_player_land) and (land_sprite_break)
{
	sprite_index = spr_playernew;
	land_sprite_break = false;
}

if (sprite_index = spr_player_land_left) and (land_sprite_break)
{
	sprite_index = spr_player_left;
	land_sprite_break = false;
}
