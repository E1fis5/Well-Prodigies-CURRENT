
depth = -9999;
ability_selected = false;
x = -999;
y = -999;
//Image Scale Decrease
var image_scale_decrease = function()
{
	image_xscale -= 0.02;
	image_yscale -= 0.02;
}
timer_mode_switch_size = time_source_create(time_source_game,0.05,time_source_units_seconds,image_scale_decrease,[],10);
