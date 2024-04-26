var breakable_create = function()
{
	instance_create_depth(x,y,150,obj_breakable)
}

time_Breakable = time_source_create(time_source_game,1,time_source_units_seconds,breakable_create,[],-1)