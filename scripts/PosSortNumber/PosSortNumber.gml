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
	case "LV": case "RV":		 
		return 4;
	case "DM":		 
		return 5;
	case "LM": case "RM":		 
		return 6;
	case "ZM":		 
		return 7;
	case "OM":		 
		return 8;
	case "ST":		 
		return 9;
	case "AUSW":		 
		return 10;
	case "RES":		 
		return 11;
	default:
		return 12;
}