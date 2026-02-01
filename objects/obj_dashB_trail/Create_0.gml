audio_play_sound(snd_dashBoost_create,3,false,0.3);
if (instance_exists(obj_player))
{
	sprite_index = obj_player.sprite_index;
}
image_blend = choose(c_aqua,c_navy);
image_alpha = 1;