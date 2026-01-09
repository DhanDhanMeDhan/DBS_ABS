visible=false;
//============================================================
//setting the cutscene
//============================================================
#region 
cutscene_play=-1;
scene_index=0;
current_scene=-1;
current_scene_array=-1;
#endregion
//============================================================
//cutscene types
//============================================================
#region
cutscene_obj=-1;
cutscene_sprite_drawed=false;
#region bars
cutscene_bars_up=0;
cutscene_bars_bottom=global.ch;
#endregion
#region transition
enum cutscene_transition_type{fade,bars}
cutscene_transition_set_type=-1;
cutscene_transition_set_alpha=1;
cutscene_transition_set_color=-1;
cutscene_transition_up=0;
cutscene_transition_bottom=global.ch;
#endregion
#region wake up
cutscene_circle_surf=-1;
cutscene_circle_set=false;
cutscene_circle_radius=0;
cutscene_circle_color=-1;
cutscene_circle_flow_player=false;
cutscene_circle_x=0;
cutscene_circle_y=0;
cutscene_circle_xx=0;
cutscene_circle_yy=0;
cutscene_circle_timer_y=0;
cutscene_circle_timer_x=0;
#endregion
#region timer
cutscene_timer=0;
#endregion
#region move char
cutscene_x_dest=-1;
cutscene_y_dest=-1;
#endregion
#region flash
cutscene_set_flash=false;
cutscene_set_flash_amount=0;
cutscene_set_flash_alpha=0;
#endregion
#region talk
enum cutscene_talk_mode{normal,paper,file,animated}
cutscene_set_dialg=false;
cutscene_text_setting_text=false;
cutscene_text_mode=-1;
cutscene_text_name=-1;
cutscene_text_dialg=-1;
cutscene_text_lenght=-1;
cutscene_text_char=0;
cutscene_text_spd=1;
cutscene_text_setup=false;
cutscene_letter_finished=false;

cutscene_text_ww=150;
cutscene_text_border=8;
cutscene_text_line=global.font_talk_size;
cutscene_text_limit=cutscene_text_ww-cutscene_text_border*2;

cutscene_custom_text=false;
cutscene_custom_text_xx=0;
cutscene_custom_text_yy=0;
cutscene_custom_text_ww=0;
cutscene_custom_text_color=-1;
cutscene_custom_text_show_bg=false;
cutscene_custom_text_show_name=false;
cutscene_custom_text_show_speach=false;
#endregion
#region choice
cutscene_set_choice=false;
cutscene_choice=0;
cutscene_text_choice=-1;
cutscene_bg_choice_alpha=0;
cutscene_tx_choice_alpha=0;
cutscene_choice_y_box=(global.ch)-((global.ch/2));
cutscene_choice_y1=0;
cutscene_choice_y2=0;
#endregion
#region variables and other things
enum variable{
	normal,
	global,
	struct,
	nearst,
}
enum question{
	have_item,
	have_person,
}
cutscene_create_cutscene=false;
cutscene_item_draw=false;
cutscene_item_skip=false;
cutscene_item_looking=true;
cutscene_item_alpha=0;
cutscene_item_alpha_bg=0;
cutscene_item_draw_yy_1=global.ch/3;
cutscene_item_draw_yy_2=global.ch;
cutscene_item_name=-1;
cutscene_item_place=-1;
custcene_party_current_member=0;
cutscene_load=false;
#endregion
#endregion