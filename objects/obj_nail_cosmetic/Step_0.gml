if (global.ach_emeralds = true) and (place_meeting(x,y,obj_player)) and (input_check_pressed("up")) and (global.nail_hat_follow = false)
{
	global.nail_hat_follow = true;
	instance_create_depth(x + 10,y,399,obj_cosmetic_change);
	audio_play_sound(snd_cosmetic_change,8,false);
}


if (global.nail_hat_follow = true)
{
	x = obj_player.x - 10;
	y = obj_player.y - 15;
	if (obj_player.player_left)
	{
		x = obj_player.x;
		y = obj_player.y - 15;
	}
	persistent = true;
	if (input_check_pressed("down")) and (room = r_hat_room)
	{
		global.nail_hat_follow = false;
		persistent = false;
		x = obj_nail_return.x;
		y = obj_nail_return.y;
		instance_create_depth(x + 20,y - 23,399,obj_cosmetic_change);
			audio_play_sound(snd_cosmetic_change,8,false);
	}
}

if (obj_player.player_left = true)
{
	sprite_index = spr_nail_cosmetic_left;
}
else
{
	sprite_index = spr_nail_comsetic;
}