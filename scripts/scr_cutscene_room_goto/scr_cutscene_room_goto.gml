function scr_cutscene_room_goto(){
	cutscene_load=argument1;
	var _reset_room=argument2;
	if(_reset_room){
		switch room{
			case rm_corridors: global.room_data.corridor=0; break;
			case rm_b_bedroom_1: global.room_data.b_bed1=0; break;
			case rm_b_bedroom_2: global.room_data.b_bed2=0; break;
			case rm_b_bedroom_3: global.room_data.b_bed3=0; break;
			case rm_g_bedroom_1: global.room_data.g_bed1=0; break;
			case rm_g_bedroom_2: global.room_data.g_bed2=0; break;
			case rm_g_bedroom_3: global.room_data.g_bed3=0; break;
			case rm_k_bedroom: global.room_data.k_bed=0; break;
			case rm_cafeteria: global.room_data.cafeteria=0; break;
			case rm_house_ext_back: global.room_data.ext1=0; break;
			case rm_bathroom_1: global.room_data.bath1=0; break;
			case rm_bathroom_2: global.room_data.bath2=0; break;
			case rm_infermary: global.room_data.infrm=0; break;
			case rm_forest_1: global.room_data.forst1=0; break;
		}
	}
	room_goto(argument0);
	scr_cutscene_continue();
}