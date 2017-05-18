///randomFuss()
var decider = irandom(100);
var Fuss = "";
if (decider > 25) Fuss = "rechts";

else if(decider <= 25 && decider > 10) Fuss = "links";

else Fuss = "beidfüßig";

return Fuss;

	