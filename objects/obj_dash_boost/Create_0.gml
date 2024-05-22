var dBoost_destroy = function()
{
	instance_destroy();
}

time_source_dBoost_destroy = time_source_create(time_source_game, 0.1, time_source_units_seconds,dBoost_destroy,[],1)

audio_play_sound(snd_buy,4,false);