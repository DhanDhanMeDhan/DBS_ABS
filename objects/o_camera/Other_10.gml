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
ww=window_w;
wh=window_h;