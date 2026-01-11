//============================================================
//checking if _cnf exists
//============================================================
#region
var _ach="cnf.dat";
var _lng=0;
var _mst=1;
var _bgm=1;
var _bgs=1;
var _sfx=1;
var _scr=1;
var _res=0;
var _ppr=0;
var _up1=ord("W");
var _up2=vk_up;
var _dw1=ord("S");
var _dw2=vk_down;
var _lt1=ord("A");
var _lt2=vk_left;
var _rt1=ord("D");
var _rt2=vk_right;
var _cn1=vk_end;
var _cn2=ord("X");
var _cm1=vk_enter;
var _cm2=vk_space;
var _ps=vk_escape;
if(file_exists(_ach)){
	ini_open(_ach);
	//============================================================
	_lng=ini_read_real("cnf","lng",0);
	_mst=ini_read_real("cnf","mst",0);
	_bgm=ini_read_real("cnf","bgm",0);
	_bgs=ini_read_real("cnf","bgs",0);
	_sfx=ini_read_real("cnf","sfx",0);
	_scr=ini_read_real("cnf","scr",0);
	_res=ini_read_real("cnf","res",0);
	_ppr=ini_read_real("cnf","ppr",0);
	_up1=ini_read_real("cnf","up1",0);
	_up2=ini_read_real("cnf","up2",0);
	_dw1=ini_read_real("cnf","dw1",0);
	_dw2=ini_read_real("cnf","dw2",0);
	_lt1=ini_read_real("cnf","lt1",0);
	_lt2=ini_read_real("cnf","lt2",0);
	_rt1=ini_read_real("cnf","rt1",0);
	_rt2=ini_read_real("cnf","rt2",0);
	_cn1=ini_read_real("cnf","cn1",0);
	_cn2=ini_read_real("cnf","cn2",0);
	_cm1=ini_read_real("cnf","cm1",0);
	_cm2=ini_read_real("cnf","cm2",0);
	_ps=ini_read_real("cnf","ps",0);
	//============================================================
	ini_close();
	saved_config=true;
}
#endregion
//============================================================
//setting the camera and window
//============================================================
#region
global.paper=_ppr;
global.window_mode=_scr;
global.resolution=_res;
var window_w=-1,window_h=-1;
switch global.resolution{
	case 0: window_w=1920;window_h=1080; break;
	case 1: window_w=1600;window_h=900; break;
	case 2: window_w=1366;window_h=768; break;
	case 3: window_w=1280;window_h=720; break;
	case 4: window_w=1024;window_h=576; break;
}
if(!global.window_mode){
	window_set_fullscreen(false);
	window_set_size(window_w,window_h);
	window_center();
}else{
	window_set_fullscreen(true);
	window_w=window_get_width();
	window_h=window_get_height();
}

global.cw=1920/2;
global.ch=1080/2;
res_s=2;
global.vw=global.cw/res_s;
global.vh=global.ch/res_s;
surface_resize(application_surface,global.vw*res_s,global.vh*res_s);
display_set_gui_size(global.cw,global.ch);
global.window_change=true;
flow_npc=true;
npc_to_flow=o_bunbun;
debbug_mode=false;
timer=0;
ww=window_get_width();
wh=window_get_height();
#endregion
//============================================================
//loading the audio
//============================================================
#region
enum audio_type{bgm,bgs,sfx}
global.volume_master=_mst;
global.volume_bgm=_bgm;
global.current_bgm=-1;
global.volume_bgs=_bgs;
global.current_bgs=-1;
global.volume_sfx=_sfx;
audio_group_load(audio_BGM);
audio_group_load(audio_BGS);
audio_group_load(audio_SFX);
#endregion
//============================================================
//setting the keys
//============================================================
#region
//confirm=====================================================
global.key_confirm[0]=_cm1;
global.key_confirm[1]=_cm2;
//cancel======================================================
global.key_cancel[0]=_cn1;
global.key_cancel[1]=_cn2;
//arrows======================================================
global.key_left[0]=_lt1;
global.key_left[1]=_lt2;
global.key_right[0]=_rt1;
global.key_right[1]=_rt2;
global.key_up[0]=_up1;
global.key_up[1]=_up2;
global.key_down[0]=_dw1;
global.key_down[1]=_dw2;
//pause=======================================================
global.key_pause=_ps;
global.scr=[-1,-1];
scr_inputs();
#endregion
//============================================================
//other
//============================================================
#region
//lang========================================================
#region
global.lang=0;
//switch (os_get_language()){
//	case "pt": global.lang=0; break;
//	case "es": global.lang=1; break;
//	case "en": global.lang=2; break;
//	default: global.lang=2; break;
//}
global.font_talk=fnt_talk;
global.font_talk_size=font_get_size(global.font_talk)+4;
global.font_title=fnt_title;
global.font_title_size=font_get_size(global.font_title)+8;
#endregion
//events======================================================
#region
enum progress{
	non_avaliable,
	non_complete,
	complete
}
global.dinner=0;
global.dinner_moment=0;
global.day=0;
global.colored=false;
global.color=1;
global.event=[
	//dia 0
	[
		progress.non_complete, //café
		progress.non_avaliable,//bricar no parque
		progress.non_avaliable,//bricar de esconde esconde
		progress.non_avaliable,//ajudar a mamãe com os temperos
		progress.non_avaliable,//ajudar a hellen com as cartas
		progress.non_avaliable,//ajudar petter com o antony
		progress.non_avaliable,//ir para a janta
		progress.non_avaliable,//ir para a cama
		progress.non_avaliable,//ir para o porão
		progress.non_avaliable,//ir para o porão
	]
];
enum time{
	day,
	night,
}
enum place{
	interior,
	exterior,
}
enum story_tell{
	world_1,
	eyecatch_1,
	fritz_1,
	bunbun_find
}
global.story_moment=story_tell.bunbun_find;
global.story_create=false;
global.time=time.day;
global.place=place.interior;
#endregion
//save========================================================
#region
global.save_num=3;
global.game_start=false;
global.game_load=false;
global.game_end=false;
global.save_str=ds_grid_create(3,global.save_num);
global.save_fle=-1;
var i=0; repeat global.save_num{
	global.save_str[# 0,i]="save"+string(i+1)+".dat";
	i++;
}
global.room_data={
	b_bed1:0,b_bed2:0,b_bed3:0,
	g_bed1:0,g_bed2:0,g_bed3:0,
	k_bed:0,bb_bed:0,cafeteria:0,
	ext1:0,ext2:0,corridor:0,
	infrm:0,bath1:0,bath2:0,
	forst1:0,forst2:0,forst3:0,forst4:0,forst5:0
}
global.cam_data={
	save_x:0,save_y:0,save_rm:0,
	save_prt:0,progress:0,data:0,color:0,
	room_name:0,flow_npc:0,npc_flow:0
}
#endregion
//party=======================================================
#region
global.player=-1;
global.party=[
	[o_bunbun,0,s_bunbun_casual_walk_1_down],
];
global.pause=false;
can_pause=false;
#endregion
//inventory_and_item==========================================
#region
#region
global.inventory=array_create(10);
var i=0; repeat array_length(global.inventory){
	global.inventory[i]=[-1,-1];
	i++;
}
#endregion
#region
enum item{
	jeyjey_colar,
	mother_list,
	irrigator,
	uncle_spices,
	love_letter,
	flowers,
	bouquet,
	noah_gift,//pingente
	linus_diary,
	basement_key_1,
	crayon,
	pijamas
}
#endregion
#endregion
//interact====================================================
#region
interact_set=true;
interact_alpha=0;
interact_left=-sprite_get_width(s_hud_interact_hud);
#endregion
//minigame====================================================
#region
enum minigame_set{
	freeze,
	infinity_run,
	love_letter,
	paint_rot,
	save_things
}
#endregion
#endregion
//============================================================
//instances
//============================================================
instance_create_layer(x,y,layer,o_graphic);
//instance_create_layer(x,y,layer,o_video_playback);