var _ppl=children_list;
var _spr_icon_w=64,_spr_icon_h=48,_offset=8,_spr_label_w=sprite_get_width(s_hud_interact_name_display);
var _kid_num=array_length(_ppl);
var _pf_w=sprite_get_width(s_hud_basement_doc_pf)

var _paper_size=global.cw/2;
var _c1=make_colour_rgb(245,160,151);
var _yy=_spr_icon_h;
draw_set_alpha(icon_alpha_tx);
draw_rectangle_colour(global.cw/4,_offset,(global.cw/2)+(global.cw/4),global.ch-_offset,_c1,_c1,_c1,_c1,false);
draw_sprite_ext(s_hud_basement_doc_pf,current_kid,global.cw/4,_offset,1,1,0,c_white,icon_alpha_tx);
var i=0,icon_top=(global.ch/2); repeat _kid_num{
	icon_top=(global.ch/2)-((current_kid-i)*_spr_icon_h);
	var _xscale;
	if(_ppl[i][1][0]=="Danya"){
		draw_sprite_ext(_ppl[i][0],0,(icon_left[i][4]-(_spr_label_w+_offset))+1,icon_top,-1,1,0,c_white,icon_alpha_tx);
	}else{
		draw_sprite_ext(_ppl[i][0],0,icon_left[i][4]-(_spr_label_w+_offset),icon_top,1,1,0,c_white,icon_alpha_tx);
	}
	draw_sprite_ext(s_hud_interact_name_display,1,icon_left[i][4]-(_spr_icon_w),icon_top,1,1,0,c_white,icon_alpha_tx);
	//children detail
	i++;
}
var _c2=make_colour_rgb(188,74,155);
draw_set_font(fnt_names);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
var _zero;
if(current_kid<9){_zero="00"}else{_zero="0"}
var _fnt_size=font_get_size(fnt_names);
var _name_display=["Código: "+_zero+string(current_kid+1)+"\n\nNome em casa: "+string(_ppl[current_kid][1][0])+"\nIdade: "+string(_ppl[current_kid][2])+"\n\nSituação:"+string(_ppl[current_kid][3][global.lang]),"Código: "+_zero+string(current_kid+1)+"\n\nNombre en la casa: "+string(_ppl[current_kid][1][0])+"\nEdad: "+string(_ppl[current_kid][2])+"\n\nSituación:"+string(_ppl[current_kid][3][global.lang]),"Code: "+_zero+string(current_kid+1)+"\n\nName in the house: "+string(_ppl[current_kid][1][0])+"\nAge: "+string(_ppl[current_kid][2])+"\n\nSituation:"+string(_ppl[current_kid][3][global.lang])];
draw_text_ext_color((global.cw/4)+_pf_w+_offset,_offset*2,_name_display[global.lang],_fnt_size,(global.cw/2)-(_pf_w+(_offset*2)),_c2,_c2,_c2,_c2,icon_alpha_tx)