var Schranke = 20 + (argument0.flanken + argument0.antizipation)/2;
var roll = ranRoll();
if (roll <= Schranke/3) {
	addText("sehrguteEcke");
	return 100.0;	
}
else if(roll <= 2*Schranke/3 && roll > Schranke/3){
	addText("guteEcke");
	return 10.0;
}
else if(roll <= Schranke && roll > 2*Schranke/3){
	addText("schlechteEcke");
	return -10.0;
}
else{
	addText("EckeVerfehlt");
	return -100;
}