//============================================================
//setting the stair
//============================================================
#region
if(instance_exists(o_people)){
	var _new_z=new_z;
	var _inst=instance_place(x,y,o_people);
	if(_inst!=noone){
		if(_inst.z==z){
			_inst.z=_new_z;
			layer_add_instance(layer_get_id(new_layer),_inst);
		}
	}
}
#endregion