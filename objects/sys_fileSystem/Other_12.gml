/// @description ein Spiel laden
// You can write your code in this editor


if ( row_clicked == undefined) {
	with(ctrl_loadGame.loadButton) {
		text = "Ja welches denn? ARSCH!";
	}
}
else {

var saveName = ds_grid_get(filegrid, 0, row_clicked);
var ligaladeMap = ds_map_secure_load(saveName + ".dat");

global.eigeneLiga = mapToLiga(ligaladeMap);
}
