
heat = 100;
depth = -10000;
x = -999;
y = -999;
activate_flash_orange = false;
//Time sources
var freeze_drain = function()
{
	heat -= 10;	
	audio_play_sound(snd_mindSplit_end,5,false);
	if (heat <= -10)
	{
		obj_player.walksp -= 1;
		global.health -= 1;
		global.damage = true;
		audio_play_sound(snd_player_hurt,7,false);
	}
}


FreezeTimerHard = time_source_create(time_source_game,7,time_source_units_seconds,freeze_drain, [], -1);
depth = -10000;
x = -999;
y = -999;
time_source_start(FreezeTimerHard);