if place_meeting(x,y,obj_player) and input_check("up") = true and (!instance_exists(obj_mb_intro_slide)) and (global.blocker_exists = false)
{
    instance_create_depth(-999,-999,-8000,obj_mb_intro_slide)
}

