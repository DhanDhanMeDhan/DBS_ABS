var _c0=c_black,_c1=make_color_rgb(36,34,52);
if(minigame_draw_gui){
	//black_screen=============================================
	
	draw_set_alpha(.5);
	draw_rectangle_color(0,0,global.cw,global.ch,_c0,_c0,_c0,_c0,false);
	//creating_the_surface=====================================
	draw_set_alpha(1);
	if(!surface_exists(minigame_screen)){
		minigame_screen=surface_create(508,288);
	}else{
		var _s_w=surface_get_width(minigame_screen);
		var _s_h=surface_get_height(minigame_screen);
		surface_set_target(minigame_screen);
		draw_clear_alpha(c_black,0);
		//draw_minigame============================================
		#region
			scr_minigame(minigame,_s_w,_s_h);
			//switch minigame{
			//	case minigame_set.love_letter:
			//		if(minigame_spr=-1){minigame_spr=s_hud_minigame_loveletter_wiwi_1; minigame_sbg=0;}
			//		if(_words=-1){event_perform(ev_other,ev_user0)}
			//		scr_minigame_loveletter(_s_w,_s_h);
			//		break;
			//}
		#endregion
		//draw_bars================================================
		draw_set_alpha(1);
		draw_rectangle_color(0,0,_s_w,minigame_bars[0][0],_c1,_c1,_c1,_c1,false);
		draw_rectangle_color(0,minigame_bars[1][0],_s_w,_s_h,_c1,_c1,_c1,_c1,false);
		surface_reset_target();
		draw_surface_ext(minigame_screen,(global.cw/2)-(_s_w/2),(global.ch/2)-((_s_h/2)-(53/2)),1,1,0,c_white,1);
	}
	//draw_frame===============================================
	draw_sprite_ext(s_hud_minigame_portrait,0,global.cw/2,global.ch/2,1,1,0,c_white,1);
}
draw_sprite_ext(s_hud_minigame_curtain,curtain_frm,curtain_xx[0],0,1,1,0,c_white,1);
draw_sprite_ext(s_hud_minigame_curtain,curtain_frm,curtain_xx[1],0,-1,1,0,c_white,1);
//draw_text_color(50,16,string(minigame_level[0]),_c0,_c0,_c0,_c0,1);
//draw_text_color(50,16*2,string(minigame_level[1]),_c0,_c0,_c0,_c0,1);
//draw_text_color(50,16*3,string(minigame_level[2]),_c0,_c0,_c0,_c0,1);
//draw_text_color(50,16*4,string(minigame_level[3]),_c0,_c0,_c0,_c0,1);
//draw_text_color(50,16*5,string(minigame_start),_c0,_c0,_c0,_c0,1);
//draw_text_color(50,16*6,string(minigame_seting),_c0,_c0,_c0,_c0,1);