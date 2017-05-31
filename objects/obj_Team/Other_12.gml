/// @description Abpraller

var moraleOFF = 0;
var strengthOFF = 0;
var moraleDEF = 0;
var strengthDEF = 0;

var key = ds_map_find_first(spielerMap);
for (var k = 0; k < ds_map_size(spielerMap); k++) 
{
	var spieler = spielerMap[? key];
	if(stringEquals(spieler.position, "DM", "LM", "OM", "RM", "ZM", "ST")){
		moraleOFF += spieler.moral;
		strengthOFF += spieler.stellungsspiel + spieler.geschwindigkeit;
	}
	if(stringEquals(spieler.position, "LI", "LM", "DM", "RM", "IV", "RV", "LV", "MD")){
		moraleDEF += spieler.moral;
		strengthDEF += spieler.stellungsspiel + spieler.geschwindigkeit;
	}
	key = ds_map_find_next(spielerMap, key); 
}
abprallerOFF = moraleOFF + strengthOFF;
abprallerDEF = moraleDEF + strengthDEF;