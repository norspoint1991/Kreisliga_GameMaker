fileList = ds_map_secure_load("filesystem.dat");
var key = ds_map_find_first(fileList);
filegrid = ds_grid_create(3, ds_map_size(fileList));

var key = ds_map_find_first(fileList);
saveCount = ds_map_size(fileList);
for(var i=0; i < ds_map_size(fileList); i++) 
{
ds_grid_set( filegrid, 0 , i , fileList[? key].name);
ds_grid_set( filegrid, 1 , i , fileList[? key].team);
ds_grid_set( filegrid, 2 , i , fileList[? key].lastloaded);

key = ds_map_find_next(playerList, key); 
}
ds_grid_sort(filegrid, 0, true);

draw_set_font(fnt_default);

rowHeight = string_height("Test") + 2;
nameWidth = string_width(" Name ");
teamWidth = 20 * string_width("M");
dateWidth = string_width("01.01.2000 09:15:21");
tabellenHoehe = rowHeight * saveCount + rowHeight * 2;
tabellenBreite = teamWidth + nameWidth + dateWidth;
ds_map_destroy(fileList);


// string(current_day) + "/" + string (current_month) + "/" + string(current_year) +"  " + string(current_hour) + ":" + string(current_minute) + "." + string(current_second);