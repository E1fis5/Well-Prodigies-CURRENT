if (place_meeting(x,y,obj_player))
{
		draw_text(x + 60,y - 25,global.spend_amount);
	draw_sprite(spr_hub_currency, 1, x, y -225);
}

draw_self();