camZoom = false;
cam_width_zoom = 960;
cam_height_zoom = 540;
cam_width_subtract = 26;
cam_height_subtract = 16
player_cam_timer_reset = 0;
var cam_zooming = function()
{
	cam_width_zoom -= cam_width_subtract;
	cam_height_zoom -= cam_height_subtract;
	cam_width_subtract -= 2.6;
	cam_height_subtract -= 1.6;
}

timer_camzoom_in = time_source_create(time_source_game,2,time_source_units_frames,cam_zooming,[],10);

var cam_zoomout = function()
{
	cam_width_zoom += cam_width_subtract;
	cam_height_zoom += cam_height_subtract;
	cam_width_subtract -= 2.6;
	cam_height_subtract -= 1.6;
}

timer_camzoom_out = time_source_create(time_source_game,2,time_source_units_frames,cam_zoomout,[],10);