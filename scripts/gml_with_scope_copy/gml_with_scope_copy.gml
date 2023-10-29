function gml_with_scope_copy()
{
	var l_q = argument[0]
	if (l_q == undefined)
	    return undefined;
	var l_q_data = l_q[5]
	l_q_data[2]++
	var l_r = gml_with_scope_create(l_q_data, gml_with_scope_copy(l_q[4]))
	array_set(l_r, 1, l_q[1])
	return l_r;
}
