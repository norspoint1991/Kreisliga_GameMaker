var schranke = 20 + (argument0.flanken + argument0.antizipation)/2;
var roll = ranRoll();
if (roll <= schranke/3) {
	addText("sehrguteEcke");
	return 20.0;	
}
else if(roll <= 2*schranke/3 && roll > schranke/3){
	addText("guteEcke");
	return 10.0;
}
else if(roll <= schranke && roll > 2*schranke/3){
	addText("schlechteEcke");
	return -10.0;
}
else{
	addText("EckeVerfehlt");
	return 0;
}