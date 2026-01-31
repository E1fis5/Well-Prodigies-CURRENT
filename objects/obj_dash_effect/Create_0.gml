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