var schranke = 20 + (argument0.flanken + argument0.freistoss)/2;
var roll = ranRoll();
if (roll <= schranke/3) {
	addText("sehrguterFreistoss");
	return 20.0;	
}
else if(roll <= 2*schranke/3 && roll > schranke/3){
	addText("guterFreistoss");
	return 10.0;
}
else if(roll <= schranke && roll > 2*schranke/3){
	addText("schlechterFreistoss");
	return -10.0;
}
else{
	addText("FreistossVerfehlt");
	return 0;
}