if (global.keycard_blocker_destroy = true) and (!instance_exists(obj_keycard_blocker_close))
{
	instance_destroy();
	instance_create_depth(x,y,401,obj_keycard_blocker_close);
	audio_play_sound(snd_put_it_in_the_monkey,7,false);
}