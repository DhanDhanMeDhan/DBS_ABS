draw_set_alpha(1);
draw_surface_ext(application_surface,0,0,1,1,0,c_white,1);

for(var i=0;i<array_length(gui_to_draw);i++){
	with(gui_to_draw[i]) event_perform(ev_draw,ev_gui);
}

var _low