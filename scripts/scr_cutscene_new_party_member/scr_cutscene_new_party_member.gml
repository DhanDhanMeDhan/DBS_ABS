function scr_cutscene_new_party_member(){
	var obj=argument0;
	var _num=array_length(global.party);
	array_resize(global.party,_num+1);
	obj.ppl_act_state=ppl_act.flow;
	global.party[_num][0]=obj;
	obj.persistent=true;
	global.party[_num][1]=(_num)*24;
	global.party[_num][2]=obj.spr_casual_walk_down;
	obj.pos=(_num)*24;
	scr_cutscene_continue();
}