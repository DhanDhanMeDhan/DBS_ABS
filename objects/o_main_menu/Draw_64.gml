var _c0=c_black,_c1=c_white,_c2=c_red,_c4=make_color_rgb(245,160,151);
draw_set_font(global.font_talk);
//============================================================
//settings box
//============================================================
#region
draw_set_alpha(bg_alpha_4);
draw_rectangle_color(xx_settings_box,0,global.cw,global.ch,_c0,_c0,_c0,_c0,false);
draw_sprite_ext(s_hud_main_menu_border,0,xx_settings_box,global.ch/2,1,1,0,c_white,tx_alpha_1);
var _spr_border=sprite_get_width(s_hud_main_menu_border);
var _sur_padding_w=16;
var _sur_padding_h=16;
var _scr=0;
if(use_config){
	saved_config=false;
	if(!surface_exists(sur_config)){
		sur_config=surface_create(global.cw-(_spr_border+(global.cw/3)+(_sur_padding_w*2)),global.ch-(_sur_padding_h*2));
	}else{
		var _val=scr_config(sur_config,ds_pause_string,main_menu_level[3][1][0],main_menu_level[3][1][1],main_menu_level[2][0],main_menu_level[3][0],main_menu_index);
		sur_config=_val[0];
		settings_menu=_val[1];
		main_menu_level[3][2][1][1]=_val[2];
		main_menu_index=_val[3];
		main_menu_level[3][0]=_val[4];
		_scr=_val[5];
		draw_surface_ext(sur_config,xx_settings_box+_sur_padding_w+(_sur_padding_w/2),_sur_padding_h,1,1,0,c_white,1);
	}
}else{
	if(!saved_config){
		var _ach="cnf.dat";
		file_delete(_ach);
		if(!file_exists(_ach)){
			ini_open(_ach);
			//============================================================
			ini_write_real("cnf","lng",global.lang);
			ini_write_real("cnf","mst",global.volume_master);
			ini_write_real("cnf","bgm",global.volume_bgm);
			ini_write_real("cnf","bgs",global.volume_bgs);
			ini_write_real("cnf","sfx",global.volume_sfx);
			ini_write_real("cnf","scr",global.window_mode);
			ini_write_real("cnf","res",global.resolution);
			ini_write_real("cnf","ppr",global.paper);
			ini_write_real("cnf","up1",global.key_up[0]);
			ini_write_real("cnf","up2",global.key_up[1]);
			ini_write_real("cnf","dw1",global.key_down[0]);
			ini_write_real("cnf","dw2",global.key_down[1]);
			ini_write_real("cnf","lt1",global.key_left[0]);
			ini_write_real("cnf","lt2",global.key_left[1]);
			ini_write_real("cnf","rt1",global.key_right[0]);
			ini_write_real("cnf","rt2",global.key_right[1]);
			ini_write_real("cnf","cn1",global.key_cancel[0]);
			ini_write_real("cnf","cn2",global.key_cancel[1]);
			ini_write_real("cnf","cm1",global.key_confirm[0]);
			ini_write_real("cnf","cm2",global.key_confirm[1]);
			ini_write_real("cnf","ps",global.key_pause);
			//============================================================
			ini_close();
			saved_config=true;
		}
		
	}
}
#endregion
//============================================================
//left side and logo
//============================================================
#region
draw_set_alpha(tx_alpha_1);
draw_rectangle_color(menu_left_border-1,0,global.cw,global.ch,_c4,_c4,_c4,_c4,false);
draw_sprite_ext(s_hud_main_menu_border,0,menu_left_border,global.ch/2,1,1,0,c_white,tx_alpha_1);
draw_sprite_ext(s_hud_main_menu_logo,0,menu_left_border+((global.cw/6)),global.ch/4,1,1,0,c_white,tx_alpha_1);
//============================================================
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_font(global.font_title);
var _spr_h_option=sprite_get_height(s_hud_main_menu_options);
var _ww_options_pose=(global.font_title_size+(_spr_h_option))*main_menu_size
var _yy=(global.ch/2)+(global.ch/4);
var i=0; repeat main_menu_size{
	if(i==0){
		draw_text_color(main_menu_options[i][1],((_yy-(_ww_options_pose/2))+((_spr_h_option*i)+(global.font_title_size*i)))-8,string(main_menu_options[i][0][global.lang]),_c1,_c1,_c1,_c1,tx_alpha_1);
		draw_sprite_ext(s_hud_main_menu_options,0,main_menu_options[i][1],((_yy-(_ww_options_pose/2))+((_spr_h_option*i)+(global.font_title_size*(i+1))))-8,1,1,0,_c1,tx_alpha_1);
	}else{
		draw_text_color(main_menu_options[i][1],(_yy-(_ww_options_pose/2))+(((_spr_h_option)*i)+(global.font_title_size*i)),string(main_menu_options[i][0][global.lang]),_c1,_c1,_c1,_c1,tx_alpha_1);
		draw_sprite_ext(s_hud_main_menu_options,1,main_menu_options[i][1],(_yy-(_ww_options_pose/2))+(((_spr_h_option)*i)+(global.font_title_size*(i+1))),1,1,0,_c1,tx_alpha_1);
	}
	//draw_text_color(main_menu_options[i][1],(global.ch/2)+((global.ch/4)+(i*global.font_title_size)),string(main_menu_options[i][0][global.lang]),_c1,_c1,_c1,_c1,tx_alpha_1);
	i++;
}
#endregion
//============================================================
//slots
//============================================================
#region
draw_set_alpha(bg_alpha_2);
draw_rectangle_color(0,0,global.cw,global.ch,_c0,_c0,_c0,_c0,false);

var _ww_s_hud_save_d_1=sprite_get_width(s_hud_main_menu_save_detail_1),_ww_s_hud_save_d_2=sprite_get_width(s_hud_main_menu_save_detail_2);
var _wh_s_hud_save_d_1=sprite_get_height(s_hud_main_menu_save_detail_1),_wh_s_hud_save_d_2=sprite_get_height(s_hud_main_menu_save_detail_2);
var _yy_save_d_2=(_wh_s_hud_save_d_1-_wh_s_hud_save_d_2)+8;
var _yy_slot_offset=4,_xx_slot_offset=4;
var _ww_total_slot_size=(_ww_s_hud_save_d_1+_ww_s_hud_save_d_2)+_xx_slot_offset;
var _xx_slot_pos=global.cw-_ww_total_slot_size
var _wh_total_slot_size=(_wh_s_hud_save_d_1*global.save_num)+(_yy_slot_offset*(global.save_num-1));
var _yy_slot_pos=global.ch-_wh_total_slot_size;
var _empty=["Vazio","Vacio","Empty"]

image_speed=.1;
var i=0; repeat global.save_num{
	#region
	if(main_menu_level[3][1][1]==i){
		xx_slot_1[i]=lerp(xx_slot_1[i],(_xx_slot_pos/2)-16,.15);
		xx_slot_2[i]=lerp(xx_slot_2[i],((_xx_slot_pos/2)+(_ww_s_hud_save_d_1)+(_xx_slot_offset))-16,.15);
	}else{
		xx_slot_1[i]=lerp(xx_slot_1[i],_xx_slot_pos/2,.15);
		xx_slot_2[i]=lerp(xx_slot_2[i],(_xx_slot_pos/2)+(_ww_s_hud_save_d_1)+(_xx_slot_offset),.15);
	}
	draw_sprite_ext(s_hud_main_menu_save_detail_1,0,xx_slot_1[i],yy_slot+(((_wh_s_hud_save_d_1+_yy_slot_offset)*i)+_yy_slot_pos/2),1,1,0,_c1,tx_alpha_1);
	if(save_slot_detail[i]!=-1){
		var _spr_offset=4;
		var _spr_xx_add=0;
		for(var k=0;k<array_length(save_slot_detail[i].part);k++){
			var _spr_party_mem=save_slot_detail[i].part[k][2];
			draw_sprite_ext(_spr_party_mem,image_index,xx_slot_2[i]+64+_spr_xx_add,(yy_slot+((((_wh_s_hud_save_d_1+_yy_slot_offset)*i)+_yy_slot_pos/2)+_yy_save_d_2/2))+82,1,1,0,_c1,tx_alpha_1);
			_spr_xx_add=sprite_get_width(_spr_party_mem)+_spr_offset;
		}
		
	}
	draw_sprite_ext(s_hud_main_menu_save_detail_2,0,xx_slot_2[i],yy_slot+((((_wh_s_hud_save_d_1+_yy_slot_offset)*i)+_yy_slot_pos/2)+_yy_save_d_2/2),1,1,0,_c1,tx_alpha_1);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	if(save_slot_detail[i]==-1){
		draw_set_font(global.font_title);
		draw_text_color(xx_slot_1[i]+(_ww_s_hud_save_d_1/2),yy_slot+((((_wh_s_hud_save_d_1+_yy_slot_offset)*i)+_yy_slot_pos/2)+(_wh_s_hud_save_d_1/2)),_empty[global.lang],_c1,_c1,_c1,_c1,tx_alpha_1);
		
	}else{
		draw_set_font(fnt_carte);
		var _zero="0",_hour="",_minute="",_day="",_month="",_year="";
		if(save_slot_detail[i].date[3]<10){_hour=_zero+string(save_slot_detail[i].date[3]);}else{_hour=string(save_slot_detail[i].date[3]);}
		if(save_slot_detail[i].date[4]<10){_minute=_zero+string(save_slot_detail[i].date[4]);}else{_minute=string(save_slot_detail[i].date[4]);}
		if(save_slot_detail[i].date[0]<10){_day=_zero+string(save_slot_detail[i].date[0]);}else{_day=string(save_slot_detail[i].date[0]);}
		if(save_slot_detail[i].date[1]<10){_month=_zero+string(save_slot_detail[i].date[1]);}else{_month=string(save_slot_detail[i].date[1]);}
		if(save_slot_detail[i].date[2]<10){_year=_zero+string(save_slot_detail[i].date[2]);}else{_year=string(save_slot_detail[i].date[2]);}
		var _slot_text=_hour+":"+_minute+"\n\n"+_day+"/"+_month+"/"+_year;
		draw_text_color(xx_slot_1[i]+(_ww_s_hud_save_d_1/2),yy_slot+((((_wh_s_hud_save_d_1+_yy_slot_offset)*i)+_yy_slot_pos/2)+(_wh_s_hud_save_d_1/2)),_slot_text,_c1,_c1,_c1,_c1,tx_alpha_1);
	}
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	#endregion
	i++;
}
#endregion
//============================================================
//confirm box
//============================================================
#region
draw_set_alpha(bg_alpha_3);
draw_rectangle_color(0,0,global.cw,global.ch,_c0,_c0,_c0,_c0,false);
var _wh_s_hud_confirm=sprite_get_height(s_hud_main_menu_save_detail_1),_ww_s_hud_confirm=sprite_get_width(s_hud_main_menu_save_detail_1);
var _wh_confirm=global.ch-_wh_s_hud_confirm,_ww_confirm=global.cw-_ww_s_hud_confirm;
var _yy_confirm_pos=_wh_confirm/2,_xx_confirm_pos=_ww_confirm/2;
draw_sprite_ext(s_hud_main_menu_save_detail_1,0,_xx_confirm_pos,yy_confirm+_yy_confirm_pos,1,1,0,_c1,tx_alpha_1);

var _text=["","",""],_choice=[["Sim","Si","Yes"],["Não","No","No"]];
if(main_menu_level[3][0])and((main_menu_options[principal_cursor][3]==menu_action.start)or(main_menu_options[principal_cursor][3]==menu_action.load)){
	if(file_exists(global.save_fle)){
		switch main_menu_options[principal_cursor][3]{
			case menu_action.start:
				_text[0]="Deseja começar sua história aqui?";
				_text[1]="¿Deseas empezar su historia aqui?";
				_text[2]="Do you want to start your story here?";
				break;
			case menu_action.load:
				_text[0]="É essa história que você quer continuar?";
				_text[1]="¿Seria esa la historia que deseas seguir?";
				_text[2]="Is this the story that you wanted to continue?";
				break;
		}
	}else{
		switch main_menu_options[principal_cursor][3]{
			case menu_action.start:
				_text[0]="Deseja começar sua história aqui?";
				_text[1]="¿Deseas empezar su historia aqui?";
				_text[2]="Do you want to start your story here?";
				break;
			case menu_action.load:
				_text[0]="Não há nenhuma história aqui";
				_text[1]="No hay ninguna história aqui";
				_text[2]="There is no story here";
				break;
		}
	}
}
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(global.font_talk);
draw_text_ext_color(_xx_confirm_pos+(_ww_s_hud_confirm/2),yy_confirm+_yy_confirm_pos+(_wh_s_hud_confirm/3)+global.font_talk_size,_text[global.lang],global.font_talk_size,137-16,_c1,_c1,_c1,_c1,tx_alpha_1);
if(main_menu_level[3][0])and((main_menu_options[principal_cursor][3]==menu_action.start)or(main_menu_options[principal_cursor][3]==menu_action.load)){
	if(file_exists(global.save_fle))or(main_menu_options[principal_cursor][3]==menu_action.start){
		draw_text_ext_color(_xx_confirm_pos+(_ww_s_hud_confirm/3),yy_confirm+_yy_confirm_pos+((_wh_s_hud_confirm/3)*2),_choice[0][global.lang],global.font_talk_size,137-16,_c1,_c1,_c1,_c1,tx_alpha_1);
		draw_text_ext_color(_xx_confirm_pos+((_ww_s_hud_confirm/3)*2),yy_confirm+_yy_confirm_pos+((_wh_s_hud_confirm/3)*2),_choice[1][global.lang],global.font_talk_size,137-16,_c1,_c1,_c1,_c1,tx_alpha_1);
		switch main_menu_level[4][1][0]{
			case 0:
				draw_sprite_ext(s_hud_main_menu_cursor_1,0,(_xx_confirm_pos+(_ww_s_hud_confirm/3))-(string_width(_choice[0][global.lang]))-(sprite_get_width(s_hud_main_menu_cursor_1)),yy_confirm+_yy_confirm_pos+((_wh_s_hud_confirm/3)*2),1,1,0,_c1,tx_alpha_1);
				break;
			case 1:
				draw_sprite_ext(s_hud_main_menu_cursor_1,0,(_xx_confirm_pos+((_ww_s_hud_confirm/3)*2))-(string_width(_choice[1][global.lang]))-(sprite_get_width(s_hud_main_menu_cursor_1)),yy_confirm+_yy_confirm_pos+((_wh_s_hud_confirm/3)*2),1,1,0,_c1,tx_alpha_1);
				break;
		}
	}else{
		if(main_menu_level[4][0]){
			main_menu_level[4][0]=false;
			main_menu_level[3][0]=false;
			main_menu_index=2;
		}
	}
}
draw_set_valign(fa_top);
draw_set_halign(fa_center);
#endregion
//============================================================
//change button
//============================================================
#region
if(window_has_focus()){
	if(!change_button){
		if(bg_alpha_5>=0){bg_alpha_5-=.025}
		yy_button=lerp(yy_button,-global.ch,.15);
	}else{
		if(bg_alpha_5<=.5){bg_alpha_5+=.025}
		yy_button=lerp(yy_button,(global.ch/2),.15);
	}
}
var _c0=c_black;
var _spr=s_hud_main_menu_save_detail_1;
var _sw=sprite_get_width(_spr),_sh=sprite_get_height(_spr);
draw_sprite_stretched_ext(s_hud_pixel,0,0,0,global.cw,global.ch,_c0,bg_alpha_5);
draw_sprite_ext(_spr,0,(global.cw/2)-(_sw/2),yy_button-(_sh/2),1,1,0,c_white,1);
var _txt,_str;
switch array_length(global.scr){
	case 1:	
		_str=scr_change_button(global.scr);
		_txt=_str[global.lang];
		break;
	case 2:
		var _and
		if(global.lang==0){_and=" e ";}
		if(global.lang==1){_and=" y ";}
		if(global.lang==2){_and=" and ";}
		var _f=scr_change_button(global.scr[0]);
		var _s=scr_change_button(global.scr[1]);
		_str=_f[global.lang]+_and+_s[global.lang];
		_txt=_str;
		break;
}
draw_text_color(global.cw/2,yy_button,_txt,_c1,_c1,_c1,_c1,1);
#endregion
//============================================================
//creator intro and primordial black
//============================================================
#region
draw_set_alpha(bg_alpha_1);
draw_rectangle_color(0,0,global.cw,global.ch,_c0,_c0,_c0,_c0,false);

var i=0; repeat creator_num{
	draw_sprite_ext(s_hud_main_menu_creators_logo,i,global.cw/2,global.ch/2,1,1,0,c_white,creator_logo_alpha[i]);
	i++;
}

if(o_camera.debbug_mode){
	draw_set_font(fnt_talk);
	draw_set_halign(fa_left);draw_set_valign(fa_top);
	draw_text_color(0,16,string(main_menu_index),_c2,_c2,_c2,_c2,1);
	draw_text_color(0,32,string(main_menu_level[0]),_c2,_c2,_c2,_c2,1);
	draw_text_color(0,48,string(main_menu_level[1]),_c2,_c2,_c2,_c2,1);
	draw_text_color(0,64,string(main_menu_level[2]),_c2,_c2,_c2,_c2,1);
	draw_text_color(0,80,string(main_menu_level[3]),_c2,_c2,_c2,_c2,1);
	draw_text_color(0,96,string(main_menu_level[4]),_c2,_c2,_c2,_c2,1);
	//draw_text_color(0,96+16,string(main_menu_level[5]),_c2,_c2,_c2,_c2,1);
	draw_text_color(0,96+(16*2),string(can_use_menu),_c2,_c2,_c2,_c2,1);
	draw_text_color(0,96+(16*3),string(global.save_fle),_c2,_c2,_c2,_c2,1);
	draw_text_color(0,96+(16*4),string(saved_config),_c2,_c2,_c2,_c2,1);
}
#endregion
//============================================================
//lang
//============================================================
#region
if(global.input_confirm){
	var _ach="cnf.dat"
	if(!file_exists(_ach)){
		ini_open(_ach);
		//============================================================
		ini_write_real("cnf","lng",global.lang);
		ini_write_real("cnf","mst",global.volume_master);
		ini_write_real("cnf","bgm",global.volume_bgm);
		ini_write_real("cnf","bgs",global.volume_bgs);
		ini_write_real("cnf","sfx",global.volume_sfx);
		ini_write_real("cnf","scr",global.window_mode);
		ini_write_real("cnf","res",global.resolution);
		ini_write_real("cnf","ppr",global.paper);
		ini_write_real("cnf","up1",global.key_up[0]);
		ini_write_real("cnf","up2",global.key_up[1]);
		ini_write_real("cnf","dw1",global.key_down[0]);
		ini_write_real("cnf","dw2",global.key_down[1]);
		ini_write_real("cnf","lt1",global.key_left[0]);
		ini_write_real("cnf","lt2",global.key_left[1]);
		ini_write_real("cnf","rt1",global.key_right[0]);
		ini_write_real("cnf","rt2",global.key_right[1]);
		ini_write_real("cnf","cn1",global.key_cancel[0]);
		ini_write_real("cnf","cn2",global.key_cancel[1]);
		ini_write_real("cnf","cm1",global.key_confirm[0]);
		ini_write_real("cnf","cm2",global.key_confirm[1]);
		ini_write_real("cnf","ps",global.key_pause);
		//============================================================
		ini_close();
	}
}
if(!main_menu_level[0][0]){
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	var _text="Antes de jogar, tenha em mente que:\n\nOs controles são:\nSetinha e WASD para se mover\nEnter e Espaço para confirmar\nX e Fim para cancelar\nEsc para abrir o menu\n\nO jogo está disponível somente em portugês, por enquanto. Muitas animações não estão completas, assim como funções no menu de pause, tendo isso em mente, gostaria que você jogasse e, assim que finalizado, respondesse o formulário que envio junto deste.\nMuito obrigado pela atenção e compreensão de vossa parte e divirta-se!"
	var _str_lenght=string_width_ext(_text,global.font_talk_size,global.cw/2);
	var _str_height=string_height_ext(_text,global.font_talk_size,global.cw/2);
	draw_text_ext_colour(global.cw/2,global.ch/4,_text,global.font_talk_size,global.cw/2,c_white,c_white,c_white,c_white,1);
	var _l_arrow;
	if(global.lang==0){_l_arrow="";}else{_l_arrow="<<"}
	var _r_arrow;
	if(global.lang==2){_r_arrow="";}else{_r_arrow=">>"}
	var _lang=["Portugues","Español","English"];
	global.lang=main_menu_level[0][1][0];
	draw_text_color(global.cw/2,global.ch/2,_l_arrow+" "+_lang[global.lang]+" "+_r_arrow,_c1,_c1,_c1,_c1,1);
	draw_set_valign(fa_top);
	draw_text_ext_colour(global.cw/2,(global.ch/2)+global.font_talk_size*2,"Tenha em mente que, no mini-game Freeze, por mais que você \"ganhe\" com o BunBun, ou seja, ir até o final, ou o máximo que se pode, ele VAI perder, pois ele é péssimo em esportes, para que, na próxima rodada, vá o Todd e Gleb competir, então não se preocupe quanto a isso",global.font_talk_size,global.cw/2,c_white,c_white,c_white,c_white,1);
}
#endregion