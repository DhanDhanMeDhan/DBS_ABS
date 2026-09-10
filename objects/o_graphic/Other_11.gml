for(var i=0;i<global.floor;i++){
	if(surface_exists(ds_tld[i][0][0])) surface_free(ds_tld[i][0][0]);
	if(surface_exists(ds_tld[i][0][1])) surface_free(ds_tld[i][0][1]);
	if(surface_exists(ds_tld[i][1][0])) surface_free(ds_tld[i][1][0]);
	if(surface_exists(ds_tld[i][1][1])) surface_free(ds_tld[i][1][1]);
	if(surface_exists(ds_wth[0])){surface_free(ds_wth[0]);}
	
}

