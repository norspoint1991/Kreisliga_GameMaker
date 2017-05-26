// alle Spieler wieder für Aktionen freigeben
var Spieler;

var key = ds_map_find_first(Heimteam.spielerMap);
for (var k = 0; k < ds_map_size(Heimteam.spielerMap); k++) 
{
	Spieler = Heimteam.spielerMap[? key];
	Spieler.busy = false;
	key = ds_map_find_next(Heimteam.spielerMap, key); 
}

var key = ds_map_find_first(Auswaertsteam.spielerMap);
for (var k = 0; k < ds_map_size(Auswaertsteam.spielerMap); k++) 
{
	Spieler = Auswaertsteam.spielerMap[? key];
	Spieler.busy = false;
	key = ds_map_find_next(Auswaertsteam.spielerMap, key); 
}

// alle Zuweisungen wieder aufheben
SpielerMitBall = undefined;
SpielerMitBallVorher = undefined;
GegnerVorher = undefined;

