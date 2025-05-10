
global.fallspr_deactivate = true

if (!instance_exists(obj_bomb_explosion))
{
   audio_play_sound(snd_bomb_explosion,5,false);
   audio_played = true;
   audio_played_mutiple = true
   instance_create_depth(x,y,399,obj_bomb_explosion);
}

instance_destroy();
	
	
