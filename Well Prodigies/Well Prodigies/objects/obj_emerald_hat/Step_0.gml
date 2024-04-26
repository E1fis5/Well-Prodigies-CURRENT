if (global.ach_emeralds = true) and (place_meeting(x,y,obj_player)) and (input_check_pressed("up")) and (global.em_hat_follow = false)
{
	global.em_hat_follow = true;
	instance_create_depth(x + 10,y,399,obj_cosmetic_change);
	audio_play_sound(snd_cosmetic_change,8,false);
}

depth = 401;

if (global.em_hat_follow = true)
{
	obj_emerald_hat.x = obj_player.x;
	obj_emerald_hat.y = obj_player.y - 35;
	persistent = true;
	if (input_check_pressed("down")) and (room = r_hat_room)
	{
		global.em_hat_follow = false;
		persistent = false;
		obj_emerald_hat.x = obj_em_return.x;
		obj_emerald_hat.y = obj_em_return.y;
		instance_create_depth(x + 20,y - 23,399,obj_cosmetic_change);
			audio_play_sound(snd_cosmetic_change,8,false);
	}
}