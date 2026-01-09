//============================================================
//drawing the interaction
//============================================================
#region
var _party_len=array_length(global.party),_ok=false;
var _spr_w=sprite_get_width(s_hud_interact_hud);
var _c=make_color_rgb(232,106,115);
if(_party_len>1){
	if(!instance_exists(o_cutscene))and(!global.pause)and(!instance_exists(o_mini_game)and(!instance_exists(o_story))){
		var i=1; repeat _party_len-1{
			if(instance_exists(global.party[i][0]))and(global.party[i][0].ppl_flowing){
				_ok=true;
			}else{
				_ok=false;
			}
			i++;
		}
	}
	
	if(_ok)and(interact_set){
		if(interact_alpha<=1) interact_alpha+=.025;
		interact_left=lerp(interact_left,2,.15);
		if(keyboard_check_pressed(ord("T"))){
			scr_talk_moments();
		}
	}else{
		if(interact_alpha>=0) interact_alpha-=.05;
		interact_left=lerp(interact_left,-_spr_w,.15);
	}
}
var _spr_icon_w=sprite_get_width(s_linus_faceicon_idle_1),_spr_icon_h=sprite_get_height(s_hellen_faceicon_idle_1);
var _yy=(global.ch/6)+83+(_spr_icon_h/2),_xx=(interact_left)+45+(_spr_icon_w/2);
if(interact_alpha>0){
	draw_sprite_ext(s_hud_interact_hud,global.lang,interact_left,global.ch/6,1,1,0,c_white,interact_alpha);
	var i=1; repeat _party_len-1{
		draw_sprite_ext(global.party[i][0].ppl_face_icon_idle,0,_xx,_yy+(_spr_icon_h*(i-1)),1,1,0,c_white,interact_alpha);
		draw_sprite_ext(s_hud_interact_name_display,0,_xx+(_spr_icon_w),_yy+(_spr_icon_h*(i-1)),1,1,0,c_white,interact_alpha)
		draw_set_valign(fa_middle);
		draw_set_halign(fa_left);
		draw_set_font(fnt_carte);
		draw_text_color(_xx+(_spr_icon_w)+13,_yy+(_spr_icon_h*(i-1))+2,global.party[i][0].ppl_name[global.lang],_c,_c,_c,_c,interact_alpha);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		i++;
	}
}
#endregion