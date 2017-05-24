padding = 16;
zeit = 0;
textPosition = 0;
step = 0;

textFile = file_text_open_read("TextSimulation.txt");

boxwidth = 2*room_width/3;
boxheight = room_height;

font_size = font_get_size(fnt_default);

headline = "Aufstellung";

meinTeam = new_Team("FC Arsch", 0, 19);