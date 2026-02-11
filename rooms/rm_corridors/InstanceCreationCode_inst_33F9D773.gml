switch global.day{
	#region dia 0
	case 0:
		if(global.event[0][0]==progress.non_complete){
			non_avaliable_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Uh... BunBun?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Você sabe que não podemos entrar aí..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah!... Desculpe..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Relaxa, só vamos tomar café"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,true]
			];
		}else if(global.event[0][2]==progress.non_complete){
			non_avaliable_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["BunBun, não há ninguém se esocndendo aí!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["Sem falar que não podemos entrar ai!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah!... Desculpe..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["Tudo bem, apenas vamos procurar pelos outros em outras partes da casa"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,true]
			];
		}else if(global.event[0][3]==progress.non_complete){
			non_avaliable_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["BunBun, não podemos entrar aí"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah!... Desculpe..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Que teimosia"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,true]
			];
		}else if(global.event[0][4]==progress.non_complete){
			non_avaliable_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["BunBun, não podemos ir para o porão! É perigoso"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Eu já disse isso a ele, mas ele é teimoso demais"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Foi mal..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Vai, temos mais o que fazer agora, BunBun"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,true]
			];
		}else if(global.event[0][5]==progress.non_complete){
			non_avaliable_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não podemos entrar...."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["E eu também tenho medo do porão..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Deve ser escuro aí..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,true]
			];
		}else if(global.event[0][9]==progress.non_complete){
			non_avaliable_cutscene=[
				[scr_cutscene_basement_end],
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_talked",true],
				[scr_cutscene_condition,question.have_person,o_todd,
					[
						[
							[scr_cutscene_bars,true,true],
							[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
							[scr_cutscene_wait,1],
							[scr_cutscene_move_character,o_bunbun,304,561,false,1,true,true],
							[scr_cutscene_variable,variable.normal,o_bunbun,"direction",90],
							[scr_cutscene_wait,2],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["..."]],
							[scr_cutscene_wait,1],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Bom..."]],
							[scr_cutscene_wait,1],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Vamos lá..."]],
							[scr_cutscene_wait,2],
							[scr_cutscene_variable,variable.nearst,o_door_1,"open",true,x,y],
							[scr_cutscene_wait,1],
							[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
							[scr_cutscene_room_goto,rm_basement_1,true,false],
							[scr_cutscene_variable,variable.normal,o_bunbun,"x",848],
							[scr_cutscene_variable,variable.normal,o_bunbun,"y",195],
							[scr_cutscene_refresh_party_member,true],
							[scr_cutscene_variable,variable.normal,o_camera,"x",848],
							[scr_cutscene_variable,variable.normal,o_camera,"y",222],
							[scr_cutscene_instance_layer,o_bunbun,"Instances_People_2"],
							[scr_cutscene_variable,variable.normal,o_graphic,"graphic_show_everything",true],
							[scr_cutscene_variable,variable.normal,o_todd,"ppl_flowing",true],
							[scr_cutscene_wait,1],
							[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
							[scr_cutscene_wait,1],
							[scr_cutscene_variable,variable.nearst,o_door_1,"open",true,848,222],
							[scr_cutscene_wait,1],
							[scr_cutscene_move_character,o_bunbun,848,222,false,1,true,true],
							[scr_cutscene_refresh_party_member,false],
							[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
							[scr_cutscene_wait,1],
							[scr_cutscene_variable,variable.nearst,o_door_1,"open",false,848,222],
							[scr_cutscene_wait,1],
							[scr_cutscene_bars,true,false]
						],
						[
							[scr_cutscene_bars,true,true],
							[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
							[scr_cutscene_wait,1],
							[scr_cutscene_move_character,o_bunbun,316,561,false,1,true,true],
							[scr_cutscene_variable,variable.normal,o_bunbun,"direction",90],
							[scr_cutscene_variable,variable.normal,o_todd,"ppl_flowing",false],
							[scr_cutscene_move_character,o_todd,290,561,false,1,true,true],
							[scr_cutscene_variable,variable.normal,o_todd,"direction",90],
							[scr_cutscene_wait,2],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["..."]],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["..."]],
							[scr_cutscene_wait,1],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Bom..."]],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Você... Está com medo?..."]],
							[scr_cutscene_wait,1],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["..."]],
							[scr_cutscene_wait,1],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Um pouco..."]],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Eu estou aqui, Todd!"]],
							[scr_cutscene_wait,1],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Obrigado"]],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Eu também estou aqui"]],
							[scr_cutscene_wait,2],
							[scr_cutscene_variable,variable.nearst,o_door_1,"open",true,x,y],
							[scr_cutscene_wait,1],
							[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
							[scr_cutscene_room_goto,rm_basement_1,true,false],
							[scr_cutscene_variable,variable.normal,o_bunbun,"x",848],
							[scr_cutscene_variable,variable.normal,o_bunbun,"y",195],
							[scr_cutscene_refresh_party_member,true],
							[scr_cutscene_variable,variable.normal,o_camera,"x",848],
							[scr_cutscene_variable,variable.normal,o_camera,"y",222],
							[scr_cutscene_instance_layer,o_bunbun,"Instances_People_2"],
							[scr_cutscene_instance_layer,o_todd,"Instances_People_2"],
							[scr_cutscene_variable,variable.normal,o_graphic,"graphic_show_everything",true],
							[scr_cutscene_variable,variable.normal,o_todd,"ppl_flowing",true],
							[scr_cutscene_wait,1],
							[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
							[scr_cutscene_wait,1],
							[scr_cutscene_variable,variable.nearst,o_door_1,"open",true,848,222],
							[scr_cutscene_wait,1],
							[scr_cutscene_move_character,o_bunbun,848,222,false,1,true,true],
							[scr_cutscene_refresh_party_member,false],
							[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
							[scr_cutscene_wait,1],
							[scr_cutscene_variable,variable.nearst,o_door_1,"open",false,848,222],
							[scr_cutscene_wait,1],
							[scr_cutscene_bars,true,false]
						]
					]
				]
			]
		}
		break;
	#endregion
}