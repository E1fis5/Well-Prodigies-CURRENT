//Dashscore speed
if (global.dash_amount >= 3)
{
	instance_create_depth(-9999,-9999,-10100,obj_dashJoost_counter_hit);
	if (global.dash_amount >= 8)
	{
		audio_play_sound(snd_dashscore_increase,5,false,3,0,obj_player.dshscore_sound_pitch);
	}
	else
	{
		audio_play_sound(snd_dashscore_increase,5,false,1,0,obj_player.dshscore_sound_pitch);
	}
}
if (global.dash_amount = 2)
{
	if (!instance_exists(obj_dashJoost_counter))
	{
		instance_create_depth(-9999,-9999,-10000,obj_dashJoost_counter);
	}
	global.dashscore_walksp = 0.25;
	obj_player.walksp += global.dashscore_walksp;
	audio_play_sound(snd_dashscore_increase,5,false,1,0,obj_player.dshscore_sound_pitch);
}
if (global.dash_amount = 3)
{
	global.dashscore_walksp = 0.35;
	obj_player.walksp += global.dashscore_walksp ;
}
if (global.dash_amount = 4)
{
	global.dashscore_walksp = 0.45;
	obj_player.walksp += global.dashscore_walksp;
}
if (global.dash_amount = 5)
{
	global.dashscore_walksp = 0.50;
	audio_play_sound(snd_dashscore_increase_final,4,false,0.65,0,1.25);
	obj_dashJoost_counter.image_speed = 1;
	obj_player.walksp += global.dashscore_walksp;
}
if (global.dash_amount = 6)
{
	global.dashscore_walksp = 0.50;
	obj_player.walksp += global.dashscore_walksp;
}
if (global.dash_amount = 7)
{
	global.dashscore_walksp = 0.55;
	obj_player.walksp += global.dashscore_walksp;
}
if (global.dash_amount = 8)
{
	global.dashscore_walksp = 0.55;
	obj_player.walksp += global.dashscore_walksp;
	audio_play_sound(snd_dashscore_increase_final,7,false);
	instance_create_depth(-9999,-9999,-10001,obj_dashJoost_maxxed_effect);
}
global.dashscore_additive += global.dashscore_walksp;
instance_destroy();