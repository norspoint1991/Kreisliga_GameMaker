var move = 0;
move -= max(keyboard_check_released(vk_up), 0);
move += max(keyboard_check_released(vk_down), 0);

if(move != 0)
{
	mpos += move;
	if (mpos < 0) mpos = array_length_1d(menu) - 1;
	if (mpos > (array_length_1d(menu) - 1)) mpos = 0;
}

if(mouse_x >= x && mouse_x < x + sprite_get_width(sprite_index))
{
	var m;
	for (m = 0; m < array_length_1d(menu); m += 1){
		if(mouse_y >= y - sprite_get_height(sprite_index)/2 + (m * space) && mouse_y < y + (m * space) + sprite_get_height(sprite_index)/2)
		{
			mpos = m;
		}
	}
}
var push;
push = max(keyboard_check_released(vk_enter), mouse_check_button_released(mb_left), 0);

if (push != 0) 
{
	switch(mpos)
	{
		case 0:
			global.eigenesTeam = new_Team("SC Hille", 0, 19, 0);
			var tempMap = ds_map_create();
			ds_map_add ( tempMap, global.eigenesTeam.teamName, global.eigenesTeam);
			global.eigeneLiga = new_Liga ("ML - Kreisliga B2", tempMap, 15);
			global.nachrichtenListe = ds_list_create();
			room_goto(rm_ManagerView);
			break;
		case 1:
			global.roomcamefrom = room ;
			room_goto(rm_NewGame);
			
			break;
		case 2:
			global.roomcamefrom = room ;
			room_goto(rm_loadGame);
			break;
		case 3:
			//room_goto(rm_optionView);
			break;
		case 4:
			game_end();
			break;
		default: break;
	}
}