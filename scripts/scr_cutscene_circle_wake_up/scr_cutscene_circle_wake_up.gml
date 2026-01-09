// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_cutscene_circle_wake_up(){
	cutscene_circle_set=argument0;
	cutscene_circle_flow_player=argument1;
	if(cutscene_circle_flow_player){
		cutscene_circle_xx=o_camera.x//global.player.x;
		cutscene_circle_yy=o_camera.y//global.player.y-(sprite_height/2);
	}else{
		cutscene_circle_xx=argument2;
		cutscene_circle_yy=argument3;
	}
	cutscene_circle_color=argument7;
	var _relative=argument4,_open=argument5,_semi_open=argument6,_total=global.cw;
	if(_relative){
		if(_open){
			if(!_semi_open){
				cutscene_circle_radius=lerp(cutscene_circle_radius,_total,.015);
				if(cutscene_circle_radius>=_total-(global.cw/3)){
					cutscene_circle_set=false;
					scr_cutscene_continue();
				}
			}else{
				cutscene_circle_radius=lerp(cutscene_circle_radius,48,.015);
				if(cutscene_circle_radius>=46) scr_cutscene_continue();
			}
			
		}else{
			if(cutscene_timer>=2){
				cutscene_circle_radius=lerp(cutscene_circle_radius,0,.05);
				if(cutscene_circle_radius<=2){
					cutscene_circle_radius=0;
					scr_cutscene_continue();
				}
			}else{
				cutscene_timer++;
				cutscene_circle_radius=global.cw;
			}
		}
	}else{
		if(_open){cutscene_circle_radius=_total;cutscene_circle_set=false;}
		else{cutscene_circle_radius=0;}
		scr_cutscene_continue();
	}
}