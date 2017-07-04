///grid_pos_sort_stable(grid, column)
var grid = argument0;
var column = argument1;
if(ds_grid_width(grid) == attributeNumber){
	ds_grid_resize(grid, ds_grid_width(grid) + 1, ds_grid_height(grid));
	for (var i = 0; i < ds_grid_height(grid); i++){
		if string_pos("/", grid[# column, i]) != 0 {
			var testedString = string_copy(grid[# column, i], 1, 2)
		}
		else { var testedString = grid[# column, i];}
		switch(testedString)
		{
			case("TW"):
				grid[# ds_grid_width(grid) - 1, i] = 0;
				break;
			case "LI":			 
				grid[# ds_grid_width(grid) - 1, i] = 1;
				break;
			case "MD":			 
				grid[# ds_grid_width(grid) - 1, i] = 2;
				break;
			case "IV":		 
				grid[# ds_grid_width(grid) - 1, i] = 3;
				break;
			case "LV": 		 
				grid[# ds_grid_width(grid) - 1, i] = 4;
				break;
			case "RV":
				grid[# ds_grid_width(grid) - 1, i] = 5;
				break;
			case "DM":		 
				grid[# ds_grid_width(grid) - 1, i] = 6;
				break;
			case "LM":	 
				grid[# ds_grid_width(grid) - 1, i] = 7;
				break;
			case "RM":	
				grid[# ds_grid_width(grid) - 1, i] = 8;
				break;
			case "ZM":		 
				grid[# ds_grid_width(grid) - 1, i] = 9;
				break;
			case "OM":		 
				grid[# ds_grid_width(grid) - 1, i] = 10;
				break;
			case "ST":		 
				grid[# ds_grid_width(grid) - 1, i] = 11;
				break;
			case "AUSW":		 
				grid[# ds_grid_width(grid) - 1, i] = 12;
				break;
			case "RES":		 
				grid[# ds_grid_width(grid) - 1, i] = 13;
				break;
			default:
				grid[# ds_grid_width(grid) - 1, i] = 14;
				break;
		}
	}
}
var lastColumn = ds_grid_width(grid) - 1;
ds_grid_sort(grid, lastColumn, true);
for (var i = 1; i < ds_grid_height(grid); i++){
	while(grid[# lastColumn, i] <= grid[# lastColumn, i - 1]) {grid[# lastColumn, i]++;}
}
ds_grid_sort(grid, ds_grid_width(grid) - 1, true);
ds_grid_resize(grid, ds_grid_width(grid) - 1, ds_grid_height(grid));