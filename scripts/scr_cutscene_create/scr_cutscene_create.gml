function scr_cutscene_create(){
	var inst=instance_create_layer(o_camera.x,o_camera.y,"Instances_Config",o_cutscene);
	with(inst){
		cutscene_play=argument0;
		event_perform(ev_other,ev_user0);
	}
}