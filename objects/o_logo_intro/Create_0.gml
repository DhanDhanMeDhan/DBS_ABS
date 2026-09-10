visible=false;
//============================================================
//definindo variáveis
//============================================================
show_creator_logo=false;
skip_logo=true;
audio_played=false;
creator_num=sprite_get_number(s_hud_main_menu_creators_logo);
time_logo=array_create(creator_num);
current_logo=0;
timer=0;
var i=0; repeat creator_num{
	logo[i]=[0,0,false];
	i++;
}