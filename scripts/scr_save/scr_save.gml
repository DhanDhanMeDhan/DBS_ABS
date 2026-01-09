function save_room(){
#region
	#region
	var _person_num=instance_number(o_people);
	var _object_num=instance_number(o_object);
	var _cutscene_1_num=instance_number(o_cutscene_trigger_1);
	var _cutscene_2_num=instance_number(o_cutscene_trigger_2);
	var _cutscene_3_num=instance_number(o_cutscene_trigger_3);
	var _room_struc={
		person_num: _person_num,
		person_data: array_create(_person_num),
		object_num: _object_num,
		object_data: array_create(_object_num),
		cutscene_1_num: _cutscene_1_num,
		cutscene_1_data: array_create(_cutscene_1_num),
		cutscene_2_num: _cutscene_2_num,
		cutscene_2_data: array_create(_cutscene_2_num),
		cutscene_3_num: _cutscene_3_num,
		cutscene_3_data: array_create(_cutscene_3_num),
		hideseek_num : false,
		audio: array_create(2),
	}
	#endregion
	
	#region person==============================================
	for(var i=0;i<_person_num;i++){
		var _inst=instance_find(o_people,i);
		var _path=-1;
		//if(_inst.path_index!=-1) 
		_room_struc.person_data[i]={
			obj: object_get_name(_inst.object_index),
			layer: layer_get_name(_inst.layer),
			x: _inst.x,
			y: _inst.y,
			ppl_talked: _inst.ppl_talked,
			ppl_act_state: _inst.ppl_act_state,
			sprite_index: _inst.sprite_index,
			image_speed: _inst.image_speed,
			ppl_custom_img_spd: _inst.ppl_custom_img_spd,
			direction: _inst.direction,
			persistent: _inst.persistent,
			ppl_looking_to: _inst.ppl_looking_to,
			ppl_to_look_at: _inst.ppl_to_look_at,
			ppl_can_play: _inst.ppl_can_play,
			ppl_flowing: _inst.ppl_flowing,
			ppl_path_index: _inst.ppl_path_index,
			ppl_path_spd: _inst.path_speed,
			ppl_path_pos: _inst.path_position,
			ppl_pos: _inst.pos,
			ppl_clothe: _inst.clothe,
			ppl_can_interact: _inst.can_interact,
			spd: _inst.spd,
		}
	}
	#endregion
	#region object==============================================
	for(var i=0;i<_object_num;i++){
		var _inst=instance_find(o_object,i);
		_room_struc.object_data[i]={
			obj: object_get_name(_inst.object_index),
			x: _inst.x,
			y: _inst.y,
			layer: layer_get_name(_inst.layer),
			sprite_index: _inst.sprite_index,
			image_index: _inst.image_index,
			image_speed: _inst.image_speed,
			image_xscale: _inst.image_xscale,
			image_yscale: _inst.image_yscale,
			
		}
	}
	#endregion
	#region cutscene============================================
	for(var i=0;i<_cutscene_1_num;i++){
		var _inst=instance_find(o_cutscene_trigger_1,i);
		_room_struc.cutscene_1_data[i]={
			x: _inst.x,
			y: _inst.y,
			layer: layer_get_name(_inst.layer),
			ppl_talked : _inst.ppl_talked,
			x_scale: _inst.image_xscale,
			y_scale: _inst.image_yscale,
			image_angle: _inst.image_angle,
			complete_cutscene : _inst.complete_cutscene,
			non_complete_cutscene : _inst.non_complete_cutscene,
			non_avaliable_cutscene : _inst.non_avaliable_cutscene,
			quest_array : _inst.quest_array,
			quest_index : _inst.quest_index,
			complete : _inst.complete,
		}
	}
	
	for(var i=0;i<_cutscene_2_num;i++){
		var _inst=instance_find(o_cutscene_trigger_2,i);
		_room_struc.cutscene_2_data[i]={
			x: _inst.x,
			y: _inst.y,
			layer: layer_get_name(_inst.layer),
			x_scale: _inst.image_xscale,
			y_scale: _inst.image_yscale,
			image_angle: _inst.image_angle,
			complete_cutscene : _inst.complete_cutscene,
			non_complete_cutscene : _inst.non_complete_cutscene,
			non_avaliable_cutscene : _inst.non_avaliable_cutscene,
			quest_array : _inst.quest_array,
			quest_index : _inst.quest_index,
			complete : _inst.complete,
		}
	}
	
	for(var i=0;i<_cutscene_3_num;i++){
		var _inst=instance_find(o_cutscene_trigger_3,i);
		_room_struc.cutscene_3_data[i]={
			x: _inst.x,
			y: _inst.y,
			layer: layer_get_name(_inst.layer),
			x_scale: _inst.image_xscale,
			y_scale: _inst.image_yscale,
			image_angle: _inst.image_angle,
			complete_cutscene : _inst.complete_cutscene,
			non_complete_cutscene : _inst.non_complete_cutscene,
			non_avaliable_cutscene : _inst.non_avaliable_cutscene,
			quest_array : _inst.quest_array,
			quest_index : _inst.quest_index,
			complete : _inst.complete,
		}
	}
	#endregion
	#region other data==========================================
	_room_struc.audio[0]=global.current_bgm;
	_room_struc.audio[1]=global.current_bgs;
	//==========================================================
	switch room{
		case rm_corridors: global.room_data.corridor=_room_struc; break;
		case rm_b_bedroom_1: global.room_data.b_bed1=_room_struc; break;
		case rm_b_bedroom_2: global.room_data.b_bed2=_room_struc; break;
		case rm_b_bedroom_3: global.room_data.b_bed3=_room_struc; break;
		case rm_g_bedroom_1: global.room_data.g_bed1=_room_struc; break;
		case rm_g_bedroom_2: global.room_data.g_bed2=_room_struc; break;
		case rm_g_bedroom_3: global.room_data.g_bed3=_room_struc; break;
		case rm_k_bedroom: global.room_data.k_bed=_room_struc; break;
		case rm_cafeteria: global.room_data.cafeteria=_room_struc; break;
		case rm_house_ext_back: global.room_data.ext1=_room_struc; break;
		case rm_bathroom_1: global.room_data.bath1=_room_struc; break;
		case rm_bathroom_2: global.room_data.bath2=_room_struc; break;
		case rm_infermary: global.room_data.infrm=_room_struc; break;
		case rm_forest_1: global.room_data.forst1=_room_struc; break;
	}
	#endregion
#endregion
}
function load_room(){
#region
	var _room_struc=0;
	show_debug_message(room_get_name(room));
	switch room{
		case rm_corridors: _room_struc=global.room_data.corridor; break;
		case rm_b_bedroom_1: _room_struc=global.room_data.b_bed1; break;
		case rm_b_bedroom_2: _room_struc=global.room_data.b_bed2; break;
		case rm_b_bedroom_3: _room_struc=global.room_data.b_bed3; break;
		case rm_g_bedroom_1: _room_struc=global.room_data.g_bed1; break;
		case rm_g_bedroom_2: _room_struc=global.room_data.g_bed2; break;
		case rm_g_bedroom_3: _room_struc=global.room_data.g_bed3; break;
		case rm_k_bedroom: _room_struc=global.room_data.k_bed; break;
		case rm_cafeteria: _room_struc=global.room_data.cafeteria; break;
		case rm_house_ext_back: _room_struc=global.room_data.ext1; break;
		case rm_bathroom_1: _room_struc=global.room_data.bath1; break;
		case rm_bathroom_2: _room_struc=global.room_data.bath2; break;
		case rm_infermary: _room_struc=global.room_data.infrm; break;
		case rm_forest_1: _room_struc=global.room_data.forst1; break;
	}
	if(!is_struct(_room_struc)) exit;
	//==========================================================
	#region person
	if(instance_exists(o_people)){instance_destroy(o_people);}
	show_debug_message("Cock")
	for(var i=0; i<_room_struc.person_num;i++){
		var _obj=_room_struc.person_data[i].obj;
		var _layer=_room_struc.person_data[i].layer;
		var _xx=_room_struc.person_data[i].x;
		var _yy=_room_struc.person_data[i].y;
		show_debug_message(_obj);
		with(instance_create_layer(_xx,_yy,string(_layer),asset_get_index(_obj))){
			ppl_talked=_room_struc.person_data[i].ppl_talked;
			ppl_act_state=_room_struc.person_data[i].ppl_act_state;
			sprite_index=_room_struc.person_data[i].sprite_index;
			image_speed=_room_struc.person_data[i].image_speed;
			ppl_custom_img_spd=_room_struc.person_data[i].ppl_custom_img_spd;
			direction=_room_struc.person_data[i].direction;
			persistent=_room_struc.person_data[i].persistent;
			ppl_looking_to=_room_struc.person_data[i].ppl_looking_to;
			ppl_to_look_at=_room_struc.person_data[i].ppl_to_look_at;
			ppl_can_play=_room_struc.person_data[i].ppl_can_play;
			ppl_flowing=_room_struc.person_data[i].ppl_flowing;
			var _ppl_path=_room_struc.person_data[i].ppl_path_index;
			path_speed=_room_struc.person_data[i].ppl_path_spd;
			path_position=_room_struc.person_data[i].ppl_path_pos
			pos=_room_struc.person_data[i].ppl_pos;
			clothe=_room_struc.person_data[i].ppl_clothe;
			ppl_can_interact=_room_struc.person_data[i].ppl_can_interact;
			spd=_room_struc.person_data[i].spd;
			if(_ppl_path!=-1){
				path_start(_ppl_path,spd,path_action_restart,true);
			}
		}
	}
	#endregion
	//==========================================================
	#region object
	if(instance_exists(o_object)){instance_destroy(o_object);}
	for(var i=0;i<_room_struc.object_num;i++){
		var _obj=_room_struc.object_data[i].obj;
		var _xx=_room_struc.object_data[i].x;
		var _yy=_room_struc.object_data[i].y;
		var _layer=_room_struc.object_data[i].layer;
		with(instance_create_layer(_xx,_yy,string(_layer),asset_get_index(_obj))){
			sprite_index=_room_struc.object_data[i].sprite_index;
			image_index=_room_struc.object_data[i].image_index;
			image_speed=_room_struc.object_data[i].image_speed;
			image_xscale=_room_struc.object_data[i].image_xscale;
			image_yscale=_room_struc.object_data[i].image_yscale;
		}
	}
	#endregion
	//==========================================================
	#region
	if(instance_exists(o_cutscene_trigger_3)){instance_destroy(o_cutscene_trigger_3)}
	for(var i=0;i<_room_struc.cutscene_3_num;i++){
		var _xx=_room_struc.cutscene_3_data[i].x;
		var _yy=_room_struc.cutscene_3_data[i].y;
		var _layer=_room_struc.cutscene_3_data[i].layer;
		with(instance_create_layer(_xx,_yy,string(_layer),o_cutscene_trigger_3)){
			image_xscale=_room_struc.cutscene_3_data[i].x_scale;
			image_yscale=_room_struc.cutscene_3_data[i].y_scale;
			image_angle=_room_struc.cutscene_3_data[i].image_angle;
			quest_array=_room_struc.cutscene_3_data[i].quest_array;
			quest_index=_room_struc.cutscene_3_data[i].quest_index;
			complete_cutscene=_room_struc.cutscene_3_data[i].complete_cutscene;
			non_complete_cutscene=_room_struc.cutscene_3_data[i].non_complete_cutscene;
			non_avaliable_cutscene=_room_struc.cutscene_3_data[i].non_avaliable_cutscene;
			complete=_room_struc.cutscene_3_data[i].complete;
		}
	}
	
	if(instance_exists(o_cutscene_trigger_1)){instance_destroy(o_cutscene_trigger_1)}
	for(var i=0;i<_room_struc.cutscene_1_num;i++){
		var _xx=_room_struc.cutscene_1_data[i].x;
		var _yy=_room_struc.cutscene_1_data[i].y;
		var _layer=_room_struc.cutscene_1_data[i].layer;
		with(instance_create_layer(_xx,_yy,string(_layer),o_cutscene_trigger_1)){
			ppl_talked=_room_struc.cutscene_1_data[i].ppl_talked;
			image_xscale=_room_struc.cutscene_1_data[i].x_scale;
			image_yscale=_room_struc.cutscene_1_data[i].y_scale;
			image_angle=_room_struc.cutscene_1_data[i].image_angle;
			quest_array=_room_struc.cutscene_1_data[i].quest_array;
			quest_index=_room_struc.cutscene_1_data[i].quest_index;
			complete_cutscene=_room_struc.cutscene_1_data[i].complete_cutscene;
			non_complete_cutscene=_room_struc.cutscene_1_data[i].non_complete_cutscene;
			non_avaliable_cutscene=_room_struc.cutscene_1_data[i].non_avaliable_cutscene;
			complete=_room_struc.cutscene_1_data[i].complete;
		}
	}
	#endregion
	//==========================================================
	#region
	//hide_n_seek===============================================
	if(_room_struc.hideseek_num){
		if(!instance_exists(o_hide_n_seek)){
			instance_create_layer(o_camera.x,o_camera.y,"Instances_Config",o_hide_n_seek);
		}
	}
	#endregion
	//==========================================================
	#region audio
	if(_room_struc.audio[0]!=-1){
		var _bgm=_room_struc.audio[0];
		global.current_bgm=_bgm;
		if(!audio_is_playing(_bgm)){
			var _audio_bgm=audio_play_sound(_bgm,10,true);
			audio_sound_gain(_audio_bgm,1,1000);
		}
	}
	if(_room_struc.audio[1]!=-1){
		var _bgs=_room_struc.audio[1];
		global.current_bgs=_bgs;
		if(!audio_is_playing(_bgs)){
			var _audio_bgs=audio_play_sound(_bgs,10,true);
			audio_sound_gain(_audio_bgs,1,1000);
		}
	}
	#endregion
#endregion
}
function save_game(){
#region
	var _save_array=array_create(0);
	save_room();

	global.cam_data.save_x=o_camera.x;
	global.cam_data.save_y=o_camera.y;
	global.cam_data.save_rm=room_get_name(room);
	global.cam_data.save_prt=global.party;
	global.cam_data.progress=global.event;
	global.cam_data.color=global.color;
	global.cam_data.data=[
		date_get_day(date_current_datetime()),
		date_get_month(date_current_datetime()),
		date_get_year(date_current_datetime()),
		date_get_hour(date_current_datetime()),
		date_get_minute(date_current_datetime()),
	];
	global.cam_data.flow_npc=o_camera.flow_npc;
	global.cam_data.npc_flow=o_camera.npc_to_flow;
	
	array_push(_save_array,global.cam_data);
	array_push(_save_array,global.room_data);
	
	var _file=global.save_fle;
	var _json=json_stringify(_save_array);
	var _buffer=buffer_create(string_byte_length(_json)+1,buffer_fixed,1);
	buffer_write(_buffer,buffer_string,_json);
	buffer_save(_buffer,_file);
	buffer_delete(_buffer);
#endregion
}

function load_game(){
	var _file=global.save_fle;
	if(!file_exists(_file)) exit;
	var _buffer=buffer_load(_file);
	var _json=buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer);
	
	var _load_array=json_parse(_json);
	global.cam_data=array_get(_load_array,0);
	global.room_data=array_get(_load_array,1);
	
	global.event=global.cam_data.progress;
	global.party=global.cam_data.save_prt;
	o_camera.x=global.cam_data.save_x;
	o_camera.y=global.cam_data.save_y;
	o_camera.flow_npc=global.cam_data.flow_npc;
	o_camera.npc_to_flow=global.cam_data.npc_flow;
	room_goto(asset_get_index(global.cam_data.save_rm));
	show_debug_message(room_get_name(room));
	cutscene_load=true;
	//load_room();
}