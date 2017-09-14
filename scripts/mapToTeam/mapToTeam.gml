

var teamMap = argument0;

var teamName = teamMap[? "teamName"];

var playerList = teamMap [? "spielerMap"];

var unparsedSpielerMap = ds_map_create();
var key = ds_map_find_first(playerList);

for(var i=0; i < ds_map_size(playerList); i++) {
ds_map_add( unparsedSpielerMap, key, mapToPlayer( playerList[? key]));

key = ds_map_find_next(playerList, key); 
}

var team = new_Team(teamName, unparsedSpielerMap, 0, 0);

team.formation = teamMap[? "formation"];
team.punkte = teamMap[? "punkte"];
team.gegentore = teamMap[? "gegentore"];
team.tore = teamMap[? "tore"];
team.spiele = teamMap[? "spiele"];
team.siege = teamMap[? "siege"];
team.niederlagen = teamMap[? "niederlagen"];
team.unentschieden = teamMap[? "unentschieden"];


return team;