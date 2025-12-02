if (text_draw = true) and (input_check("jump"))
{
if !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
}



	global.gamemode_hard = true
}

text_draw = true

