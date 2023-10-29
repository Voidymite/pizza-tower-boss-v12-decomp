function gml_seek_locals_proc()
{
	var l_q = argument[0]
	var l__g = l_q
	if (l__g[0] == 88)
	{
	    var l_s = l__g[2]
	    if (!(ds_map_exists(global.g_gml_program_seek_script[6], l_s)))
	        ds_map_set(global.g_gml_program_seek_script[6], l_s, array_set_post(global.g_gml_program_seek_script, 7, (array_get(global.g_gml_program_seek_script, 7) + 1)))
	}
	return gml_node_seek(l_q, argument[1], global.g_gml_program_seek_func);
}
