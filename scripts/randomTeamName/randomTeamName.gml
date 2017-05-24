var i = 0;
randomize();
ini_open("TeamNameFile_ger.ini");
var possibleZusatz = ds_list_create();
var possibleStadt = ds_list_create();
while(true)
{
	if(ini_key_exists("Zusatz", "Zusatz" + string(i)))
	{
		//possibleStrings[i] = ini_read_string(searchword, "text" + string(i), "");
		ds_list_add(possibleZusatz, ini_read_string("Zusatz", "Zusatz" + string(i), ""));
		i++;
	}
	else{
		i =0; 
		break;
	}
}
while(true)
{
	if(ini_key_exists("Stadtname", "name" + string(i)))
	{
		//possibleStrings[i] = ini_read_string(searchword, "text" + string(i), "");
		ds_list_add(possibleStadt, ini_read_string("Stadtname", "name" + string(i), ""));
		i++;
	}
	else break;
}
var TeamName = possibleZusatz [|(irandom(ds_list_size(possibleZusatz) - 1))];

TeamName = string_replace_all( TeamName, "&Stadtname", possibleStadt[|(irandom(ds_list_size(possibleStadt) - 1))]);



ini_close();
return TeamName