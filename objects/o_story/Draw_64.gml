if(video_string==-1) exit;
var _videoData=video_draw();
var _videoStatus=_videoData[0];
if(_videoStatus==0){
	draw_surface(_videoData[1],0,0);
}

video_draw();
if(global.pause){
	video_pause();
}else{
	var _status=video_get_status();
	if(_status!=video_status_closed){
		if(_status==video_status_paused) video_resume();
	}else{
		
	}
}

if(room==rm_basement_4){
	global.color=2;
}
var _ppl_num=array_length(ppl_array);
for(var i=0;i<_ppl_num;i++){
	var _obj=ppl_array[i][0];
	if(!instance_exists(_obj)){
		var _xx=ppl_array[i][2];
		var _yy=ppl_array[i][3];
		var _spr=ppl_array[i][1];
		var _lay=ppl_array[i][4];
		with(instance_create_layer(_xx,_yy,_lay,_obj)){
			if(_obj==o_bunbun){
				ppl_can_play=false;
				global.player=_obj;
			}
			ppl_act_state=ppl_act.custom;
			sprite_index=_spr;
			image_index=random_range(0,4);
			image_speed=.2;
		}
	}
}
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
