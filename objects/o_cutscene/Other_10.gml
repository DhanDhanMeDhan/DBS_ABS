//============================================================
//setting the cutscene
//============================================================
#region
current_scene=cutscene_play[scene_index];
var len=array_length(current_scene)-1;
current_scene_array=array_create(len,0);
array_copy(current_scene_array,0,current_scene,1,len);
#endregion