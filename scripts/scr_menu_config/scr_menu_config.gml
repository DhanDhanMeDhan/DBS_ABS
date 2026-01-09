function scr_menu_config(cursor_x,cursor_y,xx_min,xx_max,yy_min,yy_max,type_move,type_side,type_end,menu_lenght,current_layer,menu_layers,_can_level,_bottom_level){
	scr_inputs();
	var xx_select,yy_select;
	//============================================================
	//configuring the options side
	//============================================================
	#region 
	switch type_move{
		case menu_move_type.select: 
			xx_select=(global.input_select_right-global.input_select_left);
			yy_select=(global.input_select_down-global.input_select_up);
			if(xx_select!=0)or(yy_select!=0){
				audio_play_sound(sfx_003,5,false);
			}
		break;
		case menu_move_type.move: 
			xx_select=(global.input_move_right-global.input_move_left)*4;
			yy_select=(global.input_move_down-global.input_move_up)*4;
		break;
	}
	switch type_side{
		case menu_side_type.horizontal: cursor_x+=xx_select; break;
		case menu_side_type.vertical:	cursor_y+=yy_select; break;
		case menu_side_type.both:
			cursor_x+=xx_select;
			cursor_y+=yy_select;
			break;
	}
	
	#endregion
	//============================================================
	//configuring the options side
	//============================================================
	#region 
	switch type_end{
		case menu_end_type.lock:
			cursor_x=clamp(cursor_x,xx_min,xx_max);
			cursor_y=clamp(cursor_y,yy_min,yy_max);
			break;
		case menu_end_type.loop:
			if(cursor_x<xx_min){cursor_x=xx_max;}
			if(cursor_x>xx_max){cursor_x=xx_min;}
			
			if(cursor_y<yy_min){cursor_y=yy_max;}
			if(cursor_y>yy_max){cursor_y=yy_min;}
			break;
	}
	#endregion
	//============================================================
	//confirm and cancel button
	//============================================================
	#region 
	var _array_menu_lenght=array_length(menu_lenght);
	if(_can_level){
		if(global.input_confirm){
			if(current_layer<_array_menu_lenght){ menu_layers=true; current_layer++;}
			audio_play_sound(sfx_001,5,false);
		}
		if(global.input_cancel){
			audio_play_sound(sfx_002,5,false);
			if(current_layer>_bottom_level){
				current_layer--;
				menu_layers=false;
			}
		}
	}
	#endregion
	return [cursor_x,cursor_y,menu_layers,current_layer];
}