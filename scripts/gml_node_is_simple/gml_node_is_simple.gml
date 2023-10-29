function gml_node_is_simple()
{
	var l__g = argument[0]
	switch l__g[0]
	{
	    case 1:
	        return 1;
	    case 2:
	        return 1;
	    case 0:
	        return 1;
	    case 32:
	        return 1;
	    case 35:
	        return 1;
	    case 4:
	        var l_w = l__g[2]
	        var l_n = array_length_1d(l_w)
	        var l_i = 0
	        while (l_i < l_n)
	        {
	            if gml_node_is_simple(l_w[l_i])
	            {
	                l_i++
	                continue
	            }
	            else
	                break
	        }
	        return l_i >= l_n;
	    case 5:
	        l_w = l__g[3]
	        l_n = array_length_1d(l_w)
	        l_i = 0
	        while (l_i < l_n)
	        {
	            if gml_node_is_simple(l_w[l_i])
	            {
	                l_i++
	                continue
	            }
	            else
	                break
	        }
	        return l_i >= l_n;
	    case 8:
	        return 1;
	    case 9:
	        return 1;
	    case 38:
	        return gml_node_is_simple(l__g[2]);
	    case 53:
	        return (gml_node_is_simple(l__g[2]) && gml_node_is_simple(l__g[3]));
	    default:
	        return 0;
	}
	
}
