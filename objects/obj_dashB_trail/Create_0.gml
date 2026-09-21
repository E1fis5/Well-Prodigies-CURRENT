
if (instance_exists(obj_player))
{
	sprite_index = obj_player.sprite_index;
}
if (obj_player.mindsplit_activated)
{
	image_blend = choose(c_black,c_purple);
	audio_play_sound(snd_mindSpl_pulse1,5,false,0.45);
}
else
{
	image_blend = choose(c_aqua,c_navy);	
	audio_play_sound(snd_dashB_pulse1,5,false,0.3);
}
image_alpha = 0;
image_speed = 0;