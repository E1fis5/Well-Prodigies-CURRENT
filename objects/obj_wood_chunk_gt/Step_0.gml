if (global.torch_active = true) and (place_meeting(x,y,obj_player)) and (input_check_pressed("up")) and (global.wood_sparked = false)
{
	global.hypothermia_amount += 10
	global.durabilty -= 1
	global.wood_sparked = true
		if (global.hypothermia_amount = 150)
		{
			global.hypothermia_amount -= 10
		}
	}
