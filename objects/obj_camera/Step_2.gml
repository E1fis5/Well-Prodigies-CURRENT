
//Camera w and h identification
var _camW = camera_get_view_width( view_camera[0]  );
var _camH = camera_get_view_height( view_camera[0]  );

//Center on player
if instance_exists(obj_player)
{
	x = obj_player.x - _camW/2;
	y = obj_player.y - _camH/2;
}

//Set camera position
camera_set_view_pos( view_camera[0], x, y);

x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));