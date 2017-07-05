global.eigenesTeam = new_Team("SC Hille", 0, 19, c_green);
var teamMap = ds_map_create();
ds_map_add(teamMap, global.eigenesTeam.teamName, global.eigenesTeam);
global.eigeneLiga = new_Liga("ML - Kreisliga A", teamMap, 16);

room_goto(rm_ManagerView);