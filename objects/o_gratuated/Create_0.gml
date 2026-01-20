event_inherited();
ppl_face_portrait=-1;
ppl_scr_cutscene=-1;
ppl_name=["?????","?????","?????"];
ppl_voice=dag_004;
ppl_flowing=true;

ppl_act_state=ppl_act.custom;
clothe=clothes.casual;
#region casual
#region idle alination
spr_casual_idle_down=s_gratuated_emerge;
spr_casual_idle_downleft=s_gratuated_emerge;
spr_casual_idle_downright=s_gratuated_emerge;
spr_casual_idle_left=s_gratuated_emerge;
spr_casual_idle_right=s_gratuated_emerge;
spr_casual_idle_up=s_gratuated_emerge;
spr_casual_idle_upleft=s_gratuated_emerge;
spr_casual_idle_upright=s_gratuated_emerge;
#endregion
//============================================================
#region walk animation
spr_casual_walk_down=s_gratuated_emerge;
spr_casual_walk_downleft=s_gratuated_emerge;
spr_casual_walk_downright=s_gratuated_emerge;
spr_casual_walk_left=s_gratuated_emerge;
spr_casual_walk_right=s_gratuated_emerge;
spr_casual_walk_up=s_gratuated_emerge;
spr_casual_walk_upleft=s_gratuated_emerge;
spr_casual_walk_upright=s_gratuated_emerge;
#endregion
//============================================================
#region talk animation
spr_casual_talk_down=s_gratuated_emerge;
spr_casual_talk_downleft=s_gratuated_emerge;
spr_casual_talk_downright=s_gratuated_emerge;
spr_casual_talk_left=s_gratuated_emerge;
spr_casual_talk_right=s_gratuated_emerge;
spr_casual_talk_up=s_gratuated_emerge;
spr_casual_talk_upleft=s_gratuated_emerge;
spr_casual_talk_upright=s_gratuated_emerge;
#endregion
#endregion
//============================================================
 #region pijama
#region idle alination
spr_pijama_idle_down=-1;//s_aunt_anzhelika_pijama_idle_1_down;
spr_pijama_idle_downleft=-1;//s_aunt_anzhelika_pijama_idle_1_downleft;
spr_pijama_idle_downright=-1;//s_aunt_anzhelika_pijama_idle_1_downright;
spr_pijama_idle_left=-1;//s_aunt_anzhelika_pijama_idle_1_left;
spr_pijama_idle_right=-1;//s_aunt_anzhelika_pijama_idle_1_right;
spr_pijama_idle_up=-1;//s_aunt_anzhelika_pijama_idletalk_1_up;
spr_pijama_idle_upleft=-1;//s_aunt_anzhelika_pijama_idletalk_1_upleft;
spr_pijama_idle_upright=-1;//s_aunt_anzhelika_pijama_idletalk_1_upright;
#endregion
//============================================================
#region walk animation
spr_pijama_walk_down=-1;//s_aunt_anzhelika_pijama_walk_1_down;
spr_pijama_walk_downleft=-1;//s_aunt_anzhelika_pijama_walk_1_downleft;
spr_pijama_walk_downright=-1;//s_aunt_anzhelika_pijama_walk_1_downright;
spr_pijama_walk_left=-1;//s_aunt_anzhelika_pijama_walk_1_left;
spr_pijama_walk_right=-1;//s_aunt_anzhelika_pijama_walk_1_right;
spr_pijama_walk_up=-1;//s_aunt_anzhelika_pijama_walk_1_up;
spr_pijama_walk_upleft=-1;//s_aunt_anzhelika_pijama_walk_1_upleft;
spr_pijama_walk_upright=-1;//s_aunt_anzhelika_pijama_walk_1_upright;
#endregion
//============================================================
#region talk animation
spr_pijama_talk_down=-1;//s_aunt_anzhelika_pijama_talk_1_down;
spr_pijama_talk_downleft=-1;//s_aunt_anzhelika_pijama_talk_1_downleft;
spr_pijama_talk_downright=-1;//s_aunt_anzhelika_pijama_talk_1_downright;
spr_pijama_talk_left=-1;//s_aunt_anzhelika_pijama_talk_1_left;
spr_pijama_talk_right=-1;//s_aunt_anzhelika_pijama_talk_1_right;
spr_pijama_talk_up=-1;//s_aunt_anzhelika_pijama_idletalk_1_up;
spr_pijama_talk_upleft=-1;//s_aunt_anzhelika_pijama_idletalk_1_upleft;
spr_pijama_talk_upright=-1;//s_aunt_anzhelika_pijama_idletalk_1_upright;
#endregion
#endregion

sprites=[
	[s_gratuated_knock,1,.2],
	[s_gratuated_knock,3,.2],
	[s_gratuated_knock,2,.2],
	[s_gratuated_knock,1,.2],
	[s_gratuated_knock,5,.2],
	[s_gratuated_open,2,.35],
	[s_gratuated_arms_1,2,.35],
	[s_gratuated_eyes,2,.35],
	[s_gratuated_arms_2,2,.45],
];
finnished_anim=false;
current_sprite=0;
timer=0;
c_timer=0;
show_hand=false;