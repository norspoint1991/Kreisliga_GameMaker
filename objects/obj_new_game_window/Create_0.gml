/// @description Insert description here
// You can write your code in this editor

step_newGame = 0;

keyboard_string = "";


teamNameBox = instance_create_depth(0, 0, 0, obj_TextBox);
teamNameBox.headline = "Wie soll dein Team heißen?";

// GameState ist für die Drawfunktion da, damit je nachdem, wie weit man in der Teamkreirung ist
//andere Sachen in das Interface gemalt werden
// 0: Wie soll dein Team heißen?

spielStartGameState = 0;
