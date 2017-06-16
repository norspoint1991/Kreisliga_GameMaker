var schranke = SpielerMitBall.selbstbewusstsein;
var roll = ranRoll();
if(roll <= schranke){
	return 22; //Dribbling gegn. Hälfte
}
else{
	return 23; //Ball verteilen gegn. Hälfte
}