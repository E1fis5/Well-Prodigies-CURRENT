if (global.torch_active = true) and (place_meeting(x,y,obj_player)) and (input_check_pressed("up"))
{
	global.hypothermia_amount += 10
		if (global.hypothermia_amount = 150)
		{
			global.hypothermia_amount -= 10
		}
	}
