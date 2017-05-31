//draw Parameter
padding = 16;
boxwidth = view_wport[0];
boxheight = window_get_height();

draw_set_font(fnt_default);
font_height = string_height("Test");

time_font_width = string_width(string_time(0));
event_font_width = boxwidth - time_font_width - 2*padding;
maxLines = floor((view_hport[0])/font_height);
zeilenGesamt = 0;
zeilenCounter = 1; //Startwert, damit die if-Abfrage in Step auslöst

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

Heimteam = instance_create_depth(0, 0, 0, obj_Team);
Heimteam.teamName = "SC Hille";

Auswaertsteam = instance_create_depth(0, 0, 0, obj_Team);
Auswaertsteam.teamName = "Die super Bayern";

//ini file mit allen Texten für die Simulation
ini_open("TextSimulation_ger.ini");

//Simulations Platzhalter
step = 0;
thisEvent = 0;
Angriff = undefined; //Team im Angriff
Verteidigung = undefined; //Team in der Verteidigung
//Angreifer = undefined; 
Verteidiger = undefined;
GegnerVorher = undefined;
SpielerMitBallVorher = undefined;
SpielerMitBall = undefined;
//Qualitaeten
flankenQualitaet = 0;
passQualitaet = 0;

//TODO zum Testen
games = 0;