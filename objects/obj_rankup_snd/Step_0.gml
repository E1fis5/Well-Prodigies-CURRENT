if (!audio_exists(snd_rank_up))
{
	audio_play_sound(snd_rank_up,7,false);
	instance_destroy();
}