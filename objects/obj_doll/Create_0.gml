var doll_boost_destroy = function()
{
	instance_destroy(obj_doll_boosts);
	global.doll_ability_active = false;
	time_source_stop(global.doll_boost_destroy);
	sprite_index = spr_happy_luigi;
	audio_play_sound(snd_ability_wearoff,6,false);
}

var doll_follow = function()
{
	x = obj_player.x;
    y = obj_player.y;
}
global.doll_ability_active = false;
global.abilityscore = 0;
global.doll_follow = time_source_create(time_source_game,0.01,time_source_units_seconds,doll_follow,[],-1)
global.doll_boost_destroy = time_source_create(time_source_game,15,time_source_units_seconds,doll_boost_destroy,[],1)

time_source_start(global.doll_follow);