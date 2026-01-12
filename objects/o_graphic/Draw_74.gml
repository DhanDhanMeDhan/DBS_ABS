

//============================================================
//setting the color
//============================================================
#region
var _c,_nt_light_alpha,_at_light_alpha,_bg_light;
if(!graphic_custom_bg){
	if(global.colored){
		switch global.place{
			case place.interior:
				switch global.time{
					case time.day: 
						_c=c_ltgray;
						_nt_light_alpha=.75;
						_at_light_alpha=.5;
						_bg_light=c_white;
						break;
					case time.night: 
						_c=make_color_rgb(64,51,83);
						_nt_light_alpha=.1;
						_at_light_alpha=1;
						_bg_light=_c;
						break;
				}
				break;
			case place.exterior:
				switch global.time{
					case time.day:
						_c=c_white;
						_nt_light_alpha=1;
						_at_light_alpha=.25;
						_bg_light=c_white;
						break;
					case time.night:
						_c=merge_color(c_dkgray,c_blue,.25);//make_color_rgb(64,51,83);
						_nt_light_alpha=.2;
						_at_light_alpha=1;
						_bg_light=_c;
						break;
				}
				break;
		}
	}else{
		_c=c_white;
		_nt_light_alpha=1;
		_at_light_alpha=1;
		_bg_light=_c;
		if(global.time==time.day){
			_bg_light=c_white;
		}else{
			_bg_light=make_color_rgb(64,51,83);
		}
	}
	layer_background_blend(layer_get_id("Background"),_bg_light);
}else{
	_c=graphic_color_bg;
	_nt_light_alpha=graphic_custom_nt_light_color;
	_at_light_alpha=graphic_custom_at_light_color;
	layer_background_blend(layer_get_id("Background"),graphic_custom_bg_light_color);
}
#endregion
//============================================================
//creating the surface
//============================================================
#region
draw_set_alpha(1);
var _surf=ds_wth[0];
if(surface_exists(_surf)){
	surface_set_target(_surf);
	draw_clear(_c);
	//============================================================
	//drawing the people
	//============================================================
	if(global.colored){
		for(var i=0;i<floors;i++){
			var k=0; repeat ds_grid_height(ds_ppl[i]){
				with(ds_ppl[i][# 0,k]){
					if(object_get_parent(object_index)==o_light){
						gpu_set_blendmode(bm_add);
						repeat floor(image_alpha){
							draw_sprite_ext(sprite_index,image_index,x-global.cx,y-global.cy,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
						}
						draw_sprite_ext(sprite_index,image_index,x-global.cx,y-global.cy,image_xscale,image_yscale,image_angle,image_blend,frac(image_alpha));
						gpu_set_blendmode(bm_normal);
					}else{
						gpu_set_fog(true,_c,1,0);
						draw_sprite_ext(sprite_index,image_index,x-global.cx,y-global.cy,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
						gpu_set_fog(false,0,0,0);
					}
				}
				k++;
			}
			//============================================================
			//drawing the top
			//============================================================
			draw_surface_ext(ds_tld[i][2][0],-global.cx,-global.cy,1,1,0,_c,ds_tld[i][5]);
			var _xx=global.cx/3;
			var _yy=global.cy/3;
			var _yy_limt=(room_height-global.ch)/3;
			draw_surface_ext(ds_tld[i][4][0],_xx-global.cx,_yy-global.cy,1,1,0,_c,ds_tld[i][5]);
		}
	}
	gpu_set_blendmode_ext(bm_dest_color,bm_zero);
	draw_surface_ext(application_surface,0,0,1,1,0,c_white,1);
	gpu_set_blendmode(bm_normal);
	//============================================================
	//gui
	//============================================================
	surface_reset_target();
	draw_surface_ext(_surf,0,0,1,1,0,c_white,1);
	if(instance_exists(o_main_menu)) with(o_main_menu){event_perform(ev_draw,ev_gui);}
	if(instance_exists(o_cutscene)) with(o_cutscene){event_perform(ev_draw,ev_gui);}
	if(instance_exists(o_mini_game)) with(o_mini_game){event_perform(ev_draw,ev_gui);}
	if(instance_exists(o_meal)) with(o_meal){event_perform(ev_draw,ev_gui);}
	if(instance_exists(o_story)) with(o_story){event_perform(ev_draw,ev_gui);}
	if(instance_exists(o_pause)) with(o_pause){event_perform(ev_draw,ev_gui);}
}
#endregion
/*
#region
draw_set_alpha(1);
if(surface_exists(ds_wth[0])){
	surface_set_target(ds_wth[0]);
	draw_clear(_c);
	//============================================================
	//drawing people
	//============================================================
	for(var i=0;i<floors;i++){
		var k=0; repeat ds_grid_height(ds_ppl[i]){
			with(ds_ppl[i][# 0,k]){
				if(object_get_parent(object_index)==o_light){
					gpu_set_blendmode(bm_add);
					repeat floor(image_alpha){
						draw_sprite_ext(sprite_index,image_index,x-global.cx,y-global.cy,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					}
					draw_sprite_ext(sprite_index,image_index,x-global.cx,y-global.cy,image_xscale,image_yscale,image_angle,image_blend,frac(image_alpha));
					gpu_set_blendmode(bm_normal);
				}else{
					gpu_set_fog(true,_c,1,0);
					draw_sprite_ext(sprite_index,image_index,x-global.cx,y-global.cy,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					gpu_set_fog(false,0,0,0);
				}
			}
			k++;
		}
		//============================================================
		//drawing the top
		//============================================================
		draw_surface_ext(ds_tld[i][2],-global.cx,-global.cy,1,1,0,_c,ds_tld[i][5]);
		var _xx=global.cx/3;
		var _yy=global.cy/3;
		var _yy_limt=(room_height-global.ch)/3;
		draw_surface_ext(ds_tld[i][4],_xx-global.cx,_yy-global.cy,1,1,0,_c,ds_tld[i][5]);
	}
	
	//if(instance_exists(o_cutscene)){with(o_cutscene){event_perform(ev_draw,0)}}
	//draw_sprite_ext(s_hud_paper,0,global.cw/2,global.ch/2,xscale,yscale,0,c_white,1);
	
	//============================================================
	//drawing anything
	//============================================================
	gpu_set_blendmode_ext(bm_dest_color,bm_zero);
	ww=1920;
	wh=1080;
	gpu_set_blendenable(false);
	var _scale=ww/window_get_width();
	draw_surface_ext(application_surface,0,0,_scale,_scale,0,c_white,1);
	gpu_set_blendenable(true);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	//============================================================
	draw_surface(ds_wth[0],0,0);
}
//draw_text_color(0,0,xscale,c_red,c_red,c_red,c_red,1);
//draw_text_color(0,16,yscale,c_red,c_red,c_red,c_red,1);
#endregion