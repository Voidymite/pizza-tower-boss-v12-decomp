function gml_scope_clear()
{
	var l_cl = global.g_gml_scope_list
	var l_i = 0
	var l__g1 = ds_list_size(l_cl)
	while (l_i < l__g1)
	{
	    var l_q = ds_list_find_value(l_cl, l_i)
	    ds_map_delete(global.g_gml_scope_lookup, ds_map_find_value(global.g_gml_scope_fields, l_q))
	    ds_map_delete(global.g_gml_scope_fields, l_q)
	    ds_map_destroy(l_q)
	    l_i++
	}
	ds_list_clear(l_cl)
}
