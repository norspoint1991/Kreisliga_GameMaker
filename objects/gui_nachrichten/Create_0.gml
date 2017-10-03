event_inherited();
breite = window_get_width()/3; //Nur die breite des scrollbaren bereichs

	   
padding = 8;
team = global.eigenesTeam;
nachrListe = global.nachrichtenListe;

//TODO nur zu Testzwecken
var key = ds_map_find_first(team.spielerMap);
var testspieler = team.spielerMap[? key];
var i = 0;
repeat(20) {
	i++;
	testspieler.verletzungsDauer = i;
	ds_list_add(nachrListe, neueNachricht("SpielVerletzung", testspieler));
}

ds_list_add(nachrListe, neueNachricht("SpielVerlegung"));

ueberschrift = "Nachrichten";

//Spaltenbezeichnungen und Breite für die scrollbare Liste
spaltenBezeichnungen[2] = "Titel";
spaltenBezeichnungen[1] = "";
spaltenBezeichnungen[0] = "Datum";

spaltenBreite[2] = breite*14/20;
spaltenBreite[1] = round(breite*2/20);
spaltenBreite[0] = breite*4/20;

draw_set_font(fnt_default);
rowheight = string_height("Test") + padding;

draw_set_font(fnt_headline);
headline_height = string_height("Test") + padding;
gui_hoehe = rowheight + headline_height;

hoehe = gui_hoehe + ds_list_size(nachrListe)*rowheight;

nachrInhaltGUI = instance_create_depth(breite, gui_y, 0, gui_nachrichtenInhalt);
with(nachrInhaltGUI){
	gewNachricht = other.nachrListe[|0];
	padding = other.padding;
	event_user(0); //hoehe setzen
}
nachrListe[|0].gelesen = true;
row_highlighted = 0;