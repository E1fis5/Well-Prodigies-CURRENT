var dashB_end_warning = function()
{
	sprite_index = spr_dashboost_end_warning;
}
timer_dashBoost_warning = time_source_create(time_source_game,11.5,time_source_units_seconds,dashB_end_warning,[],-1);
time_source_start(timer_dashBoost_warning);
hit_adjustment = false;
player_follow = false;
obj_player.dashBoost_forgive = 0;
//Mindsplit
obj_player.mindsplit_perfect_window = true;
//Time Sources
var mindsplit_perfect_hit = function()
{
	obj_player.mindsplit_perfect_window = false;
}
timer_mindsplit_perfect_window = time_source_create(time_source_game,1,time_source_units_seconds,mindsplit_perfect_hit,[],1);
time_source_start(timer_mindsplit_perfect_window);
//Chance
if (global.dboost_chance_active = true)
{
	sprite_index = spr_dBoost_super_spawn2;
}

if (obj_player.dashB_first_hit)
{
	sprite_index = spr_dashB_perfect_hit;	
	hit_adjustment = true;
}

if (obj_player.mindsplit_activated)
{
	sprite_index = spr_dashB_mindsplit_hit;
	hit_adjustment = true;
}
