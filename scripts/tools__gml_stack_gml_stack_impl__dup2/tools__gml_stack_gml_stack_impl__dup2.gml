function tools__gml_stack_gml_stack_impl__dup2()
{
	var l_this1 = argument[0]
	var l_i = (l_this1[0] + 2)
	if (l_i >= array_length_1d(l_this1))
	    array_set(l_this1, (array_length_1d(l_this1) * 2), 0)
	array_set(l_this1, (l_i - 1), l_this1[(l_i - 3)])
	array_set(l_this1, l_i, l_this1[(l_i - 2)])
	array_set(l_this1, 0, l_i)
}
