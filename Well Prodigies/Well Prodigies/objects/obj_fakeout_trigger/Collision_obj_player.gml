if !instance_exists(obj_fakeout)
{
  var inst = instance_create_depth(0, 0, -11000, obj_fakeout);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
}

global.fakeout_pause = true