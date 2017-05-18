var teamToSave = argument0;

var teamMap = ds_map_create();

ds_map_add(teamMap, "teamName", teamToSave.teamName);

parsedSpielerMap = ds_map_create();
var key = ds_map_find_first(teamToSave.spielerMap);

for(i=0; i < ds_map_size(teamToSave.spielerMap); i++) {
ds_map_add_map( parsedSpielerMap, key, savePlayer( teamToSave.spielerMap[? key]));

key = ds_map_find_next(teamToSave.spielerMap, key); 
}

ds_map_secure_save(teamMap, working_directory +  "teamsave.dat");