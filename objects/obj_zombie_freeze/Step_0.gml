if place_meeting(x,y,obj_player) && input_check("run")
{
	score += 250
	instance_destroy()
	audio_play_sound(snd_zombie_kill,5,false)
	audio_stop_sound(snd_player_hurt)
}
if (place_meeting(x,y,obj_player)) && (input_check("run") = false)
{
	score -= 150

instance_destroy();

audio_play_sound(snd_player_hurt,5,false)


global.health -= 1
}