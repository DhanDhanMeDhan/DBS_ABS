//============================================================
//setting the alpha and time
//============================================================
#region
for(var i=0;i<floors;i++){
	if(graphic_show_everything){
		if(ds_tld[i][5]<=1) ds_tld[i][5]+=graphic_amount_alp_focus;
	}else{
		if(graphic_focus_mode){
			if(ds_tld[i][5]>=0) ds_tld[i][5]-=graphic_amount_alp_focus;
		}else{
			if(graphic_flow_player)and(global.player!=-1)and(instance_exists(global.player)){
				graphic_flow_layer=global.player.z;
			}
			if(graphic_flow_layer>=(i+1)){
				if(ds_tld[i][5]<=1) ds_tld[i][5]+=graphic_amount_alp_focus;
			}else{
				if(ds_tld[i][5]>=0) ds_tld[i][5]-=graphic_amount_alp_focus;
			}
		}
	}
}

var _nt_light_alpha,_at_light_alpha;
switch global.place{
	case place.interior:
		switch global.time{
			case time.day:
				_nt_light_alpha=.75;
				_at_light_alpha=.5;
				break;
			case time.night:
				_nt_light_alpha=.1;
				_at_light_alpha=1;
				break;
		}
		break;
	case place.exterior:
		switch global.time{
			case time.day:
				_nt_light_alpha=1;
				_at_light_alpha=.25;
				break;
			case time.night:
				_nt_light_alpha=.2;
				_at_light_alpha=1;
				break;
		}
		break;
}
#endregion
//============================================================
//setting the alpha and time
//============================================================
#region
for(var i=0;i<floors;i++){
	var _alpha=ds_tld[i][5];
	//============================================================
	#region
	if(global.time==time.night){
		var _low=ds_tld[i][0][1];
		if(surface_exists(_low))and(_alpha>0) draw_surface_ext(_low,0,0,1,1,0,c_white,_alpha); 
	}else{
		var _low=ds_tld[i][0][0];
		if(surface_exists(_low))and(_alpha>0) draw_surface_ext(_low,0,0,1,1,0,c_white,_alpha); 
	}
	#endregion
	//============================================================
	#region
	for(var k=0;k<ds_grid_height(ds_ppl[i]);k++){
		with(ds_ppl[i][# 0,k]){
			if(object_get_parent(object_index)==o_light){
				switch light_set_type{
					case light_type.artificial: image_alpha=(_at_light_alpha*light_set_alpha)*_alpha; break;
					case light_type.natural: image_alpha=(_nt_light_alpha*light_set_alpha)*_alpha; break;
				}
			}else{
				var _a;
				if(o_graphic.graphic_focus_mode){
					if(!ppl_focused){
						_a=_alpha;
					}else{
						_a=1;
					}
				}else{
					_a=_alpha;
				}
				image_alpha=_a;
			}
			if(_alpha>0)or(o_graphic.graphic_focus_mode) event_perform(ev_draw,0)
		}
	}
	#endregion
	//============================================================
	#region
	if(global.time==time.night){
		var _top=ds_tld[i][1][1];
		if(surface_exists(_top))and(_alpha>0) draw_surface_ext(_top,0,0,1,1,0,c_white,_alpha); 
	}else{
		var _top=ds_tld[i][1][0];
		if(surface_exists(_top))and(_alpha>0) draw_surface_ext(_top,0,0,1,1,0,c_white,_alpha); 
	}
	var _lvs=ds_tld[i][3][0];
	var _xx=global.cx/3;
	var _yy=global.cy/3;
	var _yy_limt=(room_height-global.ch)/3;
	if(surface_exists(_lvs))and(_alpha>0) draw_surface_ext(_lvs,_xx,-_yy_limt+_yy,1,1,0,c_white,_alpha); 
	#endregion
}
#endregion