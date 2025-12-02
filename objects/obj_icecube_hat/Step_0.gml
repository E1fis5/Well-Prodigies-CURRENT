if (global.ach_ice = true) and (place_meeting(x,y,obj_player)) and (input_check_pressed("up")) and (global.ice_hat_follow = false)
{
	global.ice_hat_follow = true;
	instance_create_depth(x + 10,y,399,obj_cosmetic_change);
	audio_play_sound(snd_cosmetic_change,8,false);
}

depth = 399;

if (global.ice_hat_follow = true)
{
	obj_icecube_hat.x  = obj_player.x + 44.5;
	obj_icecube_hat.y = obj_player.y - 5;
	persistent = true;
	if (input_check_pressed("down")) and (room = r_hat_room)
	{
		global.ice_hat_follow = false;
		persistent = false;
		obj_icecube_hat.x = obj_ice_return.x;
		obj_icecube_hat.y = obj_ice_return.y;
		instance_create_depth(x + 20,y - 23,399,obj_cosmetic_change);
			audio_play_sound(snd_cosmetic_change,8,false);
	}
}