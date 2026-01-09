var _videoData=video_draw();
var _videoStatus=_videoData[0];
if(_videoStatus==0){
	draw_surface(_videoData[1],0,0);
}

video_draw();
var _status=video_get_status();
if(_status==video_status_closed)and(!instance_exists(o_main_menu)){
	instance_create_layer(x,y,layer,o_main_menu);
}