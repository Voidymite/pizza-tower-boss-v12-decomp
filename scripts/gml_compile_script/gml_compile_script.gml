function gml_compile_script()
{
	var l_q = argument[0]
	var l_r = ds_list_create()
	array_set(l_q, 10, l_r)
	global.g_gml_compile_curr_script = l_q
	global.g_gml_compile_curr_break = -1
	global.g_gml_compile_curr_continue = -1
	var l_e = gml_compile_node(l_q[4], l_r, 0)
	global.g_gml_compile_curr_script = undefined
	return l_e;
}
