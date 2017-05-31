Test = new_Liga();
saveLeague(Test);
 ligaMap = ds_map_secure_load("Eine Kreisliga.dat");
 TestLiga = mapToLiga(ligaMap);

instance_create_depth(50, 50, 0, obj_menu);