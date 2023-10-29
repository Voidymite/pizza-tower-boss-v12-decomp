function gml_node_unpack()
{
	var l_q = argument[0]
	while (l_q != undefined)
	{
	    var l__g = l_q
	    if (l__g[0] == 89)
	    {
	        var l__g2 = l__g[2]
	        if (array_length_1d(l__g2) == 1)
	            l_q = l__g2[0]
	        else
	            return l_q;
	    }
	    else
	        return l_q;
	}
	return l_q;
}
