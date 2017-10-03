
var ligaMap = argument0;

var ligaName = ligaMap[? "ligaName"];

var teamList = ligaMap [? "teamMap"];
var spieltag = ligaMap [? "spieltag"];
var unparsedTeamMap = ds_map_create();
var key = ds_map_find_first(teamList);

for(var i=0; i < ds_map_size(teamList); i++) {
ds_map_add( unparsedTeamMap, key, mapToTeam( teamList[? key]));

key = ds_map_find_next(teamList, key); 
}

var spielplan = mapToSpielplan(ligaMap [? "spielplanMap"]);

var liga = new_Liga(ligaName, unparsedTeamMap, 0);


return liga;