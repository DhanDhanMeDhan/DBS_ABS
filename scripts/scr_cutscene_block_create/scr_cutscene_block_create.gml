// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_cutscene_block_create(){
	with(instance_create_layer(argument0,argument1,argument2,argument3)){
		image_xscale=argument4;
		image_yscale=argument5;
	}
	scr_cutscene_continue();
}