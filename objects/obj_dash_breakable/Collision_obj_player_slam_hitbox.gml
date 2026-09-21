if (obj_player.vsp_max_wall >= 18)
{
	instance_create_depth(x,y,399,obj_dash_block_effect);
	instance_destroy();
	audio_play_sound(snd_dash_block_break,4,false);	
}