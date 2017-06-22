/// @description updateFavPosition

var TW = (torwart);
var LI = (stellungsspiel + antizipation + zweikampf)/3;
var MD = (stellungsspiel + geschwindigkeit + zweikampf)/3;
var IV = (stellungsspiel + antizipation + zweikampf + geschwindigkeit)/4;
var LV = (geschwindigkeit + zweikampf + pass)/3;
var RV = (geschwindigkeit + zweikampf + pass)/3;
var DM = (pass + zweikampf + ausdauer)/3;
var LM = (geschwindigkeit + flanken + pass)/3;
var RM = (geschwindigkeit + flanken + pass)/3;
var ZM = (pass + ausdauer + schuss)/3;
var OM = (pass + schuss + dribbling)/3;
var ST = (schuss + kopfball + dribbling)/3;
		
positionValues = ds_map_create();
ds_map_add(positionValues, "TW", TW);
ds_map_add(positionValues, "LI", LI);
ds_map_add(positionValues, "MD", MD);
ds_map_add(positionValues, "IV", IV);
ds_map_add(positionValues, "LV", LV);
ds_map_add(positionValues, "RV", RV);
ds_map_add(positionValues, "DM", DM);
ds_map_add(positionValues, "LM", LM);
ds_map_add(positionValues, "RM", RM);
ds_map_add(positionValues, "ZM", ZM);
ds_map_add(positionValues, "OM", OM);
ds_map_add(positionValues, "ST", ST);

var best = -1;
var firstKey = ds_map_find_first(positionValues);
for(var i = 0; i < ds_map_size(positionValues); i++) 
{
	if(positionValues[? firstKey] > best)
	{
		best = positionValues[? firstKey];
		favPosition = firstKey;				
	}
	else if(positionValues[? firstKey] == best)
	{
		favPosition = favPosition + "/" + firstKey;
	}
	firstKey = ds_map_find_next(positionValues, firstKey);
}