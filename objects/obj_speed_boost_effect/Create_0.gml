global.walksp_boost_additive = 0.60;

var voodoo_boost = function()
{
	global.walksp_boost_additive += 0.4;
	audio_play_sound(snd_buy,5,false);
}

global.voodoo_boost_walksp = time_source_create(time_source_game,120,time_source_units_seconds,voodoo_boost,[],5);


depth = 399;
