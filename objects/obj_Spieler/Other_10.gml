/// @description updateFavPosition

TW = (torwart);
LI = (stellungsspiel + antizipation + zweikampf)/3;
MD = (stellungsspiel + geschwindigkeit + zweikampf)/3;
IV = (stellungsspiel + antizipation + zweikampf + geschwindigkeit)/4;
LV = (geschwindigkeit + zweikampf + pass)/3;
RV = (geschwindigkeit + zweikampf + pass)/3;
DM = (pass + zweikampf + ausdauer)/3;
LM = (geschwindigkeit + flanken + pass)/3;
RM = (geschwindigkeit + flanken + pass)/3;
ZM = (pass + ausdauer + schuss)/3;
OM = (pass + schuss + dribbling)/3;
ST = (schuss + kopfball + dribbling)/3;
		
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

var best = 0;
firstKey = ds_map_find_first(positionValues);
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