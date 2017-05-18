//nimmt eine Map und macht daraus einen Player. dafür muss in der Map natürlich ein Player gespeichert sein
var playerMap = argument0;

var nachname = playerMap[? "nachname"];
var vorname = playerMap[? "vorname"];
newPlayer = new_Spieler(vorname, nachname);

newPlayer.team = playerMap[? "team"];
newPlayer.favPosition = playerMap[? "favPosition"];
newPlayer.bestPosition = playerMap[? "bestPosition"];
newPlayer.fuss = playerMap[? "fuss"];
newPlayer.geburtstag = playerMap[? "geburtstag"];
newPlayer.position = playerMap[? "position"];
newPlayer.geschwindigkeit = playerMap[? "geschwindigkeit"];
newPlayer.zweikampf = playerMap[? "zweikampf"];
newPlayer.stellungsspiel = playerMap[? "stellungsspiel"];
newPlayer.ausdauer = playerMap[? "ausdauer"];
newPlayer.kopfball = playerMap[? "kopfball"];
newPlayer.moral = playerMap[? "moral"];
newPlayer.selbstbewusstsein = playerMap[? "selbstbewusstsein"];
newPlayer.disziplin = playerMap[? "disziplin"];
newPlayer.aggresivitat = playerMap[? "aggresivitat"];
newPlayer.antizipation = playerMap[? "antizipation"];
newPlayer.torwart = playerMap[? "torwart"];
newPlayer.schuss = playerMap[? "schuss"];
newPlayer.freistoss = playerMap[? "freistoss"];
newPlayer.pass = playerMap[? "pass"];
newPlayer.dribbling = playerMap[? "dribbling"];
newPlayer.flanken = playerMap[? "flanken"];


return newPlayer;