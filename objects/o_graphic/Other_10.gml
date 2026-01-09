//============================================================
//creating the surface
//============================================================
#region
if(surface_exists(ds_wth[0])) surface_free(ds_wth[0]);
ds_wth[0]=surface_create(global.cw,global.ch,surface_rgba16float);
var i=0; repeat floors{
	if(surface_exists(ds_tld[i][0][0])) surface_free(ds_tld[i][0][0]);
	ds_tld[i][0][0]=surface_create(room_width,room_height);
	if(surface_exists(ds_tld[i][0][1])) surface_free(ds_tld[i][0][1]);
	ds_tld[i][0][1]=surface_create(room_width,room_height);
	if(surface_exists(ds_tld[i][1][0])) surface_free(ds_tld[i][1][0]);
	ds_tld[i][1][0]=surface_create(room_width,room_height);
	if(surface_exists(ds_tld[i][1][1])) surface_free(ds_tld[i][1][1]);
	ds_tld[i][1][1]=surface_create(room_width,room_height);
	if(surface_exists(ds_tld[i][2][0])) surface_free(ds_tld[i][2][0]);
	ds_tld[i][2][0]=surface_create(room_width,room_height);
	if(surface_exists(ds_tld[i][2][1])) surface_free(ds_tld[i][2][1]);
	ds_tld[i][2][1]=surface_create(room_width,room_height);
	if(surface_exists(ds_tld[i][3][0])) surface_free(ds_tld[i][3][0]);
	ds_tld[i][3][0]=surface_create(room_width,room_height);
	if(surface_exists(ds_tld[i][3][1])) surface_free(ds_tld[i][3][1]);
	ds_tld[i][3][1]=surface_create(room_width,room_height);
	if(surface_exists(ds_tld[i][4][0])) surface_free(ds_tld[i][4][0]);
	ds_tld[i][4][0]=surface_create(room_width,room_height);
	if(surface_exists(ds_tld[i][4][1])) surface_free(ds_tld[i][4][1]);
	ds_tld[i][4][1]=surface_create(room_width,room_height);
	i++
}
#endregion

//============================================================
//drawing the surface
//============================================================
#region
for(var i=0;i<floors;i++){
	#region bottom
	for(var k=0;k<5;k++){
		var _lay_str="TLD_Floor_"+string(global.color)+"_"+string(i+1)+"_"+string(k+1);
		if(layer_exists(_lay_str)){
			var _lay_id=layer_get_id(_lay_str);
			layer_set_visible(_lay_id,false);
			surface_set_target(ds_tld[i][0][0]);
			draw_tilemap(layer_tilemap_get_id(_lay_id),0,0);
			surface_reset_target();
		}
			var _lay_str="TLD_Floor_"+string(global.color+1)+"_"+string(i+1)+"_"+string(k+1);
			if(layer_exists(_lay_str)){
				var _lay_id=layer_get_id(_lay_str);
				layer_set_visible(_lay_id,false);
				surface_set_target(ds_tld[i][0][1]);
				draw_tilemap(layer_tilemap_get_id(_lay_id),0,0);
				surface_reset_target();
			}
	}
	#endregion
	//============================================================
	#region top
	for(var k=0;k<5;k++){
		var _lay_str="TLD_Top_"+string(global.color)+"_"+string(i+1)+"_"+string(k+1);
		if(layer_exists(_lay_str)){
			var _lay_id=layer_get_id(_lay_str);
			layer_set_visible(_lay_id,false);
			#region
			surface_set_target(ds_tld[i][1][0]);
			draw_tilemap(layer_tilemap_get_id(_lay_id),0,0);
			surface_reset_target();
			#endregion
			#region
			surface_set_target(ds_tld[i][2][0]);
			gpu_set_fog(true,c_white,1,0);
			draw_tilemap(layer_tilemap_get_id(_lay_id),0,0);
			gpu_set_fog(false,0,0,0);
			surface_reset_target();
			#endregion
		}
			var _lay_str="TLD_Top_"+string(global.color+1)+"_"+string(i+1)+"_"+string(k+1);
			if(layer_exists(_lay_str)){
				var _lay_id=layer_get_id(_lay_str);
				layer_set_visible(_lay_id,false);
				#region
				surface_set_target(ds_tld[i][1][1]);
				draw_tilemap(layer_tilemap_get_id(_lay_id),0,0);
				surface_reset_target();
				#endregion
				#region
				surface_set_target(ds_tld[i][2][1]);
				gpu_set_fog(true,c_white,1,0);
				draw_tilemap(layer_tilemap_get_id(_lay_id),0,0);
				gpu_set_fog(false,0,0,0);
				surface_reset_target();
				#endregion
			}
	}
	#endregion
	//============================================================
	#region top
	for(var k=0;k<5;k++){
		var _lay_str="TLD_Top_Leaves_"+string(global.color)+"_"+string(i+1)+"_"+string(k+1);
		if(layer_exists(_lay_str)){
			var _lay_id=layer_get_id(_lay_str);
			layer_set_visible(_lay_id,false);
			#region
			surface_set_target(ds_tld[i][3][0]);
			draw_tilemap(layer_tilemap_get_id(_lay_id),0,0);
			surface_reset_target();
			#endregion
			#region
			surface_set_target(ds_tld[i][4][0]);
			gpu_set_fog(true,c_white,1,0);
			draw_tilemap(layer_tilemap_get_id(_lay_id),0,0);
			gpu_set_fog(false,0,0,0);
			surface_reset_target();
			#endregion
		}
			var _lay_str="TLD_Top_Leaves_"+string(global.color+1)+"_"+string(i+1)+"_"+string(k+1);
			if(layer_exists(_lay_str)){
				var _lay_id=layer_get_id(_lay_str);
				layer_set_visible(_lay_id,false);
				#region
				surface_set_target(ds_tld[i][3][1]);
				draw_tilemap(layer_tilemap_get_id(_lay_id),0,0);
				surface_reset_target();
				#endregion
				#region
				surface_set_target(ds_tld[i][4][1]);
				gpu_set_fog(true,c_white,1,0);
				draw_tilemap(layer_tilemap_get_id(_lay_id),0,0);
				gpu_set_fog(false,0,0,0);
				surface_reset_target();
				#endregion
			}
	}
	#endregion
}
#endregion