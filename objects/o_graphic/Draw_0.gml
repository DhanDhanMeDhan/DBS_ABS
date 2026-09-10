//============================================================
//Config the alpha
//============================================================
#region
if(window_has_focus()){
	for(var i=0;i<global.floor;i++){
		var _alp=ds_tld[i][3];
		if(graphic_show_everything){
			if(_alp<=1){_alp+=graphic_amount_alp_focus;}
		}else{
			if(graphic_focus_mode){
				if(_alp>=0){_alp-=graphic_amount_alp_focus;}
			}else{
				if(graphic_flow_player)and(global.player!=-1)and(instance_exists(global.player)){
					graphic_flow_layer=global.player.z;
				}
				if(graphic_flow_layer>=(i+1)){
					if(_alp<=1){_alp+=graphic_amount_alp_focus;}
				}else{
					if(_alp>=0){_alp-=graphic_amount_alp_focus;}
				}
			}
		}
		ds_tld[i][3]=_alp;
	}
}
#endregion
//============================================================
//drawing everyone
//============================================================
#region
for(var i=0;i<global.floor;i++){
	var _alpha=ds_tld[i][3];
	//============================================================
	#region
	var _low;
	if(global.time==time.night){
		_low=ds_tld[i][0][1];
	}else{
		_low=ds_tld[i][0][0];
	}
	if(surface_exists(_low)) draw_surface_ext(_low,0,0,1,1,0,c_white,_alpha);
	#endregion
	//============================================================
	#region
	for(var k=0;k<ds_grid_height(ds_ppl[i]);k++){
		with(ds_ppl[i][# 0,k]){
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
			if(_alpha>0)or(o_graphic.graphic_focus_mode) event_perform(ev_draw,0);
		}
	}
	#endregion
	//============================================================
	#region
	var _top;
	if(global.time==time.night){
		_top=ds_tld[i][1][1];
	}else{
		_top=ds_tld[i][1][0];
	}
	if(surface_exists(_top)) draw_surface_ext(_top,0,0,1,1,0,c_white,_alpha);
	#endregion
}
#endregion