

var PlayerToSave = argument0;

var playerMap = ds_map_create();

ds_map_add(playerMap, "vorname", PlayerToSave.vorname);
ds_map_add(playerMap, "nachname", PlayerToSave.nachname);
ds_map_add(playerMap, "team", PlayerToSave.team);
ds_map_add(playerMap, "favPosition", PlayerToSave.favPosition);
ds_map_add(playerMap, "bestPosition", PlayerToSave.bestPosition);
ds_map_add(playerMap, "fuss", PlayerToSave.fuss);
ds_map_add(playerMap, "geburtstag", PlayerToSave.geburtstag);
ds_map_add(playerMap, "position", PlayerToSave.position);
ds_map_add(playerMap, "geschwindigkeit", PlayerToSave.geschwindigkeit);
ds_map_add(playerMap, "zweikampf", PlayerToSave.zweikampf);
ds_map_add(playerMap, "stellungsspiel", PlayerToSave.stellungsspiel);
ds_map_add(playerMap, "ausdauer", PlayerToSave.ausdauer);
ds_map_add(playerMap, "kopfball", PlayerToSave.kopfball);
ds_map_add(playerMap, "moral", PlayerToSave.moral);
ds_map_add(playerMap, "selbstbewusstsein", PlayerToSave.selbstbewusstsein);
ds_map_add(playerMap, "disziplin", PlayerToSave.disziplin);
ds_map_add(playerMap, "aggresivitat", PlayerToSave.aggresivitat);
ds_map_add(playerMap, "antizipation", PlayerToSave.antizipation);
ds_map_add(playerMap, "torwart", PlayerToSave.torwart);
ds_map_add(playerMap, "schuss", PlayerToSave.schuss);
ds_map_add(playerMap, "freistoss", PlayerToSave.freistoss);
ds_map_add(playerMap, "pass", PlayerToSave.pass);
ds_map_add(playerMap, "dribbling", PlayerToSave.dribbling);
ds_map_add(playerMap, "flanken", PlayerToSave.flanken);

return playerMap;