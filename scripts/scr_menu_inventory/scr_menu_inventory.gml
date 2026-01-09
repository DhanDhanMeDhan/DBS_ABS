function scr_menu_inventory(xx,yy,inventory){
	//============================================================
	//variables
	//============================================================
	#region
	var _ww=sprite_get_width(s_hud_pause_inventory_bg_1)-(xx+45+16);
	var _inv_size=array_length(inventory),_y_text_add=0,_y_offset=4;
	var _c1=c_black//make_color_rgb(245,160,151);
	#endregion
	//============================================================
	//drawing the background
	//============================================================
	#region
	draw_set_valign(fa_top); draw_set_halign(fa_left);
	for(var i=0;i<_inv_size;i++;){
		//draw_text_color(xx+8,yy+_y_text_add,string(i),_c1,_c1,_c1,_c1,1);
		draw_sprite_ext(s_hud_pause__inventory_dot,0,xx-4,yy+_y_text_add+(global.font_talk_size/2),1,1,0,_c1,1);
		draw_text_color(xx+24,yy+_y_text_add,inventory[i][0][global.lang],_c1,_c1,_c1,_c1,1);
		_y_text_add+=global.font_talk_size+_y_offset;
	}
	
	#endregion
}