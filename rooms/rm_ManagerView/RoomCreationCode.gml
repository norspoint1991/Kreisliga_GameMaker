managerAufstellungsBox = instance_create_depth(0, 0, 0, obj_AufstellungBox);

with(managerAufstellungsBox){
	padding = 8;
	fnt_handwriting = font_add("Font linda.sciutto.ttf", 14, true, false, 1, 255);
	fnt_handwriting_headline = font_add("Font linda.sciutto.ttf", 18, true, false, 1, 255);
	team = global.eigenesTeam;
	
	//Spaltenbezeichnungen
	spaltenBezeichnungen[9] = "Dribb";
	spaltenBezeichnungen[8] = "Antiz";
	spaltenBezeichnungen[7] = "Kopfb";
	spaltenBezeichnungen[6] = "Zweik";
	spaltenBezeichnungen[5] = "Geschw";
	spaltenBezeichnungen[4] = "Schuss";
	spaltenBezeichnungen[3] = "Moral";
	spaltenBezeichnungen[2] = "B.Pos";
	spaltenBezeichnungen[1] = "Pos";
	spaltenBezeichnungen[0] = "Name";
	attributeNumber = array_length_1d(spaltenBezeichnungen);
	sortingNumbers = 2;
	posSortingColumn = 10;
	favPosSortingColumn = 11;
	//Grid mit allen Spielern und ihren Attributen
	playerGrid = ds_grid_create(attributeNumber + sortingNumbers, 
								ds_map_size(team.spielerMap));
	var key = ds_map_find_first(team.spielerMap);
	for (var i = 0; i < ds_map_size(team.spielerMap); i++){
		playerGrid[# 0, i] = team.spielerMap[? key].vorname + " " + team.spielerMap[? key].nachname;
		playerGrid[# 1, i] = team.spielerMap[? key].position;
		playerGrid[# 2, i] = team.spielerMap[? key].favPosition;
		playerGrid[# 3, i] = team.spielerMap[? key].moral;
		playerGrid[# 4, i] = team.spielerMap[? key].schuss;
		playerGrid[# 5, i] = team.spielerMap[? key].geschwindigkeit;
		playerGrid[# 6, i] = team.spielerMap[? key].zweikampf;
		playerGrid[# 7, i] = team.spielerMap[? key].kopfball;
		playerGrid[# 8, i] = team.spielerMap[? key].antizipation;
		playerGrid[# 9, i] = team.spielerMap[? key].dribbling;
		playerGrid[# 10, i] = PosSortNumber(team.spielerMap[? key].position);
		playerGrid[# 11, i] = PosSortNumber(team.spielerMap[? key].favPosition);
		key = ds_map_find_next(team.spielerMap, key);
	}
}

SpielstartenButton = instance_create_depth(750, 700, 0, obj_ManagerViewButton);

SpielstartenButton.text = "Spieltag starten"
SpielstartenButton.action = 0;