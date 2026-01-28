var _videoData=video_draw();
var _videoStatus=_videoData[0];
if(_videoStatus==0){
	draw_surface_ext(_videoData[1],0,0,1,1,0,c_white,1);
}
draw_text_colour(0,16,string(_videoData[1]),c_red,c_red,c_red,c_red,1)
var _status=video_get_status();
if(global.pause)or(!window_has_focus()){
	video_pause();	
}else{
	if(_status==video_status_closed){
		if(global.story_moment!=story_tell.gameover){
			if(!instance_exists(o_cutscene)){
				scr_cutscene_create(t_cutscene_play);
				video_close();
			}
		}else{
			instance_destroy(o_people);
			room_goto(rm_main_menu);
			global.game_start=false;
			global.game_load=false;
			global.game_end=false;
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
			global.story_moment=story_tell.bunbun_find;
			global.story_create=false;
			global.time=time.day;
			global.place=place.interior;
			if(!instance_exists(o_main_menu)){
				instance_create_layer(o_camera.x,o_camera.y,o_camera.layer,o_main_menu);
			}
		}
		instance_destroy();
	}else{
		video_resume();
	}
}