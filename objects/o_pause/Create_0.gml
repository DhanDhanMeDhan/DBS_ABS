visible=false;
//============================================================
//pause menu seeting
//============================================================
#region
var _c=make_color_rgb(232,106,115),_main_bg_ww=sprite_get_width(s_hud_pause_main_bg),_xx=global.cw+(_main_bg_ww*2);
enum pause_menu_action{
	item,map,config,load,ending,quit
}
pause_menu_options=[
	[["Itens","Itens","Itens"],_xx,_c,pause_menu_action.item],
	[["Mapa","Mapa","Map"],_xx,_c,pause_menu_action.map],
	[["Ajustes","Ajustes","Settings"],_xx,_c,pause_menu_action.config],
	[["Finais","Finales","Endings"],_xx,_c,pause_menu_action.ending],
	[["Sair","Salir","Quit"],_xx,_c,pause_menu_action.quit],
];

var _array_pause_option_lenght=array_length(pause_menu_options);
pause_menu_level=[
	[false,[0,0],[[0,0],[0,_array_pause_option_lenght-1]],menu_side_type.vertical,menu_end_type.loop,menu_move_type.select],
	[false,[0,0],[[0,0],[0,0]],menu_side_type.vertical,menu_end_type.loop,menu_move_type.select],
	[false,[0,0],[[0,0],[0,0]],menu_side_type.vertical,menu_end_type.loop,menu_move_type.select],
];
pause_option_size=array_length(pause_menu_options)-1;
pause_menu_index=0;
principal_cursor=0;
cursor_x=0;
cursor_y=0;
menu_next_level=true;
can_use_menu=true;
#endregion
//============================================================
//pause menu graphic and audio
//============================================================
#region
bg_border=s_hud_main_menu_border;
var _spr_border_ww=sprite_get_width(bg_border);
var _spr_ds_border_ww=sprite_get_width(bg_border);
bg_left=global.cw+_spr_border_ww;
display_left=global.cw+_spr_ds_border_ww;
bg_alpha_0=0;
bg_alpha_1=0;
tx_alpha_1=0;
set_pause_volume=0;
portrait_num=array_length(global.party);
portrait_yy=array_create(portrait_num);
timer_portrair=0;
current_portrait=0;
var i=0; repeat portrait_num{
	portrait_yy[i]=[0,false,0];
	i++;
}
bg_alpha_6=0;
music_vol=0;

main_bg_xx=global.cw+(_main_bg_ww*2);
item_list_bg_surf=-1;
item_list_bg_yy=-10;
item_list_bg_ag=90;
player_img_frm=0;
item_display_a=0;
item_display_y1=0;
item_display_y2=0;
config_sur=-1;
config_alp=0;
use_config=false;
use_itens=false;
use_map=false;
saved_config=false;
change_button=false;
current_key=0;
ds_pause_string=ds_grid_create(3,0);
var _spr_config_h=sprite_get_width(s_hud_meal_side_details);
config_detail[0]=-_spr_config_h;
config_detail[1]=global.ch+_spr_config_h;
change_button=false;
bg_alpha_5=0;
yy_button=-global.ch;

surf_map=-1;
map_alp=0;
map_pos_list=[
	[157,-39,["Esperança","Esperanza","Hope"],["Nossa casa!","¡Nuestra casa!","Our home!"]],
	[173,-230,["Encruzilhada","Cruce","Crossroad"],["Uma cruzilhada, ai tem marca de tanque no chão","Un cruce, hay marcas de tanque en el suelo","A crossroad, there's tank marks on the road"]],
	[352,-230,["Portões do jardim","Puerta del jardin","Garden gateway"],["O Jardim secreto fica pertinho dai!!","¡¡El Jardin secreto está cerquita!!","The Secret Garden are nearby!!"]],
	[362,-159,["Jardim Secreto","Jardin Secreto","Secret Garden"],["Meu Jardim secreto, gosto de ir ai para pensar e ter um momentinho de paz!","Mi Jardin secreto, ¡A mi me gusta ir ahi para tener algo de paz!","My Secret Garden, i like to go there to find peace!"]],
	[522,-223,["Carro esquecido","Coche olvidado","Forgotten car"],["Um carro abandonado onde posso encontrar Owen todos os dias, depois do café!!","¡¡Un coche abandonado donde puedo encontrar Owen, todos los dias trás el desayuno!!","An abandoned car where i can find Owen, everyday, after breakfast!!"]],
	[180,-392,["Coreto","Kiosko","Bandstand"],["O antigo Coreto! É aqui que nossos pais nos buscam na formatura","¡El antiguo Kiosco! És aqui que nuestros padres nos recogen en el dia de la graduación","An Old Bandstand! Here is where our parents pick up us on graduation day"]],
	[-110,-206,["Tanque velho","Viejo Tanque","Old Tank"],["Um antigo tanque, já faz um tempo que está ai, os tios dizem para não chegarmos perto","Un viejo tanque, lleva ahí mucho tiempo, los tíos nos dijeron que no fuéramos allí","An old tank, it's been there since a lot, Uncles  told us to not go there"]],
]
map_x_pos=0;
map_y_pos=0;
map_xx_seq_timer=0;
map_xx_seq_lmt=0;
var _ww=(global.cw/2)-(sprite_get_width(s_hud_pause_map_bg_1_1)/2);
var yy=sprite_get_height(s_hud_pause_map_bg_1_1);
map_1_yy=(global.ch/2)+yy;
map_1_xx=global.cw/2;
map_2_yy=(global.ch/2);
var xx=sprite_get_width(s_hud_pause_map_bg_2);
map_2_xx=_ww-xx;
var _offset=16;
var _hh=((global.ch)-(sprite_get_height(s_hud_pause_map_bg_3)+sprite_get_height(s_hud_pause_map_bg_4)+sprite_get_height(s_hud_pause_map_bg_5)+(_offset*2)))/2;
map_3_yy=_hh;
var xx=sprite_get_width(s_hud_pause_map_bg_3);
map_3_xx=((global.cw-(_ww/2))+xx);

exit_question=false;
qt_alp=0;
#endregion