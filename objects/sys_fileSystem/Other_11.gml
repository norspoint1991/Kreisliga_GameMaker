/// @description einen Eintrag überschreiben
// You can write your code in this editor

if ( overwrite != undefined )  {
		ds_map_delete(fileSys, overwrite);
		var newSavegame = instance_create_depth(0,0,0, sys_saveFile);
		newSavegame.name = overwrite;
		newSavegame.team = global.eigenesTeam.teamName;
		newSavegame.lastLoaded = dateToString();
		var SavefileMap = saveSaveFile(newSavegame, global.eigeneLiga);
		ds_map_add_map(fileSys, ds_grid_get(filegrid, 0, overwrite_line) , SavefileMap);
		ds_map_secure_save(fileSys, "filesystem.dat");
		ds_grid_set (filegrid, 1 , overwrite_line, newSavegame.team);
		ds_grid_set( filegrid, 2 , overwrite_line, newSavegame.lastLoaded);
}		
else {
	show_debug_message("tried to save non existing savegame");
}
