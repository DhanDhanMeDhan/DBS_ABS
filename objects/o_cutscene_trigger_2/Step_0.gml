event_inherited();
//============================================================
//creating the layer
//============================================================
if(instance_exists(global.player)){
	if(global.player.z==z){
		if(place_meeting(x,y,global.player))and(!instance_exists(o_cutscene)){
			scr_cutscene_create(t_cutscene_play);
			instance_destroy();
		}
	}
}