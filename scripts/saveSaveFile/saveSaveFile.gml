
var safeFileToSave = argument0;

var safeFileMap = ds_map_create();

ds_map_add(playerMap, "name", safeFileToSave.name);
ds_map_add(playerMap, "team", safeFileToSave.team);
ds_map_add(playerMap, "lastLoaded", safeFileToSave.lastLoaded);

return safeFileMap;