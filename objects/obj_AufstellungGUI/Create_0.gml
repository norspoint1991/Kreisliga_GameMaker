row_clicked = undefined;
row_dropped = undefined;
row_highlighted = undefined;
xPointClicked = undefined;
markchangingvalue = false;

//fnt_handwriting = font_add("Font linda.sciutto.ttf", 10, true, false, 1, 255);
//fnt_handwriting_headline = font_add("Font linda.sciutto.ttf", 14, true, false, 1, 255);

aufs_fnt_headline = fnt_headline;
aufs_fnt = fnt_default;

gui_x = x;
gui_y = y;

initialisiert = false; // diese Variable wird gesetzt nachdem die Tabelle im Step Event
					   // vollständig initialiert wurde