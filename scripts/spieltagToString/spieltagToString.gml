var spielTag = argument0;

var stringTag = spielTag[0];

for (var i = 1; i<array_length_1d(spielTag); i++) {
	stringTag = stringTag + "," +  (spielTag[i]);
}

return stringTag;