function scr_talk_fritz(){
	switch global.day{
		case 0:
			#region
			if(global.event[0][1]==progress.non_complete){
				quest_array=[
					[0,quest_type.talk_to,o_fritz]
				];
				non_complete_cutscene[0]=[
					[scr_cutscene_variable,variable.normal,o_fritz,"ppl_talked",true],
					[scr_cutscene_bars,true,true],
					[scr_cutscene_wait,1],
					[scr_cutscene_move_character,o_bunbun,327,1845,false,1,true,true],
					[scr_cutscene_variable,variable.normal,o_bunbun,"direction",225],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["\"Pois no fim, não havia nada o que podia ser feito, se não chorar e gritar\""],-1,[-1,[s_fritz_casual_playground_idle_1_1],[s_fritz_casual_playground_talk_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["\"Gritar e gritar por alguma resposta, repetindo a mesma frase\""],-1,[-1,[s_fritz_casual_playground_idle_1_1],[s_fritz_casual_playground_talk_1_1]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["\"Do que precisa, BunBun?\""],-1,[-1,[s_fritz_casual_playground_idle_1_4],[s_fritz_casual_playground_talk_1_4]],false,false,[0,.2,.25]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah! Eu estou no livro?!"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Não, BunBun, você não está"],-1,[-1,[s_fritz_casual_playground_idle_1_5],[s_fritz_casual_playground_talk_1_5]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Apenas emendei uma coisa na outra"],-1,[-1,[s_fritz_casual_playground_idle_1_4],[s_fritz_casual_playground_talk_1_4]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Mas me diga, do que você precisa?"],-1,[-1,[s_fritz_casual_playground_idle_1_3],[s_fritz_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh, apenas vim ver o que você estava fazendo, Fritz"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Oh, você e sua rotina, BunBun"],-1,[-1,[s_fritz_casual_playground_idle_1_5],[s_fritz_casual_playground_talk_1_5]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Estou lendo para as árvores"],-1,[-1,[s_fritz_casual_playground_idle_1_3],[s_fritz_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["E por que você está lendo um livro de terror para as árvores?"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Não é um livro de terror, se não uma bibliográfia de um autor que eu gosto"],-1,[-1,[s_fritz_casual_playground_idle_1_3],[s_fritz_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh..."]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["E ele está bem?..."]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Bom... Digamos que sim..."],-1,[-1,[s_fritz_casual_playground_idle_1_5],[s_fritz_casual_playground_talk_1_5]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Ele está morto agora"],-1,[-1,[s_fritz_casual_playground_idle_1_4],[s_fritz_casual_playground_talk_1_4]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Então sim, ele está bem..."],-1,[-1,[s_fritz_casual_playground_idle_1_5],[s_fritz_casual_playground_talk_1_5]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_fritz,"sprite_index",s_fritz_casual_playground_idle_1_4],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah... Então do que fala essa bibliografia?"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Oh, bom..."],-1,[-1,[s_fritz_casual_playground_idle_1_5],[s_fritz_casual_playground_talk_1_5]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Boroyev Tarasovich foi um escritou, e poeta, que lutou na guerra"],-1,[-1,[s_fritz_casual_playground_idle_1_3],[s_fritz_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Seus poemas e relatos foram bastante decisivos para o inicio do fim da guerra"],-1,[-1,[s_fritz_casual_playground_idle_1_3],[s_fritz_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh... Isso é bonito e forte ao mesmo tempo..."]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["De fato que sim, e a parte mais interessante disso tudo é que..."],-1,[-1,[s_fritz_casual_playground_idle_1_3],[s_fritz_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Boa parte dos poemas que ele escreveu, foram dedicados dedicados a Natasha Danilovna, o maior amor de sua vida"],-1,[-1,[s_fritz_casual_playground_idle_1_5],[s_fritz_casual_playground_talk_1_5]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_fritz,"sprite_index",s_fritz_casual_playground_idle_1_3],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah! Que bonito!! Então... Por que você está contando histórias para as árvores?"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Simples... Pois as árvores estão aqui desde o princípio"],-1,[-1,[s_fritz_casual_playground_idle_1_2],[s_fritz_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Nós utilizamos elas para criar lápis e papéis"],-1,[-1,[s_fritz_casual_playground_idle_1_2],[s_fritz_casual_playground_talk_1_2]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Lápis e papéis que utilizamos para firmar, e registrar, nossas histórias"],-1,[-1,[s_fritz_casual_playground_idle_1_5],[s_fritz_casual_playground_talk_1_5]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Quando morrermos, as únicas coisas que irão sobrar, serão as árvores e a natureza..."],-1,[-1,[s_fritz_casual_playground_idle_1_3],[s_fritz_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Então você vai contar sobre o nosso passado para o futuro!"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Precisamente, BunBun"],-1,[-1,[s_fritz_casual_playground_idle_1_5],[s_fritz_casual_playground_talk_1_5]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_fritz,"sprite_index",s_fritz_casual_playground_idle_1_4],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Uau uau! Isso é bonito demais!! Você é um gênio!"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Não não, apenas faço o necessário para evitar os erros do passado"],-1,[-1,[s_fritz_casual_playground_idle_1_5],[s_fritz_casual_playground_talk_1_5]],false,false,[0,.2,.25]],
					[scr_cutscene_variable,variable.normal,o_fritz,"sprite_index",s_fritz_casual_playground_idle_1_4],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ainda assim é muito!!"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Bom, confio em vossa palavra"],-1,[-1,[s_fritz_casual_playground_idle_1_3],[s_fritz_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Bom, verei como os outros estão, tudo bem?"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Pois claro, BunBun"],-1,[-1,[s_fritz_casual_playground_idle_1_3],[s_fritz_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Divirta-se, ok?"],-1,[-1,[s_fritz_casual_playground_idle_1_3],[s_fritz_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ok!"]],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_fritz,"sprite_index",s_fritz_casual_playground_talk_1_1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_idle_1_downleft],
					[scr_cutscene_wait,1],
					[scr_cutscene_bars,true,false],
					[scr_cutscene_variable,variable.normal,o_bunbun,"direction",225],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play]
				];
				complete_cutscene=[
					[scr_cutscene_variable,variable.normal,o_fritz,"ppl_talked",true],
					[scr_cutscene_bars,true,true],
					[scr_cutscene_wait,1],
					[scr_cutscene_move_character,o_bunbun,327,1845,false,1,true,true],
					[scr_cutscene_variable,variable.normal,o_bunbun,"direction",225],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Fritz, você poderia ler esse poema para mim algum dia?"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Ah! Claro, BunBun!"],-1,[-1,[s_fritz_casual_playground_idle_1_3],[s_fritz_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Obrigado!"]],
					[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Não há de quê"],-1,[-1,[s_fritz_casual_playground_idle_1_3],[s_fritz_casual_playground_talk_1_3]],false,false,[0,.2,.25]],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_fritz,"sprite_index",s_fritz_casual_playground_talk_1_1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"sprite_index",s_bunbun_casual_idle_1_downleft],
					[scr_cutscene_wait,1],
					[scr_cutscene_bars,true,false],
					[scr_cutscene_variable,variable.normal,o_bunbun,"direction",225],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play]
				];
			}
			break;
			#endregion
	}
}