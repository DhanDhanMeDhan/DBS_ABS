////============================================================
////creating the camera
////============================================================
//#region
//view_enabled[0]=true;
//view_visible[0]=true;
//global.window_mode=0;
//global.resolution=2;
//var window_w=-1,window_h=-1;
//switch global.resolution{
//	case 0: window_w=1920;window_h=1080; break;
//	case 1: window_w=1600;window_h=900; break;
//	case 2: window_w=1366;window_h=768; break;
//	case 3: window_w=1280;window_h=720; break;
//	case 4: window_w=1024;window_h=576; break;
//}
//if(!global.window_mode){
//	window_set_fullscreen(false);
//	window_set_size(window_w,window_h);
//	window_center();
//}else{
//	window_set_fullscreen(true);
//	window_w=window_get_width();
//	window_h=window_get_height();
//}
//global.cam=view_camera[0];
//ww=1920;
//wh=1080;
//camera_set_view_size(global.cam,ww/2,wh/2);
//global.cw=camera_get_view_width(global.cam);
//global.ch=camera_get_view_height(global.cam);
//global.cx=camera_get_view_x(global.cam);
//global.cy=camera_get_view_y(global.cam);

//display_set_gui_size(global.cw,global.ch);
//surface_resize(application_surface,global.cw,global.ch);
//camera_set_view_border(global.cam,global.cw/2,(global.ch/2));
//camera_set_view_target(global.cam,self);
//global.window_change=true;
//timer=0;
//flow_npc=true;
//npc_to_flow=o_bunbun;
//timer=0;

//debbug_mode=false;
//#endregion
////============================================================
////loading the audio
////============================================================
//#region
//enum audio_type{bgm,bgs,sfx}
//global.volume_master=1;
//global.volume_bgm=1;
//global.current_bgm=-1;
//global.volume_bgs=1;
//global.current_bgs=-1;
//global.volume_sfx=1;
//audio_group_load(audio_BGM);
//audio_group_load(audio_BGS);
//audio_group_load(audio_SFX);
//#endregion
////============================================================
////setting the keys
////============================================================
//#region
////confirm=====================================================
//global.key_confirm[0]=vk_enter;
//global.key_confirm[1]=vk_space;
////cancel======================================================
//global.key_cancel[0]=vk_end;
//global.key_cancel[1]=ord("X");
////arrows======================================================
//global.key_left[0]=vk_left;
//global.key_left[1]=ord("A");
//global.key_right[0]=vk_right;
//global.key_right[1]=ord("D");
//global.key_up[0]=vk_up;
//global.key_up[1]=ord("W");
//global.key_down[0]=vk_down;
//global.key_down[1]=ord("S");
////pause=======================================================
//global.key_pause=vk_escape;
//scr_inputs();
//#endregion
////============================================================
////other
////============================================================
//#region
////lang========================================================
//#region
//global.lang=0;
////switch (os_get_language()){
////	case "pt": global.lang=0; break;
////	case "es": global.lang=1; break;
////	case "en": global.lang=2; break;
////	default: global.lang=2; break;
////}
//global.font_talk=fnt_talk;
//global.font_talk_size=font_get_size(global.font_talk)+4;
//global.font_title=fnt_title;
//global.font_title_size=font_get_size(global.font_title)+8;
//#endregion
////events======================================================
//#region
//enum progress{
//	non_avaliable,
//	non_complete,
//	complete
//}
//global.dinner=0;
//global.dinner_moment=0;
//global.day=0;
//global.color=1;
//global.event=[
//	//dia 0
//	[
//		progress.non_complete, //café
//		progress.non_avaliable,//bricar no parque
//		progress.non_avaliable,//bricar de esconde esconde
//		progress.non_avaliable,//ajudar a mamãe com os temperos
//		progress.non_avaliable,//ajudar a hellen com as cartas
//		progress.non_avaliable,//ajudar petter com o antony
//		progress.non_avaliable,//ir para a janta
//		progress.non_avaliable,//ir para a cama
//		progress.non_avaliable,//ir para o porão
//	]
//];
//enum time{
//	day,
//	night,
//}
//enum place{
//	interior,
//	exterior,
//}
//enum story_tell{
//	world_1,
//	eyecatch_1,
//	fritz_1,
//}
//global.time=time.day;
//global.place=place.interior;
//#endregion
////save========================================================
//#region
//global.save_num=3;
//global.game_start=false;
//global.game_load=false;
//global.game_end=false;
//global.save_str=ds_grid_create(3,global.save_num);
//global.save_fle=-1;
//var i=0; repeat global.save_num{
//	global.save_str[# 0,i]="save"+string(i+1)+".dat";
//	i++;
//}
//global.room_data={
//	b_bed1:0,b_bed2:0,b_bed3:0,
//	g_bed1:0,g_bed2:0,g_bed3:0,
//	k_bed:0,bb_bed:0,cafeteria:0,
//	ext1:0,ext2:0,corridor:0,
//	infrm:0,bath1:0,bath2:0,
//	forst1:0,forst2:0,forst3:0,forst4:0,forst5:0
//}
//global.cam_data={
//	save_x:0,save_y:0,save_rm:0,
//	save_prt:0,progress:0,data:0,color:0,
//	room_name:0,flow_npc:0,npc_flow:0
//}
//#endregion
////party=======================================================
//#region
//global.player=-1;
//global.party=[
//	[o_bunbun,0],
//];
//global.colored=false;
//global.pause=false;
//can_pause=false;
//#endregion
////inventory_and_item==========================================
//#region
//#region
//global.inventory=array_create(10);
//var i=0; repeat array_length(global.inventory){
//	global.inventory[i]=[-1,-1];
//	i++;
//}
//#endregion
//#region
//enum item{
//	jeyjey_colar,
//	mother_list,
//	irrigator,
//	uncle_spices,
//	love_letter,
//	flowers,
//	bouquet,
//	noah_gift,//pingente
//	linus_diary,
//	pijamas
//}
//#endregion
//#endregion
////interact====================================================
//#region
//interact_set=true;
//interact_alpha=0;
//interact_left=-sprite_get_width(s_hud_interact_hud);
//#endregion
////minigame====================================================
//#region
//enum minigame_set{
//	infinity_run,
//	love_letter,
//	paint_rot,
//	save_things
//}
//#endregion
//#endregion