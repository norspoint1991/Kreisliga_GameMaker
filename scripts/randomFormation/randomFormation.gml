var formation = ds_list_create();

ds_list_add(formation, "1-2-2-3-2");
ds_list_add(formation, "4-4-2");
ds_list_add(formation, "4-1-3-2");
ds_list_add(formation, "4-2-3-1");

return formation[|(irandom(ds_list_size(formation) - 1))]