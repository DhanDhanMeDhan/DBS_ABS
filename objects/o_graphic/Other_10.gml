//============================================================
//creating the surface
//============================================================
#region
if(surface_exists(ds_wth[0])) surface_free(ds_wth[0]);
ds_wth[0]=surface_create(global.cw,global.ch,surface_rgba16float);
for(var i=0;i<global.floor;i++){
	if(surface_exists(ds_tld[i][0][0])) surface_free(ds_tld[i][0][0]);
	ds_tld[i][0][0]=surface_create(room_width,room_height);
	if(surface_exists(ds_tld[i][0][1])) surface_free(ds_tld[i][0][1]);
	ds_tld[i][0][1]=surface_create(room_width,room_height);
	if(surface_exists(ds_tld[i][1][0])) surface_free(ds_tld[i][1][0]);
	ds_tld[i][1][0]=surface_create(room_width,room_height);
	if(surface_exists(ds_tld[i][1][1])) surface_free(ds_tld[i][1][1]);
	ds_tld[i][1][1]=surface_create(room_width,room_height);
}
#endregion
//============================================================
//drawing the surface
//============================================================
#region
var _lay_str;
for(var i=0;i<global.floor;i++){
	for(var k=0;k<5;k++){
		_lay_str="TLD_Floor_"+string(i+1)+"_"+string(k+1)+"_"+string(global.time+1);
		if(layer_exists(_lay_str)){
			var _lay=layer_get_id(_lay_str);
			layer_set_visible(_lay,false);
			surface_set_target(ds_tld[i][0][0]);
			draw_tilemap(layer_tilemap_get_id(_lay),0,0);
			surface_reset_target();
		}
		//============================================================
		_lay_str="TLD_Top_"+string(i+1)+"_"+string(k+1)+"_"+string(global.time+1);
		if(layer_exists(_lay_str)){
			var _lay=layer_get_id(_lay_str);
			layer_set_visible(_lay,false);
			surface_set_target(ds_tld[i][1][0]);
			draw_tilemap(layer_tilemap_get_id(_lay),0,0);
			surface_reset_target();
		}
		//============================================================
		_lay_str="TLD_Top_Leaves_"+string(i+1)+"_"+string(k+1)+"_"+string(global.time+1);
		if(layer_exists(_lay_str)){
			var _lay=layer_get_id(_lay_str);
			layer_set_visible(_lay,false);
			surface_set_target(ds_tld[i][1][0]);
			draw_tilemap(layer_tilemap_get_id(_lay),0,0);
			surface_reset_target();
		}
	}
}
#endregion