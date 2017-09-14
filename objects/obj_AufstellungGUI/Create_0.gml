row_clicked = undefined;
row_dropped = undefined;
xPointClicked = undefined;
markchangingvalue = false;

fnt_handwriting = font_add("Font linda.sciutto.ttf", 10, true, false, 1, 255);
fnt_handwriting_headline = font_add("Font linda.sciutto.ttf", 14, true, false, 1, 255);

initialisiert = false; // diese Variable wird gesetzt nachdem die Tabelle im Step Event
					   // vollständig initialiert wurde