function scr_talk_iriya(){
	switch global.day{
		case 0:
			#region
			if(global.event[0][1]==progress.non_complete){
				quest_array=[
					[0,quest_type.talk_to,o_iriya],
				];
				non_complete_cutscene[0]=[
					[scr_cutscene_variable,variable.normal,o_iriya,"ppl_talked",true],
					[scr_cutscene_bars,true,true],
					[scr_cutscene_wait,1],
					[scr_cutscene_move_character,o_bunbun,1540,1546,false,1,true,true],
					[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_casual_playground_idle_1_5],[s_bunbun_casual_playground_idle_1_5],false,true,[.2,.2]],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Iriya?..."],-1,[-1,[s_bunbun_casual_playground_idle_1_5],[s_bunbun_casual_playground_talk_1_5]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_iriya,["ZZZZ..."],-1,[-1,[s_iriya_casual_playground_idle_1_1],[s_iriya_casual_playground_idle_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Iriya?..."],-1,[-1,[s_bunbun_casual_playground_idle_1_5],[s_bunbun_casual_playground_talk_1_5]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Algumas coisas nunca mudam"],-1,[-1,[s_bunbun_casual_playground_idle_1_13],[s_bunbun_casual_playground_talk_1_13]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Durma bem, Iriya~"],-1,[-1,[s_bunbun_casual_playground_idle_1_13],[s_bunbun_casual_playground_talk_1_13]],false,false,[0,.2,.25]],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_idle_1_downleft],
					[scr_cutscene_variable,variable.normal,o_bunbun,"direction",225],
					[scr_cutscene_wait,1],
					[scr_cutscene_bars,true,false],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play]
				];
				complete_cutscene=[
					[scr_cutscene_bars,true,true],
					[scr_cutscene_wait,1],
					[scr_cutscene_move_character,o_bunbun,1540,1546,false,1,true,true],
					[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_casual_playground_idle_1_5],[s_bunbun_casual_playground_idle_1_5],false,true,[.2,.2]],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_iriya,["ZZZZ..."],-1,[-1,[s_iriya_casual_playground_idle_1_1],[s_iriya_casual_playground_idle_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Durma bem, Iriya~"],-1,[-1,[s_bunbun_casual_playground_idle_1_13],[s_bunbun_casual_playground_talk_1_13]],false,false,[0,.2,.25]],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_idle_1_downleft],
					[scr_cutscene_variable,variable.normal,o_bunbun,"direction",225],
					[scr_cutscene_wait,1],
					[scr_cutscene_bars,true,false],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play]
				];
			}
			#endregion
			break;
	}
}