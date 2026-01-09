non_avaliable_cutscene=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.nearst,o_door_1,"open",true,x,y],
	[scr_cutscene_wait,1],
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
	[scr_cutscene_room_goto,rm_basement_3,true,false],
	[scr_cutscene_variable,variable.normal,o_bunbun,"x",747],
	[scr_cutscene_variable,variable.normal,o_bunbun,"y",670],
	[scr_cutscene_refresh_party_member,true],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
	[scr_cutscene_variable,variable.normal,o_camera,"x",747],
	[scr_cutscene_variable,variable.normal,o_camera,"y",570],
	//[setting the camera x]
	//[setting the camera y]
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
	[scr_cutscene_wait,1],
	[scr_cutscene_move_character,o_bunbun,747,570,false,1,true,true],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false]
];