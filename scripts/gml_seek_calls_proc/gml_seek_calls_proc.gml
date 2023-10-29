function gml_seek_calls_proc()
{
	var l_q = argument[0]
	var l__g = l_q
	if (l__g[0] == 17)
	{
	    var l_w = l__g[3]
	    var l_x = l__g[2]
	    var l_d = l__g[1]
	    var l__g1 = l_x
	    switch l__g1[0]
	    {
	        case 11:
	            var l_o = l__g1[2]
	            var l_n = l_o[8]
	            var l_s = l_o[1]
	            if (l_n <= 0 || array_length_1d(l_w) == l_n)
	                gml_std_haxe_enum_tools_set(l_q, [18, l_d, l_s, l_w])
	            else
	                return gml_program_error(global.g_gml_program_seek_inst, (("Wrong number of arguments for `" + l_s) + "`"), l_d);
	            break
	        case 38:
	            var l_s3 = l__g1[3]
	            if ds_map_exists(global.g_gml_func_arg0, l_s3)
	            {
	                if ds_map_exists(global.g_gml_inst_data, l_s3)
	                    gml_std_haxe_enum_tools_set(l_q, [23, l_d, l__g1[2], l_s3, l_w])
	                else
	                    return gml_program_error(global.g_gml_program_seek_inst, (("`" + l_s3) + "` cannot be called on an instance"), l__g1[1]);
	            }
	            else if ds_map_exists(global.g_gml_program_seek_inst[3], l_s3)
	            {
	                l_n = gml_std_haxe_boot_wget(ds_map_find_value(global.g_gml_program_seek_inst[3], l_s3), 8)
	                if (l_n <= 0 || array_length_1d(l_w) == l_n)
	                    gml_std_haxe_enum_tools_set(l_q, [19, l_d, l__g1[2], l_s3, l_w])
	                else
	                    return gml_program_error(global.g_gml_program_seek_inst, (("Wrong number of arguments for `" + l_s3) + "`"), l_d);
	            }
	            else
	                gml_std_haxe_enum_tools_set(l_q, [21, l_d, l__g1[2], l_s3, l_w])
	            break
	        case 12:
	            var l_s2 = l__g1[2]
	            var l_n01 = ds_map_find_value(global.g_gml_func_arg0, l_s2)
	            if (l_n01 != undefined)
	            {
	                var l_n11 = ds_map_find_value(global.g_gml_func_arg1, l_s2)
	                var l_wn1 = array_length_1d(l_w)
	                if (l_wn1 < l_n01 || l_wn1 > l_n11)
	                {
	                    if (l_n01 == l_n11)
	                    {
	                        l_s2 = (((("`" + l_s2) + "` takes ") + string(l_n01)) + " argument")
	                        if (l_n01 != 1)
	                            l_s2 += "s"
	                    }
	                    else if (l_wn1 < l_n01)
	                    {
	                        l_s2 = (((("`" + l_s2) + "` requires at least ") + string(l_n01)) + " argument")
	                        if (l_n01 != 1)
	                            l_s2 += "s"
	                    }
	                    else
	                    {
	                        l_s2 = (((("`" + l_s2) + "` takes no more than ") + string(l_n11)) + " argument")
	                        if (l_n11 != 1)
	                            l_s2 += "s"
	                    }
	                    l_s2 += (", got " + string(l_wn1))
	                    return gml_program_error(global.g_gml_program_seek_inst, l_s2, l_x[1]);
	                }
	                else
	                    gml_std_haxe_enum_tools_set(l_q, [22, l_d, l_s2, l_w])
	            }
	            else
	                return gml_program_error(global.g_gml_program_seek_inst, (("`" + l_s2) + "` is not a function or script"), l_x[1]);
	            break
	        case 7:
	            var l_s1 = l__g1[2]
	            var l_n0 = ds_map_find_value(global.g_gml_func_arg0, l_s1)
	            if (l_n0 != undefined)
	            {
	                var l_n1 = ds_map_find_value(global.g_gml_func_arg1, l_s1)
	                var l_wn = array_length_1d(l_w)
	                if (l_wn < l_n0 || l_wn > l_n1)
	                {
	                    if (l_n0 == l_n1)
	                    {
	                        l_s1 = (((("`" + l_s1) + "` takes ") + string(l_n0)) + " argument")
	                        if (l_n0 != 1)
	                            l_s1 += "s"
	                    }
	                    else if (l_wn < l_n0)
	                    {
	                        l_s1 = (((("`" + l_s1) + "` requires at least ") + string(l_n0)) + " argument")
	                        if (l_n0 != 1)
	                            l_s1 += "s"
	                    }
	                    else
	                    {
	                        l_s1 = (((("`" + l_s1) + "` takes no more than ") + string(l_n1)) + " argument")
	                        if (l_n1 != 1)
	                            l_s1 += "s"
	                    }
	                    l_s1 += (", got " + string(l_wn))
	                    return gml_program_error(global.g_gml_program_seek_inst, l_s1, l_x[1]);
	                }
	                else
	                    gml_std_haxe_enum_tools_set(l_q, [22, l_d, l_s1, l_w])
	            }
	            else
	                return gml_program_error(global.g_gml_program_seek_inst, (("`" + l_s1) + "` is not a function or script"), l_x[1]);
	            break
	        default:
	            return gml_program_error(global.g_gml_program_seek_inst, "Expression is not callable", l_x[1]);
	    }
	
	}
	return gml_node_seek(l_q, argument[1], global.g_gml_program_seek_func);
}
