if (place_meeting(x,y,obj_player)) and (!instance_exists(obj_gt_wind_warning))
{
	instance_create_depth(-999,999,-9999,obj_gt_wind_warning);
}

if (instance_exists(obj_gt_wind_warning))
{
	instance_destroy();
}