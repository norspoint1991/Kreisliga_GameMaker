/// @description set Values to bestPosition

switch(bestPosition)
{
	case("TW"):
		setSpielerWerteTo(30, 20);
		antizipation = (gauss(50, 20));
		torwart = (gauss(60, 10));
		break;
	case "LI":			 
		stellungsspiel = (gauss(60, 10));
		antizipation = (gauss(60, 10));
		zweikampf = (gauss(60, 10));
		break;
	case "MD":			 
		stellungsspiel = (gauss(60, 10));
		geschwindigkeit = (gauss(60, 10));
		zweikampf = (gauss(60, 10));
		break;
	case "IV":		 
		stellungsspiel = (gauss(60, 10));
		antizipation = (gauss(60, 10));
		geschwindigkeit = (gauss(60, 10));
		zweikampf = (gauss(60, 10));
		break;
	case "LV": case "RV":		 
		geschwindigkeit = (gauss(60, 10));
		zweikampf = (gauss(60, 10));
		flanken = (gauss(60, 10));
		break;
	case "DM":		 
		pass = (gauss(60, 10));
		zweikampf = (gauss(60, 10));
		ausdauer = (gauss(60, 10));
		break;
	case "LM": case "RM":		 
		geschwindigkeit = (gauss(60, 10));
		pass = (gauss(60, 10));
		flanken = (gauss(60, 10));
		break;
	case "ZM":		 
		ausdauer = (gauss(60, 10));
		pass = (gauss(60, 10));
		schuss = (gauss(60, 10));
		break;
	case "OM":		 
		dribbling = (gauss(60, 10));
		pass = (gauss(60, 10));
		schuss = (gauss(60, 10));
		break;
	case "ST":		 
		dribbling = (gauss(60, 10));
		kopfball = (gauss(60, 10));
		schuss = (gauss(60, 10));
		break;
	default:
		setSpielerWerteTo(50, 20);
}