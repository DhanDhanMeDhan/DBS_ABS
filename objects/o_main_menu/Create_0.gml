visible=false;
//============================================================
//creating the main menu
//============================================================
#region
var i=0,_save_exist=false; repeat global.save_num{
	if(file_exists("save_"+string(i)+".dat")) _save_exist=true;
	i++;
}

enum menu_side_type{horizontal,vertical,both}
enum menu_move_type{select,move}
enum menu_end_type{lock,loop}
enum menu_action{start,load,config,quit}
main_menu_options=[
	[
		["Iniciar","Comenzar","Start"],global.cw*2,c_white,menu_action.start
	],
	[
		["Continuar","Continuar","Continue"],global.cw*2,c_white,menu_action.load
	],
	[
		["Configurar","Ajustes","Settings"],global.cw*2,c_white,menu_action.config
	],
	[
		["Sair","Salir","Quit"],global.cw*2,c_white,menu_action.quit
	]
];
main_menu_size=array_length(main_menu_options);
menu_next_level=true;
main_menu_index=0;
if(_save_exist){
	main_menu_level=[
		[true,[0,0],[[0,2],[0,0]],menu_side_type.horizontal,menu_end_type.lock,menu_move_type.select],//language and control
		[true,[0,0],[[0,0],[0,0]],menu_side_type.horizontal,menu_end_type.lock,menu_move_type.select],//intro
		[false,[0,0],[[0,0],[0,main_menu_size-1]],menu_side_type.vertical,menu_end_type.loop,menu_move_type.select],//principal menu panel
		[false,[0,0],[[0,0],[0,global.save_num-1]],menu_side_type.vertical,menu_end_type.loop,menu_move_type.select],//slot
		[false,[0,0],[[0,1],[0,0]],menu_side_type.horizontal,menu_end_type.loop,menu_move_type.select],//confirm box
		[false,[0,0],[[0,1],[0,0]],menu_side_type.horizontal,menu_end_type.loop,menu_move_type.select],//confirm box
	];
	showed_intro=true;
	can_use_menu=false;
	main_menu_index=2;
}else{
	main_menu_level=[
		[false,[0,0],[[0,2],[0,0]],menu_side_type.horizontal,menu_end_type.lock,menu_move_type.select],//language and control
		[false,[0,0],[[0,0],[0,0]],menu_side_type.horizontal,menu_end_type.lock,menu_move_type.select],//intro
		[false,[0,0],[[0,0],[0,main_menu_size-1]],menu_side_type.vertical,menu_end_type.loop,menu_move_type.select],//principal menu panel
		[false,[0,0],[[0,0],[0,global.save_num-1]],menu_side_type.vertical,menu_end_type.loop,menu_move_type.select],//slot
		[false,[0,0],[[0,1],[0,0]],menu_side_type.horizontal,menu_end_type.loop,menu_move_type.select],//confirm box
		//[false,[0,0],[[0,1],[0,0]],menu_side_type.horizontal,menu_end_type.loop,menu_move_type.select],//confirm box
	];
	showed_intro=false;
	can_use_menu=true;
}
cursor_x=0;
cursor_y=0;
principal_cursor=0;
show_options=false;
show_principal_logo=false;
show_creator_logo=false;
creator_num=sprite_get_number(s_hud_main_menu_creators_logo);
time_logo=[[0,false],[0,false],[0,false]];
can_skip_creator_logo=false;
audio_played=false;
current_logo=0;
settings_menu=scr_config_set();
change_button=false;
use_config=false;
saved_config=true;
#endregion
//============================================================
//detail
//============================================================
#region
timer=[
	0,0,
	[0,0,0,0],
	0
];
creator_logo_alpha=[0,0,0];
principal_logo_alpha=0;
principal_logo_y=global.ch/2;

menu_left_border=(global.cw*2)+(sprite_get_width(s_hud_main_menu_border));
bg_alpha_1=1;
tx_alpha_1=1;
bg_alpha_2=0;
bg_alpha_3=0;
bg_alpha_4=.5;
bg_alpha_5=0;
yy_button=-global.ch;
current_key=0;
timer_key=0;
xx_slot_1=array_create(global.save_num,0);
xx_slot_2=array_create(global.save_num,0);
yy_slot=-global.ch;
yy_confirm=-global.ch;
xx_settings_box=global.cw*2;
sur_config=-1
ds_pause_string=ds_grid_create(3,0);

save_slot_detail=array_create(global.save_num,-1);
var k=0; repeat global.save_num{
	var _save_str=("save_"+string(k)+".dat");
	if(file_exists(_save_str)){
		var _file=_save_str;
		if(!file_exists(_file)) exit;
		var _buffer=buffer_load(_file);
		var _json=buffer_read(_buffer,buffer_string);
		buffer_delete(_buffer);
	
		var _load_array=json_parse(_json);
		global.cam_data=array_get(_load_array,0);
		var _prty=global.cam_data.save_prt;
		var _date=global.cam_data.data;
		save_slot_detail[k]={
			part: _prty,
			date: _date,
		}
	}else{
		save_slot_detail[k]=-1;
	}
	k++;
}
#endregion
//============================================================
//cutscene
//============================================================
#region
#region start
cutscene_start=[
	[scr_cutscene_wait,1],
	[scr_cutscene_circle_wake_up,true,false,663,394-48,false,false,false,c_black],
	[scr_cutscene_instance_destroy,o_main_menu],
	[scr_cutscene_instance_create,663,394,"Instances_People_2",o_bunbun],
	[scr_cutscene_variable,variable.normal,o_camera,"can_pause",true],
	
	[scr_cutscene_instance_create,663,394,"Instances_People_2",o_birthday],
	[scr_cutscene_animation_sprite,o_bunbun,[s_hud_intro_birthday_todd_idle_1],[s_hud_intro_birthday_todd_idle_1],false,true,[.35,.2]],
	[scr_cutscene_wait,2],
	[scr_cutscene_audio_play,audio_type.sfx,sfx_005,false,1,0],
	[scr_cutscene_wait,1],
	[scr_cutscene_audio_play,audio_type.sfx,sfx_005,false,1,0],
	[scr_cutscene_wait,1],
	[scr_cutscene_audio_play,audio_type.sfx,sfx_005,false,1,0],
	[scr_cutscene_wait,2],
	[scr_cutscene_audio_play,audio_type.bgm,bgm_003,true,1,0],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_voice",dag_002],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Vocês já estão grandes o suficiente","Vosotros ya están lo suficiente de grande","You both are big enough"],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["E como vocês completam 3 anos, vocês vão ganhar presentes especiais!!","Y como cumplistes 3 años, ¡¡vosotros van ganar regalos especiales!!","And since you complete 3 years, you will win a special gift!!"],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Uhh... Que presentes crianças, grandes como vocês, merecem?...","Uhh... ¿Y que regalos niños mayores, como vosotros, merecen...?","Uhh... What kind of special gift big kids, like you, deserve?"],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Já sei!!","¡¡Ya lo sé!!","I know!!"],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Um nome!!","¡¡Un nombre!!","A name!!"],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Mas eu não irei dar um nome para vocês...","Pero yo no voy darselo nombres a vosotros...","But i won't gave you a name..."],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Vocês são uma dupla e vocês estaram juntos para sempre!","Vosotros son una dupla y hay que estaren juntos siempre!","You both are a fellow and you will be together forever!"],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Então...","Entonces...","So..."],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Que tal um dar o nome ao outro?","¿Que tal uno poner un nombre en el otro?","What about you two name each other?"],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Você... Qual nome você vai dar para sua dupla?","Tu... ¿Cual nombre vas dar a su dupla?","You... What name would you give to your fellow?"],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_circle_wake_up,false,true,-1,-1,false,true,false,c_black],
	[scr_cutscene_wait,1],
	[scr_cutscene_animation_sprite,o_bunbun,[s_hud_intro_birthday_todd_turn],[s_hud_intro_birthday_todd_idle_2],false,true,[.4,.2]],
	[scr_cutscene_wait,1],
	[scr_cutscene_circle_wake_up,true,true,-1,-1,false,false,false,c_black],
	[scr_cutscene_variable,variable.normal,o_birthday,"ppl_bg",1],
	[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_voice",dag_001],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["BunBun!!","¡¡BunBun!!","BunBun!!"],sfx_001,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_voice",dag_002],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Ah!! Que nome fofo!!","¡¡Ah, que bonito nombre!!","Ah!! What cute name!!"],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["E você, BunBun... Qual nome você vai dar para sua dupla?","Y tu, BunBun... ¿Que nombre vas dar a su dupla?","And you, BunBun... What name would you give to your fellow?"],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_animation_sprite,o_bunbun,[s_hud_intro_birthday_bunbun_idle_1],[s_hud_intro_birthday_bunbun_idle_1],false,true,[.35,.2]],
	[scr_cutscene_circle_wake_up,false,true,-1,-1,false,true,false,c_black],
	[scr_cutscene_wait,1],
	[scr_cutscene_animation_sprite,o_bunbun,[s_hud_intro_birthday_bunbun_smiling],[s_hud_intro_birthday_bunbun_idle_2],false,true,[.4,.2]],
	[scr_cutscene_wait,1],
	[scr_cutscene_circle_wake_up,true,true,-1,-1,false,false,false,c_black],
	[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_voice",dag_001],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Todd!!","Todd!!","Todd!!"],sfx_001,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_voice",dag_002],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Oh!! Que belo nome!!","¡¡Oh, que nombre genial!!","Oh!! What a cool name!!"],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_bunbun,["Bom! BunBun e Todd, feliz aniversário para vocês dois!!","¡Bueno! BunBun y Todd, ¡¡feliz cumpleaños para vosotros!!","Well! BunBun and Todd, happy birthday to you!!"],sfx_002,global.cw/2,global.ch/2,150,make_color_rgb(250,214,184),false,false,false],
	[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_voice",dag_001],
	[scr_cutscene_wait,1],
	[scr_cutscene_audio_play,audio_type.bgm,bgm_003,true,0,1],
	[scr_cutscene_wait,1],
	[scr_cutscene_audio_stop,audio_type.bgm,bgm_003],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.normal,o_bunbun,"clothe",clothes.pijama],
	[scr_cutscene_room_goto,rm_b_bedroom_2,false,false],
	[scr_cutscene_variable,variable.normal,o_bunbun,"x",663],
	[scr_cutscene_variable,variable.normal,o_bunbun,"y",394],
	//[scr_cutscene_room_goto,rm_b_bedroom_2,false],
	[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_pijama_wakingup_intro_idle_1],[s_bunbun_pijama_wakingup_intro_idle_1],false,true,[.35,.2]],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
	[scr_cutscene_variable,variable.normal,o_camera,"npc_to_flow",o_bunbun],
	[scr_cutscene_instance_create,605,389,"Instances_People_2",o_todd],
	[scr_cutscene_variable,variable.normal,o_todd,"ppl_flowing",false],
	[scr_cutscene_variable,variable.normal,o_todd,"direction",315],
	[scr_cutscene_new_party_member,o_todd],
	[scr_cutscene_animation_sprite,o_todd,[s_todd_casual_waiting_intro_idle],[s_todd_casual_waiting_intro_idle],false,true,[.35,.2]],
	[scr_cutscene_variable,variable.normal,o_todd,"x",605],
	[scr_cutscene_variable,variable.normal,o_todd,"y",389],
	[scr_cutscene_instance_create,588,387,"Instances_People_2",o_larry],
	[scr_cutscene_variable,variable.normal,o_larry,"direction",225],
	[scr_cutscene_animation_sprite,o_larry,[s_larry_casual_waiting_intro_idle_1],[s_larry_casual_waiting_intro_idle_1],false,true,[.2,.2]],
	[scr_cutscene_instance_create,548,385,"Instances_People_2",o_jeyjey],
	[scr_cutscene_variable,variable.normal,o_jeyjey,"direction",90],
	[scr_cutscene_animation_sprite,o_jeyjey,[s_jeyjey_casual_searching_intro_idle],[s_jeyjey_casual_searching_intro_idle],false,true,[.2,.2]],
	//[scr_cutscene_flash,false,1],
	[scr_cutscene_wait,2.5],
	[scr_cutscene_audio_play,audio_type.bgm,bgm_002,true,0,0],
	[scr_cutscene_audio_play,audio_type.bgm,bgm_002b,true,1,.5],
	[scr_cutscene_wait,.5],
	[scr_cutscene_circle_wake_up,true,false,663,394-48,true,true,true,c_black],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_larry,["Encontrou?","¿Encontraste?","Did you find it?"],-1,663-150,394-48,150,make_color_rgb(250,214,184),false,false,true],
	//[scr_cutscene_talk,cutscene_talk_mode.normal,o_larry,["Encontrou?","¿Encontraste?","Did you find it?"]],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_todd,["Acorda...","Despiertate...","Wake up..."],-1,663+150,394-48,150,make_color_rgb(250,214,184),false,false,true],
	//[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Acorda...","Despiertate...","Wake up..."]],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_jeyjey,["Ainda não achei","No, aún no lo encontré","No, i did'nt find it yet"],-1,663-150,394-48,150,make_color_rgb(250,214,184),false,false,true],
	//[scr_cutscene_talk,cutscene_talk_mode.normal,o_larry,["Ainda não achei","No, aún no lo encontré","No, i did'nt find it yet"]],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_todd,["Acorda...","Despiertate...","Wake up..."],-1,663+150,394-48,150,make_color_rgb(250,214,184),false,false,true],
	//[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Acorda...","Despiertate...","Wake up..."]],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk_custom,cutscene_talk_mode.normal,o_todd,["Estamos atrasados...","Ya estamos atrasados","We're late..."],-1,663-150,394-48,150,make_color_rgb(250,214,184),false,false,true],
	//[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Estamos atrasados...","Ya estamos atrasados","We're late..."]],
	[scr_cutscene_wait,1],
	[scr_cutscene_audio_stop,audio_type.bgm,bgm_002b],
	[scr_cutscene_audio_play,audio_type.bgm,bgm_002,true,1,.5],
	[scr_cutscene_circle_wake_up,true,false,663,394-48,true,true,false,c_black],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,.5],
	//[scr_cutscene_flash,true,.005],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_todd,["Acorda, BunBun!!","Despiertate, BunBun!!","Wake up, BunBun!!"],-1,[-1,[s_todd_casual_waiting_intro_idle],[s_todd_casual_waiting_intro_talk]],false,false,[0,.2,.25]],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["...","...","..."],-1],
	[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_todd,["Vamos! Acorda!!","Venga! Despiertate!!","C'mon! Let's go!!"],-1,[-1,[s_todd_casual_waiting_intro_idle],[s_todd_casual_waiting_intro_talk]],false,false,[0,.2,.25]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["...","...","..."],-1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Hum...","Hum...","Hum..."],-1],
	[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_pijama_wakingup_intro_waking_1],[s_bunbun_pijama_wakingup_intro_idle_2],false,true,[.35,0]],
	[scr_cutscene_wait,1],
	[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_pijama_wakingup_intro_turn_around],[s_bunbun_pijama_wakingup_intro_idle_3],false,true,[.35,0]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não...","No...","No..."],-1],
	[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_todd,["Ah! Qual é?! Eu to com fome!","Ah! Pero que pasa?! Tengo hambre!","Oh! C'mon! I'm hungry!"],-1,[-1,[s_todd_casual_waiting_intro_idle],[s_todd_casual_waiting_intro_talk]],false,false,[0,.2,.25]],
	[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_larry,["Mano... Ainda nenhum sinal disso?","Tío... ¿Aún no hay señales de eso?","Bro... Still no sign of that?"],-1,[-1,[s_larry_casual_waiting_intro_idle_1],[s_larry_casual_waiting_intro_talk_1]],false,false,[0,.2,.25]],
	[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_jeyjey,["Não, não estou achando em nenhum lugar!...","¡No, no lo encuentro en ningún lado!","No, i can't find it anywhere!"],-1,[-1,[s_jeyjey_casual_searching_intro_idle],[s_jeyjey_casual_searching_intro_idle]],false,false,[0,.2,.25]],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Uh... Muito barulho...","Uh... Demasiado ruído...","Uh... Too much noise..."],-1],
	[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_todd,["Vai, BunBun, levanta","Vamos, BunBun, levantate","C'mon, BunBun, get up"],-1,[-1,[s_todd_casual_waiting_intro_idle],[s_todd_casual_waiting_intro_talk]],false,false,[0,.2,.25]],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["...","...","..."],-1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ok...","Vale...","Ok..."],-1],
	[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_pijama_wakingup_intro_getting_up_1],[s_bunbun_pijama_wakingup_intro_idle_4],false,true,[.35,.2]],
	[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Já levantei... Desculpe dormir até tarde...","Ya estoy... Disculpe dormir hasta tarde...","I'm up... Sorry for sleeping late"],-1,[-1,[s_bunbun_pijama_wakingup_intro_idle_4],[s_bunbun_pijama_wakingup_intro_talk_4]],false,false,[0,.2,.25]],
	[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_todd,["Tá tudo bem, só levanta e vai se trocar, ok?","¡No pasa nada! Solo levantate y cambie de ropa, ¿vale?","That's fine! Just get up and change your clothes, ok?"],-1,[-1,[s_todd_casual_waiting_intro_idle],[s_todd_casual_waiting_intro_talk]],false,false,[0,.2,.25]],
	[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Sim sim, já estou indo","Si si, ya voy","Yeah yeah, i'm going"],-1,[-1,[s_bunbun_pijama_wakingup_intro_idle_4],[s_bunbun_pijama_wakingup_intro_talk_4]],false,false,[0,.2,.25]],
	[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_pijama_wakingup_intro_getting_up_2],[s_bunbun_pijama_idle_1_down],false,true,[.35,.2]],
	[scr_cutscene_variable,variable.normal,o_bunbun,"direction",270],
	[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.normal,o_bunbun,"direction",225],
	[scr_cutscene_wait,.1],
	[scr_cutscene_variable,variable.normal,o_bunbun,"direction",180],
	[scr_cutscene_wait,1],
	[scr_cutscene_animation_sprite,o_todd,[s_todd_casual_waiting_intro_getting_up],[s_todd_casual_idle_1_downright],false,true,[.4,.2]],
	[scr_cutscene_variable,variable.normal,o_todd,"ppl_act_state",ppl_act.npc],
	[scr_cutscene_wait,.5],
	[scr_cutscene_variable,variable.normal,o_todd,"ppl_to_look_at",o_bunbun],
	[scr_cutscene_variable,variable.normal,o_todd,"ppl_looking_to",true],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Dormiu bem?","¿Dormistes bien?","Did you sleep well?"],-1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Sim, acho que sim, vou me trocar","Sí, creo que sí, bueno, voy a cambiarme","Yes, i guess, i'll change my clothes"],-1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Estou esperando","Estoy esperandote","I'm wating"],-1],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false],
	[scr_cutscene_save_game],
];
#endregion
#region load
cutscene_load=[
	[scr_cutscene_circle_wake_up,true,false,global.cw/2,global.ch/2,false,false,false,c_black],
	[scr_cutscene_wait,1],
	[scr_cutscene_load_game],
	[scr_cutscene_instance_destroy,o_main_menu],
	[scr_cutscene_variable,variable.normal,o_camera,"can_pause",true],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,false,true],
	[scr_cutscene_circle_wake_up,true,true,global.cw/2,global.ch/2,true,true,false,c_black],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false],
	//[scr_cutscene_instance_create,0,0,"Instances_Config",o_mini_game],
];
#endregion
#endregion