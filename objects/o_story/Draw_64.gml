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
	if(_status==video_status_closed)and(!instance_exists(o_cutscene)){
		scr_cutscene_create(t_cutscene_play);
		video_close();
		instance_destroy();
	}else{
		video_resume();
	}
}