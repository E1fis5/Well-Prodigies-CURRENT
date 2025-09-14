x = -999;
y = -999;

///Fade Creation
var fade_creation = function()
{
	instance_create_depth(-999,-999,-10000,obj_escape_fade_top);	
	instance_create_depth(-999,-999,-10000,obj_escape_fade_bottom);	
}

timer_fade_creation = time_source_create(time_source_game,0.8,time_source_units_seconds,fade_creation,[],1);

time_source_start(timer_fade_creation);