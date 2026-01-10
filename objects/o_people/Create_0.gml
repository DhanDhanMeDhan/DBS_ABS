event_inherited();
//============================================================
//setting the physics
//============================================================
#region
sprite_index=s_o_ppl;
direction=270;
spd=1;
block=-1;

enum ppl_act{
	play,
	flow,
	npc,
	run,
	custom
}
ppl_can_play=true;
ppl_act_state=ppl_act.npc;
ppl_looking_to=false;
ppl_to_look_at=-1;

enum path_act{
	state,
	delet,
}
ppl_do_path_act=-1;
ppl_path_index=-1

ppl_flowing=true;
array_size=128;
pos=24;
pos_x=array_create(array_size);
pos_y=array_create(array_size);
for(var i=array_size;i>=0;i--){
	pos_x[i]=x;
	pos_y[i]=y;
}
#endregion
//============================================================
//setting the animations
//============================================================
#region
mask_index=s_o_ppl;
enum ppl_anm{
	idle,
	walk,
	talk,
	custom
}
ppl_anm_state=ppl_anm.idle;
ppl_custom_img_spd=0;
ppl_talk=false;
#region
spr_down=-1;
spr_downleft=-1;
spr_downright=-1;
spr_left=-1;
spr_right=-1;
spr_up=-1;
spr_upleft=-1;
spr_upright=-1;
#endregion
//============================================================
#region
spr_idle_down=-1;
spr_idle_downleft=-1;
spr_idle_downright=-1;
spr_idle_left=-1;
spr_idle_right=-1;
spr_idle_up=-1;
spr_idle_upleft=-1;
spr_idle_upright=-1;
//============================================================
spr_walk_down=-1;
spr_walk_downleft=-1;
spr_walk_downright=-1;
spr_walk_left=-1;
spr_walk_right=-1;
spr_walk_up=-1;
spr_walk_upleft=-1;
spr_walk_upright=-1;
//============================================================
spr_talk_down=-1;
spr_talk_downleft=-1;
spr_talk_downright=-1;
spr_talk_left=-1;
spr_talk_right=-1;
spr_talk_up=-1;
spr_talk_upleft=-1;
spr_talk_upright=-1;
#endregion
#endregion
//============================================================
//setting the clothes
//============================================================
#region
enum clothes{
	casual,
	pijama,
}
clothe=clothes.casual;
#region casual
#region idle alination
spr_casual_idle_down=-1;
spr_casual_idle_downleft=-1;
spr_casual_idle_downright=-1;
spr_casual_idle_left=-1;
spr_casual_idle_right=-1;
spr_casual_idle_up=-1;
spr_casual_idle_upleft=-1;
spr_casual_idle_upright=-1;
#endregion
//============================================================
#region walk animation
spr_casual_walk_down=-1;
spr_casual_walk_downleft=-1;
spr_casual_walk_downright=-1;
spr_casual_walk_left=-1;
spr_casual_walk_right=-1;
spr_casual_walk_up=-1;
spr_casual_walk_upleft=-1;
spr_casual_walk_upright=-1;
#endregion
//============================================================
#region talk animation
spr_casual_talk_down=-1;
spr_casual_talk_downleft=-1;
spr_casual_talk_downright=-1;
spr_casual_talk_left=-1;
spr_casual_talk_right=-1;
spr_casual_talk_up=-1;
spr_casual_talk_upleft=-1;
spr_casual_talk_upright=-1;
#endregion
#endregion
//============================================================
#region pijama
#region idle alination
spr_pijama_idle_down=-1;
spr_pijama_idle_downleft=-1;
spr_pijama_idle_downright=-1;
spr_pijama_idle_left=-1;
spr_pijama_idle_right=-1;
spr_pijama_idle_up=-1;
spr_pijama_idle_upleft=-1;
spr_pijama_idle_upright=-1;
#endregion
//============================================================
#region walk animation
spr_pijama_walk_down=-1;
spr_pijama_walk_downleft=-1;
spr_pijama_walk_downright=-1;
spr_pijama_walk_left=-1;
spr_pijama_walk_right=-1;
spr_pijama_walk_up=-1;
spr_pijama_walk_upleft=-1;
spr_pijama_walk_upright=-1;
#endregion
//============================================================
#region talk animation
spr_pijama_talk_down=-1;
spr_pijama_talk_downleft=-1;
spr_pijama_talk_downright=-1;
spr_pijama_talk_left=-1;
spr_pijama_talk_right=-1;
spr_pijama_talk_up=-1;
spr_pijama_talk_upleft=-1;
spr_pijama_talk_upright=-1;
#endregion
#endregion
#endregion
//============================================================
//others
//============================================================
#region
ppl_face_portrait=-1;
ppl_face_icon_idle=-1;
ppl_face_icon_pos=-1
ppl_face_icon_neg=-1
ppl_talked=false;
ppl_name=-1;
ppl_voice=-1;
//ppl_inventory=array_create(10,[-1,-1]);
#endregion