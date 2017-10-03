// Spielplan und Tabelle werden erst gespeichert, wenn sie da sind, da wir noch nicht wissen
//was für eine Datenstruktur dafür verwendet wird

var leagueToSave = argument0;
var name = argument1;

var leagueMap = ds_map_create();

ds_map_add(leagueMap, "ligaName", leagueToSave.ligaName);
ds_map_add(leagueMap, "spieltag", leagueToSave.spieltag);


var parsedTeamMap = ds_map_create();
var key = ds_map_find_first(leagueToSave.teamMap);

for(var i=0; i < ds_map_size(leagueToSave.teamMap); i++) {
ds_map_add_map( parsedTeamMap, key, saveTeam( leagueToSave.teamMap[? key]));

key = ds_map_find_next(leagueToSave.teamMap, key); 
}

ds_map_add_map(leagueMap, "teamMap", parsedTeamMap);

var spielplanMap =ds_map_create();
var spieltag = array_height_2d(leagueToSave.spielplan) - 1;

for (var i = 1; i<= spieltag ; i++) {
	ds_map_add(spielplanMap, i, spieltagToString(array_copy_2d_to_1d(leagueToSave.spielplan,i)));
}

ds_map_add_map(leagueMap, "spielplanMap", spielplanMap);

ds_map_secure_save(leagueMap, working_directory +  name + ".dat");

//return leagueMap;