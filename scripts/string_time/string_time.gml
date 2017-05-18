//Script, dass die Zeit im entsprechenden Format als String zurück gibt

var time_string = "";

if(argument0 < 10)
{
	time_string = "0" + string(argument0) + " Min. "
}
else
{
	time_string = string(argument0) + " Min. "
}

return time_string