var dBoost_destroy = function()
{
	instance_destroy();
}

time_source_dBoost_destroy = time_source_create(time_source_game, 0.2, time_source_units_seconds,dBoost_destroy,[],1)

audio_play_sound(snd_collectable_collect,4,false);
time_source_start(time_source_dBoost_destroy);

instance_create_depth(-999,-999,401,obj_dashBoost_effect);
