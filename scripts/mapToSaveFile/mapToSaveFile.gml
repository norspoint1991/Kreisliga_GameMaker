
var saveMap = argument0;

var newSave = instance_create_depth(0,0,0, sys_saveFile);

newSave.name = saveMap[? "name"];
newSave.team = saveMap[? "team"];
newSave.lastLoaded = saveMap[? "lastLoaded"];


return newSave;