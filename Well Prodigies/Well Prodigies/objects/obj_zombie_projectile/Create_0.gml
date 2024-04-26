instance_create_depth(x,y,590,obj_enemy_sight)

var projectile_zombie_trigger = function()
{
	instance_create_depth(x,y,200,obj_enemy_projectile)
}
global.projectile_timer = time_source_create(time_source_game,2,time_source_units_seconds,projectile_zombie_trigger, [], -1);

