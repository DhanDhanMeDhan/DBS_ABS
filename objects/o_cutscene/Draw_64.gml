//============================================================
//cutscene drawing
//============================================================
draw_set_font(fnt_talk);
draw_set_alpha(1);
//============================================================
//flash
//============================================================
var _c=c_white;
draw_set_alpha(cutscene_set_flash_alpha);
draw_rectangle_color(0,0,global.cw,global.ch,_c,_c,_c,_c,false);
draw_set_alpha(1);
//============================================================
//bars
//============================================================
#region
var _c=make_color_rgb(36,34,52);
draw_rectangle_color(0,0,global.cw,cutscene_bars_up,_c,_c,_c,_c,false);
draw_rectangle_color(0,cutscene_bars_bottom,global.cw,global.ch,_c,_c,_c,_c,false);
#endregion
//============================================================
//transition
//============================================================
#region
//var _c=cutscene_transition_set_color;
//draw_set_alpha(cutscene_transition_set_alpha);
//draw_rectangle_color(0,0,global.cw,cutscene_transition_up,_c,_c,_c,_c,false);
//draw_rectangle_color(0,cutscene_transition_bottom,global.cw,global.ch,_c,_c,_c,_c,false);
//draw_set_alpha(1);
#endregion
//============================================================
//transition
//============================================================
#region
if(cutscene_circle_set){
	if(!surface_exists(cutscene_circle_surf)){
		cutscene_circle_surf=surface_create(global.cw,global.ch);
	}else{
		
		cutscene_circle_y=cutscene_circle_y+sin(cutscene_circle_timer_y*0.07)*.1;
		cutscene_circle_x=cutscene_circle_x+sin(cutscene_circle_timer_x*0.07)*.1;
		cutscene_circle_timer_x++;
		cutscene_circle_timer_y+=2;
		
		var _c=cutscene_circle_color;
		surface_set_target(cutscene_circle_surf);
		draw_clear_alpha(_c,1)
		gpu_set_blendmode(bm_subtract);
		draw_circle((cutscene_circle_xx+cutscene_circle_x)-global.cx,(cutscene_circle_yy+cutscene_circle_y)-global.cy,cutscene_circle_radius,false);
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
		draw_surface(cutscene_circle_surf,0,0);
	}
}
#endregion
//============================================================
//item
//============================================================
#region
if(cutscene_item_draw){
	var _c2=make_color_rgb(245,160,151);
	var _item_y_offset=global.ch/8;
	if(!cutscene_item_skip){
		if(cutscene_item_alpha_bg<=.5)cutscene_item_alpha_bg+=.015;
		if(cutscene_item_alpha<=1)cutscene_item_alpha+=.015;
		cutscene_item_draw_yy_1=lerp(cutscene_item_draw_yy_1,(global.ch/2)-_item_y_offset,.05);
		cutscene_item_draw_yy_2=lerp(cutscene_item_draw_yy_2,((global.ch/2)+global.ch/3)-_item_y_offset,.05);
	}else{
		if(cutscene_item_alpha_bg>=0)cutscene_item_alpha_bg-=.015;
		if(cutscene_item_alpha>=0){cutscene_item_alpha-=.015;}else{cutscene_item_draw=false;}
		cutscene_item_draw_yy_1=lerp(cutscene_item_draw_yy_1,(global.ch/2)+(global.ch/3),.05);
		cutscene_item_draw_yy_2=lerp(cutscene_item_draw_yy_2,global.ch/2,.05);
	}
	draw_sprite_stretched_ext(s_hud_pixel,0,0,0,global.cw,global.ch,c_black,cutscene_item_alpha_bg);
	draw_sprite_ext(s_hud_pause_inventory_bg_2,0,global.cw/2,cutscene_item_draw_yy_1,1,1,0,c_white,cutscene_item_alpha);
	draw_sprite_ext(s_hud_pause_inventory_bg_3,0,global.cw/2,cutscene_item_draw_yy_2,1,1,0,c_white,cutscene_item_alpha);
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	draw_set_font(fnt_carte);
	draw_text_color((global.cw/2),cutscene_item_draw_yy_2,cutscene_item_name,_c2,_c2,_c2,_c2,cutscene_item_alpha);
	draw_set_valign(fa_top);draw_set_halign(fa_left);
}
#endregion
//============================================================
//dialogue
//============================================================
#region
//normal text box=============================================
#region
if(cutscene_set_dialg){
	draw_set_font(global.font_talk);
	draw_set_valign(fa_top);draw_set_halign(fa_left);
	
	#region
	//draw_set_font(global.font_talk);
	//draw_set_valign(fa_top);draw_set_halign(fa_left);
	//var _text;
	
	//var _c1=make_color_rgb(36,34,52), _c2=make_color_rgb(232,104,115);
	//var _text_speach=sprite_get_height(s_hud_talk_box_1_3);
	//var _text_ww=string_width_ext(cutscene_text_dialg,cutscene_text_line,cutscene_text_ww);
	//var _text_wh=string_height_ext(cutscene_text_dialg,cutscene_text_line,cutscene_text_ww);
	//var _text_xx=(cutscene_obj.x)-((_text_ww/2)+cutscene_text_border);
	//var _text_yy=(cutscene_obj.y-cutscene_obj.sprite_height)-(_text_wh+24);
	//var _name_ww=string_width(cutscene_text_name);
	
	//var _val1=(_text_ww+cutscene_text_border*2);
	//var _val2=_name_ww+cutscene_text_border;
	//var _box_ww;
	//if(_text_ww<_name_ww){
	//	_box_ww=_val2+cutscene_text_border;
	//	_text_xx=(cutscene_obj.x)-(_box_ww/2);
	//}else{
	//	_box_ww=_val1;
	//}
	//#region
	///*
	//for(var i=0;i<cutscene_text_lenght;i++){
	//	var _char_pos=i+1;
	//	cutscene_text_letter[i]=string_char_at(cutscene_text_dialg,_char_pos);
	//	_text=string_copy(cutscene_text_dialg,1,_char_pos);
	//	var _current_text_w=string_width(_text)-string_width(cutscene_text_letter[i]);
	//	if(cutscene_text_letter[i]==" "){cutscene_text_last_free_space=_char_pos+1;}
		
	//	if(_current_text_w-cutscene_text_line_break_offset>cutscene_text_ww){
	//		cutscene_text_line_break_pos[cutscene_text_line_break_num]=cutscene_text_last_free_space;
	//		cutscene_text_line_break_num++;
	//		var _text_up_to_last_space=string_copy(cutscene_text_dialg,1,cutscene_text_last_free_space);
	//		var _last_free_space_string=string_char_at(cutscene_text_dialg,cutscene_text_last_free_space);
	//		cutscene_text_line_break_offset=string_width(_text_up_to_last_space)-string_width(_last_free_space_string)
	//	}
	//}
	//*/
	//#endregion
	//#region
	///*
	//for(var i=0;i<cutscene_text_lenght;i++){
	//	var _char_pos=i+1;
	//	var _txt_x=_text_xx+cutscene_text_border;
	//	var _txt_y=_text_yy+cutscene_text_border;
	//	_text=string_copy(cutscene_text_dialg,1,_char_pos);
	//	var _current_text_w=string_width(_text)-string_width(cutscene_text_letter[i]);
	//	var _txt_line=0;
	//	for(var lb=0;lb<cutscene_text_line_break_num;lb++){
	//		if(_char_pos>=cutscene_text_line_break_pos[lb]){
	//			var _str_copy=string_copy(cutscene_text_dialg,cutscene_text_line_break_pos[lb],_char_pos-cutscene_text_line_break_pos[lb]);
	//			_current_text_w=string_width(_str_copy);
	//			_txt_line=lb+1;
	//		}
	//	}
	//	cutscene_text_letter_x[i]=_txt_x+_current_text_w;
	//	cutscene_text_letter_y[i]=_txt_y+_txt_line*cutscene_text_line;
		
	//}
	//*/
	//#endregion
	//draw_sprite_stretched_ext(s_hud_talk_box_1_1,0,_text_xx-global.cx,_text_yy-global.cy,
	//_box_ww,
	//(_text_wh+cutscene_text_border*2),
	//c_white,1
	//);
	
	
	
	//draw_sprite_stretched_ext(s_hud_talk_box_1_2,0,(_text_xx+4)-global.cx,(_text_yy-(cutscene_text_line+3))-global.cy,_name_ww+cutscene_text_border,cutscene_text_line+4,c_white,1);
	//draw_text_ext_color((_text_xx+cutscene_text_border)-global.cx,(_text_yy-cutscene_text_line)-global.cy,cutscene_text_name,cutscene_text_line,_text_ww,_c2,_c2,_c2,_c2,1);
	
	//draw_sprite(s_hud_talk_box_1_3,0,(cutscene_obj.x-1)-global.cx,(cutscene_obj.y-(cutscene_obj.sprite_height+9))-global.cy);
	//for(var i=0;i<cutscene_text_char;i++){
	//	draw_text_color(cutscene_text_letter_x[i]-global.cx,cutscene_text_letter_y[i]-global.cy,cutscene_text_letter[i],_c1,_c1,_c1,_c1,1);
	//	//show_debug_message(string(cutscene_text_letter[i]));
	//}
	////draw_text_ext_color((_text_xx+cutscene_text_border)-global.cx,(_text_yy+cutscene_text_border)-global.cy,_text,cutscene_text_line,cutscene_text_ww,_c1,_c1,_c1,_c1,1);
	#endregion
	
	var _text=string_copy(cutscene_text_dialg,1,cutscene_text_char);
	var _c1=make_color_rgb(36,34,52), _c2=make_color_rgb(232,104,115);
	var _text_speach=sprite_get_height(s_hud_talk_box_1_3);
	
	if(string_height_ext(_text,cutscene_text_line,150)>200){
		cutscene_text_ww=450
	}else{
		cutscene_text_ww=150
	}
	var _text_wh=string_height_ext(_text,cutscene_text_line,cutscene_text_ww);
	var _text_ww=string_width_ext(cutscene_text_dialg,cutscene_text_line,cutscene_text_ww);
	
	var _text_xx=(cutscene_obj.x)-((_text_ww/2)+cutscene_text_border);
	var _text_yy_offset=2;
	var _text_yy=(cutscene_obj.y-(cutscene_obj.sprite_height+_text_yy_offset))-(_text_wh+24);
	var _name_ww=string_width(cutscene_text_name);
	
	var _val1=(_text_ww+cutscene_text_border*2);
	var _val2=_name_ww+cutscene_text_border;
	var _box_ww;
	if(_text_ww<_name_ww){
		_box_ww=_val2+cutscene_text_border;
		_text_xx=(cutscene_obj.x)-(_box_ww/2);
	}else{
		_box_ww=_val1;
	}
	
	draw_sprite_stretched_ext(s_hud_talk_box_1_1,0,_text_xx-global.cx,_text_yy-global.cy,
	_box_ww,
	(_text_wh+cutscene_text_border*2),
	c_white,1
	);
	
	draw_sprite_stretched_ext(s_hud_talk_box_1_2,0,(_text_xx+4)-global.cx,(_text_yy-(cutscene_text_line+3))-global.cy,_name_ww+cutscene_text_border,cutscene_text_line+4,c_white,1);
	draw_text_color((_text_xx+cutscene_text_border)-global.cx,(_text_yy-cutscene_text_line)-global.cy,cutscene_text_name,_c2,_c2,_c2,_c2,1);
	
	draw_sprite(s_hud_talk_box_1_3,0,(cutscene_obj.x-1)-global.cx,(cutscene_obj.y-(cutscene_obj.sprite_height+9+_text_yy_offset))-global.cy);
	draw_text_ext_color((_text_xx+cutscene_text_border)-global.cx,(_text_yy+cutscene_text_border)-global.cy,_text,cutscene_text_line,cutscene_text_ww,_c1,_c1,_c1,_c1,1);
}
#endregion
//custom text box=============================================
#region
if(cutscene_custom_text){
	var _text=string_copy(cutscene_text_dialg,1,cutscene_text_char);
	var _c1=cutscene_custom_text_color, _c2=make_color_rgb(232,104,115);
	var _text_speach=sprite_get_height(s_hud_talk_box_1_3);
	var _text_ww=string_width_ext(cutscene_text_dialg,cutscene_text_line,cutscene_custom_text_ww);
	var _text_wh=string_height_ext(_text,cutscene_text_line,cutscene_custom_text_ww);
	var _text_xx=cutscene_custom_text_xx;//(cutscene_custom_text_xx)-((_text_ww/2)+cutscene_text_border);
	var _text_yy_offset=0;
	var _text_yy=cutscene_custom_text_yy;//(cutscene_custom_text_yy+_text_yy_offset)-(_text_wh+24);
	var _name_ww=string_width(cutscene_text_name);
	
	var _val1=(_text_ww+cutscene_text_border*2);
	var _val2=_name_ww+cutscene_text_border;
	var _box_ww;
	if(cutscene_custom_text_show_bg){
		if(_text_ww<_name_ww){
			_box_ww=_val2+cutscene_text_border;
			//_text_xx=(cutscene_custom_text_xx)-(_box_ww/2);
		}else{
			_box_ww=_val1;
			//_text_xx=(cutscene_custom_text_xx);
		}
	}else{
		_text_xx=cutscene_custom_text_xx;
	}
	
	
	if(cutscene_custom_text_show_bg){
		draw_sprite_stretched_ext(s_hud_talk_box_1_1,0,(_text_xx-(_box_ww/2)),(_text_yy-(_text_wh/2)),
		_box_ww,
		(_text_wh+cutscene_text_border*2),
		c_white,1
		);
		_text_yy_offset=8;
		draw_set_valign(fa_top);draw_set_halign(fa_left);
		draw_text_ext_color((_text_xx-(_text_ww/2)),(cutscene_custom_text_yy+_text_yy_offset)-(_text_wh/2),_text,cutscene_text_line,cutscene_custom_text_ww,_c1,_c1,_c1,_c1,1);
	    draw_set_valign(fa_top);draw_set_halign(fa_left);
	}else{
		draw_set_valign(fa_middle);draw_set_halign(fa_center);
		_text_yy_offset=0;
		draw_text_ext_color((cutscene_custom_text_xx),(cutscene_custom_text_yy+_text_yy_offset),_text,cutscene_text_line,cutscene_custom_text_ww,_c1,_c1,_c1,_c1,1);
		draw_set_valign(fa_top);draw_set_halign(fa_left);
	}
	if(cutscene_custom_text_show_name){
		draw_set_valign(fa_top);draw_set_halign(fa_left);
		draw_sprite_stretched_ext(s_hud_talk_box_1_2,0,((_text_xx-(_box_ww/2))+4),((_text_yy-(_text_wh/2))-(cutscene_text_line+3)),_name_ww+cutscene_text_border,cutscene_text_line+4,c_white,1);
		draw_text_color(((_text_xx-(_box_ww/2))+8),(((_text_yy-(_text_wh/2)+4)-(cutscene_text_line+3))),cutscene_text_name,_c2,_c2,_c2,_c2,1);
	}
}
#endregion
//choice text box=============================================
#region
if(cutscene_set_choice){
	cutscene_choice_y_box=lerp(cutscene_choice_y_box,global.ch/2,.15);
	
	if(cutscene_bg_choice_alpha<=.5){cutscene_bg_choice_alpha+=.05;}
	if(cutscene_tx_choice_alpha<=1){cutscene_tx_choice_alpha+=.05;}
	if(cutscene_choice==0){
		cutscene_choice_y1=lerp(cutscene_choice_y1,8,.15);
		cutscene_choice_y2=lerp(cutscene_choice_y2,0,.15);
	}else{
		cutscene_choice_y1=lerp(cutscene_choice_y1,0,.15);
		cutscene_choice_y2=lerp(cutscene_choice_y2,8,.15);
	}
}else{
	cutscene_choice_y_box=lerp(cutscene_choice_y_box,(global.ch/2)-(global.ch/4),.15);
	cutscene_choice_y1=lerp(cutscene_choice_y1,0,.15);
	cutscene_choice_y2=lerp(cutscene_choice_y2,0,.15);
	if(cutscene_bg_choice_alpha>=0){cutscene_bg_choice_alpha-=.05;}
	if(cutscene_tx_choice_alpha>=0){cutscene_tx_choice_alpha-=.05;}
}
//drawing===================================================
draw_set_alpha(cutscene_bg_choice_alpha);
draw_sprite_stretched_ext(s_hud_pixel,0,0,0,global.cw,global.ch,c_black,cutscene_bg_choice_alpha);
var _ww=170,_wh=100,_c3=make_color_rgb(36,34,52),_c=c_white;
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
var _xx=(global.cw/2)-((_ww)+16),_yy_1=cutscene_choice_y_box-((_wh/2)+cutscene_choice_y1);
draw_sprite_stretched_ext(s_hud_talk_box_1_1,0,_xx,_yy_1,_ww,_wh,_c,cutscene_tx_choice_alpha);
if(cutscene_text_choice!=-1){draw_text_ext_colour(_xx+(_ww/2),(_yy_1+(_wh/2))+16,cutscene_text_choice[0][global.lang],global.font_talk_size,_ww-16,_c3,_c3,_c3,_c3,cutscene_tx_choice_alpha);}

var _xx=(global.cw/2)+(16),_yy_2=cutscene_choice_y_box-((_wh/2)+cutscene_choice_y2);
draw_sprite_stretched_ext(s_hud_talk_box_1_1,0,_xx,_yy_2,_ww,_wh,_c,cutscene_tx_choice_alpha);
if(cutscene_text_choice!=-1){draw_text_ext_colour(_xx+(_ww/2),(_yy_2+(_wh/2))+16,cutscene_text_choice[1][global.lang],global.font_talk_size,_ww-16,_c3,_c3,_c3,_c3,cutscene_tx_choice_alpha);}
#endregion
#endregion
