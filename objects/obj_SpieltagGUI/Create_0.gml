//
padding = 16;
zeit = 0;
step = 0;

spielzeit = 90;


boxwidth = view_wport[0];
boxheight = window_get_height();

draw_set_font(fnt_default);
font_height = string_height("Test");

time_font_width = string_width(string_time(0));
maxLines = floor((view_hport[0])/font_height); 

headline = "Ereignisse";
EventText = ds_list_create();
ZeitList = ds_list_create();

Heimteam = instance_create_depth(0, 0, 0, obj_Team);
Heimteam.teamName = "SC Hille";

Auswaertsteam = instance_create_depth(0, 0, 0, obj_Team);
Auswaertsteam.teamName = "Die super Bayern";

//ini file mit allen Texten für die Simulation
ini_open("TextSimulation_ger.ini");

ThisEvent = 0;
Angreifer = undefined;
Verteidiger = undefined;