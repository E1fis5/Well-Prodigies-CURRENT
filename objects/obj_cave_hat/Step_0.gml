if (global.ach_Sec_cd = true) and (place_meeting(x,y,obj_player)) and (input_check_pressed("up")) and (global.cave_hat_follow = false)
{
	global.cave_hat_follow = true;
	instance_create_depth(x + 10,y,399,obj_cosmetic_change);
	audio_play_sound(snd_cosmetic_change,8,false);
	global.em_hat_follow = false;
}

depth = 399

if (global.cave_hat_follow = true)
{
	obj_cave_hat.x = obj_player.x - 5
	obj_cave_hat.y = obj_player.y - 55
	persistent = true;
	if (input_check_pressed("down")) and (room = r_hat_room)
	{
		global.cave_hat_follow = false;
		persistent = false;
		obj_cave_hat.x = obj_Sec_cd_return.x
		obj_cave_hat.y = obj_Sec_cd_return.y
		instance_create_depth(x + 20,y - 23,399,obj_cosmetic_change);
			audio_play_sound(snd_cosmetic_change,8,false);
	}
}

