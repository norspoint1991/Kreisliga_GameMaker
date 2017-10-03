var teamToSave = argument0;

var teamMap = ds_map_create();

ds_map_add(teamMap, "teamName", teamToSave.teamName);
ds_map_add(teamMap, "formation", teamToSave.formation);
ds_map_add(teamMap, "punkte", teamToSave.punkte);
ds_map_add(teamMap, "gegentore", teamToSave.gegentore);
ds_map_add(teamMap, "tore", teamToSave.tore);
ds_map_add(teamMap, "spiele", teamToSave.spiele);
ds_map_add(teamMap, "siege", teamToSave.siege);
ds_map_add(teamMap, "niederlagen", teamToSave.niederlagen);
ds_map_add(teamMap, "unentschieden", teamToSave.unentschieden);
ds_map_add(teamMap, "gespieltesTeam" , teamToSave.gespieltesTeam);

var parsedSpielerMap = ds_map_create();
var key = ds_map_find_first(teamToSave.spielerMap);

for(var i=0; i < ds_map_size(teamToSave.spielerMap); i++) {
ds_map_add_map( parsedSpielerMap, key, savePlayer( teamToSave.spielerMap[? key]));

key = ds_map_find_next(teamToSave.spielerMap, key); 
}

ds_map_add_map(teamMap, "spielerMap" , parsedSpielerMap);
//ds_map_destroy(parsedSpielerMap);
//ds_map_secure_save(teamMap, working_directory +  "teamsave.dat");

return teamMap;