var Schranke = argument0.pass;
var roll = ranRoll();
if (roll <= Schranke/3) {
	addText("sehrguterPass");
	return 100.0;	
}
else if(roll <= 2*Schranke/3 && roll > Schranke/3){
	addText("guterPass");
	return 10.0;
}
else if(roll <= Schranke && roll > 2*Schranke/3){
	addText("schlechterPass");
	return -10.0;
}
else{
	addText("PassVerfehlt");
	return -100;
}