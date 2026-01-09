event_inherited();
if(interact){
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_center);
	draw_text_color(x+(sprite_width/2),y-sprite_height-8,"Interagir",c_black,c_black,c_black,c_black,1);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}