var magnet_ability_end = function()
{
	global.magnet_collect_strong_pull = false;
	global.magnet_collect_pull = true;
	audio_play_sound(snd_freeze_damage,6,false);
}

global.timer_magnet_end = time_source_create(time_source_game,25,time_source_units_seconds,magnet_ability_end,[],1)



depth = 399;
if (!instance_exists(obj_ability_bar))
{
	instance_create_depth(0,0,-9999,obj_ability_bar);
}