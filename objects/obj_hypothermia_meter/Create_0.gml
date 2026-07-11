
heat = 100;
depth = -10000;
x = -999;
y = -999;
temp_active = false;
activate_flash_orange = false;
//Time sources
var freeze_drain = function()
{
	heat -= 10;	
	audio_play_sound(snd_mindSplit_end,5,false);
	if (heat <= -10)
	{
		if (obj_player.walksp > 7)
		{
			obj_player.walksp -= 0.5;
		}
		global.health -= 1;
		global.damage = true;
		audio_play_sound(snd_player_hurt,7,false);
	}
}


FreezeTimerHard = time_source_create(time_source_game,7,time_source_units_seconds,freeze_drain, [], -1);
depth = -10000;
x = -999;
y = -999;
if (!temp_active)
{
	image_alpha = 0.4;
	image_blend = c_gray;
}

