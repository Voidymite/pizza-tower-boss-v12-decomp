function gml_light_create_ext()
{
	var l_keys = argument[0]
	var l_sig = argument[1]
	var l_w1 = undefined
	l_w1[2, 0] = undefined
	var l_n = array_length_1d(l_keys)
	var l_i = l_n
	while (--l_i >= 0)
	    l_w1[1, l_i] = l_keys[l_i]
	var l_idq = ds_map_find_value(global.g_gml_scope_lookup, l_sig)
	if (l_idq == undefined)
	{
	    l_idq = ds_map_create()
	    for (l_i = 0; l_i < l_n; l_i++)
	        ds_map_set(l_idq, l_keys[l_i], l_i)
	    ds_map_set(global.g_gml_scope_lookup, l_sig, l_idq)
	    ds_map_set(global.g_gml_scope_fields, l_idq, l_sig)
	}
	l_w1[2, 0] = l_idq
	return l_w1;
}
