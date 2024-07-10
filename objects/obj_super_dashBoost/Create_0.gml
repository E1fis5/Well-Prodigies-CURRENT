var dBoost_super_destroy = function()
{
	instance_destroy();
}

time_source_dBoost_super_destroy = time_source_create(time_source_game, 0.1, time_source_units_seconds,dBoost_super_destroy,[],1)

audio_play_sound(snd_collectable_collect,4,false);
time_source_start(time_source_dBoost_super_destroy);
instance_create_depth(-999,-999,401,obj_dBoost_super_effect);

