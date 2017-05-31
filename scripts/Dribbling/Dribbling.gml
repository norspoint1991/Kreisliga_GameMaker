///Dribbling(Angreifer, Verteidiger)
var schranke = 50 + argument0.dribbling - argument1.zweikampf;
var roll = ranRoll();
if (roll <= schranke){
	addText("Dribbling", "laesstVerteidigerStehen");
	return true;
}
else{
	addText("Dribbling", "scheitertAnVerteidiger");
	return false;
}