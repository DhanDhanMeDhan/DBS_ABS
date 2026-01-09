//var w=window_get_width();
//var h=window_get_height();
//if(w!=0)and(h!=0){
//	view_enabled[0]=true;
//	view_visible[0]=true;
//	global.cam=view_camera[0];
//	var window_w=-1,window_h=-1;
//	switch global.resolution{
//		case 0: window_w=1920;window_h=1080; break;
//		case 1: window_w=1600;window_h=900; break;
//		case 2: window_w=1366;window_h=768; break;
//		case 3: window_w=1280;window_h=720; break;
//		case 4: window_w=1024;window_h=576; break;
//	}
//	if(!global.window_mode){
//		window_set_fullscreen(false);
//		window_set_size(window_w,window_h);
//		window_center();
//	}else{
//		window_set_fullscreen(true);
//		window_w=window_get_width();
//		window_h=window_get_height();
//	}
//	ww=1920;
//	wh=1080;
//	camera_set_view_size(global.cam,ww/2,wh/2);
//	global.cw=camera_get_view_width(global.cam);
//	global.ch=camera_get_view_height(global.cam);
//	global.cx=camera_get_view_x(global.cam);
//	global.cy=camera_get_view_y(global.cam);

//	display_set_gui_size(global.cw,global.ch);
//	surface_resize(application_surface,global.cw,global.ch);
//	camera_set_view_border(global.cam,global.cw/2,(global.ch/2));
//	camera_set_view_target(global.cam,self);
//	if(instance_exists(o_graphic)) with(o_graphic) event_perform(ev_other,ev_user0);
//}
//global.window_change=false;
////view_visible[0]=true;
////view_enabled[0]=true;
////global.cam=view_camera[0];
////var window_w=-1,window_h=-1;
////switch global.resolution{
////	case 0: window_w=1920;window_h=1080; break;
////	case 1: window_w=1680;window_h=1050; break;
////	case 2: window_w=1366;window_h=768; break;
////	case 3: window_w=1280;window_h=1024; break;
////	case 4: window_w=1280;window_h=800; break;
////}
////global.cam=view_camera[0];
////window_set_size(window_w,window_h);
////window_set_fullscreen(global.window_mode);
////var ww=window_w,wh=window_h;
////surface_resize(application_surface,ww,wh);
////var sw=surface_get_width(application_surface);
////var sh=surface_get_height(application_surface);
////display_set_gui_size(ww,wh);

//	//var window_w=-1,window_h=-1;
//	//switch global.resolution{
//	//	case 0: window_w=1920;window_h=1080; break;
//	//	case 1: window_w=1680;window_h=1050; break;
//	//	case 2: window_w=1366;window_h=768; break;
//	//	case 3: window_w=1280;window_h=1024; break;
//	//	case 4: window_w=1280;window_h=800; break;
//	//	default: window_w=-1;window_h=-1;
//	//}
//	//window_set_size(window_w,window_h);
	
	
//	//global.ww=window_get_width();
//	//global.wh=window_get_height();
	
//	//camera_set_view_size(global.cam,global.ww/2,global.wh/2);
//	//view_set_wport(global.cam,global.ww);
//	//view_set_hport(global.cam,global.wh);
//	//global.cw=camera_get_view_width(global.cam);
//	//global.ch=camera_get_view_height(global.cam);
//	//global.cx=camera_get_view_x(global.cam);
//	//global.cy=camera_get_view_y(global.cam);
	

	
//	//display_set_gui_size(global.cw,global.ch);
//	//camera_set_view_border(global.cam,global.cw/2,global.ch/2);
//	//camera_set_view_target(global.cam,self);

	
