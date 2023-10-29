function gml_compile_error()
{
	var l_pos = argument[1]
	global.g_gml_compile_error_text = ((gml_pos_to_string(l_pos) + " ") + argument[0])
	global.g_gml_compile_error_pos = l_pos
	return 1;
}
