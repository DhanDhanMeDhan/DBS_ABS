switch global.day{
	case 0:
		if(global.event[0][0]==progress.non_complete){
			#region
			non_avaliable_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_uncle_antony,["BunBun, Todd, venham cá"],-1,[[-1],[s_uncle_antony_casual_dinner_idle_1],[s_uncle_antony_casual_dinner_talk_1]],false,false,[0,.2,.25]],
				[scr_cutscene_move_character,o_bunbun,364,433,false,1,true,true],
				[scr_cutscene_variable,variable.normal,o_bunbun,"direction",45],
				[scr_cutscene_variable,variable.normal,o_todd,"ppl_flowing",false],
				[scr_cutscene_move_character,o_todd,403,433,false,1,true,true],
				[scr_cutscene_variable,variable.normal,o_todd,"direction",135],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_uncle_antony,["Aonde vocês vão?"],-1,[[-1],[s_uncle_antony_casual_dinner_idle_1],[s_uncle_antony_casual_dinner_talk_1]],false,false,[0,.2,.25]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah... A gente só estava andando..."]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_uncle_antony,["Tudo bem! Mas vocês não acham que seria melhor ir tomar café antes de ficar andando por ai?"],-1,[[-1],[s_uncle_antony_casual_dinner_idle_2],[s_uncle_antony_casual_dinner_talk_2]],false,false,[0,.2,.25]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Eu tento colocar isso na cabeça do BunBun"]],
				[scr_cutscene_variable,variable.normal,o_todd,"direction",180],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Mas esse cabeçudo não me escuta"]],
				[scr_cutscene_variable,variable.normal,o_bunbun,"direction",0],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Nuh-uh! Eu não sou cabeçudo! você quem é!"]],
				[scr_cutscene_variable,variable.normal,o_bunbun,"direction",45],
				[scr_cutscene_variable,variable.normal,o_todd,"direction",135],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_uncle_antony,["Vocês dois são cabeçudos, fim de papo"],-1,[[-1],[s_uncle_antony_casual_dinner_idle_2],[s_uncle_antony_casual_dinner_talk_2]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_uncle_antony,["Seguinte, vão lá, tomar café, por que se não vocês vão ficar todos molengas até o almoço"],-1,[[-1],[s_uncle_antony_casual_dinner_idle_1],[s_uncle_antony_casual_dinner_talk_1]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_uncle_antony,["E outra"],-1,[[-1],[s_uncle_antony_casual_dinner_idle_2],[s_uncle_antony_casual_dinner_talk_2]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_uncle_antony,["Vocês sabem muito bem que não podem ir em certos lugares da casa... Como o andar de cima e o porão"],-1,[[-1],[s_uncle_antony_casual_dinner_idle_1],[s_uncle_antony_casual_dinner_talk_1]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_uncle_antony,["Esse locais são perigosos, ok? então obedeçam as regras"],-1,[[-1],[s_uncle_antony_casual_dinner_idle_1],[s_uncle_antony_casual_dinner_talk_1]],false,false,[0,.2,.25]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Pode deixar, já estamos indo para o café!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Tudo bem, Tio Antony..."]],
				[scr_cutscene_variable,variable.normal,o_todd,"direction",180],
				[scr_cutscene_variable,variable.normal,o_bunbun,"direction",0],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Vamos nessa, cabeção"]],
				[scr_cutscene_variable,variable.normal,o_bunbun,"direction",45],
				[scr_cutscene_variable,variable.normal,o_todd,"direction",135],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_uncle_antony,["Você também é um baita cabeção por ficar seguindo o BunBun"],-1,[[-1],[s_uncle_antony_casual_dinner_idle_2],[s_uncle_antony_casual_dinner_talk_2]],false,false,[0,.2,.25]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ah!..."]],
				[scr_cutscene_variable,variable.normal,o_bunbun,"direction",0],
				[scr_cutscene_wait,.1],
				[scr_cutscene_variable,variable.normal,o_bunbun,"direction",315],
				[scr_cutscene_wait,.1],
				[scr_cutscene_variable,variable.normal,o_bunbun,"direction",270],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["HeeHee"]],
				[scr_cutscene_variable,variable.normal,o_todd,"direction",225],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ri não BunBun!"]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_uncle_antony,["Vão logo para o café, vocês dois!"],-1,[[-1],[s_uncle_antony_casual_dinner_idle_2],[s_uncle_antony_casual_dinner_talk_2]],false,false,[0,.2,.25]],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.normal,o_todd,"ppl_flowing",true],
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}else if(global.event[0][2]==progress.non_complete){
			#region
			non_avaliable_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["BunBun, não podemos subir ai... E também por que não está na área da brincadeira, não vai ter ninguém aí em cima..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah, desculpe"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,1,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}else if(global.event[0][3]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.have_item,item.mother_list],
				[-1,quest_type.have_item,item.uncle_spices],
			];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Uh... BunBun?..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Você sabe que não pode ir para o terceiro andar..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah, sim, apenas imaginei que a Mamãe estaria lá"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Não, eu tenho certeza que ela está na cafeteria"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ok, desculpe"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,1,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[1]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["BunBun, o Tio não tá ai, e o quarto dele nem é aí"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah... É que-"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Só vamos ir logo ver o Tio Big B"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,1,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			complete_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["A Mamãe está na cafeteria, BunBun"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,1,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}else if(global.event[0][4]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.have_item,item.love_letter],
				[-1,quest_type.talk_to,o_noah],
				[-1,quest_type.talk_to,o_hellen],
				[-1,quest_type.have_item,item.noah_gift],
			];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Oh, BunBun!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Não pode subir no terceiro andar!..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah, Desculpe!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Coitadinho, todo idiota"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["E-Eu não sou idiota!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			];
			non_complete_cutscene[1]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Assim... O 45 é estranho, mas não acho que ele vá estar no terceiro andar"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Da maneira como você fala, ele parece mal"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ah... Não necessariamente"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Contrabandista é uma boa palavra, mas não necessariamente mal"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Perdão?!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Se preocupa não! Confia na gente!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			];
			non_complete_cutscene[1]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["A Wendy gosta de silêncio, mas não acho que ela estaria no terceiro andar"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Até por que é proibido subir aí"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Exatamente, BunBun! Bora pro quarto da Wendy"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			];
			non_complete_cutscene[3]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Ainda temos que pegar o presente com o 45"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Oh! É verdade!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Se não sou eu"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ah, Não seja assim!..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			]
			complete_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["O Fritz não estaria aí"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ele é certinho demais para isso"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Sobe você então"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Vamos logo ver o Fritz, BunBun"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}else if(global.event[0][5]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.someone_party,o_petter],
				[-1,quest_type.talk_to,o_door_1],
				[-1,quest_type.talk_to,o_bunbun],
				[-1,quest_type.talk_to,o_door_2],
				[-1,quest_type.someone_party,o_linus],
				[-1,quest_type.have_item,item.linus_diary],
				[-1,quest_type.talk_to,o_linus],
			];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Os quartos dos Tios e da Mamãe"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não temos permissão de sumir"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[1]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Uh... BunBun..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Você acha que o Tio levou minha pelúcia para o quarto dele?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Eu não sei, quero acreditar que não"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Uh..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Vamos seguir buscando em outro lugar..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[2]=non_complete_cutscene[1];
			non_complete_cutscene[3]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Não acho que a Mamãe esteja aí em cima"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Normalmente ela só sobe para dormir"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh! Você tem razão!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[4]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Ah... BunBun..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["O Linus... Temos que falar com ele..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh! Verdade! Eu tinha me esquecido!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[5]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["BunBun, depois vemos isso..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["Vamos apenas recuperar o que é meu, por favor..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Claro claro, desculpe"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[6]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["A Mamãe está aí em cima?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Ah... Não não, ela está na cafeteria..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["Oh... Bom, vamos lá então"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Tudo bem"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}
		break;
}