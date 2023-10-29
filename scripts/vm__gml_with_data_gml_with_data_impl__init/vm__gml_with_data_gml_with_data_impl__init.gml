function vm__gml_with_data_gml_with_data_impl__init()
{
	var l_pools = array_create(5, 0)
	array_set(l_pools, 0, ds_stack_create())
	array_set(l_pools, 1, ds_stack_create())
	array_set(l_pools, 2, ds_stack_create())
	array_set(l_pools, 3, ds_stack_create())
	array_set(l_pools, 4, ds_stack_create())
	return l_pools;
}
