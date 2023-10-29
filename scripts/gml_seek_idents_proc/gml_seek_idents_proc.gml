function gml_seek_idents_proc()
{
	var l_q = argument[0]
	var l_st = argument[1]
	var l__g = l_q
	if (l__g[0] == 7)
	{
	    var l_s = l__g[2]
	    var l_d = l__g[1]
	    var l_scr = global.g_gml_program_seek_script
	    if (l_scr != undefined && ds_map_exists(l_scr[9], l_s))
	        gml_std_haxe_enum_tools_set(l_q, [14, l_d, ds_map_find_value(l_scr[9], l_s)])
	    else if (l_scr != undefined && ds_map_exists(l_scr[6], l_s))
	        gml_std_haxe_enum_tools_set(l_q, [32, l_d, l_s])
	    else if ds_map_exists(global.g_gml_program_seek_inst[6], l_s)
	    {
	        gml_std_haxe_enum_tools_set(l_q, gml_node_clone(ds_map_find_value(global.g_gml_program_seek_inst[6], l_s)))
	        gml_seek_idents_proc(l_q, l_st)
	    }
	    else if ds_map_exists(global.g_gml_const_map, l_s)
	        gml_std_haxe_enum_tools_set(l_q, gml_seek_eval_value_to_node(ds_map_find_value(global.g_gml_const_val, l_s), l_d))
	    else if ds_map_exists(global.g_gml_var_flags, l_s)
	    {
	        gml_std_haxe_enum_tools_set(l_q, [41, l_d, l_s])
	        if (ds_list_size(l_st) > 0)
	        {
	            var l__g1 = ds_list_find_value(l_st, 0)
	            switch l__g1[0]
	            {
	                case 53:
	                    var l_k = l__g1[3]
	                    var l_d1 = l__g1[1]
	                    if ((ds_map_find_value(global.g_gml_var_flags, l_s) & 2) != 0)
	                        gml_std_haxe_enum_tools_set(ds_list_find_value(l_st, 0), [47, l_d1, l_s, l_k])
	                    else
	                        return gml_program_error(global.g_gml_program_seek_inst, (("`" + l_s) + "` is not an array."), l_d1);
	                    break
	                case 58:
	                    return gml_program_error(global.g_gml_program_seek_inst, (("`" + l_s) + "` is not a 2d array."), l__g1[1]);
	                default:
	                    if ((ds_map_find_value(global.g_gml_var_flags, l_s) & 2) != 0)
	                        gml_std_haxe_enum_tools_set(l_q, [47, l_d, l_s, [1, l_d, 0, undefined]])
	            }
	
	        }
	    }
	    else if ds_map_exists(global.g_gml_program_seek_inst[3], l_s)
	        gml_std_haxe_enum_tools_set(l_q, [11, l_d, ds_map_find_value(global.g_gml_program_seek_inst[3], l_s)])
	    else if ds_map_exists(global.g_gml_func_script_id, l_s)
	        gml_std_haxe_enum_tools_set(l_q, [12, l_d, l_s, ds_map_find_value(global.g_gml_func_script_id, l_s)])
	}
	return gml_node_seek(l_q, l_st, global.g_gml_program_seek_func);
}
