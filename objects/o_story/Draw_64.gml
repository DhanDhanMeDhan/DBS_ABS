var _data=video_draw();
var _status=_data[0];
var _video_status=video_get_status();
if(_status==0)and(_video_status==video_status_playing){
	var _surface=_data[1];
	draw_surface(_surface,0,0);
}
	

/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
