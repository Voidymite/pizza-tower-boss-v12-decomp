function gml_const_add()
{
	var l_name = argument[0]
	var l_value = argument[1]
	ds_list_add(global.g_gml_sig_list, ((l_name + " = ") + gml_value_print(l_value)))
	ds_map_set(global.g_gml_const_map, l_name, 1)
	ds_map_set(global.g_gml_const_val, l_name, l_value)
}
