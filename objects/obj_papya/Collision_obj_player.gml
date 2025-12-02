if (global.isActive = true) and (!instance_exists(obj_bust))
{
	instance_destroy();
	instance_create_depth(x,y,-398,obj_bust);
	audio_play_sound(snd_papya_combust,8,false);
}
