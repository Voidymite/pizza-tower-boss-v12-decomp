function gml_node_equals_list()
{
	var l_a = argument[0]
	var l_b = argument[1]
	var l_n = array_length_1d(l_a)
	if (array_length_1d(l_b) != l_n)
	    return 0;
	var l_i = 0
	while (l_i < l_n)
	{
	    if gml_node_equals(l_a[l_i], l_b[l_i])
	        l_i++
	    else
	        return 0;
	}
	return 1;
}
