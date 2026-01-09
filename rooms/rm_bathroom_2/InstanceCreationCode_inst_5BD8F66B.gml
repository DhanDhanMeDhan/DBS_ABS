non_avaliable_cutscene=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.nearst,o_door_1,"open",true,x,y],
	[scr_cutscene_wait,1],
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
	[scr_cutscene_room_goto,rm_bathroom_1,true,false],
	[scr_cutscene_variable,variable.normal,o_bunbun,"x",737],
	[scr_cutscene_variable,variable.normal,o_bunbun,"y",385],
	[scr_cutscene_refresh_party_member,true],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
	[scr_cutscene_variable,variable.normal,o_camera,"x",737],
	[scr_cutscene_variable,variable.normal,o_camera,"y",403],
	//[setting the camera x]
	//[setting the camera y]
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.nearst,o_door_1,"open",true,499,400],
	[scr_cutscene_wait,1],
	[scr_cutscene_move_character,o_bunbun,737,403,false,1,true,true],
	[scr_cutscene_refresh_party_member,false],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.nearst,o_door_1,"open",false,499,400],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false]
];