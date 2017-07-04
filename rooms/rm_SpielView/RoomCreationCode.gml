global.simulationRunning = false;

view_camera[0] = camera_create_view(0,
									(window_get_height())/20,
									2*(window_get_width())/3,
									19*(window_get_height())/20,
									0, -1, -1, -1, 0, 0);
view_visible[0] = 1;
view_xport[0] = 0;
view_yport[0] = (window_get_height())/20;
view_wport[0] = 2*(window_get_width())/3;
view_hport[0] = 19*(window_get_height())/20;

view_camera[1] = camera_create_view(2*(window_get_width())/3,
									0,
									(window_get_width())/3,
									window_get_height(),
									0, -1, -1, -1, 0, 0);
view_visible[1] = 1;
view_xport[1] = 2*(window_get_width())/3;
view_yport[1] = 0;
view_wport[1] = (window_get_width())/3;
view_hport[1] = window_get_height();


instance_create_depth(0, 0, 0, obj_SpieltagGUI);

SpielstartenButton = instance_create_depth(750, 700, 0, obj_Spieltagbutton);
SpielstartenButton.text = "Spiel starten"
SpielstartenButton.action = 1;

spielAufstellungsBox = instance_create_depth(	2*(window_get_width())/3 + 3,
												window_get_height()/10, 0, 
												obj_AufstellungBox);

with(spielAufstellungsBox){
	padding = 6;
	fnt_handwriting = font_add("Font linda.sciutto.ttf", 10, true, false, 1, 255);
	fnt_handwriting_headline = font_add("Font linda.sciutto.ttf", 14, true, false, 1, 255);
	team = global.eigenesTeam;
	
	//Spaltenbezeichnungen
	spaltenBezeichnungen[3] = "Moral";
	spaltenBezeichnungen[2] = "B.Pos";
	spaltenBezeichnungen[1] = "Pos";
	spaltenBezeichnungen[0] = "Name";
	attributeNumber = array_length_1d(spaltenBezeichnungen);
	sortingNumbers = 2;
	posSortingColumn = 4;
	favPosSortingColumn = 5;
	//Grid mit allen Spielern und ihren Attributen
	playerGrid = ds_grid_create(attributeNumber + sortingNumbers, 
								ds_map_size(team.spielerMap));
	var key = ds_map_find_first(team.spielerMap);
	for (var i = 0; i < ds_map_size(team.spielerMap); i++){
		playerGrid[# 0, i] = team.spielerMap[? key].vorname + " " + team.spielerMap[? key].nachname;
		playerGrid[# 1, i] = team.spielerMap[? key].position;
		playerGrid[# 2, i] = team.spielerMap[? key].favPosition;
		playerGrid[# 3, i] = team.spielerMap[? key].moral;
		playerGrid[# 4, i] = PosSortNumber(team.spielerMap[? key].position);
		playerGrid[# 5, i] = PosSortNumber(team.spielerMap[? key].favPosition);
		key = ds_map_find_next(team.spielerMap, key);
	}
}