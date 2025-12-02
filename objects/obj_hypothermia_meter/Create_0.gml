
heat = 300;
depth = -10000;
x = -999;
y = -999;
//Time sources
var freeze_drain = function()
{
	heat -= 10;	
	image_index += 1;
}


FreezeTimerHard = time_source_create(time_source_game,5,time_source_units_seconds,freeze_drain, [], -1);
depth = -10000;
x = -999;
y = -999;
time_source_start(FreezeTimerHard);