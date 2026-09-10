//============================================================
//sorting the people layer
//============================================================
#region
if(window_has_focus()){
	for(var i=0;i<global.floor;i++){
		var _lay_str="Instances_People_"+string(i+1);
		if(layer_exists(_lay_str)){
			//show_debug_message(_lay_str+" layer identificada");
			var _ds_element=layer_get_all_elements(layer_get_id(_lay_str));
			var _ds_element_num=array_length(_ds_element);
			//show_debug_message("Grid modificada, tamanho atual: "+string(_ds_element_num));
			ds_grid_resize(ds_ppl[i],2,_ds_element_num);
			for(var k=0;k<_ds_element_num;k++){
				var _inst=layer_instance_get_instance(_ds_element[k]);
				_inst.z=i+1;
				_inst.block=asset_get_index("o_block_"+string(i+1));
				ds_ppl[i][# 0,k]=_inst;
				ds_ppl[i][# 1,k]=_inst.y;
			}
		}
		ds_grid_sort(ds_ppl[i],1,true);
	}
}
#endregion
//============================================================
//reseting the surfaces
//============================================================
#region
if(global.window_change) event_perform(ev_other,ev_user0);
#endregion