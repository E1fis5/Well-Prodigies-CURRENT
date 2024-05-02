
x = -999;
y = -999;

if (global.torch_active = true)
{
    time_source_start(timesource_freeze);
	time_source_stop(timesource_freeze_no_torch);
}
else
{
		time_source_start(timesource_freeze_no_torch);
		time_source_stop(timesource_freeze);
}


if (global.hypothermia_amount = 300)
{
	image_index = 1;
}

if (instance_exists(obj_temp_freeze2)) and (global.torch_active = true)
{
	time_source_start(timesource_freeze2);
	time_source_stop(timesource_freeze);
}