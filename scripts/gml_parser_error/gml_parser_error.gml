function gml_parser_error()
{
	var l_pos = argument[1]
	var l_tkl = argument[2]
	ds_list_destroy(l_tkl)
	global.g_gml_parser_error_text = ((gml_pos_to_string(l_pos) + ": ") + argument[0])
	global.g_gml_parser_error_pos = l_pos
	return undefined;
}
