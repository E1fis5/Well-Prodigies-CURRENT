depth = -9998
x = -999;

y = -999;
//Image Scale Decrease
var image_scale_decrease = function()
{
	image_xscale -= 0.02;
	image_yscale -= 0.02;
}
//Hud Explosion Chain
var hud_explosion_chain = function()
{
	if (instance_exists(obj_sanitymeter))
	{
		audio_play_sound(snd_rock_break,7,false);
		instance_create_depth(-999,-999,-10000,obj_hud_explosion_effect);
		obj_hud_explosion_effect.hud_explosion_targetx = -50;
		obj_hud_explosion_effect.hud_explosion_targety = 9;
		time_source_start(obj_sanitymeter.timer_hud_explosion_press);
		instance_destroy(obj_sanitymeter);
		instance_destroy(obj_sanity_bg);
		obj_gameover_effect.image_alpha = 0.6;
	}
}
timer_mode_switch_size = time_source_create(time_source_game,0.05,time_source_units_seconds,image_scale_decrease,[],10);
timer_hud_explosion_chain_sanity = time_source_create(time_source_game,3,time_source_units_seconds,hud_explosion_chain,[],1);