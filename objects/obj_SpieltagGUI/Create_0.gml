//draw Parameter
padding = 16;
boxwidth = view_wport[0];
boxheight = window_get_height();
draw_set_font(fnt_default);
font_height = string_height("Test");
time_font_width = string_width(string_time(0));
event_font_width = boxwidth - time_font_width - 4*padding;
maxLines = floor((view_hport[0] - padding)/font_height);
textAusgabe = true;

zeilenGesamt = 0;
zeilenCounter = 1; //Startwert, damit die if-Abfrage in Step auslöst

//Scrollbar
Spieltag_scrollbar = instance_create_depth(0, 0, 0, obj_scrollbar)
//Spieltag_scrollbar.height = 19*boxheight/20;
Spieltag_scrollbar.scrollwindow_x1 = x;
Spieltag_scrollbar.scrollwindow_y1 = y + boxheight/20;
Spieltag_scrollbar.scrollwindow_x2 = boxwidth;
Spieltag_scrollbar.scrollwindow_y2 = boxheight;
Spieltag_scrollbar.anteil = maxLines * font_height;
Spieltag_scrollbar.gesamtheit = maxLines * font_height;
Spieltag_scrollbar.cameraPort = 0;


headline = "Ereignisse";

//Zahlen zum Spiel
zeit = 0;
zeitVorher = -1;
spielzeit = 90;
heimteamTore = 0;
auswaertsteamTore = 0;
simulationSpeed = 1; //Frames zwischen zwei Zeilen
zweiteHalbzeit = false;

eventList = ds_list_create();
zeitList = ds_list_create();

//Partien erstellen
var spielplanHeute = array_copy_2d_to_1d(global.eigeneLiga.spielplan, 
										 global.eigeneLiga.spieltag);
for (var i = 0; i < array_length_1d(spielplanHeute); i += 2){
	if(	spielplanHeute[i] != global.eigenesTeam 
		&& spielplanHeute[i+1] != global.eigenesTeam){
		new_Partie(spielplanHeute[i], spielplanHeute[i+1]);
	}
	else{
		Heimteam = spielplanHeute[i];
		Auswaertsteam = spielplanHeute[i+1];
	}
}

//Trikotfarbe wählen
colHeim = Heimteam.trikotfarbe;
colAusw = Auswaertsteam.trikotfarbe;
if(abs(	color_get_hue(colHeim) - color_get_hue(colAusw)) < 50 ||
		abs(color_get_hue(colHeim) - color_get_hue(colAusw)) > 205){
	colAusw = Auswaertsteam.trikotfarbeAusweich;
}
if(abs(	color_get_hue(colHeim) - color_get_hue(colAusw)) < 50 ||
		abs(color_get_hue(colHeim) - color_get_hue(colAusw)) > 205){
	colHeim = Heimteam.trikotfarbeAusweich;
	colAusw = Auswaertsteam.trikotfarbe;
}
if(abs(	color_get_hue(colHeim) - color_get_hue(colAusw)) < 50 ||
		abs(color_get_hue(colHeim) - color_get_hue(colAusw)) > 205){
	colHeim = Heimteam.trikotfarbeAusweich;
	colAusw = Auswaertsteam.trikotfarbeAusweich;
}	
if(abs(	color_get_hue(colHeim) - color_get_hue(colAusw)) < 50 ||
		abs(color_get_hue(colHeim) - color_get_hue(colAusw)) > 205){
	colHeim = Heimteam.trikotfarbe;
	colAusw = Auswaertsteam.trikotfarbe;
}

//ini file mit allen Texten für die Simulation
ini_open("Textsimulation_ger.ini");

//Simulations Platzhalter
step = 0;
thisEvent = 0;
Angriff = undefined; //Team im Angriff
Verteidigung = undefined; //Team in der Verteidigung
Angreifer = undefined; 
Verteidiger = undefined;
GegnerVorher = undefined;
SpielerMitBallVorher = undefined;
SpielerMitBall = undefined;
seite = "rechts";
//Qualitaeten
flankenQualitaet = 0;
passQualitaet = 0;

