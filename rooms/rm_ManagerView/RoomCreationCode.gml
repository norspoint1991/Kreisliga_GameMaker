//global.meinTeam = new_Team("Sc Hille", 0, 19);
//global.meinTeam.persistent = true;

instance_create_depth(0, 0, 0, obj_AufstellungBox);

SpielstartenButton = instance_create_depth(750, 700, 0, obj_ManagerViewButton);

SpielstartenButton.text = "Spieltag starten"
SpielstartenButton.action = 0;