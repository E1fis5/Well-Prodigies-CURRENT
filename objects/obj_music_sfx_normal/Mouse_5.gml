
if (mus_volume <= 0)
{
	mus_volume = 1;
}
else
{
	mus_volume -= 0.25;
}
audio_group_set_gain(groupMUS,mus_volume,0);
audio_play_sound(snd_select,3,false);