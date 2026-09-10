//============================================================
//creating the arrays
//============================================================
#region
application_surface_draw_enable(false);
ds_tld=array_create(4);
ds_ppl=array_create(3);
ds_wth=[0,1];
for(var i=0;i<global.floor;i++){
	ds_tld[i]=[[-1,-1],[-1,-1],-1,0];
	ds_ppl[i]=ds_grid_create(2,4);
}
event_perform(ev_other,ev_user0);
gui_to_draw=[o_main_menu,o_logo_intro,o_hide_n_seek,o_camera,o_cutscene,o_mini_game,o_meal,o_story,o_papers,o_pause];
#endregion
//============================================================
//setting the alpha
//============================================================
#region
graphic_show_everything=false;
graphic_focus_mode=false;
graphic_flow_player=true;
graphic_flow_layer=-1;
graphic_amount_alp_focus=.05;
#endregion