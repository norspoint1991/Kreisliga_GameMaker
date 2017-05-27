var schranke = argument0.pass;
var roll = ranRoll();
if (roll <= schranke/3) {
	addText("sehrguterPass");
	return 100.0;	
}
else if(roll <= 2*schranke/3 && roll > schranke/3){
	addText("guterPass");
	return 10.0;
}
else if(roll <= schranke && roll > 2*schranke/3){
	addText("schlechterPass");
	return -10.0;
}
else{
	addText("PassVerfehlt");
	return -100;
}