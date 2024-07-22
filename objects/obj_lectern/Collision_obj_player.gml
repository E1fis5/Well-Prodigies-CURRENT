if (input_check_pressed("up")) and (!instance_exists(obj_scorebook))
{
	global.scorebook_active = true
	instance_create_depth(-999,-999,-9999,obj_scorebook)
	{
		obj_player.walksp = 0
		obj_player.can_dash = false
		obj_player.canJump = 0
	}
}






