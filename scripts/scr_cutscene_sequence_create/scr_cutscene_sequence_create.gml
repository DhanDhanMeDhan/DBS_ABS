function scr_cutscene_video(){
	global.story_moment=argument0;
	instance_create_layer(x,y,layer,o_story);
	scr_cutscene_continue()
}