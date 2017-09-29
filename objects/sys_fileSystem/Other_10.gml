/// @description Einen Eintrag hinten anfügen
// You can write your code in this editor

if (gameToAdd != undefined && newGameName != undefined) {
		ds_map_add(fileList, newGameName , gameToAdd);
		ds_grid_resize(filegrid, 3, ds_grid_height(filegrid) + 1);
		ds_grid_set( filegrid, 0 , ds_grid_height(filegrid) -1 , gameToAdd.name);
		ds_grid_set( filegrid, 1 , ds_grid_height(filegrid) -1, gameToAdd.team);
		ds_grid_set( filegrid, 2 , ds_grid_height(filegrid) -1, gameToAdd.lastLoaded);
		ds_grid_sort(filegrid, 0, true);
		saveCount = ds_map_size(fileList);
		saveFileSys(fileList);
}
else {
show_debug_message("tried to save non existing savegame");
}
