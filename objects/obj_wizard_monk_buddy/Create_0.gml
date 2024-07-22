  var monk_buddy_destroy = function()
{
	obj_monk_wiz_collision.sprite_index = spr_switch_collisions_purple;
	instance_destroy();
	global.wiz_buddy_active = false;
}



timer_monkey_buddy = time_source_create(time_source_game,global.monkey_wiz_buddy_time,time_source_units_seconds,monk_buddy_destroy,[],1);

time_source_start(timer_monkey_buddy);

if (instance_exists(obj_monk_wiz_collision))
{
	obj_monk_wiz_collision.sprite_index = spr_switch_collision_red;
}

