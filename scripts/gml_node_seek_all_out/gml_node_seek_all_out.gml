function gml_node_seek_all_out()
{
	var l_q = argument[0]
	var l_st = argument[1]
	var l_c = argument[2]
	var l_si = argument[3]
	var l_par = ds_list_find_value(l_st, l_si)
	if (l_par == undefined)
	    return 0;
	var l__g = l_par
	switch l__g[0]
	{
	    case 89:
	        var l_w = l__g[2]
	        var l_i = array_length_1d(l_w)
	        while (--l_i >= 0)
	        {
	            if (l_w[l_i] == l_q)
	                break
	            else
	                continue
	        }
	        while (--l_i >= 0)
	        {
	            if script_execute(l_c, l_w[l_i], undefined)
	                return 1;
	        }
	        break
	    case 90:
	        var l_c1 = l__g[2]
	        if (l_c1 != l_q && script_execute(l_c, l_c1, undefined))
	            return 1;
	        break
	    case 95:
	        var l_c3 = l__g[2]
	        if (l_c3 != l_q && script_execute(l_c, l_c3, undefined))
	            return 1;
	        break
	    case 97:
	        var l_c5 = l__g[2]
	        if (l_c5 != l_q && script_execute(l_c, l_c5, undefined))
	            return 1;
	        break
	    case 96:
	        var l_c4 = l__g[2]
	        if (l_c4 != l_q && script_execute(l_c, l_c4, undefined))
	            return 1;
	        break
	    case 98:
	        var l_c6 = l__g[2]
	        if (l_c6 != l_q && script_execute(l_c, l_c6, undefined))
	            return 1;
	        break
	    case 99:
	        var l_c7 = l__g[2]
	        if (l_c7 != l_q && script_execute(l_c, l_c7, undefined))
	            return 1;
	        break
	    case 92:
	        var l_c2 = l__g[2]
	        if (l_c2 != l_q && script_execute(l_c, l_c2, undefined))
	            return 1;
	        break
	    case 100:
	        var l_c8 = l__g[2]
	        if (l_c8 != l_q && script_execute(l_c, l_c8, undefined))
	            return 1;
	        break
	    case 109:
	        break
	    case 108:
	        break
	    case 110:
	        break
	    case 112:
	        break
	    case 113:
	        break
	    default:
	        show_error(((("Can't seekAllOut over " + gml_pos_to_string(l_par[1])) + " ") + global.g_gml_node_names[l_par[0]]), 0)
	}
	
	return gml_node_seek_all_out(l_par, l_st, l_c, (l_si + 1));
}
