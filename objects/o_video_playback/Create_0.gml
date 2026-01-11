video_string=-1;
switch global.story_moment{
	case story_tell.bunbun_find:
		video_string="bunbun_finding.mp4";
		t_cutscene_play=[
			[scr_cutscene_bars,true,true],
			[scr_cutscene_wait,1],
			[scr_cutscene_bars,true,false]
		]
		break;
}
video=video_open(video_string);
video_enable_loop(false);