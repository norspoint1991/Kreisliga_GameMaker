
var aLen = array_length_1d(argument0);
var bLen = array_length_1d(argument1);
var cLen = array_length_1d(argument2);

var concatedArray;
for(var i = aLen + bLen + cLen - 1; i >= 0; i--)
{
	if (i >= aLen + bLen) concatedArray[i] = argument2[i - (aLen + bLen)];
	else if (i >= aLen) concatedArray[i] = argument1[i - (aLen)];
	else concatedArray[i] = argument0[i];
}
return concatedArray;
