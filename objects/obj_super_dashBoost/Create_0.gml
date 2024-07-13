var super_dBoost_destroy = function()
{
	instance_destroy();
}

time_source_super_dBoost_destroy = time_source_create(time_source_game, 0.2, time_source_units_seconds,super_dBoost_destroy,[],1)

audio_play_sound(snd_collectable_collect,4,false);

instance_create_depth(x,y,401,obj_super_dBoost_effect);

