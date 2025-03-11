global.sanity = 210
global.sanity_Prank_switch = false;
var sanity_drain = function()
{
	global.sanity -= 10;
}

sanityTimerHard = time_source_create(time_source_game,11.5,time_source_units_seconds,sanity_drain, [], -1);

depth = -10000;
x = -999;
y = -999;
time_source_start(sanityTimerHard);