function scr_minigame_score(_ww,_wh,_c1,_c2){
	var _c=c_white,_c1_1,_c1_2,_c1_3;
	if(minigame_score>98){minigame_score_index=0;}
	else if(minigame_score>84)and(minigame_score<98){minigame_score_index=1;}
	else if(minigame_score>=70)and(minigame_score<84){minigame_score_index=2;}
	else if(minigame_score>56)and(minigame_score<70){minigame_score_index=3;}
	else if(minigame_score>42)and(minigame_score<56){minigame_score_index=4;}
	else if(minigame_score>28)and(minigame_score<42){minigame_score_index=5;}
	else if(minigame_score<28){minigame_score_index=6;}
	var _bg=clamp(minigame_score_index-1,0,4)
	draw_sprite_stretched_ext(s_hud_minigame_loveletter_end_bg,_bg,0,minigame_level[3][1],_ww,_wh,_c,1);
	draw_sprite_ext(s_hud_minigame_score_letter,minigame_score_index,24,minigame_level[3][1]+minigame_level[3][2],1,1,0,_c,1);
	#region all shit
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	var _yy=minigame_level[3][1]+((_wh/2)+(_wh/15));
	var _points_str=["Pontos","Puntos","Score"],_0;
	if(minigame_score)<100{_0="0"}else{_0=""}
	var _scr_str=string(_points_str[global.lang])+":................ "+_0+string(floor(minigame_score));
	var _scr_ww=string_width(_scr_str);
	if(_bg>1){_c1_3=_c1}else{_c1_3=_c2}
	draw_text_color(_ww/2,_yy,_scr_str,_c1_3,_c1_3,_c1_3,_c1_3,1);
	if(minigame_score>56){
		var _try_str=["Tentar de novo?","¿Instentar de nuevo?","Try again?"];
		if(minigame_cursor_x==0){
			if(_bg>1){
				_c1_1=_c1;
				_c1_2=_c2;
			}else{
				_c1_1=_c2;
				_c1_2=_c1;
			}
		}else{
			if(_bg>1){
				_c1_1=_c2;
				_c1_2=_c1;
			}else{
				_c1_1=_c1;
				_c1_2=_c2;
			}
		}
		var _choice=[["Sim","Sí","Yes"],["Não","No","No"]]
		draw_text_color(((_ww/2)+(_scr_ww/2))-32,_yy+32,_choice[0][global.lang],_c1_1,_c1_1,_c1_1,_c1_1,1);
		draw_text_color(((_ww/2)+(_scr_ww/2))+32,_yy+32,_choice[1][global.lang],_c1_2,_c1_2,_c1_2,_c1_2,1);
	}else{
		var _try_str=["Tente de novo","Instente de nuevo","Try again"];
	}
	//draw_text_color((_ww/2)+(_scr_ww/2),_yy+16,string(_try_str[global.lang]),c_black,c_black,c_black,c_black,1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	#endregion
	draw_sprite_stretched_ext(s_hud_pixel,0,0,0,_ww,_wh,_c,minigame_end_alp_1);
	draw_sprite_stretched_ext(s_hud_pixel,0,0,0,_ww,_wh,_c,minigame_end_alp_2);
}