//draw Parameter
padding = 16;
boxwidth = view_wport[0];
boxheight = window_get_height();
draw_set_font(fnt_default);
font_height = string_height("Test");
time_font_width = string_width(string_time(0));
event_font_width = boxwidth - time_font_width - 4*padding;
maxLines = floor((view_hport[0] - padding)/font_height);

zeilenGesamt = 0;
zeilenCounter = 1; //Startwert, damit die if-Abfrage in Step auslöst

//Scrollbar
Spieltag_scrollbar = instance_create_depth(boxwidth - padding, boxheight/20 + 1, 0, obj_scrollbar)
Spieltag_scrollbar.width = padding;
Spieltag_scrollbar.height = 19*boxheight/20;
Spieltag_scrollbar.spacing = 2;
Spieltag_scrollbar.scrollwindow_x1 = x;
Spieltag_scrollbar.scrollwindow_y1 = y;
Spieltag_scrollbar.scrollwindow_x2 = boxwidth;
Spieltag_scrollbar.scrollwindow_y2 = boxheight;
Spieltag_scrollbar.anteil = maxLines;
Spieltag_scrollbar.gesamtheit = maxLines;


headline = "Ereignisse";

//Zahlen zum Spiel
zeit = 0;
zeitVorher = -1;
spielzeit = 90;
heimteamTore = 0;
auswaertsteamTore = 0;
simulationSpeed = 1; //Frames zwischen zwei Zeilen

eventList = ds_list_create();
zeitList = ds_list_create();

Heimteam = new_Team("Sc Hille", 0, 19);

Auswaertsteam = new_Team(0, 0, 19);

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

