if (global.banana_mb_active = true) and (place_meeting(x,y,obj_player)) and (input_check("up"))
{
	instance_create_depth(obj_gorilla.x,obj_gorilla.y,401,obj_bigdiamond);
	audio_play_sound(snd_monkey_kill,6,false);
	global.banana_mb_active = false;
}