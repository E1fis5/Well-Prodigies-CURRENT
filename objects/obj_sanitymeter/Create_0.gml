global.sanity = 65
var sanity_drain = function()
{
	global.sanity -= 10
}
sanityTimerNormal = time_source_create(time_source_game,30,time_source_units_seconds,sanity_drain, [], -1);


sanityTimerHard = time_source_create(time_source_game,25,time_source_units_seconds,sanity_drain, [], -1);

sanityTimerSimple = time_source_create(time_source_game,35,time_source_units_seconds,sanity_drain, [], -1);


if (global.gamemode_hard = true)
{
	time_source_start(sanityTimerHard)
	time_source_stop(sanityTimerSimple)
	time_source_stop(sanityTimerNormal)
}

if (global.gamemode_easy = true)
{
	time_source_start(sanityTimerSimple)
	time_source_stop(sanityTimerHard)
	time_source_stop(sanityTimerNormal)
}

if (global.gamemode_normal = true)
{
	time_source_start(sanityTimerNormal)
	time_source_stop(sanityTimerSimple)
	time_source_stop(sanityTimerHard)
}