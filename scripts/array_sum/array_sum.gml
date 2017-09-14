///array_sum(array)
var sum = 0;
var array = argument0;
for(var i = 0; i < array_length_1d(array); i++) {
	sum += array[i];
}
return sum;