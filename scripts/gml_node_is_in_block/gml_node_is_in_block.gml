function gml_node_is_in_block()
{
	var l_q = argument[0]
	var l_p = argument[1]
	if (l_p == undefined)
	    return 0;
	var l__g = l_p
	switch l__g[0]
	{
	    case 89:
	        return 1;
	    case 90:
	        return l_q != l__g[2];
	    case 95:
	        return l_q != l__g[2];
	    case 97:
	        return l_q != l__g[3];
	    case 96:
	        return l_q != l__g[3];
	    case 98:
	        return l_q != l__g[2];
	    case 99:
	        return l_q != l__g[3];
	    case 92:
	        return l_q != l__g[2];
	    default:
	        return 0;
	}
	
}
