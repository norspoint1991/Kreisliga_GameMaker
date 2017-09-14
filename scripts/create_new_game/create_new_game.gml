var teamName = get_string ("Wie soll dein Team heißen?","FC Looser");
			var new_team =	new_Team(teamName);
			var teamMap = ds_map_create();
			ds_map_add(teamMap, new_team.teamName, teamName);
			var new_team =	1new_Team(teamName);
			var teamMap = ds_map_create();
			
var ligaName = get_string("Wie soll deine Liga heißen?","");
			new_Liga("ligaName", teamMap);