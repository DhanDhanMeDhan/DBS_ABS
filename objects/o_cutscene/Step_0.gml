//============================================================
//other things
//============================================================
#region
x=o_camera.x;
y=o_camera.y;
if(window_has_focus())and(!global.pause){
	if(scene_index>array_length(cutscene_play)-1){
		instance_destroy();
	}else{
		scr_cutscene_execute(current_scene[0],current_scene_array);
	}
}else{
	with(o_people){image_speed=0;}
	with(o_object){image_speed=0;}
}
#endregion