var okay = true;

if ( (ligaBox.input == "")) 
{
ligaBox.errorAlarm = true;
ligaBox.headline = "Du musst deine Liga benennen!";
okay = false;
}  

if ( (nameBox.input == "")) 
{
nameBox.errorAlarm = true;
nameBox.headline = "Du musst dein Team benennen, Stefan!";
okay = false
}  

if ( okay == true) 
{

global.eigenesTeam = new_Team(nameBox.input, 0, 19, 0);
global.eigenesTeam.gespieltesTeam = 1;
var tempMap = ds_map_create();
ds_map_add ( tempMap, global.eigenesTeam.teamName, global.eigenesTeam);
global.eigeneLiga = new_Liga ( ligaBox.input, tempMap, 15);
room_goto(rm_ManagerView);

}

 