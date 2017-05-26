///Dribbling(Angreifer, Verteidiger)

addText("Dribbling");
var schranke = 50 + argument0.dribbling - argument1.zweikampf;
var roll = ranRoll();
if (roll <= schranke){
	addText("laesstVerteidigerStehen");
	return true;
}
else{
	addText("scheitertAnVerteidiger");
	return false;
}