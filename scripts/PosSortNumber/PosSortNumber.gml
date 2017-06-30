if string_pos("/", argument0) != 0 {
	var testedString = string_copy(argument0, 1, 2)
}
else { var testedString = argument0;}
switch(testedString)
{
	case("TW"):
		return 0;
	case "LI":			 
		return 1;
	case "MD":			 
		return 2;
	case "IV":		 
		return 3;
	case "LV": 		 
		return 4;
	case "RV":
		return 5;
	case "DM":		 
		return 6;
	case "LM":	 
		return 7;
	case "RM":	
		return 8;
	case "ZM":		 
		return 9;
	case "OM":		 
		return 10;
	case "ST":		 
		return 11;
	case "AUSW":		 
		return 12;
	case "RES":		 
		return 13;
	default:
		return 14;
}