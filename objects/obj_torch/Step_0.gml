if (place_meeting(x,y,obj_player))
{
	instance_create_depth(-999,-999,-9999,obj_torch_hud);
	instance_destroy();
	global.torch_active = true;
	instance_create_depth(-999,-999,-10000,obj_durabilty_bar_torch);
}