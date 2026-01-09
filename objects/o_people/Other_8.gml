ppl_path=-1;
switch ppl_do_path_act{
	case path_act.delet:
		instance_destroy();
		break;
	case path_act.state:
		ppl_act_state=ppl_act.npc;
		break;
}