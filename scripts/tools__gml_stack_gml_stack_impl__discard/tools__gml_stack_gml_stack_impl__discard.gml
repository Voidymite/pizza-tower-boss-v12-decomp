function tools__gml_stack_gml_stack_impl__discard()
{
	var l_this1 = argument[0]
	var l_i = l_this1[0]
	array_set(l_this1, l_i, 0)
	array_set(l_this1, 0, (l_i - 1))
}
