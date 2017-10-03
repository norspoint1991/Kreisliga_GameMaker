event_inherited();
team = global.eigenesTeam;
ligaMap = global.eigeneLiga.teamMap;

draw_set_font(fnt_headline);
headline_height = string_height("Tabelle");
draw_set_font(fnt_default);
headline2_height = string_height("Mannschaft");
padding = 8;
breite = window_get_width();
hoehe = window_get_height()	- y - sprite_get_height(spr_button) - 15 
								- (headline_height + 2*padding + headline2_height);
gui_hoehe = headline_height + headline2_height + 2*padding;
rowheight = hoehe/ds_map_size(ligaMap);

spaltenBezeichnungen[8] = "Punkte";
spaltenBezeichnungen[7] = "Tordiff.";
spaltenBezeichnungen[6] = "Torverh.";
spaltenBezeichnungen[5] = "V";
spaltenBezeichnungen[4] = "U";
spaltenBezeichnungen[3] = "G";
spaltenBezeichnungen[2] = "Spiele";
spaltenBezeichnungen[1] = "Mannschaft";
spaltenBezeichnungen[0] = "Platz";

column_width[8] = breite/18;
column_width[7] = 2*breite/18;
column_width[6] = 2*breite/18;
column_width[5] = breite/18;
column_width[4] = breite/18;
column_width[3] = breite/18;
column_width[2] = 2*breite/18;
column_width[1] = 7*breite/18;
column_width[0] = breite/18;
	   
fnt_handwriting_calender = font_add("Font linda.sciutto.ttf", 12, true, false, 1, 255);

ueberschrift = global.eigeneLiga.ligaName;

//Sortierung für Tabelle
var length = ds_map_size(ligaMap);
var key = ds_map_find_first(ligaMap);
for(var j = 0; j < length; j++){
	teamArray[length - 1 - j] = ligaMap[? key];
	key = ds_map_find_next(ligaMap, key);
}
for(var n = 0; n < length; n++){
	for (var k = 0; k < length - 1 - n; k++){
		if(teamArray[k].punkte < teamArray[k+1].punkte){
			var temp = teamArray[k];
			teamArray[k] = teamArray[k+1];
			teamArray[k+1] = temp;
		}
		else if(teamArray[k].punkte == teamArray[k+1].punkte){
			if(teamArray[k].spiele > teamArray[k+1].spiele){
				var temp = teamArray[k];
				teamArray[k] = teamArray[k+1];
				teamArray[k+1] = temp;
			}
			else if(teamArray[k].spiele == teamArray[k+1].spiele){
				if((teamArray[k].tore - teamArray[k].gegentore) 
					< (teamArray[k+1].tore - teamArray[k+1].gegentore)){
					var temp = teamArray[k];
					teamArray[k] = teamArray[k+1];
					teamArray[k+1] = temp;
				}
				else if((teamArray[k].tore - teamArray[k].gegentore) 
						== (teamArray[k+1].tore - teamArray[k+1].gegentore)){
					if(teamArray[k].tore < teamArray[k+1].tore){
						var temp = teamArray[k];
						teamArray[k] = teamArray[k+1];
						teamArray[k+1] = temp;
					}
				}	
			}
		}		
	}
}