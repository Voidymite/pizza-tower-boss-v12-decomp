function gml_func_copy()
{
	var l_to = argument[0]
	var l_from = argument[1]
	if (argument_count > 2)
	    var l_note = argument[2]
	else
	    l_note = undefined
	if (!(ds_map_exists(global.g_gml_func_script, l_from)))
	    show_error(("Can't find " + l_from), 0)
	if (l_note != undefined)
	    gml_note_add(l_note)
	ds_map_set(global.g_gml_func_eval, l_to, ds_map_find_value(global.g_gml_func_eval, l_from))
	ds_map_set(global.g_gml_func_args, l_to, ds_map_find_value(global.g_gml_func_args, l_from))
	ds_map_set(global.g_gml_func_rest, l_to, ds_map_find_value(global.g_gml_func_rest, l_from))
	ds_map_set(global.g_gml_func_arg0, l_to, ds_map_find_value(global.g_gml_func_arg0, l_from))
	ds_map_set(global.g_gml_func_arg1, l_to, ds_map_find_value(global.g_gml_func_arg1, l_from))
	ds_map_set(global.g_gml_func_script, l_to, ds_map_find_value(global.g_gml_func_script, l_from))
	ds_map_set(global.g_gml_func_sig, l_to, ds_map_find_value(global.g_gml_func_sig, l_from))
}
