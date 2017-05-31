// die Liga wird erstellt, indem angegeben wird, wie viele Mannschaften darin enthalten
// sein sollen. Man kann auch schon eine Liste von Mannschaften reingeben
// Name reingeben wäre gut, ansosnten ist es einfach "Eine Kreisliga"
// falls keine Anzahl an Teams vorgegeben ist, werden 15 erstellt

var liga = instance_create_depth(0,0,0  , obj_Liga);
var teamToAdd = 0;
var i= 0;
if (argument_count >= 1){
	if (argument[0] != 0) { 
		liga.ligaName = argument[0];
	 }
}
if (argument_count >= 2) {
	if (argument[1] != 0) {
		liga.teamMap = argument[1];
	}
}
var mapSize = ds_map_size(liga.teamMap);
	
if (argument_count >= 3) {
	if (argument[2] != 0) {
		while (i <= argument[2] - mapSize ){
			teamToAdd = new_Team();
			ds_map_add(liga.teamMap, teamToAdd.teamName, teamToAdd);
			i++;
		}
	}
}	
else {
	i = 0;
	while ( i <=  15){
		teamToAdd = new_Team();
		if(!ds_map_exists(liga.teamMap, teamToAdd.teamName)){
			ds_map_add(liga.teamMap, teamToAdd.teamName, teamToAdd);
		}
		i++;
	}
}
return liga;