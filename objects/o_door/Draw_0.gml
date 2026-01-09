event_inherited();
var _spr_num=sprite_get_number(sprite_index);
if(animated){
	if(open){
		if(image_index>=_spr_num){image_speed=0;}
		else{image_speed=.2}
	}else{
		if(image_index>0){image_speed=-.2;}
		else{image_speed=0}
	}
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);