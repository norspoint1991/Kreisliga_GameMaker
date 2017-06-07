//draw Parameter
padding = 16;
boxwidth = view_wport[0];
boxheight = window_get_height();
draw_set_font(fnt_default);
font_height = string_height("Test");
time_font_width = string_width(string_time(0));
event_font_width = boxwidth - time_font_width - 3*padding;
maxLines = floor((view_hport[0])/font_height);

zeilenGesamt = 0;
zeilenCounter = 1; //Startwert, damit die if-Abfrage in Step auslöst

//Scrollbar
scrollbar = instance_create_depth(boxwidth - padding, boxheight/20 + 1, 0, obj_scrollbar)
scrollbar.width = padding;
scrollbar.heigth = 19*boxheight/20;
scrollbar.spacing = 2;


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
//Qualitaeten
flankenQualitaet = 0;
passQualitaet = 0;

