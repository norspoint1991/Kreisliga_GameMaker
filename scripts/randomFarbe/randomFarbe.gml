///randomFarbe(vergleichsfarbe)
var farbe = make_color_hsv(irandom(255), 255, 255);
//Farbe zurückgeben ohne zu vergleichen
if(argument0 == -1){
	return farbe;
}
//Farbwert muss sich von Eingabewert unterscheiden
else{
	while(	abs(color_get_hue(farbe) - color_get_hue(argument0)) < 50 
			|| abs(color_get_hue(farbe) - color_get_hue(argument0)) > 205){
			
		farbe = make_color_hsv(irandom(255), 255, 255);
	}
	return farbe;
}