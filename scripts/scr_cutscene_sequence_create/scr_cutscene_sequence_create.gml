function scr_cutscene_sequence_create(){
	if(!instance_exists(o_story)){
		with(instance_create_layer(o_camera.x,o_camera.y,o_camera.layer,o_story)){
			moment=argument0;
			video_string=argument1;
			with(other){scr_cutscene_continue();}
		}
	}
}