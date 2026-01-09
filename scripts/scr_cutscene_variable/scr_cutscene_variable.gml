function scr_cutscene_variable(){
	var _type=argument0,_obj=argument1,_variable_name=argument2,_value=argument3,_xx=argument4,_yy=argument5;
	switch _type{
		case variable.normal:
			with(_obj){
				variable_instance_set(id,_variable_name,_value)
			}
			break;
		case variable.global:
			variable_global_set(_variable_name,_value);
			break;
		case variable.nearst:
			var _inst=instance_nearest(_xx,_yy,_obj);
			with(_inst){
				variable_instance_set(id,_variable_name,_value);
			}
			break;
		case variable.struct:
			if(variable_struct_exists(global.room_data,_variable_name)){
				variable_struct_set(global.room_data,_variable_name,_value);
			}
			break;
	}
	scr_cutscene_continue();
}
