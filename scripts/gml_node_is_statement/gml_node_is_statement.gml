function gml_node_is_statement()
{
	var l_q = argument[0]
	switch l_q[0]
	{
	    case 17:
	        return 1;
	    case 28:
	        return 1;
	    case 88:
	        return 1;
	    case 24:
	        return 1;
	    case 25:
	        return 1;
	    default:
	        return 0;
	}
	
}
