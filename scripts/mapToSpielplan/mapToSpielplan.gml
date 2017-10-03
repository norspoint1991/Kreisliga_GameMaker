var spielplanMap = argument0;
var spielplan;
var spieltage = ds_map_size(spielplanMap);
var mannschaften = spieltage/2 + 1 ;
for( var j = spieltage; j > 0 ; j--) {
	var dieserEineSpieltag = stringToSpieltag(spielplanMap[? string(j)]);
	for ( var i = mannschaften -1; i >= 0; i--) {
		spielplan[j, i] = dieserEineSpieltag[i];
	}
}


return spielplan;