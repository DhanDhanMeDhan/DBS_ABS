//============================================================
//sorting the people layer
//============================================================
#region
for(var i=0;i<floors;i++){
	var _lay_str="Instances_People_"+string(i+1);
	if(layer_exists(_lay_str)){
		var _ds_elements=layer_get_all_elements(layer_get_id(_lay_str));
		var _ds_elements_size=array_length(_ds_elements);
		ds_grid_resize(ds_ppl[i],2,_ds_elements_size);
		var k=0; repeat _ds_elements_size{
			if(layer_get_element_type(_ds_elements[k])==layerelementtype_instance){
				var _inst=layer_instance_get_instance(_ds_elements[k]);
					_inst.z=i+1;
					_inst.block=asset_get_index("o_block_"+string(i+1))
					ds_ppl[i][# 0,k]=_inst;
					ds_ppl[i][# 1,k]=_inst.y;
			}
			k++;
		}
	}
	var _lay_str="Instances_Light_"+string(i+1);
	if(layer_exists(_lay_str)){
		var _ds_elements=layer_get_all_elements(layer_get_id(_lay_str));
		var _ds_elements_size=array_length(_ds_elements);
		array_resize(ds_lgt[i],_ds_elements_size);
		var k=0; repeat _ds_elements_size{
			if(layer_get_element_type(_ds_elements[k])==layerelementtype_instance){
				var _inst=layer_instance_get_instance(_ds_elements[k]);
					ds_lgt[i][k]=_inst;
			}
			k++;
		}
	}
	ds_grid_sort(ds_ppl[i],1,true);
}
#endregion
//============================================================
//reseting the surfaces
//============================================================
#region
if(global.window_change){event_perform(ev_other,ev_user0);}
#endregion