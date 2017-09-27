//global.eigenesTeam = new_Team("SC Hille", 0, 19, c_green);
//var teamMap = ds_map_create();
//ds_map_add(teamMap, global.eigenesTeam.teamName, global.eigenesTeam);
//global.eigeneLiga = new_Liga("ML - Kreisliga A", teamMap, 16);

//room_goto(rm_ManagerView);


// nameBox für den Teamnamen und ligaBox für den Liganamen wurden über das Roominterface erstellt und platziert


nameBox.nextBox = ligaBox;
nameBox.headline = "Wie soll dein Team heißen?";
ligaBox.headline = "Wie soll denn deine Liga eigentlich heißen?"
ligaBox.prevBox = nameBox;
weiterButton.text = "fertig!";
