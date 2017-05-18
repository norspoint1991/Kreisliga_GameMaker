///@description returnSpielertypen(formation)
var spielertypen1 = ["TW", "LI", "MD", "MD", "DM", "DM", "LM", "ZM", "RM", "ST", "ST"];
var spielertypen2 = ["TW", "LV", "IV", "IV", "RV", "LM", "ZM", "ZM", "RM", "ST", "ST"];
var spielertypen3 = ["TW", "LV", "IV", "IV", "RV", "DM", "LM", "ZM", "RM", "ST", "ST"];
var spielertypen4 = ["TW", "LV", "IV", "IV", "RV", "DM", "DM", "LM", "OM", "RM", "ST"];
var bank1 = ["TW", "MD", "DM", "RM", "ST"];
var bank2 = ["TW", "IV", "DM", "RM", "ST"];
var reserve1 = ["ZM", "LI"];
var reserve2 = ["ZM", "ZM"];

var Spielertypen;

switch(argument0){
case "1-2-2-3-2":
	Spielertypen = concatArrays(spielertypen1, bank1, reserve1);
	break;
case "4-4-2":
	Spielertypen = concatArrays(spielertypen2, bank2, reserve2);
	break;
case "4-1-3-2":
	Spielertypen = concatArrays(spielertypen3, bank2, reserve2);
	break;
case "4-2-3-1":
	Spielertypen = concatArrays(spielertypen4, bank2, reserve2);
	break;
default:
	Spielertypen = concatArrays(spielertypen1, bank1, reserve1); //TODO durch exception ersetzen
	break;
}
return Spielertypen;