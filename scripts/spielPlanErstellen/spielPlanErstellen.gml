//TODO einen der vielen Spielplan Algorithmen implementieren
var teamMap = argument0;

var teamArray = undefined;
var key = ds_map_find_first(teamMap);
for(var i = 0; i < ds_map_size(teamMap); i++){
	teamArray[ds_map_size(teamMap) - i - 1] = teamMap[? key];
	key = ds_map_find_next(teamMap, key);
}	
var partienArray = undefined;

for(var i = 0; i < array_length_1d(teamArray); i++){	
	for(var j = 0; j < array_length_1d(teamArray); j++){
		if(i == j) partienArray[i, j] = "";
		else partienArray [i, j] = string(i) + ":" string(j);
	}
}

//nur zu Testzwecken

var spielplan = undefined;

for(var k = 0; k < array_length_1d(teamArray) - 1; k += 2){
	spielplan[1, k] = teamArray[k];
	spielplan[1, k+1] = teamArray[k+1];
}

return spielplan
