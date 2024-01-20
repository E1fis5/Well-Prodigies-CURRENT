if (sprite_index = spr_playerwalk or spr_playerwalkleft)
{
	 audio_play_sound(choose(snd_footstep1,snd_footstep2,snd_footstep3),1,false)
}




if (sprite_index = spr_playerwalk or spr_playerwalkleft and global._keyShift = true) 
{
	audio_play_sound(choose(snd_footstep_run,snd_footstep_run2,snd_footstep_run3),2,false)
	audio_stop_sound(snd_footstep1)
	audio_stop_sound(snd_footstep2)
	audio_stop_sound(snd_footstep3)
}