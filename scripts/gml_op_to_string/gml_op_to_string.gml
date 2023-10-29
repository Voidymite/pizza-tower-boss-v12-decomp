function gml_op_to_string()
{
	var l_this1 = argument[0]
	switch l_this1
	{
	    case -1:
	        return "";
	    case 0:
	        return "*";
	    case 1:
	        return "/";
	    case 3:
	        return "div";
	    case 2:
	        return "%";
	    case 16:
	        return "+";
	    case 17:
	        return "-";
	    case 18:
	        return "+";
	    case 32:
	        return "<<";
	    case 33:
	        return ">>";
	    case 48:
	        return "|";
	    case 49:
	        return "&";
	    case 50:
	        return "^";
	    case 64:
	        return "==";
	    case 65:
	        return "!=";
	    case 68:
	        return ">";
	    case 66:
	        return "<";
	    case 69:
	        return ">=";
	    case 67:
	        return "<=";
	    case 80:
	        return "&&";
	    case 96:
	        return "||";
	    default:
	        return gml_op_get_name(l_this1);
	}
	
}
