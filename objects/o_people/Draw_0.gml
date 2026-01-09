event_inherited();
//============================================================
//draw self
//============================================================
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
//draw_text_color(x,y-sprite_height,string(ppl_talked),c_red,c_red,c_red,c_red,1);
if(o_camera.debbug_mode) draw_text_color(x,y-sprite_height,string(z),c_red,c_red,c_red,c_red,1);