for(var i=0;i<floors;i++){
	if(surface_exists(ds_tld[i][0][0])) surface_free(ds_tld[i][0][0]);
	if(surface_exists(ds_tld[i][1][0])) surface_free(ds_tld[i][1][0]);
	if(surface_exists(ds_tld[i][2][0])) surface_free(ds_tld[i][2][0]);
	if(surface_exists(ds_tld[i][0][1])) surface_free(ds_tld[i][0][1]);
	if(surface_exists(ds_tld[i][1][1])) surface_free(ds_tld[i][1][1]);
	if(surface_exists(ds_tld[i][2][1])) surface_free(ds_tld[i][2][1]);
}