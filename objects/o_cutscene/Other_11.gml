var _c1=make_color_rgb(36,34,52), _c2=make_color_rgb(232,104,115),_text;
	var _text_speach=sprite_get_height(s_hud_talk_box_1_3);
	var _text_ww=string_width_ext(cutscene_text_dialg,cutscene_text_line,cutscene_text_ww);
	var _text_wh=string_height_ext(cutscene_text_dialg,cutscene_text_line,cutscene_text_ww);
	var _text_xx=(cutscene_obj.x)-((_text_ww/2)+cutscene_text_border);
	var _text_yy=(cutscene_obj.y-cutscene_obj.sprite_height)-(_text_wh+24);
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
	#region
	for(var i=0;i<cutscene_text_lenght;i++){
		var _char_pos=i+1;
		cutscene_text_letter[i]=string_char_at(cutscene_text_dialg,_char_pos);
		_text=string_copy(cutscene_text_dialg,1,_char_pos);
		var _current_text_w=string_width(_text)-string_width(cutscene_text_letter[i]);
		if(cutscene_text_letter[i]==" "){cutscene_text_last_free_space=_char_pos+1;}
		
		if(_current_text_w-cutscene_text_line_break_offset>cutscene_text_ww){
			cutscene_text_line_break_pos[cutscene_text_line_break_num]=cutscene_text_last_free_space;
			cutscene_text_line_break_num++;
			var _text_up_to_last_space=string_copy(cutscene_text_dialg,1,cutscene_text_last_free_space);
			var _last_free_space_string=string_char_at(cutscene_text_dialg,cutscene_text_last_free_space);
			cutscene_text_line_break_offset=string_width(_text_up_to_last_space)-string_width(_last_free_space_string)
		}
	}
	#endregion
	#region
	for(var i=0;i<cutscene_text_lenght;i++){
		var _char_pos=i+1;
		var _txt_x=_text_xx+cutscene_text_border;
		var _txt_y=_text_yy+cutscene_text_border;
		_text=string_copy(cutscene_text_dialg,1,_char_pos);
		var _current_text_w=string_width(_text)-string_width(cutscene_text_letter[i]);
		var _txt_line=0;
		for(var lb=0;lb<cutscene_text_line_break_num;lb++){
			if(_char_pos>=cutscene_text_line_break_pos[lb]){
				var _str_copy=string_copy(cutscene_text_dialg,cutscene_text_line_break_pos[lb],_char_pos-cutscene_text_line_break_pos[lb]);
				_current_text_w=string_width(_str_copy);
				_txt_line=lb+1;
			}
		}
		cutscene_text_letter_x[i]=_txt_x+_current_text_w;
		cutscene_text_letter_y[i]=_txt_y+_txt_line*cutscene_text_line;
		
	}
	cutscene_text_setting_text=true;
	#endregion