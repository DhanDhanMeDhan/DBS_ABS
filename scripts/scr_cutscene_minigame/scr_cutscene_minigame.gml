function scr_cutscene_minigame(){
	with(instance_create_layer(global.player.x,global.player.y,"Instances_Config",o_mini_game)){
		minigame=argument0;
	}
	scr_cutscene_continue();
}