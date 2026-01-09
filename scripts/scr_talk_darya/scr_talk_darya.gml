function scr_talk_darya(){
	switch global.day{
		case 0:
			#region
			if(global.event[0][1]==progress.non_complete){
				quest_array=[
					[0,quest_type.talk_to,o_darya],
				];
				non_complete_cutscene[0]=[
					[scr_cutscene_variable,variable.normal,o_danya,"ppl_talked",true],
					[scr_cutscene_variable,variable.normal,o_darya,"ppl_talked",true],
					[scr_cutscene_bars,true,true],
					[scr_cutscene_wait,1],
					[scr_cutscene_move_character,o_bunbun,1759,1431,false,1,true,true],
					[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_casual_playground_idle_1_3],[s_bunbun_casual_playground_idle_1_3],false,true,[.2,.2]],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Olá Danya! Olá Darya"],-1,[-1,[s_bunbun_casual_playground_idle_1_3],[s_bunbun_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_danya,"sprite_index",s_danya_casual_playground_idle_1_2],
					[scr_cutscene_variable,variable.normal,o_darya,"sprite_index",s_darya_casual_playground_idle_1_2],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_danya,["Olá BunBun"],-1,[-1,[s_danya_casual_playground_idle_1_2],[s_danya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_darya,["Olá BunBun"],-1,[-1,[s_darya_casual_playground_idle_1_2],[s_darya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Como vocês estão? Estão lendo o que?"],-1,[-1,[s_bunbun_casual_playground_idle_1_3],[s_bunbun_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_danya,["Estamos bem, estamos lendo uma história"],-1,[-1,[s_danya_casual_playground_idle_1_2],[s_danya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_darya,["Uma história de amor e de terror"],-1,[-1,[s_darya_casual_playground_idle_1_2],[s_darya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Oh! Amor e terror!~ E como seria?"],-1,[-1,[s_bunbun_casual_playground_idle_1_3],[s_bunbun_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_danya,["Fala sobre uma garota que era pobre e tinha que trabalhar todos os dias para ter o que comer"],-1,[-1,[s_danya_casual_playground_idle_1_2],[s_danya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_darya,["Mas então, ao receber sapatos vermelhos, ela firmou um pacto"],-1,[-1,[s_darya_casual_playground_idle_1_2],[s_darya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_danya,["Em troca de dinheiro e fortuna, ela deveria presentear ele com um banquete"],-1,[-1,[s_danya_casual_playground_idle_1_2],[s_danya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_darya,["Pão, vinho e uma boa companhia, essas são as coisas que ela deveria levar para esse banquete"],-1,[-1,[s_darya_casual_playground_idle_1_2],[s_darya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Uau! Me parece interessante! Foi o Fritz quem recomendou essa história para vocês?"],-1,[-1,[s_bunbun_casual_playground_idle_1_3],[s_bunbun_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_danya,["Não foi o Fritz"],-1,[-1,[s_danya_casual_playground_idle_1_2],[s_danya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_darya,["Foi a Grettel"],-1,[-1,[s_darya_casual_playground_idle_1_2],[s_darya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Impressionante na realidade"],-1,[-1,[s_bunbun_casual_playground_idle_1_12],[s_bunbun_casual_playground_talk_1_12]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Mas eu não sabia que vocês eram tão próximas!"],-1,[-1,[s_bunbun_casual_playground_idle_1_12],[s_bunbun_casual_playground_talk_1_12]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_danya,["Somos amigas"],-1,[-1,[s_danya_casual_playground_idle_1_2],[s_danya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_darya,["Bastante amigas"],-1,[-1,[s_darya_casual_playground_idle_1_2],[s_darya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Que legal que legal!!"],-1,[-1,[s_bunbun_casual_playground_idle_1_12],[s_bunbun_casual_playground_talk_1_12]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_playground_idle_1_3],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_danya,["Mas enquanto a você?"],-1,[-1,[s_danya_casual_playground_idle_1_2],[s_danya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_darya,["O que você está fazendo?"],-1,[-1,[s_darya_casual_playground_idle_1_2],[s_darya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Ah, eu? Bom, estou perguntando para os outros como eles estão!"],-1,[-1,[s_bunbun_casual_playground_idle_1_12],[s_bunbun_casual_playground_talk_1_12]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_danya,["Como sempre"],-1,[-1,[s_danya_casual_playground_idle_1_1],[s_danya_casual_playground_talk_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_darya,["Como todo dia"],-1,[-1,[s_darya_casual_playground_idle_1_1],[s_darya_casual_playground_talk_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_playground_idle_1_3],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_danya,["Mas por que você faz isso?"],-1,[-1,[s_danya_casual_playground_idle_1_2],[s_danya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_darya,["Ainda mais todos os dias"],-1,[-1,[s_darya_casual_playground_idle_1_2],[s_darya_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Por que saber que todos estão felizes e bem, me deixa feliz e bem!"],-1,[-1,[s_bunbun_casual_playground_idle_1_12],[s_bunbun_casual_playground_talk_1_12]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["E também por que eu estou pensando em me tornar um Tio!"],-1,[-1,[s_bunbun_casual_playground_idle_1_12],[s_bunbun_casual_playground_talk_1_12]],false,false,[0,.2,.25]],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_danya,["Você serve para ser um Tio"],-1,[-1,[s_danya_casual_playground_idle_1_1],[s_danya_casual_playground_talk_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_darya,["Você combina para ser um tio"],-1,[-1,[s_darya_casual_playground_idle_1_1],[s_darya_casual_playground_talk_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Obrigado!"],-1,[-1,[s_bunbun_casual_playground_idle_1_12],[s_bunbun_casual_playground_talk_1_12]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_danya,"sprite_index",s_danya_casual_playground_idle_1_2],
					[scr_cutscene_variable,variable.normal,o_darya,"sprite_index",s_darya_casual_playground_idle_1_2],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Bom! Vou ver como os outros estão, se cuidem, ok?"],-1,[-1,[s_bunbun_casual_playground_idle_1_12],[s_bunbun_casual_playground_talk_1_12]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_danya,["Sem problemas"],-1,[-1,[s_danya_casual_playground_idle_1_1],[s_danya_casual_playground_talk_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_darya,["Divirta-se"],-1,[-1,[s_darya_casual_playground_idle_1_1],[s_darya_casual_playground_talk_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Vocês também!"],-1,[-1,[s_bunbun_casual_playground_idle_1_12],[s_bunbun_casual_playground_talk_1_12]],false,false,[0,.2,.25]],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_idle_1_downright],
					[scr_cutscene_wait,1],
					[scr_cutscene_bars,true,false],
					[scr_cutscene_variable,variable.normal,o_bunbun,"direction",315],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play]
				];
				complete_cutscene=[
					[scr_cutscene_bars,true,true],
					[scr_cutscene_wait,.5],
					[scr_cutscene_move_character,o_bunbun,1759,1431,false,1,true,true],
					[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_casual_playground_idle_1_3],[s_bunbun_casual_playground_idle_1_3],false,true,[.2,.2]],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["E como está a história?"],-1,[-1,[s_bunbun_casual_playground_idle_1_12],[s_bunbun_casual_playground_talk_1_12]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_danya,["Encantadora"],-1,[-1,[s_danya_casual_playground_idle_1_1],[s_danya_casual_playground_talk_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_darya,["Amendrotadora"],-1,[-1,[s_darya_casual_playground_idle_1_1],[s_darya_casual_playground_talk_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Então está boa!"],-1,[-1,[s_bunbun_casual_playground_idle_1_12],[s_bunbun_casual_playground_talk_1_12]],false,false,[0,.2,.25]],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_idle_1_downright],
					[scr_cutscene_wait,.5],
					[scr_cutscene_bars,true,false],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play]
				];
			}
			#endregion
	}
}