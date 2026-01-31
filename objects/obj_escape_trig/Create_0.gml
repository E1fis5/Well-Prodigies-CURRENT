audio_played = false;
image_alpha = 0
var impact_disable = function()
{
	layer_set_visible("Escape_Impact",0);
	layer_set_visible("Impact_Color",0);
	obj_player.image_blend = c_white;
	obj_player.depth = 400;
	image_blend = c_purple;
	depth = 399;
	image_speed = 0.4;
	obj_collision_wall.image_blend = c_white;
	obj_collision_wall.depth = 999;
	obj_collision_wall.image_alpha = 0.8;
	instance_destroy(obj_hide_hud);
	impact = false;
	if (instance_exists(obj_escape_timer))
	{
		obj_escape_timer.image_blend = c_white;
	}
}
depth = 399;
hp = 10;
impact = false;
targetrm_alpha = 0
timer_escape_impact_disable = time_source_create(time_source_game,0.8,time_source_units_seconds,impact_disable,[],1);