var i = obj_doll_room_start;
time_source_stop(i.timer_glide_particles);
instance_deactivate_object(self);
instance_destroy(obj_doll_room_start);
instance_create_depth(x,y,100,obj_doll_stationary);
global.doll_move = false;
