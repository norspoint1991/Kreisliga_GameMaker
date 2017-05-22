/// @description Team Initiative

var morale = 0;
var strength = 0;

var key = ds_map_find_first(spielerMap);
for (var k = 0; k < ds_map_size(spielerMap); k++) 
	{
		var spieler = spielerMap[? key];
		if(spieler.position != "AUSW" && spieler.position != "RES")
		{
			morale += spieler.moral;
			strength += spieler.positionValues[? spieler.position];
		}
		key = ds_map_find_next(spielerMap, key); 
	}
teamInitiative = morale + strength; //TODO evtl die beiden Dinge noch gewichten