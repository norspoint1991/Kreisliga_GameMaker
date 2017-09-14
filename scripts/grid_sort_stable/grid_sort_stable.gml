///grid_sort_stable (grid, column, ascending)
var column = argument1;
ds_grid_sort(argument0, column, argument2);
for (var i = 1; i < ds_grid_height(argument0); i++){
	while(argument0[# column, i] <= argument0[# column, i - 1]) argument0[# column, i]++;	
}
ds_grid_sort(argument0, column, argument2);