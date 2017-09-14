//draw Parameter
padding = 16;
ereignissewidth = window_get_width()/4;
ereignisseheight = window_get_height()/4;
aufstellungwidth = 3*window_get_width()/4;
aufstellungheight = 3*window_get_height()/4;
timelinewidth = window_get_width()/4;
timelineheight = 3*window_get_height()/4;
auswahlmenuwidth = 3*window_get_width()/4;
auswahlmenuheight = window_get_height()/4;
draw_set_font(fnt_default);
font_height = string_height("Test");
draw_set_font(fnt_headline);
headline_height = string_height("Test");

zeilenGesamt = 0;
zeilenCounter = 1; //Startwert, damit die if-Abfrage in Step auslöst

////Scrollbar
//Spieltag_scrollbar = instance_create_depth(boxwidth - padding, boxheight/20 + 1, 0, obj_scrollbar)
//Spieltag_scrollbar.width = padding;
//Spieltag_scrollbar.height = 19*boxheight/20;
//Spieltag_scrollbar.spacing = 2;
//Spieltag_scrollbar.scrollwindow_x1 = x;
//Spieltag_scrollbar.scrollwindow_y1 = y;
//Spieltag_scrollbar.scrollwindow_x2 = boxwidth;
//Spieltag_scrollbar.scrollwindow_y2 = boxheight;
//Spieltag_scrollbar.anteil = maxLines;
//Spieltag_scrollbar.gesamtheit = maxLines;

//Zahlen zum Spiel
zeit = 0;
zeitVorher = -1;
spielzeit = 90;
simulationSpeed = 1; //Frames für eine Minute

trainingsAufstellungsBox = instance_create_depth(	timelinewidth,
												headline_height, 0, 
												obj_AufstellungGUI);

with(trainingsAufstellungsBox){

	fnt_handwriting = font_add("Font linda.sciutto.ttf", 9, true, false, 1, 255);
	fnt_handwriting_headline = font_add("Font linda.sciutto.ttf", 12, true, false, 1, 255);
	padding = 3;
	team = global.eigenesTeam;
	
	//Spaltenbezeichnungen
	spaltenBezeichnungen[5] = "Status";
	spaltenBezeichnungen[4] = "Puste";
	spaltenBezeichnungen[3] = "Moral";
	spaltenBezeichnungen[2] = "B.Pos";
	spaltenBezeichnungen[1] = "Pos";
	spaltenBezeichnungen[0] = "Name";
	attributeNumber = array_length_1d(spaltenBezeichnungen);
	sortingNumbers = 2;
	posSortingColumn = 6;
	favPosSortingColumn = 7;
	//Grid mit allen Spielern und ihren Attributen
	playerGrid = ds_grid_create(attributeNumber + sortingNumbers, 
								ds_map_size(team.spielerMap));
	var key = ds_map_find_first(team.spielerMap);
	for (var i = 0; i < ds_map_size(team.spielerMap); i++){
		playerGrid[# 0, i] = team.spielerMap[? key].vorname + " " + team.spielerMap[? key].nachname;
		playerGrid[# 1, i] = team.spielerMap[? key].position;
		playerGrid[# 2, i] = team.spielerMap[? key].favPosition;
		playerGrid[# 3, i] = team.spielerMap[? key].moral;
		playerGrid[# 4, i] = team.spielerMap[? key].puste;
		playerGrid[# 5, i] = team.spielerMap[? key].puste;
		playerGrid[# 6, i] = PosSortNumber(team.spielerMap[? key].position);
		playerGrid[# 7, i] = PosSortNumber(team.spielerMap[? key].favPosition);
		key = ds_map_find_next(team.spielerMap, key);
	}
}

