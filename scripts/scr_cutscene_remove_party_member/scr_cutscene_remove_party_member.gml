function scr_cutscene_remove_party_member(){
	//var obj=argument0;
	//var _old_party=global.party;
	//var _siz_party=array_length(global.party);
	//var _new_party=array_create(_siz_party-1);
	//var i=1; repeat _siz_party{
	//	if(global.party[i][0]!=obj){
	//		_new_party[i]=global.party[i];
	//	}else{
	//		with(obj){
	//			ppl_act_state=ppl_act.npc;
	//			persistent=false;
	//		}
	//	}
	//	i++
	//}
	//global.party=_new_party
	///*var _num=array_length(global.party)-1;
	//array_resize(global.party,_num);
	//with(obj){
	//	ppl_act_state=ppl_act.npc;
	//	persistent=false;
	//}
	//*/
	var _obj=argument0;
	var _old_party=global.party;
	var _siz_party=array_length(_old_party);
	var _new_party=array_create(_siz_party-1);
	var i=0; repeat _siz_party{
		var _pep=_old_party[i][0];
		if(_pep!=_obj){
			_new_party[custcene_party_current_member]=_old_party[i];
			custcene_party_current_member++;
		}else{
			with(_obj){
				ppl_act_state=ppl_act.npc;
				persistent=false;
			}
		}
		i++;
	}
	global.party=_new_party;
	scr_cutscene_continue();
}