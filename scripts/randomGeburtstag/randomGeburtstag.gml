var jahr = gaussBetween(1990, 6, 1970, 1999); //TODO von aktuellem Datum abhängig
var monat = irandom_range(1, 12);
var tag = 1;
var geburtstag = date_create_datetime(jahr, monat, tag, 0, 0, 0);
switch(monat)
{
	case 1: case 3: case 5: case 7: case 8: case 10: case 12:
		tag = irandom_range(1, 31);
		break;
	case 4: case 6: case 9: case 11:
		tag = irandom_range(1, 30);
		break;
	case 2:
		if(date_leap_year(geburtstag)) tag = irandom_range(1, 29);
		else tag = irandom_range(1, 28);
		break;
}
geburtstag = date_create_datetime(jahr, monat, tag, 0, 0, 0);

return geburtstag