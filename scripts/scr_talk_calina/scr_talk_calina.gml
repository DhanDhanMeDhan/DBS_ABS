function scr_talk_calina(){
	switch global.day{
		case 0:
			#region
			if(global.event[0][1]==progress.non_complete){
				quest_array=[
					[0,quest_type.talk_to,o_calina]
				];
				non_complete_cutscene[0]=[
					[scr_cutscene_variable,variable.normal,o_calina,"ppl_talked",true],
					[scr_cutscene_bars,true,true],
					[scr_cutscene_wait,1],
					[scr_cutscene_move_character,o_bunbun,498,1530,false,1,true,true],
					[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_casual_playground_idle_1_7],[s_bunbun_casual_playground_idle_1_7],false,true,[.2,.2]],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Olá, Calina! O que está desenhando dessa vez?","¡Holis, Calina! ¿Que diseñas ahora?","Hi Calina! What are you drawing this time?"],-1,[-1,[s_bunbun_casual_playground_idle_1_7],[s_bunbun_casual_playground_talk_1_7]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Ah, olá BunBun!!","¡¡Ah, hola, BunBun!!","Ah, hi BunBun!!"],-1,[-1,[s_calina_casual_playground_idle_1_3],[s_calina_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Ah! Nada de muito importante"],-1,[-1,[s_calina_casual_playground_idle_1_2],[s_calina_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_calina,"sprite_index",s_calina_casual_playground_idle_1_3],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Ah, deixa eu ver!"],-1,[-1,[s_bunbun_casual_playground_idle_1_9],[s_bunbun_casual_playground_talk_1_9]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Ah... Bom... Mas..."],-1,[-1,[s_calina_casual_playground_idle_1_2],[s_calina_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Mas você tem que me prometer que não vai contar para ninguém!"],-1,[-1,[s_calina_casual_playground_idle_1_3],[s_calina_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Claro, eu não vou contar para ninguém!!"],-1,[-1,[s_bunbun_casual_playground_idle_1_9],[s_bunbun_casual_playground_talk_1_9]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Bom..."],-1,[-1,[s_calina_casual_playground_idle_1_2],[s_calina_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_playground_idle_1_10],
					[scr_cutscene_variable,variable.normal,o_calina,"sprite_index",s_calina_casual_playground_idle_1_1],
					[scr_cutscene_wait,2],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Oh... Bom..."],-1,[-1,[s_bunbun_casual_playground_idle_1_10],[s_bunbun_casual_playground_talk_1_10]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Eu não esperava por isso"],-1,[-1,[s_bunbun_casual_playground_idle_1_10],[s_bunbun_casual_playground_talk_1_10]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_playground_idle_1_7],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Ah... Eu não deveria ter mostrado"],-1,[-1,[s_calina_casual_playground_idle_1_6],[s_calina_casual_playground_talk_1_6]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Não não não! Eu só não esperava que você desenhasse... Ele"],-1,[-1,[s_bunbun_casual_playground_idle_1_7],[s_bunbun_casual_playground_talk_1_7]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Eu vou apagar isso"],-1,[-1,[s_calina_casual_playground_idle_1_5],[s_calina_casual_playground_talk_1_5]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_calina,"sprite_index",s_calina_casual_playground_idle_1_3],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Não, por favor! Eu não vou contar para ninguém! E Ficou bonito de verdade!"],-1,[-1,[s_bunbun_casual_playground_idle_1_9],[s_bunbun_casual_playground_talk_1_9]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Apenas fiquei curioso pelo fato de você ter desenhado justamente ele..."],-1,[-1,[s_bunbun_casual_playground_idle_1_9],[s_bunbun_casual_playground_talk_1_9]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_playground_idle_1_7],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Bom... Sobre isso..."],-1,[-1,[s_calina_casual_playground_idle_1_2],[s_calina_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_playground_idle_1_10],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Eu acho ele legal e descolado!"],-1,[-1,[s_calina_casual_playground_idle_1_4],[s_calina_casual_playground_talk_1_4]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Então eu pensei em desenhar ele..."],-1,[-1,[s_calina_casual_playground_idle_1_3],[s_calina_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_playground_idle_1_7],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Mas eu acho melhor eu apagar isso..."],-1,[-1,[s_calina_casual_playground_idle_1_6],[s_calina_casual_playground_talk_1_6]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_calina,"sprite_index",s_calina_casual_playground_idle_1_3],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Por que você não entrega para ele?"],-1,[-1,[s_bunbun_casual_playground_idle_1_7],[s_bunbun_casual_playground_talk_1_7]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Assim, talvez ele fique bem feliz com o desenho que tu fez para ele, eu ficaria"],-1,[-1,[s_bunbun_casual_playground_idle_1_8],[s_bunbun_casual_playground_talk_1_8]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Ainda mais por esse motivo! \"Eu te acho legal e descolado\"!! Isso é um grande motivo!!"],-1,[-1,[s_bunbun_casual_playground_idle_1_9],[s_bunbun_casual_playground_talk_1_9]],false,false,[0,.2,.25]],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_calina,"sprite_index",s_calina_casual_playground_idle_1_1],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Sabe, BunBun...."],-1,[-1,[s_calina_casual_playground_idle_1_3],[s_calina_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Eu vou terminar esse desenho e quando estiver pronto, eu entrego para ele!!"],-1,[-1,[s_calina_casual_playground_idle_1_4],[s_calina_casual_playground_talk_1_4]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Perfeito, Calina!! Se precisar de qualquer coisa estou aqui!"],-1,[-1,[s_bunbun_casual_playground_idle_1_9],[s_bunbun_casual_playground_talk_1_9]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["E assim que você terminar, me mostra, ok?"],-1,[-1,[s_bunbun_casual_playground_idle_1_9],[s_bunbun_casual_playground_talk_1_9]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Pode deixar, BunBun! Obrigada, de verdade!!"],-1,[-1,[s_calina_casual_playground_idle_1_4],[s_calina_casual_playground_talk_1_4]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_calina,"sprite_index",s_calina_casual_playground_idle_1_1],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_idle_1_down],
					[scr_cutscene_variable,variable.normal,o_bunbun,"direction",270],
					[scr_cutscene_wait,1],
					[scr_cutscene_bars,true,false],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play]
				];
				complete_cutscene=[
					[scr_cutscene_bars,true,true],
					[scr_cutscene_wait,1],
					[scr_cutscene_move_character,o_bunbun,498,1530,false,1,true,true],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_to_look_at",o_calina],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",true],
					[scr_cutscene_variable,variable.normal,o_calina,"sprite_index",s_calina_casual_playground_idle_1_3],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oi, Calina! Como está indo o desenho?"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Ah! Estou finalizando ainda!!"],-1,[-1,[s_calina_casual_playground_idle_1_4],[s_calina_casual_playground_talk_1_4]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_calina,"sprite_index",s_calina_casual_playground_idle_1_3],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não esqueça de mostrar ele para mim, ok?!"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_calina,["Pode deixar"],-1,[-1,[s_calina_casual_playground_idle_1_4],[s_calina_casual_playground_talk_1_4]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_calina,"sprite_index",s_calina_casual_playground_idle_1_1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",false],
					[scr_cutscene_variable,variable.normal,o_bunbun,"direction",270],
					[scr_cutscene_wait,1],
					[scr_cutscene_bars,true,false],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play]
				]
			}
			#endregion
			break;
	}
}