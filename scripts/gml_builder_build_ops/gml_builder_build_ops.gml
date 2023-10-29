function gml_builder_build_ops()
{
	var this = argument[0]
	array_set(this, 3, (array_get(this, 3) + 1))
	var l_nodes = ds_list_create()
	ds_list_add(l_nodes, this[11])
	var l_ops = ds_list_create()
	ds_list_add(l_ops, argument[2])
	var l_locs = ds_list_create()
	ds_list_add(l_locs, argument[1])
	var l_proc = 1
	while (l_proc && this[3] < this[4])
	{
	    if gml_builder_build_expr(this, 1)
	    {
	        ds_list_destroy(l_nodes)
	        ds_list_destroy(l_ops)
	        ds_list_destroy(l_locs)
	        return 1;
	    }
	    ds_list_add(l_nodes, this[11])
	    if (this[3] < this[4])
	    {
	        var l__g = gml_std_haxe_boot_wget(this[1], this[3])
	        switch l__g[0]
	        {
	            case 18:
	                array_set(this, 3, (array_get(this, 3) + 1))
	                ds_list_add(l_locs, l__g[1])
	                ds_list_add(l_ops, l__g[2])
	                break
	            case 19:
	                if (l__g[2] == -1)
	                {
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                    ds_list_add(l_locs, l__g[1])
	                    ds_list_add(l_ops, 64)
	                }
	                else
	                    l_proc = 0
	                break
	            default:
	                l_proc = 0
	        }
	
	    }
	}
	var l_pmin = 7
	var l_pmax = 0
	var l_n = ds_list_size(l_ops)
	for (var l_i = 0; l_i < l_n; l_i++)
	{
	    var l_pcur = gml_op_get_priority(ds_list_find_value(l_ops, l_i))
	    if (l_pcur < l_pmin)
	        l_pmin = l_pcur
	    if (l_pcur > l_pmax)
	        l_pmax = l_pcur
	}
	while (l_pmin <= l_pmax)
	{
	    for (l_i = 0; l_i < l_n; l_i++)
	    {
	        if (gml_op_get_priority(ds_list_find_value(l_ops, l_i)) == l_pmin)
	        {
	            ds_list_set(l_nodes, l_i, [27, ds_list_find_value(l_locs, l_i), ds_list_find_value(l_ops, l_i), ds_list_find_value(l_nodes, l_i), ds_list_find_value(l_nodes, (l_i + 1))])
	            ds_list_delete(l_nodes, (l_i + 1))
	            ds_list_delete(l_ops, l_i)
	            ds_list_delete(l_locs, l_i)
	            l_n--
	            l_i--
	        }
	    }
	    l_pmin++
	}
	array_set(this, 11, ds_list_find_value(l_nodes, 0))
	ds_list_destroy(l_nodes)
	ds_list_destroy(l_ops)
	ds_list_destroy(l_locs)
	return 0;
}
