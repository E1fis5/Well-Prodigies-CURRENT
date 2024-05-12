
x = -999;
y = -999;

if (global.torch_active = true)
{
    time_source_start(global.timesource_freeze);
	time_source_stop(global.timesource_freeze_no_torch);
}
else
{
		time_source_start(global.timesource_freeze_no_torch);
		time_source_stop(global.timesource_freeze);
}


if (global.hypothermia_amount = 300)
{
	image_index = 1;
}

if (instance_exists(obj_temp_freeze2)) and (global.torch_active = true)
{
	time_source_start(global.timesource_freeze2);
	time_source_stop(global.timesource_freeze);
}

if (global.hypothermia_amount = 0)
{
        time_source_start(global.timesource_freeze_penalty);
		time_source_pause(global.timesource_freeze2);
		time_source_pause(global.timesource_freeze);
		time_source_pause(global.timesource_freeze_no_torch);
		image_index = 30;
}
else
{
	time_source_pause(global.timesource_freeze_penalty);
}