depth = 100;

var glide_trail = function()
{
	instance_create_depth(x,y,99,obj_doll_glide_trail);
}
aggressive = false;
timer_glide_particles = time_source_create(time_source_game,0.2,time_source_units_seconds,glide_trail,[],-1);
target = obj_doll_room_target;
speed_value = 10
