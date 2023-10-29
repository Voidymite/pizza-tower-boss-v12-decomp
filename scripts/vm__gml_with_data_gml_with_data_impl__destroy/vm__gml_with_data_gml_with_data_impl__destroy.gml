function vm__gml_with_data_gml_with_data_impl__destroy()
{
	var _temp_local_var_1;
	var l_this1 = argument[0]
	var _temp_local_var_1 = local
	if (--l_this1[2] != 0)
	    return 0;
	var l_size = l_this1[0]
	var l_sln = (l_size > 0 ? (log10(l_size) | 0) : 0)
	if (l_sln >= 5)
	    return 0;
	ds_stack_push(global.g_vm__gml_with_data_gml_with_data_impl__pools[l_sln], l_this1[1])
}
