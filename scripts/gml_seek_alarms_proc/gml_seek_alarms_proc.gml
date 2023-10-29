function gml_seek_alarms_proc()
{
	var l_q = argument[0]
	switch l_q[0]
	{
	    case 63:
	        var l_i1 = l_q[3]
	        var l_x1 = l_q[2]
	        var l_d1 = l_q[1]
	        var l_r = gml_seek_alarms_check(l_x1)
	        if (l_r != undefined)
	            gml_std_haxe_enum_tools_set(l_q, [50, l_d1, l_r, l_i1])
	        break
	    case 53:
	        var l_i = l_q[3]
	        var l_x = l_q[2]
	        var l_d = l_q[1]
	        l_r = gml_seek_alarms_check(l_x)
	        if (l_r != undefined)
	            gml_std_haxe_enum_tools_set(l_q, [50, l_d, l_r, l_i])
	        break
	}
	
	return gml_node_seek(l_q, argument[1], global.g_gml_program_seek_func);
}
