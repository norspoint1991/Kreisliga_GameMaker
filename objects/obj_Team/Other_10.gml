/// @description AutoAufstellung

for (var i = 0; i < array_length_1d(spielerTypen); i++){
	var best = 0;
	var bestSpieler = undefined;
	var key = ds_map_find_first(Team.spielerMap);
	for (var k = 0; k < ds_map_size(Team.spielerMap); k++) 
	{
		var Spieler = Team.spielerMap[? key];
		if(Spieler.positionValues[? spielerTypen[i]] > best && Spieler.position == "RES")
		{
			best = Spieler.positionValues[? spielerTypen[i]];
			bestSpieler = Spieler;	
		}
		key = ds_map_find_next(Team.spielerMap, key); 
	}
	if(i < 11) bestSpieler.position = spielerTypen[i];
	else if (i < 16) bestSpieler.position = "AUSW";
}