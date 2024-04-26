if place_meeting(x,y,obj_player) && input_check("run") = true
{
	score += 100
	instance_destroy()
	audio_play_sound(snd_zombie_kill,5,false)
}