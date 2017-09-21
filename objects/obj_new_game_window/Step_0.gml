/// @description Insert description here
// You can write your code in this editor


step_newGame++;
if (step_newGame == 30) {
step_newGame = 0;
}

if string_length(keyboard_string) > 30
   {
   keyboard_string = string_copy(keyboard_string, 1, 30);
   }
   
if keyboard_check(vk_enter)
{
		new_Team( keyboard_string, 0 ,0 ,0);
}
	
