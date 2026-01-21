if(!quick_button_end){
	var xx=random_range(-1,1);
	var yy=random_range(-1,1);
	draw_sprite_ext(s_hud_quick_time_button,button_index,((global.cw/2)+xx)-30,((global.ch/2)+yy)+26,1,1,0,c_white,1);
}