var roll = ranRoll();

if ( roll <= argument0) {
	var latte = ranRoll();
	if (latte <= 2){
		addText("Latte");
		return 10; //Abpraller
	}
	else {
		addText("Tor");
		return 100; //Tor verarbeiten je nach Ergebnis etc.
	}
}
else {
	return 99;
}