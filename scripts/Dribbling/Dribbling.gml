var schranke = ratioX(SpielerMitBall.dribbling, Verteidiger.zweikampf);
var roll = ranRoll();
if (roll <= schranke){
	addText("Dribbling", "laesstVerteidigerStehen");
	return true;
}
else{
	addText("Dribbling", "scheitertAnVerteidiger");
	return false;
}