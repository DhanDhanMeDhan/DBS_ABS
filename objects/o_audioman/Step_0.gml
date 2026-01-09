var _audio_vol
switch song_type{
	case audio_type.bgm: _audio_vol=global.volume_bgm*global.volume_master; break;
	case audio_type.bgs: _audio_vol=global.volume_bgs*global.volume_master; break;
	case audio_type.sfx: _audio_vol=global.volume_sfx*global.volume_master; break;
}
if(songasset!=target_songasset){
	if(audio_exists(target_songasset)){
		song_instance=audio_play_sound(target_songasset,4,song_setloop);
		audio_sound_gain(song_instance,0,0);
		fadeinvol=0;
	}
	songasset=target_songasset
}

if(audio_is_playing(song_instance)){
	if(start_fadetime>0){
		if(fadeinvol<0){fadeinvol+=1/start_fadetime;}else{fadeinvol=1;}
	}else{
		fadeinvol=1;
	}
	audio_sound_gain(song_instance,fadeinvol*_audio_vol,0);
}