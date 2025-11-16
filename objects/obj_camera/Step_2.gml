
//Camera w and h identification
var _camW = camera_get_view_width( view_camera[0]  );
var _camH = camera_get_view_height( view_camera[0]  );

//Center on player
if instance_exists(obj_player)
{
	x = obj_player.x - _camW/2;
	y = obj_player.y - _camH/2;
}

if (instance_exists(obj_monkey_bot) and (obj_monkey_bot.character_switched))
{
	x = obj_monkey_bot.x - _camW/2;
	y = obj_monkey_bot.y - _camH/2;
}
if instance_exists(obj_jestraught_play)
{
	x = obj_jestraught_play.x - _camW/2;
	y = obj_jestraught_play.y - _camH/2;
}


//Set camera position
camera_set_view_pos( view_camera[0], x, y);
