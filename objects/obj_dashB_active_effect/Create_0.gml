var dashB_end_warning = function()
{
	sprite_index = spr_dashboost_end_warning;
}
timer_dashBoost_warning = time_source_create(time_source_game,11.5,time_source_units_seconds,dashB_end_warning,[],-1);
time_source_start(timer_dashBoost_warning);


if (global.dboost_chance_active = true)
{
	sprite_index = spr_dBoost_super_spawn2;
}