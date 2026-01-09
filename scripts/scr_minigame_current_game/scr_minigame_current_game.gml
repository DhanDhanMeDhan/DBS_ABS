function scr_minigame_current_game(_game,_c1,_c2,_ww,_wh){
	if(minigame_level[1][0])and(!minigame_level[2][0]){
		switch _game{
			case minigame_set.love_letter:
				#region bg
				if(minigame_spr=-1){minigame_spr=s_hud_minigame_loveletter_wiwi_1; minigame_sbg=0;}
				if(_words=-1){event_perform(ev_other,ev_user0)}
				if(!global.pause){image_speed=.05}else{image_speed=0;}
				draw_sprite_ext(s_hud_minigame_loveletter_bg,minigame_sbg,0,0,1,1,0,c_white,1);
				draw_sprite_ext(minigame_spr,image_index,317,16,1,1,0,c_white,1);
				#endregion
				
				#region words
				if(minigame_level[2][1]<10){
					var _xx=80,_yy=61,_c;
					draw_sprite_ext(s_hud_minigame_loveletter_selector,0,_xx+(120*minigame_cursor_x),_yy+1+(32*minigame_cursor_y),1,1,0,c_white,1);
					draw_set_font(fnt_carte);
					draw_set_valign(fa_bottom);
					draw_set_halign(fa_center);
					var i=0; repeat 2{
						var k=0; repeat 6{
							if(minigame_cursor_x==i)and(minigame_cursor_y==k){_c=_c1;}else{_c=_c2;}
							draw_text_color(_xx+(120*i),_yy+(32*(k)),string(_words[minigame_level[2][1]][i][k][0]),_c,_c,_c,_c,1);
							k++;
						}
						i++;
					}
				}
				#endregion
				break;
			case minigame_set.freeze:
				#region bg 1
				var _s_bg_w_1=sprite_get_width(s_hud_minigame_freeze_bg_2);
				var _s_bg_repeat=floor(_ww/_s_bg_w_1);
				var _s_bg_1_x=0,_s_xx=0; repeat _s_bg_repeat{
					if(_s_xx>_s_bg_w_1){
						_s_xx=0;
					}else{
						//_s_xx=;
					}
					draw_sprite_ext(s_hud_minigame_freeze_bg_2,0,((_s_bg_1_x+1)*_s_bg_w_1)-(freeze_bg+5),0,1,1,0,c_white,1);
					_s_bg_1_x++;
				}
				#endregion
				
				#region draw
				freeze_frame+=.2;
				if(freeze_frame>2) freeze_frame=0;
				draw_sprite_ext(freeze_p2_s,freeze_frame,((_ww/2)+((_ww/3)))+(freeze_p2_x+(freeze_p1_x*-1)),253,1,1,0,c_white,1);
				draw_sprite_ext(freeze_p1_s,freeze_frame,(_ww/2)+((_ww/3)),253,1,1,0,c_white,1);
				draw_text_color((_ww/2)+((_ww/3)),253-(sprite_get_height(freeze_p1_s)),"Pressione X",c_black,c_black,c_black,c_black,1);
				#endregion
				
				#region bg 2 and paxton
				var _s_pxtn_w=sprite_get_width(s_hud_minigame_freeze_paxton_idle_1);
				draw_sprite_ext(s_hud_minigame_freeze_bg_1,0,0,_wh,1,1,0,c_white,1);
				draw_sprite_ext(freeze_paxton_s,image_index,_s_pxtn_w/2,_wh,1,1,0,c_white,1);
				//draw_text_color(_ww/2,_wh/2,string(image_index),c_black,c_black,c_black,c_black,1);
				
				#endregion
				break;
		}
	}
}