if (argument_count > 0){
	var date = argument[0];
}
else {
	var date = date_current_datetime();
}


//Monat formatieren
if (date_get_month(date) < 10) {
	var monthstring = "0" + string(date_get_month(date));
}
else {
	var monthstring = string(date_get_month(date));
}

//Tag formatieren
if (date_get_day(date) < 10) {
	var daystring = "0" + string(date_get_day(date));
}
else {
	var daystring = string(date_get_day(date));
}

//Stunde formatieren
if (date_get_hour(date) < 10) {
	var hourstring = "0" + string(date_get_hour(date));
}
else {
	var hourstring = string(date_get_hour(date));
}

//Minute formatieren
if (date_get_minute(date) < 10) {
	var minutestring = "0" + string(date_get_minute(date));
}
else {
	var minutestring = string(date_get_minute(date));
}

//Sekunde formatieren
if (date_get_second(date) < 10) {
	var secondstring = "0" + string(date_get_second(date));
}
else {
	var secondstring = string(date_get_second(date));
}



var stringDate = string(daystring + "." +  monthstring  + "." + string(date_get_year(date))  + "  "  + hourstring +  ":"  + minutestring + ":"  + secondstring);
return stringDate;