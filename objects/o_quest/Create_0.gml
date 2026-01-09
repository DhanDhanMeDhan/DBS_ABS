//============================================================
//creating the quests
//============================================================
#region
enum quest_type{
	switch_clothes,
	have_item,
	talk_to,
	go_to,
	someone_exist,
	someone_party,
}
quest_array=[[-1,-1,-1]];
quest_index=0;
complete=false;
non_complete=false;
non_avaliable=false;
talked=false;
can_interact=true;
#endregion
//============================================================
//creating the cutscene
//============================================================
#region
t_cutscene_play=-1;
complete_cutscene=-1;
non_complete_cutscene=-1;
non_avaliable_cutscene=-1;
#endregion
//============================================================
//depth
//============================================================
#region
ppl_focused=false;
visible=false;
z=-1;
#endregion