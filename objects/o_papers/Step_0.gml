var _spr_icon=32,_xx=global.cw-_spr_icon;
var _kid_num=array_length(children_list);

if(show_icon){
	if(icon_alpha_tx<=1)icon_alpha_tx+=.05;
	var i=0; repeat _kid_num{
		if(current_kid!=i){
			icon_left[i][4]=lerp(icon_left[i][4],_xx,.15);
		}else{
			icon_left[i][4]=lerp(icon_left[i][4],_xx-16,.15);
		}
		i++;
	}
}else{
	if(icon_alpha_tx>=0){icon_alpha_tx-=.05;}else{instance_destroy();}
	var i=0; repeat _kid_num{
		icon_left[i][4]=lerp(icon_left[i][4],global.cw+64,.15);
		i++;
	}
}

scr_inputs();
if(global.input_select_up) current_kid--;
if(global.input_select_down) current_kid++;
current_kid=clamp(current_kid,0,_kid_num-1)