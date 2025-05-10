var super_dBoost_destroy = function()
{
	instance_destroy();
	instance_create_depth(x,y,-999,obj_jest_dBoost_cooldown);
}
instance_create_depth(x,y,399,obj_jest_dBoost_effect);

time_source_super_dBoost_destroy = time_source_create(time_source_game, 0.1, time_source_units_seconds,super_dBoost_destroy,[],1)

audio_play_sound(snd_collectable_collect,4,false);
time_source_stop(obj_jestraught_play.timer_jest_dBoost_create);

if (instance_exists(obj_jestraught_play))
{
	time_source_start(time_source_super_dBoost_destroy);
}
