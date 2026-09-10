x=o_camera.x;
y=o_camera.y;
var _spr_icon_w=32,_spr_icon_h=32;
var _xx_offset=8;
var _xx=global.cw-_spr_icon_w,_yy=global.ch/6;
var _ppl=children_playing,_c1,_c2;
if(!instance_exists(o_cutscene))and(!global.pause){
	icon_left=lerp(icon_left,_xx,.15);
	if(icon_alp<=1) icon_alp+=.05;
}else{
	icon_left=lerp(icon_left,global.cw+64,.15);
	if(icon_alp>=0) icon_alp-=.05;
}
var i=0; repeat array_length(_ppl){
	#region sprites action and configure
	if(instance_exists(_ppl[i][0])){
		if(_ppl[i][0].ppl_talked){_ppl[i][1]=true;children_playing[i][1]=true}
	}
	#endregion
	
	#region sprite HUD configure
	if(_ppl[i][1]){
		_c2=c_gray;//merge_color(c_gray,make_color_rgb(232,106,115),.5);
		_c1=c_gray;
	}else{
		_c2=make_color_rgb(232,106,115);
		_c1=c_white;
	}
	draw_sprite_ext(_ppl[i][2],1,icon_left,_yy+(_spr_icon_h*i),1,1,0,_c1,icon_alp);
	draw_sprite_ext(s_hud_interact_name_display,1,icon_left-(_spr_icon_w+_xx_offset),_yy+(_spr_icon_h*i),-1,1,0,_c1,icon_alp);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	draw_set_font(fnt_carte);
	draw_text_color(icon_left-(_spr_icon_w+_xx_offset+13),_yy+(_spr_icon_h*i)+2,_ppl[i][3],_c2,_c2,_c2,_c2,icon_alp);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	#endregion
	i++;
}
if(_ppl[0][1])and(_ppl[1][1])and(_ppl[2][1])and(_ppl[3][1])and(_ppl[4][1])and(_ppl[5][1])and(_ppl[6][1]){
	if(!instance_exists(o_cutscene)) scr_cutscene_create(complete_cutscene);
}