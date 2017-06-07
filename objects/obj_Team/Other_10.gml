/// @description AutoAufstellung
var spielerTypen = returnSpielertypen(formation);
for (var i = 0; i < array_length_1d(spielerTypen); i++){
	var best = 0;
	var bestSpieler = undefined;
	var key = ds_map_find_first(spielerMap);
	for (var k = 0; k < ds_map_size(spielerMap); k++) 
	{
		var Spieler = spielerMap[? key];
		if(Spieler.positionValues[? spielerTypen[i]] > best && Spieler.position == "RES")
		{
			best = Spieler.positionValues[? spielerTypen[i]];
			bestSpieler = Spieler;	
		}
		key = ds_map_find_next(spielerMap, key); 
	}
	if(i < 11) bestSpieler.position = spielerTypen[i];
	else if (i < 16) bestSpieler.position = "AUSW";
}