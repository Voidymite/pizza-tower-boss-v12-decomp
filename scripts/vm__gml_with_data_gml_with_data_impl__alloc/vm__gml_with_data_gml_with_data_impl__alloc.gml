function vm__gml_with_data_gml_with_data_impl__alloc()
{
	var l_size = argument[0]
	var l_sln = (l_size > 0 ? (log10(l_size) | 0) : 0)
	if (l_sln >= 5)
	    return array_create(l_size, 0);
	var l_item = ds_stack_pop(global.g_vm__gml_with_data_gml_with_data_impl__pools[l_sln])
	if (l_item == undefined)
	    return array_create((power(10, l_sln) | 0), 0);
	else
	    return l_item;
}
