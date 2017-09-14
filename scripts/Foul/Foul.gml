var schranke = Verteidiger.aggresivitat - 20;
var roll = ranRoll();
if (roll <= schranke){
	addText("Foul");
	return true;
}
else return false;