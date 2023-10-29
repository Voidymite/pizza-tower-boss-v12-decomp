function gml_seek_set_op_proc()
{
	var l_q = argument[0]
	var l_st = argument[1]
	var l__g = l_q
	if (l__g[0] == 28)
	{
	    var l_v = l__g[4]
	    var l_x = l__g[3]
	    var l_o = l__g[2]
	    var l_d = l__g[1]
	    var l__g1 = gml_node_unpack(l_x)
	    switch l__g1[0]
	    {
	        case 32:
	            var l_s = l__g1[2]
	            if (l_o != -1)
	                gml_std_haxe_enum_tools_set(l_q, [34, l_d, l_s, l_o, l_v])
	            else
	                gml_std_haxe_enum_tools_set(l_q, [33, l_d, l_s, l_v])
	            break
	        case 35:
	            var l_s1 = l__g1[2]
	            if (l_o != -1)
	                gml_std_haxe_enum_tools_set(l_q, [37, l_d, l_s1, l_o, l_v])
	            else
	                gml_std_haxe_enum_tools_set(l_q, [36, l_d, l_s1, l_v])
	            break
	        case 14:
	            break
	        case 15:
	            break
	        case 38:
	            var l_s2 = l__g1[3]
	            var l_x1 = l__g1[2]
	            if (l_o != -1)
	                gml_std_haxe_enum_tools_set(l_q, [40, l_d, l_x1, l_s2, l_o, l_v])
	            else
	                gml_std_haxe_enum_tools_set(l_q, [39, l_d, l_x1, l_s2, l_v])
	            break
	        case 50:
	            var l_i = l__g1[3]
	            var l_x3 = l__g1[2]
	            if (l_o != -1)
	                gml_std_haxe_enum_tools_set(l_q, [52, l_d, l_x3, l_i, l_o, l_v])
	            else
	                gml_std_haxe_enum_tools_set(l_q, [51, l_d, l_x3, l_i, l_v])
	            break
	        case 58:
	            var l_xw1 = l__g1[2]
	            var l_xd4 = l__g1[1]
	            var l__g3 = l_x
	            switch l__g3[0]
	            {
	                case 53:
	                    var l_xi1 = l__g3[3]
	                    if (l_o != -1)
	                        gml_std_haxe_enum_tools_set(l_q, [55, l_xd4, l_xw1, l_xi1, l_o, l_v])
	                    else
	                        gml_std_haxe_enum_tools_set(l_q, [54, l_xd4, l_xw1, l_xi1, l_v])
	                    break
	                case 58:
	                    var l_i21 = l__g3[4]
	                    var l_i11 = l__g3[3]
	                    if (l_o != -1)
	                        gml_std_haxe_enum_tools_set(l_q, [60, l_xd4, l_xw1, l_i11, l_i21, l_o, l_v])
	                    else
	                        gml_std_haxe_enum_tools_set(l_q, [59, l_xd4, l_xw1, l_i11, l_i21, l_v])
	                    break
	            }
	
	            global.g_gml_seek_set_op_resolve_set_op_safe = 0
	            global.g_gml_seek_set_op_resolve_set_op_xw = l_xw1
	            gml_node_seek_all_out(l_q, l_st, global.f_gml_seek_set_op_resolve_set_op_rfn, 0)
	            if (!global.g_gml_seek_set_op_resolve_set_op_safe)
	                gml_std_haxe_enum_tools_set(l_q, [89, l_xd4, [[6, l_xd4, gml_node_clone(l_xw1)], gml_node_clone(l_q)]])
	            break
	        case 53:
	            var l_xw = l__g1[2]
	            var l_xd3 = l__g1[1]
	            var l__g2 = l_x
	            switch l__g2[0]
	            {
	                case 53:
	                    var l_xi = l__g2[3]
	                    if (l_o != -1)
	                        gml_std_haxe_enum_tools_set(l_q, [55, l_xd3, l_xw, l_xi, l_o, l_v])
	                    else
	                        gml_std_haxe_enum_tools_set(l_q, [54, l_xd3, l_xw, l_xi, l_v])
	                    break
	                case 58:
	                    var l_i2 = l__g2[4]
	                    var l_i1 = l__g2[3]
	                    if (l_o != -1)
	                        gml_std_haxe_enum_tools_set(l_q, [60, l_xd3, l_xw, l_i1, l_i2, l_o, l_v])
	                    else
	                        gml_std_haxe_enum_tools_set(l_q, [59, l_xd3, l_xw, l_i1, l_i2, l_v])
	                    break
	            }
	
	            global.g_gml_seek_set_op_resolve_set_op_safe = 0
	            global.g_gml_seek_set_op_resolve_set_op_xw = l_xw
	            gml_node_seek_all_out(l_q, l_st, global.f_gml_seek_set_op_resolve_set_op_rfn, 0)
	            if (!global.g_gml_seek_set_op_resolve_set_op_safe)
	                gml_std_haxe_enum_tools_set(l_q, [89, l_xd3, [[6, l_xd3, gml_node_clone(l_xw)], gml_node_clone(l_q)]])
	            break
	        case 41:
	            var l_s3 = l__g1[2]
	            var l_f = ds_map_find_value(global.g_gml_var_flags, l_s3)
	            if ((l_f & 1) == 0)
	            {
	                if ((l_f & 2) != 0)
	                {
	                    var l_k = [1, l_d, 0, undefined]
	                    if (l_o != -1)
	                        gml_std_haxe_enum_tools_set(l_q, [49, l_d, l_s3, l_k, l_o, l_v])
	                    else
	                        gml_std_haxe_enum_tools_set(l_q, [48, l_d, l_s3, l_k, l_v])
	                }
	                else if (l_o != -1)
	                    gml_std_haxe_enum_tools_set(l_q, [43, l_d, l_s3, l_o, l_v])
	                else
	                    gml_std_haxe_enum_tools_set(l_q, [42, l_d, l_s3, l_v])
	            }
	            else
	                return gml_program_error(global.g_gml_program_seek_inst, (("`" + l_s3) + "` is read-only"), l__g1[1]);
	            break
	        case 44:
	            var l_s4 = l__g1[3]
	            if ((ds_map_find_value(global.g_gml_var_flags, l_s4) & 1) == 0)
	            {
	                if (l_o != -1)
	                    gml_std_haxe_enum_tools_set(l_q, [46, l_d, l__g1[2], l_s4, l_o, l_v])
	                else
	                    gml_std_haxe_enum_tools_set(l_q, [45, l_d, l__g1[2], l_s4, l_v])
	            }
	            else
	                return gml_program_error(global.g_gml_program_seek_inst, (("`" + l_s4) + "` is read-only"), l__g1[1]);
	            break
	        case 47:
	            var l_s5 = l__g1[2]
	            if ((ds_map_find_value(global.g_gml_var_flags, l_s5) & 1) == 0)
	            {
	                if (l_o != -1)
	                    gml_std_haxe_enum_tools_set(l_q, [49, l_d, l_s5, l__g1[3], l_o, l_v])
	                else
	                    gml_std_haxe_enum_tools_set(l_q, [48, l_d, l_s5, l__g1[3], l_v])
	            }
	            else
	                return gml_program_error(global.g_gml_program_seek_inst, (("`" + l_s5) + "` is read-only"), l__g1[1]);
	            break
	        case 73:
	            var l_k4 = l__g1[3]
	            var l_x6 = l__g1[2]
	            if (l_o != -1)
	                gml_std_haxe_enum_tools_set(l_q, [75, l_d, l_x6, l_k4, l_o, l_v])
	            else
	                gml_std_haxe_enum_tools_set(l_q, [74, l_d, l_x6, l_k4, l_v])
	            break
	        case 78:
	            var l_k5 = l__g1[3]
	            var l_x7 = l__g1[2]
	            if (l_o != -1)
	                gml_std_haxe_enum_tools_set(l_q, [80, l_d, l_x7, l_k5, l_o, l_v])
	            else
	                gml_std_haxe_enum_tools_set(l_q, [79, l_d, l_x7, l_k5, l_v])
	            break
	        case 83:
	            var l_k6 = l__g1[4]
	            var l_i4 = l__g1[3]
	            var l_x8 = l__g1[2]
	            if (l_o != -1)
	                gml_std_haxe_enum_tools_set(l_q, [85, l_d, l_x8, l_i4, l_k6, l_o, l_v])
	            else
	                gml_std_haxe_enum_tools_set(l_q, [84, l_d, l_x8, l_i4, l_k6, l_v])
	            break
	        case 63:
	            var l_k2 = l__g1[3]
	            var l_x4 = l__g1[2]
	            if (l_o != -1)
	                gml_std_haxe_enum_tools_set(l_q, [65, l_d, l_x4, l_k2, l_o, l_v])
	            else
	                gml_std_haxe_enum_tools_set(l_q, [64, l_d, l_x4, l_k2, l_v])
	            break
	        case 68:
	            var l_k3 = l__g1[4]
	            var l_i3 = l__g1[3]
	            var l_x5 = l__g1[2]
	            if (l_o != -1)
	                gml_std_haxe_enum_tools_set(l_q, [70, l_d, l_x5, l_i3, l_k3, l_o, l_v])
	            else
	                gml_std_haxe_enum_tools_set(l_q, [69, l_d, l_x5, l_i3, l_k3, l_v])
	            break
	        default:
	            return gml_program_error(global.g_gml_program_seek_inst, "Expression is not settable", l_x[1]);
	    }
	
	}
	return gml_node_seek(l_q, l_st, global.g_gml_program_seek_func);
}
