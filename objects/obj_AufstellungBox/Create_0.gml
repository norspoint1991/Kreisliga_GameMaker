padding = 16;
zeit = 0;
textPosition = 0;
step = 0;

boxwidth = 2*room_width/3;
boxheight = room_height;

font_size = font_get_size(fnt_default);

headline = "Aufstellung";

meinTeam = instance_create_depth(0, 0, 0, obj_Team);
meinTeam.teamName = "FC Arsch";