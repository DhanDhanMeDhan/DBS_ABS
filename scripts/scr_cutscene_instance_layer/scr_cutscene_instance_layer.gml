function scr_cutscene_instance_layer(){
	layer_add_instance(layer_get_id(argument1),argument0.id);
	scr_cutscene_continue();
}