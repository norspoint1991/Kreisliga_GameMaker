var schranke = argument0.flanken;
var roll = ranRoll();
if (roll <= schranke/3) {
	addText("sehrguteFlanke");
	return 20.0;	
}
else if(roll <= 2*schranke/3 && roll > schranke/3){
	addText("guteFlanke");
	return 10.0;
}
else if(roll <= schranke && roll > 2*schranke/3){
	addText("schlechteFlanke");
	return -10.0;
}
else{
	addText("FlankeVerfehlt");
	return 0;
}