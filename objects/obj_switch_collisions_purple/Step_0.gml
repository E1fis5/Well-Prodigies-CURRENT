if (global.switch_purple = true)
{
	instance_destroy();
	instance_create_depth(x,y,401,obj_switch_collision_trans);
	audio_play_sound(snd_put_it_in_the_monkey,4,false);
}

