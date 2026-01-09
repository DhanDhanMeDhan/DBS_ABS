function scr_cutscene_set_children(){
	if(!instance_exists(o_children_set)) instance_create_layer(x,y,layer,o_children_set);
}