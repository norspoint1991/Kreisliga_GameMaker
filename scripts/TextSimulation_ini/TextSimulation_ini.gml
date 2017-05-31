///TextSimulation_ini(searchword)
// Script um einen Text aus dem file in Argument0 zu extrahieren. Die ID dieses Files 
// wurde in textFile abgelegt.

var i = 0;

var searchword = argument0;
var possibleStrings = ds_list_create();

if (!ini_section_exists(searchword)) show_debug_message("Unbekannte Section in der INI-Datei: " + searchword);
while(true)
{
	if(ini_key_exists(searchword, "text" + string(i)))
	{
		//possibleStrings[i] = ini_read_string(searchword, "text" + string(i), "");
		ds_list_add(possibleStrings, ini_read_string(searchword, "text" + string(i), ""));
		i++;
	}
	else break;
}
//var test1 = possibleStrings[|0];
//var number = (irandom(ds_list_size(possibleStrings) - 1))
//var unparsedString = possibleStrings[|number];
return parseString(possibleStrings[|(irandom(ds_list_size(possibleStrings) - 1))]);