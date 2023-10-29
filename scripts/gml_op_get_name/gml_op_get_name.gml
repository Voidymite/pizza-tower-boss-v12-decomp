function gml_op_get_name()
{
	switch argument[0]
	{
	    case 1:
	        return "Div";
	    case 2:
	        return "Mod";
	    case 7:
	        return "priorities";
	    case 16:
	        return "Add";
	    case 17:
	        return "Sub";
	    case 18:
	        return "Cct";
	    case 32:
	        return "Shl";
	    case 33:
	        return "Shr";
	    case 48:
	        return "Or";
	    case 49:
	        return "And";
	    case 64:
	        return "EQ";
	    case 65:
	        return "NE";
	    case 66:
	        return "LT";
	    case 67:
	        return "LE";
	    case 68:
	        return "GT";
	    case 69:
	        return "GE";
	    case 80:
	        return "BAnd";
	    case 96:
	        return "BOr";
	    case 50:
	        return "Xor";
	    case 3:
	        return "IDiv";
	    case 0:
	        return "Mul";
	    case -1:
	        return "Set";
	    default:
	        return undefined;
	}
	
}
