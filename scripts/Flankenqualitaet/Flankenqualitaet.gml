var Schranke = argument0.flanken;
var roll = ranRoll();
if (roll <= Schranke/3) {
	addText("sehrguteFlanke");
	return 100.0;	
}
else if(roll <= 2*Schranke/3 && roll > Schranke/3){
	addText("guteFlanke");
	return 10.0;
}
else if(roll <= Schranke && roll > 2*Schranke/3){
	addText("schlechteFlanke");
	return -10.0;
}
else{
	addText("FlankeVerfehlt");
	return -100;
}