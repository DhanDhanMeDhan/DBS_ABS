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
	[["Carregar","Cargar","Load"],_xx,_c,pause_menu_action.load],
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
saved_config=false;
change_button=false;
current_key=0;
ds_pause_string=ds_grid_create(3,0);
var _spr_config_h=sprite_get_width(s_hud_meal_side_details);
config_detail[0]=-_spr_config_h;
config_detail[1]=global.ch+_spr_config_h;
#endregion