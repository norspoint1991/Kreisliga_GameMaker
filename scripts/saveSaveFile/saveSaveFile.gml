
var safeFileToSave = argument0;
var leagueToSafe = argument1;

var safeFileMap = ds_map_create();

ds_map_add(safeFileMap, "name", safeFileToSave.name);
ds_map_add(safeFileMap, "team", safeFileToSave.team);
ds_map_add(safeFileMap, "lastLoaded", safeFileToSave.lastLoaded);
saveLeague(leagueToSafe, safeFileToSave.name);
return safeFileMap;

