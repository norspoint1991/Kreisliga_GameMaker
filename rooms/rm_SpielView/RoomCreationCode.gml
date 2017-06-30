global.simulationRunning = false;

view_camera[0] = camera_create_view(0,
									(window_get_height())/20,
									2*(window_get_width())/3,
									19*(window_get_height())/20,
									0, -1, -1, -1, 0, 0);
view_visible[0] = 1;
view_xport[0] = 0;
view_yport[0] = (window_get_height())/20;
view_wport[0] = 2*(window_get_width())/3;
view_hport[0] = 19*(window_get_height())/20;

view_camera[1] = camera_create_view(2*(window_get_width())/3,
									0,
									(window_get_width())/3,
									window_get_height(),
									0, -1, -1, -1, 0, 0);
view_visible[1] = 1;
view_xport[1] = 2*(window_get_width())/3;
view_yport[1] = 0;
view_wport[1] = (window_get_width())/3;
view_hport[1] = window_get_height();


instance_create_depth(0, 0, 0, obj_SpieltagGUI);

SpielstartenButton = instance_create_depth(750, 700, 0, obj_Spieltagbutton);
SpielstartenButton.text = "Spiel starten"
SpielstartenButton.action = 1;