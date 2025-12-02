
if (!place_meeting(x,y,obj_player)) and (instance_exists(obj_wizard_monk_buddy))
{
	time_source_resume(obj_wizard_monk_buddy.timer_monkey_buddy);
}