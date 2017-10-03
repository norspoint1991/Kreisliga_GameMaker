if file_exists("filesystem.dat"){
	fileSys = ds_map_secure_load("filesystem.dat");
	fileList = ds_map_create();
	
	var key = ds_map_find_first(fileSys);
	for(var i=0; i < ds_map_size(fileSys); i++) {
	ds_map_add( fileList, key, mapToSaveFile( fileSys[? key]));
	key = ds_map_find_next(fileSys, key); 
}

var key2 = ds_map_find_first(fileList);
filegrid = ds_grid_create(3, ds_map_size(fileList));
saveCount = ds_map_size(fileList);

for(var j=0; j < ds_map_size(fileList); j++) 
{
ds_grid_set( filegrid, 0 , j , fileList[? key2].name);
ds_grid_set( filegrid, 1 , j , fileList[? key2].team);
ds_grid_set( filegrid, 2 , j , fileList[? key2].lastLoaded);

key2 = ds_map_find_next(fileList, key2); 
}
ds_grid_sort(filegrid, 0, true);
}
else {
	fileSys= ds_map_create();
	fileList = ds_map_create();
	filegrid = undefined;
	saveCount = 0;

}
draw_set_font(fnt_default);
rowHeight = string_height("Test") + 2;
nameWidth = string_width(" NameNameNameNameName ");
teamWidth = 20 * string_width("M");
dateWidth = string_width("01.01.2000 09:15:21   ");
hoehe = rowHeight * saveCount + rowHeight * 2;
breite = teamWidth + nameWidth + dateWidth;


gui_hoehe = rowHeight;
gui_x = x;
gui_y = y;
// string(current_day) + "/" + string (current_month) + "/" + string(current_year) +"  " + string(current_hour) + ":" + string(current_minute) + "." + string(current_second

gameToAdd = undefined;
newGameName = undefined;
save= undefined;
row_clicked = undefined;
clickCounter = 0;
row_highlighted = undefined;
overwrite = undefined;