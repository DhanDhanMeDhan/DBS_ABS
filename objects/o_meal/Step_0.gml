if(global.pause) exit;
x=o_camera.x;
y=o_camera.y;

var _bg_value;
var _spr_option_offset=8;
var _spr_option_w=sprite_get_width(s_hud_meal_option);
var _spr_border_w=sprite_get_width(s_hud_meal_border);
if(!meal_showed){
	_bg_value=.005;
	if(bg_color_fade>=1){
		scr_inputs();
		if(plates_a<=1) plates_a+=.025;
		plates_y=lerp(plates_y,global.ch/2,.05);
		
		meal_border_xx=lerp(meal_border_xx,(_spr_option_offset*2)+_spr_option_w,.05);
		if(!audio_played)and(!audio_is_playing(sfx_004)){
			audio_play_sound(sfx_004,5,false);
			audio_played=true;
		}
		meal_option+=(global.input_select_right-global.input_select_left);
		meal_option=clamp(meal_option,0,1);
		if(meal_option=0){
			meal_options_yy[0]=lerp(meal_options_yy[0],(global.ch-(global.ch/4))-16,.15);
			meal_options_yy[1]=lerp(meal_options_yy[1],global.ch-(global.ch/4),.15);	
		}else{
			meal_options_yy[0]=lerp(meal_options_yy[0],global.ch-(global.ch/4),.15);
			meal_options_yy[1]=lerp(meal_options_yy[1],(global.ch-(global.ch/4))-16,.15);
		}
		if(meal_menu)and(global.input_cancel){meal_menu=false;}
		if(global.input_confirm){
			if(meal_option=0){
				meal_menu=!meal_menu;
			}else{
				meal_showed=true;
				meal_menu=false;
			}
		}
		if(meal_menu){
			var _display_hh=global.ch+(global.ch/2),_display_hh_limt=_display_hh-(global.ch-(global.ch/4));
			display_yy-=(global.input_move_down-global.input_move_up)*5;
			display_yy=clamp(display_yy,-_display_hh_limt,0);
		}
	}else{
		meal_border_xx=lerp(meal_border_xx,-_spr_border_w,.05);
		plates_y=0;
	}
}else{
	_bg_value=-.005;
	if(plates_a>=0) plates_a-=.025;
	plates_y=lerp(plates_y,global.ch,.05);
	var _
	meal_border_xx=lerp(meal_border_xx,-_spr_border_w,.05);
	if(bg_color_fade<=0){
		if(!instance_exists(o_cutscene)){
			scr_cutscene_create(t_cutscene_play);
		}
	}
}
bg_color_fade+=_bg_value;
bg_color_fade=clamp(bg_color_fade,0,1);

/*
if(!meal_showed){
	plates_x=global.cw/2;
	if(bg_color_fade<=1){
		bg_color_fade+=.005;
		plates_y=0;
	}//else{
		//bg_color_fade=1;
		//plates_y=lerp(plates_y,global.ch/2,.15);
		//if(plates_a<=1){plates_a+=.025;}
		//if(!audio_played)and(!audio_is_playing(sfx_004)){
		//	audio_play_sound(sfx_004,5,false);
		//	audio_played=true;
		//}
		
		//scr_inputs();
		//if(global.input_confirm){
		//	meal_showed=true;
		//}
	//}
}else{
	if(bg_color_fade>=0){
		bg_color_fade-=.005;
		if(plates_a>=0){plates_a-=.025;}
		plates_y=lerp(plates_y,global.ch,.15);
	}else{
		instance_destroy();
	}
}
c1=merge_color(make_color_rgb(36,34,52),c_white,.2);