function scr_talk_wendy(){
	switch global.day{
		case 0:
			#region
			if(global.event[0][1]==progress.non_complete){
				quest_array=[
					[0,quest_type.talk_to,o_wendy],
				];
				non_complete_cutscene[0]=[
					[scr_cutscene_variable,variable.normal,o_wendy,"ppl_talked",true],
					[scr_cutscene_bars,true,true],
					[scr_cutscene_wait,1],
					[scr_cutscene_move_character,o_bunbun,923,1734,false,1,true,true],
					[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_casual_playground_idle_1_3],[s_bunbun_casual_playground_idle_1_3],false,true,[.2,.2]],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_wendy,"sprite_index",s_wendy_casual_playground_idle_1_2],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_wendy,["Fala BunBun..."],-1,[-1,[s_wendy_casual_playground_idle_1_2],[s_wendy_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_wendy,"sprite_index",s_wendy_casual_playground_idle_1_1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Ah, como você está?"],-1,[-1,[s_bunbun_casual_playground_idle_1_3],[s_bunbun_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_wendy,["Estou bem, obrigada"],-1,[-1,[s_wendy_casual_playground_idle_1_1],[s_wendy_casual_playground_talk_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_playground_idle_1_11],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_playground_idle_1_3],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_wendy,["Do que você precisa?"],-1,[-1,[s_wendy_casual_playground_idle_1_1],[s_wendy_casual_playground_talk_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Ah... Eu só queria saber como você está, se você está bem e-"],-1,[-1,[s_bunbun_casual_playground_idle_1_3],[s_bunbun_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_wendy,["Como eu disse, eu estou bem, muito obrigada pela preocupação"],-1,[-1,[s_wendy_casual_playground_idle_1_2],[s_wendy_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Tudo bem, fico feliz que esteja bem..."],-1,[-1,[s_bunbun_casual_playground_idle_1_11],[s_bunbun_casual_playground_talk_1_11]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_playground_idle_1_3],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_wendy,"sprite_index",s_wendy_casual_playground_idle_1_1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_idle_1_downright],
					[scr_cutscene_wait,1],
					[scr_cutscene_bars,true,false],
					[scr_cutscene_variable,variable.normal,o_bunbun,"direction",315],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play]
				];
				complete_cutscene=[
					[scr_cutscene_bars,true,true],
					[scr_cutscene_wait,.5],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_to_look_at",o_wendy],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",true],
					[scr_cutscene_wait,.5],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ela parece irritada..."]],
					[scr_cutscene_wait,.5],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",false],
					[scr_cutscene_wait,.5],
					[scr_cutscene_bars,true,false],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play]
				];
			}
			#endregion
			break;
	}
}