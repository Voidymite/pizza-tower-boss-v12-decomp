function gml_seek_arguments_proc()
{
	var l_q = argument[0]
	gml_node_seek(l_q, argument[1], global.g_gml_program_seek_func)
	var l__g = l_q
	if (l__g[0] == 14)
	{
	    var l_i = l__g[2]
	    if (global.g_gml_program_seek_script[8] <= l_i)
	        array_set(global.g_gml_program_seek_script, 8, (l_i + 1))
	}
	return 0;
}
