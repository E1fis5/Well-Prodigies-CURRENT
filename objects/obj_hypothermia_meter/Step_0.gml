//Overheat
if (heat >= 101)
{
	heat = 100;
	global.health -= 2;
	global.damage = true;
	audio_play_sound(snd_player_hurt,5,false);
}

if (heat <= 0)
{
	image_index = 9;
	image_blend = c_aqua;
}
else
{
	image_blend = c_white;
}
