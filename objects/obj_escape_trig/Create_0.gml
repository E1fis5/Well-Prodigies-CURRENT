audio_played = false;
image_alpha = 0
var impact_disable = function()
{
	layer_set_visible("Escape_Impact",0);
	layer_set_visible("Impact_Color",0);
	obj_player.image_blend = c_white;
	obj_player.depth = 400;
	instance_destroy(obj_hide_hud);
	impact = false;
}
hp = 10;
impact = false;
targetrm_alpha = 0
timer_escape_impact_disable = time_source_create(time_source_game,0.1,time_source_units_seconds,impact_disable,[],1);