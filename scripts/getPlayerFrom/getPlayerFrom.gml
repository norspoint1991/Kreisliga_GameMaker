///getPlayerFrom (Team, Positions...)
//gibt einen Spieler des Teams mit einer der angegebenen Positionen zurück

var possiblePlayers = ds_list_create();
var Spieler;
var positions = ds_list_create();
var Team = argument[0];
if (argument_count == 2)
{
	if (argument[1] == "VER"){
		ds_list_add(positions, "LI");
		ds_list_add(positions, "IV");
		ds_list_add(positions, "MD");
		ds_list_add(positions, "RV");
		ds_list_add(positions, "LV");
	}
	else if (argument[1] == "MIT"){
		ds_list_add(positions, "DM");
		ds_list_add(positions, "LM");
		ds_list_add(positions, "ZM");
		ds_list_add(positions, "RM");
		ds_list_add(positions, "OM");
	}
	else if (argument[1] == "OFF"){
		ds_list_add(positions, "ZM");
		ds_list_add(positions, "OM");
		ds_list_add(positions, "ST");
	}
	else ds_list_add(positions, argument[1])
}
else if(argument_count > 2)
{
	for(var i = 1; i < argument_count; i++)
	{
		ds_list_add(positions, argument[i]);
	}
}
for(i = 0; i < ds_list_size(positions); i++)
{
	var key = ds_map_find_first(Team.spielerMap);
	for (var k = 0; k < ds_map_size(Team.spielerMap); k++) 
	{
		Spieler = Team.spielerMap[? key];
		if(Spieler.position == positions[|i])
		{
			ds_list_add(possiblePlayers, Spieler);	
		}
		key = ds_map_find_next(Team.spielerMap, key); 
	}
}

return possiblePlayers[|(irandom(ds_list_size(possiblePlayers) - 1))]
