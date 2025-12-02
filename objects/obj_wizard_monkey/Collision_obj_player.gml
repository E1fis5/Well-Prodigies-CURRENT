if (!instance_exists(obj_wizard_monk_buddy))
{
	instance_create_depth(0,0,399,obj_wizard_monk_buddy);
    time_source_pause(obj_wizard_monk_buddy.timer_monkey_buddy);
	global.wiz_buddy_active = true;
	instance_activate_object(obj_mb_monk_wiz_collision_reverse);
}
