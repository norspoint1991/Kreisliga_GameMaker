var i = 0;

var possibleStrings = ds_list_create();

while(true)
{
	if(ini_key_exists("Vornamen", "name" + string(i)))
	{
		//possibleStrings[i] = ini_read_string(searchword, "text" + string(i), "");
		ds_list_add(possibleStrings, ini_read_string("Vornamen", "name" + string(i), ""));
		i++;
	}
	else break;
}

return possibleStrings[|(irandom(ds_list_size(possibleStrings) - 1))];