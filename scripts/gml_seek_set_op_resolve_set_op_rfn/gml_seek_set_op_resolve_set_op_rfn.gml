function gml_seek_set_op_resolve_set_op_rfn()
{
	var l_q = argument[0]
	var l__g = l_q
	switch l__g[0]
	{
	    case 55:
	        if gml_node_equals(global.g_gml_seek_set_op_resolve_set_op_xw, l__g[2])
	        {
	            global.g_gml_seek_set_op_resolve_set_op_safe = 1
	            return 1;
	        }
	        break
	    case 59:
	        if gml_node_equals(global.g_gml_seek_set_op_resolve_set_op_xw, l__g[2])
	        {
	            global.g_gml_seek_set_op_resolve_set_op_safe = 1
	            return 1;
	        }
	        break
	    case 60:
	        if gml_node_equals(global.g_gml_seek_set_op_resolve_set_op_xw, l__g[2])
	        {
	            global.g_gml_seek_set_op_resolve_set_op_safe = 1
	            return 1;
	        }
	        break
	    case 54:
	        if gml_node_equals(global.g_gml_seek_set_op_resolve_set_op_xw, l__g[2])
	        {
	            global.g_gml_seek_set_op_resolve_set_op_safe = 1
	            return 1;
	        }
	        break
	    case 28:
	        var l_v2 = l__g[4]
	        if gml_node_equals(global.g_gml_seek_set_op_resolve_set_op_xw, l__g[3])
	        {
	            var l__g1 = l_v2
	            if (l__g1[0] == 4)
	                var l_tmp = 1
	            else
	                l_tmp = 0
	            global.g_gml_seek_set_op_resolve_set_op_safe = l_tmp
	            return 1;
	        }
	        break
	}
	
	return gml_node_seek_all(l_q, argument[1], global.f_gml_seek_set_op_resolve_set_op_rfn);
}
