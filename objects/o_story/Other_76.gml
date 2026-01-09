/*
if(event_data[? "event_type"]=="sequence event"){
	var _t_cutscene_play;
	switch (event_data[? "message"]){
		case "scene_0":
			aval=true;
			break;
		case "scene_end":
			_t_cutscene_play=t_cutscene_play;
			//_t_cutscene_play=[
			//	[scr_cutscene_variable,variable.normal,o_story,"played_cutscene",true],
			//];
			if(!instance_exists(o_cutscene)){
				scr_cutscene_create(_t_cutscene_play);
				played_cutscene=false;
			}
			break;
		case "scene_fritz_1":
			#region
			_t_cutscene_play=[
				[scr_cutscene_bars,false,false],
				[scr_cutscene_variable,variable.normal,o_camera,"can_pause",true],
				[scr_cutscene_reset_all_rooms],
				//[scr_cutscene_circle_wake_up,true,false,592,555,false,false,false,make_color_rgb(36,34,52)],
				//[scr_cutscene_bars,false,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
				[scr_cutscene_variable,variable.normal,o_camera,"x",480],
				[scr_cutscene_variable,variable.normal,o_camera,"y",270],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["A rainha, assim, que pegou seus filhos, os pegou e deu um bom banho quente neles..."],-1,[[-1],[s_fritz_pijama_idle_0_storyteller],[s_fritz_pijama_idle_0_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["O rei, preparava biscoitos com lente quente para eles"],-1,[[-1],[s_fritz_pijama_idle_0_storyteller],[s_fritz_pijama_idle_0_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_variable,variable.normal,o_story,"played_cutscene",true],
				
			];
			if(!instance_exists(o_cutscene)){
				scr_cutscene_create(_t_cutscene_play);
				played_cutscene=false;
			}
			#endregion
			break;
		case "scene_fritz_2":
			#region
			_t_cutscene_play=[
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["E logo em seguida, todos foram dormir"],-1,[[-1],[s_fritz_pijama_idle_1_storyteller],[s_fritz_pijama_idle_1_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Com o rei"],-1,[[-1],[s_fritz_pijama_idle_2_storyteller],[s_fritz_pijama_idle_2_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["E com a rainha"],-1,[[-1],[s_fritz_pijama_idle_3_storyteller],[s_fritz_pijama_idle_3_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_variable,variable.normal,o_fritz,"sprite_index",s_fritz_pijama_idle_1_storyteller],
				[scr_cutscene_variable,variable.normal,o_story,"played_cutscene",true],
			];
			if(!instance_exists(o_cutscene)){
				scr_cutscene_create(_t_cutscene_play);
				played_cutscene=false;
			}
			#endregion
			break;
		case "scene_fritz_3":
			#region
			_t_cutscene_play=[
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Seus pais leram uma linda história para eles dormirem"],-1,[[-1],[s_fritz_pijama_idle_0_storyteller],[s_fritz_pijama_idle_0_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["E eles dormiram felizes e quentinhos naquela noite"],-1,[[-1],[s_fritz_pijama_idle_1_storyteller],[s_fritz_pijama_idle_1_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Felizes por terem uns aos outros..."],-1,[[-1],[s_fritz_pijama_idle_0_storyteller],[s_fritz_pijama_idle_0_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_variable,variable.normal,o_story,"played_cutscene",true],
			];
			if(!instance_exists(o_cutscene)){
				scr_cutscene_create(_t_cutscene_play);
				played_cutscene=false;
			}
			#endregion
			break;
		case "scene_bunbun_find":
			_t_cutscene_play=[
				[scr_cutscene_wait,2],
				[scr_cutscene_variable,variable.normal,o_story,"played_cutscene",true],
			]
			if(!instance_exists(o_cutscene)){
				scr_cutscene_create(_t_cutscene_play);
				played_cutscene=false;
			}
			break;
	}
}