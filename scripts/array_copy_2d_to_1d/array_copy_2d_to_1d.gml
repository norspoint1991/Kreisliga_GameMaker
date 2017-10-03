///array_copy_2d_to_1d(array2d, index to copy)
var array = argument0;
var index = argument1;
var length = array_length_2d(array, index)
var copiedArray = undefined;
for(var i = 0; i < length; i++){
	copiedArray[length - i - 1] = array[index, length - 1 - i];
}
return copiedArray;