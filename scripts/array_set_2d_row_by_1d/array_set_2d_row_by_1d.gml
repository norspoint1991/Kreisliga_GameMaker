///@param array_copy_2d_to_1d(array2d, array1d,index to copy)
var array2d = argument0;
var array1d = argument1;
var index = argument2;
var length = array_length_2d(array2d, index)
for(var i = length -1; i == 0; i--){
	array2d[index, i] = array1d[i];
}
return array2d;