if (obj_player.walksp >= 14)
{
	image_xscale += 0.25;
	image_yscale += 0.25;
}
if (obj_player.walksp >= 17.5)
{
	image_xscale += 0.35;
	image_yscale += 0.35;
}

audio_play_sound(snd_dash_p,8,false,1,0,choose(0.85,1.25));

if (obj_player.mindsplit_activated or obj_player.mindsplit_dash)
{
	sprite_index = spr_mindsplit_activate_dash_effect;
	image_xscale += 1.8;
	image_yscale += 1.8;
	y -= 120;
	x -= 80;
}

if (instance_exists(obj_player)) and (obj_player.dash_distance >= 235) and !(obj_player.mindsplit_activated or obj_player.mindsplit_dash)
{
	sprite_index = spr_dash_big_effect;	
}
