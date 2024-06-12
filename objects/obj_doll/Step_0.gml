x = obj_player.x;

y = obj_player.y;

if (global.abilityscore = 150) and (input_check("ability")) and (!instance_exists(obj_doll_boosts))
{
	instance_create_depth(x,y,-999,obj_doll_boosts);
    time_source_start(global.doll_boost_destroy);
	global.doll_ability_active = true;
	sprite_index = spr_angry_luigi;
	audio_play_sound(snd_ability_use,6,false);
}