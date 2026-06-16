global.walksp_boost_additive = 1;
walksp_voodoo_boost = 0.25;
voodoo_boost_max = 0;
var voodoo_boost = function()
{
	voodoo_boost_max += 1;
	audio_play_sound(snd_buy,5,false);
	obj_player.walksp += walksp_voodoo_boost;
}

global.voodoo_boost_walksp = time_source_create(time_source_game,60,time_source_units_seconds,voodoo_boost,[],8);


depth = 399;
