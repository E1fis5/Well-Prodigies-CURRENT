//Grave Destroy
	if (global.grave_arise)
	{
		instance_destroy(obj_gt_gravestones);
		audio_play_sound(snd_rock_break,7,false,1.5);
	}
	