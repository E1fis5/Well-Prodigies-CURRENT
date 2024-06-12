var doll_boost_destroy = function()
{
	instance_destroy(obj_doll_boosts);
	global.doll_ability_active = false;
	time_source_stop(global.doll_boost_destroy);
	sprite_index = spr_happy_luigi;
	audio_play_sound(snd_ability_wearoff,6,false);
}
global.doll_ability_active = false;

global.doll_boost_destroy = time_source_create(time_source_game,12,time_source_units_seconds,doll_boost_destroy,[],1)
