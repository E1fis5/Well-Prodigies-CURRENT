
if (sfx_volume <= 0)
{
	sfx_volume = 1;
}
else
{
	sfx_volume -= 0.25;
}
audio_group_set_gain(groupSFX,sfx_volume,0);
audio_play_sound(snd_select,3,false);