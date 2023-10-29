function tools__gml_stack_gml_stack_impl__dup_in()
{
	var l_this1 = argument[0]
	var l_i = l_this1[0]
	var l_v = l_this1[l_i++]
	array_set(l_this1, 0, l_i)
	var l_k = (l_i - argument[1])
	if (l_i >= array_length_1d(l_this1))
	    array_set(l_this1, (array_length_1d(l_this1) * 2), 0)
	while (--l_i >= l_k)
	    array_set(l_this1, (l_i + 1), l_this1[l_i])
	array_set(l_this1, l_k, l_v)
}
