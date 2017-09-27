/// @description Initialisierung

draw_set_font(aufs_fnt);
rowheight = string_height("Test") + padding;
//Breite der einzelnen Spalten bestimmen
draw_set_font(aufs_fnt_headline);
for (var n = 0; n < attributeNumber; n++){ spaltenBreite[n] = string_width(spaltenBezeichnungen[n]) + padding;}

draw_set_font(aufs_fnt);
for (var k = 0; k < attributeNumber; k++){
	for (var j = 0; j < ds_grid_height(playerGrid); j++){
		spaltenBreite[k] = max(spaltenBreite[k], string_width(string(playerGrid[# k, j])) + padding);
	}
}
grid_sort_stable(playerGrid, posSortingColumn, true);
breite = array_sum(spaltenBreite);
hoehe = rowheight * (ds_grid_height(playerGrid) + 1); //Variable für das scrollWindow
initialisiert = true;