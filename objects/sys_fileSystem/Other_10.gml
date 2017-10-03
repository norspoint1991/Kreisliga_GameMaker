/// @description Einen Eintrag hinten anfügen
// You can write your code in this editor

if (gameToAdd != undefined && newGameName != undefined) {
		var SavefileMap = saveSaveFile(gameToAdd, global.eigeneLiga);
		ds_map_add_map(fileSys, newGameName , SavefileMap);
		if (filegrid != undefined) {
		
			ds_grid_resize(filegrid, 3, ds_grid_height(filegrid) + 1);
			ds_grid_set( filegrid, 0 , ds_grid_height(filegrid) -1 , SavefileMap[? "name"]);
			ds_grid_set( filegrid, 1 , ds_grid_height(filegrid) -1, SavefileMap[? "team"]);
			ds_grid_set( filegrid, 2 , ds_grid_height(filegrid) -1, SavefileMap [? "lastLoaded"]);
			ds_grid_sort(filegrid, 0, true);
		}
		else {
			filegrid = ds_grid_create(3, 1);
			ds_grid_set( filegrid, 0 , 0 , SavefileMap[? "name"]);
			ds_grid_set( filegrid, 1 , 0, SavefileMap[? "team"]);
			ds_grid_set( filegrid, 2 , 0, SavefileMap [? "lastLoaded"]);
		}
			saveCount = ds_map_size(fileSys);
			hoehe = hoehe + rowHeight;
			ds_map_secure_save(fileSys, "filesystem.dat");
}
else {
	show_debug_message("tried to save non existing savegame");
}
