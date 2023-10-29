function gml_compile_node()
{
	var l_q = argument[0]
	var l_r = argument[1]
	var l_out = argument[2]
	var l__g = l_q
	switch l__g[0]
	{
	    case 0:
	        if l_out
	            ds_list_add(l_r, [4, l__g[1]])
	        break
	    case 1:
	        var l_f = l__g[2]
	        var l_d2 = l__g[1]
	        if l_out
	            ds_list_add(l_r, [5, l_d2, l_f])
	        break
	    case 2:
	        if l_out
	            ds_list_add(l_r, [6, l__g[1], l__g[2]])
	        break
	    case 8:
	        ds_list_add(l_r, [10, l__g[1]])
	        break
	    case 9:
	        ds_list_add(l_r, [11, l__g[1]])
	        break
	    case 10:
	        ds_list_add(l_r, [5, l__g[1], -5])
	        break
	    case 6:
	        var l_d = l__g[1]
	        var l_x = l__g[2]
	        var l__g1 = l_x
	        switch l__g1[0]
	        {
	            case 32:
	                ds_list_add(l_r, [70, l_d, ds_map_find_value(global.g_gml_compile_curr_script[6], l__g1[2])])
	                break
	            case 35:
	                ds_list_add(l_r, [71, l_d, l__g1[2]])
	                break
	            case 38:
	                var l_x2 = l__g1[2]
	                if gml_node_is_simple(l_x2)
	                {
	                    if gml_compile_node(l_x2, l_r, 1)
	                        return 1;
	                    ds_list_add(l_r, [72, l_d, l__g1[3]])
	                }
	                else
	                    return gml_compile_error("Cannot ensure array type - expression may have side effects.", l__g1[1]);
	                break
	            default:
	                return gml_compile_error("Cannot ensure array type for value. Use [@index] if it does not need allocation or create it explicitly.", l_d);
	        }
	
	        break
	    case 31:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [48, l__g[1], l__g[4]])
	        break
	    case 11:
	        ds_list_add(l_r, [9, l__g[1], gml_std_haxe_boot_wget(l__g[2], 3)])
	        break
	    case 13:
	        ds_list_add(l_r, [9, l__g[1], ds_map_find_value(global.g_gml_const_val, l__g[2])])
	        break
	    case 12:
	        ds_list_add(l_r, [9, l__g[1], l__g[3]])
	        break
	    case 4:
	        var l_w = l__g[2]
	        var l_n = array_length_1d(l_w)
	        for (var l_i = 0; l_i < l_n; l_i++)
	        {
	            if gml_compile_node(l_w[l_i], l_r, 1)
	                return 1;
	        }
	        ds_list_add(l_r, [7, l__g[1], l_n])
	        break
	    case 5:
	        var l_keys = l__g[2]
	        l_w = l__g[3]
	        l_n = array_length_1d(l_w)
	        var l_s = ""
	        for (l_i = 0; l_i < l_n; l_i++)
	        {
	            if gml_compile_node(l_w[l_i], l_r, 1)
	                return 1;
	            l_s += (l_keys[l_i] + "\n")
	        }
	        ds_list_add(l_r, [8, l__g[1], l_keys, l_s])
	        break
	    case 88:
	        l_x = l__g[3]
	        if (l_x != undefined)
	        {
	            if gml_compile_node(l_x, l_r, 1)
	                return 1;
	            ds_list_add(l_r, [13, l__g[1], ds_map_find_value(global.g_gml_compile_curr_script[6], l__g[2])])
	        }
	        break
	    case 32:
	        ds_list_add(l_r, [12, l__g[1], ds_map_find_value(global.g_gml_compile_curr_script[6], l__g[2])])
	        break
	    case 33:
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [13, l__g[1], ds_map_find_value(global.g_gml_compile_curr_script[6], l__g[2])])
	        break
	    case 34:
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [14, l__g[1], l__g[3], ds_map_find_value(global.g_gml_compile_curr_script[6], l__g[2])])
	        break
	    case 35:
	        ds_list_add(l_r, [15, l__g[1], l__g[2]])
	        break
	    case 36:
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [16, l__g[1], l__g[2]])
	        break
	    case 37:
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [17, l__g[1], l__g[3], l__g[2]])
	        break
	    case 38:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [18, l__g[1], l__g[3]])
	        break
	    case 39:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [19, l__g[1], l__g[3]])
	        break
	    case 40:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[5], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [20, l__g[1], l__g[4], l__g[3]])
	        break
	    case 50:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [73, l__g[1]])
	        break
	    case 51:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [74, l__g[1]])
	        break
	    case 52:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[5], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [75, l__g[1], l__g[4]])
	        break
	    case 53:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [21, l__g[1]])
	        break
	    case 63:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [21, l__g[1]])
	        break
	    case 54:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [22, l__g[1]])
	        break
	    case 64:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [22, l__g[1]])
	        break
	    case 65:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[5], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [23, l__g[1], l__g[4]])
	        break
	    case 55:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[5], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [23, l__g[1], l__g[4]])
	        break
	    case 58:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [24, l__g[1]])
	        break
	    case 68:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [24, l__g[1]])
	        break
	    case 69:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[5], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [25, l__g[1]])
	        break
	    case 59:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[5], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [25, l__g[1]])
	        break
	    case 70:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[6], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [26, l__g[1], l__g[5]])
	        break
	    case 60:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[6], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [26, l__g[1], l__g[5]])
	        break
	    case 41:
	        ds_list_add(l_r, [27, l__g[1], ds_map_find_value(global.g_gml_var_refs, l__g[2])])
	        break
	    case 42:
	        var l_s19 = l__g[2]
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [28, l__g[1], ds_map_find_value(global.g_gml_var_refs, l_s19), ds_map_find_value(global.g_gml_var_types, l_s19)])
	        break
	    case 43:
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [29, l__g[1], l__g[3], ds_map_find_value(global.g_gml_var_refs, l__g[2])])
	        break
	    case 47:
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [30, l__g[1], ds_map_find_value(global.g_gml_var_refs, l__g[2])])
	        break
	    case 48:
	        var l_s22 = l__g[2]
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[4], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [31, l__g[1], ds_map_find_value(global.g_gml_var_refs, l_s22), ds_map_find_value(global.g_gml_var_types, l_s22)])
	        break
	    case 49:
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        if gml_compile_node(l__g[5], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [32, l__g[1], l__g[4], ds_map_find_value(global.g_gml_var_refs, l__g[2])])
	        break
	    case 73:
	        l_s = "ds_list_find_value"
	        if ds_map_exists(global.g_gml_func_script, l_s)
	        {
	            if gml_compile_node(l__g[2], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[3], l_r, 1)
	                return 1;
	            ds_list_add(l_r, [52, l__g[1], ds_map_find_value(global.g_gml_func_script, l_s), 2, ds_map_find_value(global.g_gml_func_args, l_s), ds_map_find_value(global.g_gml_func_rest, l_s), 0, l_out])
	        }
	        else
	            return gml_compile_error("Accessor not supported", l__g[1]);
	        break
	    case 74:
	        l_s = "ds_list_set"
	        if ds_map_exists(global.g_gml_func_script, l_s)
	        {
	            if gml_compile_node(l__g[2], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[3], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[4], l_r, 1)
	                return 1;
	            ds_list_add(l_r, [52, l__g[1], ds_map_find_value(global.g_gml_func_script, l_s), 3, ds_map_find_value(global.g_gml_func_args, l_s), ds_map_find_value(global.g_gml_func_rest, l_s), 0, l_out])
	        }
	        else
	            return gml_compile_error("Accessor not supported", l__g[1]);
	        break
	    case 75:
	        if (ds_map_exists(global.g_gml_func_script, "ds_list_find_value") && ds_map_exists(global.g_gml_func_script, "ds_list_set"))
	        {
	            if gml_compile_node(l__g[2], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[3], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[5], l_r, 1)
	                return 1;
	            ds_list_add(l_r, [33, l__g[1], l__g[4], 3, ds_map_find_value(global.g_gml_func_script, "ds_list_find_value"), ds_map_find_value(global.g_gml_func_script, "ds_list_set"), l_out])
	        }
	        else
	            return gml_compile_error("Accessor not supported", l__g[1]);
	        break
	    case 78:
	        l_s = "ds_map_find_value"
	        if ds_map_exists(global.g_gml_func_script, l_s)
	        {
	            if gml_compile_node(l__g[2], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[3], l_r, 1)
	                return 1;
	            ds_list_add(l_r, [52, l__g[1], ds_map_find_value(global.g_gml_func_script, l_s), 2, ds_map_find_value(global.g_gml_func_args, l_s), ds_map_find_value(global.g_gml_func_rest, l_s), 0, l_out])
	        }
	        else
	            return gml_compile_error("Accessor not supported", l__g[1]);
	        break
	    case 79:
	        l_s = "ds_map_set"
	        if ds_map_exists(global.g_gml_func_script, l_s)
	        {
	            if gml_compile_node(l__g[2], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[3], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[4], l_r, 1)
	                return 1;
	            ds_list_add(l_r, [52, l__g[1], ds_map_find_value(global.g_gml_func_script, l_s), 3, ds_map_find_value(global.g_gml_func_args, l_s), ds_map_find_value(global.g_gml_func_rest, l_s), 0, l_out])
	        }
	        else
	            return gml_compile_error("Accessor not supported", l__g[1]);
	        break
	    case 80:
	        if (ds_map_exists(global.g_gml_func_script, "ds_map_find_value") && ds_map_exists(global.g_gml_func_script, "ds_map_set"))
	        {
	            if gml_compile_node(l__g[2], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[3], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[5], l_r, 1)
	                return 1;
	            ds_list_add(l_r, [33, l__g[1], l__g[4], 3, ds_map_find_value(global.g_gml_func_script, "ds_map_find_value"), ds_map_find_value(global.g_gml_func_script, "ds_map_set"), l_out])
	        }
	        else
	            return gml_compile_error("Accessor not supported", l__g[1]);
	        break
	    case 83:
	        l_s = "ds_grid_get"
	        if ds_map_exists(global.g_gml_func_script, l_s)
	        {
	            if gml_compile_node(l__g[2], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[3], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[4], l_r, 1)
	                return 1;
	            ds_list_add(l_r, [52, l__g[1], ds_map_find_value(global.g_gml_func_script, l_s), 3, ds_map_find_value(global.g_gml_func_args, l_s), ds_map_find_value(global.g_gml_func_rest, l_s), 0, l_out])
	        }
	        else
	            return gml_compile_error("Accessor not supported", l__g[1]);
	        break
	    case 84:
	        l_s = "ds_grid_set"
	        if ds_map_exists(global.g_gml_func_script, l_s)
	        {
	            if gml_compile_node(l__g[2], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[3], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[4], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[5], l_r, 1)
	                return 1;
	            ds_list_add(l_r, [52, l__g[1], ds_map_find_value(global.g_gml_func_script, l_s), 4, ds_map_find_value(global.g_gml_func_args, l_s), ds_map_find_value(global.g_gml_func_rest, l_s), 0, l_out])
	        }
	        else
	            return gml_compile_error("Accessor not supported", l__g[1]);
	        break
	    case 85:
	        if (ds_map_exists(global.g_gml_func_script, "ds_grid_get") && ds_map_exists(global.g_gml_func_script, "ds_grid_set"))
	        {
	            if gml_compile_node(l__g[2], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[3], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[4], l_r, 1)
	                return 1;
	            if gml_compile_node(l__g[6], l_r, 1)
	                return 1;
	            ds_list_add(l_r, [33, l__g[1], l__g[5], 4, ds_map_find_value(global.g_gml_func_script, "ds_grid_get"), ds_map_find_value(global.g_gml_func_script, "ds_grid_set"), l_out])
	        }
	        else
	            return gml_compile_error("Accessor not supported", l__g[1]);
	        break
	    case 14:
	        ds_list_add(l_r, [34, l__g[1], l__g[2]])
	        break
	    case 15:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [37, l__g[1]])
	        break
	    case 16:
	        ds_list_add(l_r, [40, l__g[1]])
	        break
	    case 28:
	        l_d = l__g[1]
	        var l_o = l__g[2]
	        l_x = l__g[3]
	        l_x2 = l__g[4]
	        var l__g7 = l_x
	        switch l__g7[0]
	        {
	            case 14:
	                l_i = l__g7[2]
	                if gml_compile_node(l_x2, l_r, 1)
	                    return 1;
	                if (l_o != -1)
	                    ds_list_add(l_r, [36, l_d, l_o, l_i])
	                else
	                    ds_list_add(l_r, [35, l_d, l_i])
	                break
	            case 15:
	                if gml_compile_node(l__g7[2], l_r, 1)
	                    return 1;
	                if gml_compile_node(l_x2, l_r, 1)
	                    return 1;
	                if (l_o != -1)
	                    ds_list_add(l_r, [39, l_d, l_o])
	                else
	                    ds_list_add(l_r, [38, l_d])
	                break
	            default:
	                return gml_compile_error(("Cannot set " + global.g_gml_node_names[l_x[0]]), l_d);
	        }
	
	        break
	    case 27:
	        l_d = l__g[1]
	        l_o = l__g[2]
	        l_x = l__g[3]
	        l_x2 = l__g[4]
	        switch l_o
	        {
	            case 16:
	                if gml_compile_node(l_x, l_r, 1)
	                    return 1;
	                if gml_compile_node(l_x2, l_r, 1)
	                    return 1;
	                ds_list_add(l_r, [44, l_d])
	                break
	            case 18:
	                if gml_compile_node(l_x, l_r, 1)
	                    return 1;
	                if gml_compile_node(l_x2, l_r, 1)
	                    return 1;
	                ds_list_add(l_r, [45, l_d])
	                break
	            case 64:
	                if gml_compile_node(l_x, l_r, 1)
	                    return 1;
	                if gml_compile_node(l_x2, l_r, 1)
	                    return 1;
	                ds_list_add(l_r, [42, l_d])
	                break
	            case 65:
	                if gml_compile_node(l_x, l_r, 1)
	                    return 1;
	                if gml_compile_node(l_x2, l_r, 1)
	                    return 1;
	                ds_list_add(l_r, [43, l_d])
	                break
	            case 80:
	                if gml_compile_node(l_x, l_r, 1)
	                    return 1;
	                var l_p0 = ds_list_size(l_r)
	                ds_list_add(l_r, [56, l_d, 0])
	                if gml_compile_node(l_x2, l_r, 1)
	                    return 1;
	                ds_list_set(l_r, l_p0, [56, l_d, ds_list_size(l_r)])
	                break
	            case 96:
	                if gml_compile_node(l_x, l_r, 1)
	                    return 1;
	                l_p0 = ds_list_size(l_r)
	                ds_list_add(l_r, [57, l_d, 0])
	                if gml_compile_node(l_x2, l_r, 1)
	                    return 1;
	                ds_list_set(l_r, l_p0, [57, l_d, ds_list_size(l_r)])
	                break
	            default:
	                if gml_compile_node(l_x, l_r, 1)
	                    return 1;
	                if gml_compile_node(l_x2, l_r, 1)
	                    return 1;
	                ds_list_add(l_r, [46, l_d, l_o])
	        }
	
	        break
	    case 26:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [47, l__g[1], l__g[3]])
	        break
	    case 24:
	        l_d = l__g[1]
	        l_x = l__g[2]
	        l_i = (l__g[3] ? 1 : -1)
	        var l__g2 = l_x
	        switch l__g2[0]
	        {
	            case 32:
	                var l_k = ds_map_find_value(global.g_gml_compile_curr_script[6], l__g2[2])
	                ds_list_add(l_r, [12, l_d, l_k])
	                ds_list_add(l_r, [41, l_d, l_i])
	                if l_out
	                    ds_list_add(l_r, [1, l_d])
	                ds_list_add(l_r, [13, l_d, l_k])
	                break
	            case 35:
	                l_s = l__g2[2]
	                ds_list_add(l_r, [15, l_d, l_s])
	                ds_list_add(l_r, [41, l_d, l_i])
	                if l_out
	                    ds_list_add(l_r, [1, l_d])
	                ds_list_add(l_r, [16, l_d, l_s])
	                break
	            case 38:
	                l_s = l__g2[3]
	                if gml_compile_node(l__g2[2], l_r, 1)
	                    return 1;
	                ds_list_add(l_r, [1, l_d])
	                ds_list_add(l_r, [18, l_d, l_s])
	                ds_list_add(l_r, [41, l_d, l_i])
	                if l_out
	                    ds_list_add(l_r, [3, l_d, 2])
	                ds_list_add(l_r, [19, l_d, l_s])
	                break
	            case 53:
	                if gml_compile_node(l__g2[2], l_r, 1)
	                    return 1;
	                if gml_compile_node(l__g2[3], l_r, 1)
	                    return 1;
	                ds_list_add(l_r, [2, l_d])
	                ds_list_add(l_r, [21, l_d])
	                ds_list_add(l_r, [41, l_d, l_i])
	                if l_out
	                    ds_list_add(l_r, [3, l_d, 3])
	                ds_list_add(l_r, [22, l_d])
	                break
	            case 63:
	                if gml_compile_node(l__g2[2], l_r, 1)
	                    return 1;
	                if gml_compile_node(l__g2[3], l_r, 1)
	                    return 1;
	                ds_list_add(l_r, [2, l_d])
	                ds_list_add(l_r, [21, l_d])
	                ds_list_add(l_r, [41, l_d, l_i])
	                if l_out
	                    ds_list_add(l_r, [3, l_d, 3])
	                ds_list_add(l_r, [22, l_d])
	                break
	            default:
	                return gml_compile_error(("Can't apply prefix to " + global.g_gml_node_names[l_x[0]]), l_d);
	        }
	
	        break
	    case 25:
	        l_d = l__g[1]
	        l_x = l__g[2]
	        l_i = (l__g[3] ? 1 : -1)
	        var l__g5 = l_x
	        switch l__g5[0]
	        {
	            case 32:
	                l_k = ds_map_find_value(global.g_gml_compile_curr_script[6], l__g5[2])
	                ds_list_add(l_r, [12, l_d, l_k])
	                if l_out
	                    ds_list_add(l_r, [1, l_d])
	                ds_list_add(l_r, [41, l_d, l_i])
	                ds_list_add(l_r, [13, l_d, l_k])
	                break
	            case 35:
	                l_s = l__g5[2]
	                ds_list_add(l_r, [15, l_d, l_s])
	                if l_out
	                    ds_list_add(l_r, [1, l_d])
	                ds_list_add(l_r, [41, l_d, l_i])
	                ds_list_add(l_r, [16, l_d, l_s])
	                break
	            case 38:
	                l_s = l__g5[3]
	                if gml_compile_node(l__g5[2], l_r, 1)
	                    return 1;
	                ds_list_add(l_r, [1, l_d])
	                ds_list_add(l_r, [18, l_d, l_s])
	                if l_out
	                    ds_list_add(l_r, [3, l_d, 2])
	                ds_list_add(l_r, [41, l_d, l_i])
	                ds_list_add(l_r, [19, l_d, l_s])
	                break
	            case 53:
	                if gml_compile_node(l__g5[2], l_r, 1)
	                    return 1;
	                if gml_compile_node(l__g5[3], l_r, 1)
	                    return 1;
	                ds_list_add(l_r, [2, l_d])
	                ds_list_add(l_r, [21, l_d])
	                if l_out
	                    ds_list_add(l_r, [3, l_d, 3])
	                ds_list_add(l_r, [41, l_d, l_i])
	                ds_list_add(l_r, [22, l_d])
	                break
	            case 63:
	                if gml_compile_node(l__g5[2], l_r, 1)
	                    return 1;
	                if gml_compile_node(l__g5[3], l_r, 1)
	                    return 1;
	                ds_list_add(l_r, [2, l_d])
	                ds_list_add(l_r, [21, l_d])
	                if l_out
	                    ds_list_add(l_r, [3, l_d, 3])
	                ds_list_add(l_r, [41, l_d, l_i])
	                ds_list_add(l_r, [22, l_d])
	                break
	            default:
	                return gml_compile_error(("Can't apply postfix to " + global.g_gml_node_names[l_x[0]]), l_d);
	        }
	
	        break
	    case 18:
	        l_d = l__g[1]
	        l_w = l__g[3]
	        l_n = array_length_1d(l_w)
	        for (l_i = 0; l_i < l_n; l_i++)
	        {
	            if gml_compile_node(l_w[l_i], l_r, 1)
	                return 1;
	        }
	        ds_list_add(l_r, [49, l_d, ds_map_find_value(global.g_gml_compile_curr_program[3], l__g[2]), l_n])
	        if l_out
	            ds_list_add(l_r, [67, l_d])
	        break
	    case 20:
	        l_d = l__g[1]
	        l_w = l__g[3]
	        l_n = array_length_1d(l_w)
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        for (l_i = 0; l_i < l_n; l_i++)
	        {
	            if gml_compile_node(l_w[l_i], l_r, 1)
	                return 1;
	        }
	        ds_list_add(l_r, [50, l_d, l_n])
	        if l_out
	            ds_list_add(l_r, [67, l_d])
	        break
	    case 19:
	        l_d = l__g[1]
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        l_w = l__g[4]
	        l_n = array_length_1d(l_w)
	        for (l_i = 0; l_i < l_n; l_i++)
	            gml_compile_node(l_w[l_i], l_r, 1)
	        ds_list_add(l_r, [51, l_d, ds_map_find_value(global.g_gml_compile_curr_program[3], l__g[3]), l_n])
	        if l_out
	            ds_list_add(l_r, [67, l_d])
	        break
	    case 22:
	        l_s = l__g[2]
	        l_w = l__g[3]
	        l_n = array_length_1d(l_w)
	        for (l_i = 0; l_i < l_n; l_i++)
	        {
	            if gml_compile_node(l_w[l_i], l_r, 1)
	                return 1;
	        }
	        ds_list_add(l_r, [52, l__g[1], ds_map_find_value(global.g_gml_func_script, l_s), l_n, ds_map_find_value(global.g_gml_func_args, l_s), ds_map_find_value(global.g_gml_func_rest, l_s), ds_map_find_value(global.g_gml_inst_data, l_s), l_out])
	        break
	    case 89:
	        l_w = l__g[2]
	        l_n = array_length_1d(l_w)
	        if (l_n > 0)
	        {
	            l_n--
	            for (l_i = 0; l_i < l_n; l_i++)
	            {
	                if gml_compile_node(l_w[l_i], l_r, 0)
	                    return 1;
	            }
	            if gml_compile_node(l_w[l_i], l_r, l_out)
	                return 1;
	        }
	        break
	    case 90:
	        l_d = l__g[1]
	        l_x = l__g[4]
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        l_i = ds_list_size(l_r)
	        ds_list_add(l_r, [55, l_d, 0])
	        if gml_compile_node(l__g[3], l_r, 0)
	            return 1;
	        if (l_x != undefined)
	        {
	            l_n = ds_list_size(l_r)
	            ds_list_add(l_r, [53, l_d, 0])
	            ds_list_set(l_r, l_i, [55, l_d, ds_list_size(l_r)])
	            if gml_compile_node(l_x, l_r, 0)
	                return 1;
	            ds_list_set(l_r, l_n, [53, l_d, ds_list_size(l_r)])
	        }
	        else
	            ds_list_set(l_r, l_i, [55, l_d, ds_list_size(l_r)])
	        break
	    case 91:
	        l_d = l__g[1]
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        l_i = ds_list_size(l_r)
	        ds_list_add(l_r, [55, l_d, 0])
	        if gml_compile_node(l__g[3], l_r, l_out)
	            return 1;
	        l_n = ds_list_size(l_r)
	        ds_list_add(l_r, [53, l_d, 0])
	        ds_list_set(l_r, l_i, [55, l_d, ds_list_size(l_r)])
	        if gml_compile_node(l__g[4], l_r, l_out)
	            return 1;
	        ds_list_set(l_r, l_n, [53, l_d, ds_list_size(l_r)])
	        break
	    case 98:
	        l_d = l__g[1]
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        l_n = ds_list_size(l_r)
	        ds_list_add(l_r, [60, l_d, 0])
	        l_p0 = ds_list_size(l_r)
	        var l_pc = global.g_gml_compile_curr_continue
	        var l_pb = global.g_gml_compile_curr_break
	        global.g_gml_compile_curr_continue = l_p0
	        global.g_gml_compile_curr_break = l_p0
	        if gml_compile_node(l__g[3], l_r, 0)
	            return 1;
	        global.g_gml_compile_curr_continue = l_pc
	        global.g_gml_compile_curr_break = l_pb
	        var l_p1 = ds_list_size(l_r)
	        ds_list_add(l_r, [59, l_d, l_p0])
	        var l_p2 = ds_list_size(l_r)
	        ds_list_add(l_r, [0, l_d])
	        for (l_k = l_p0; l_k < l_p2; l_k++)
	        {
	            var l__g20 = ds_list_find_value(l_r, l_k)
	            switch l__g20[0]
	            {
	                case 65:
	                    if (l__g20[2] == l_p0)
	                        ds_list_set(l_r, l_k, [53, l__g20[1], l_p1])
	                    break
	                case 64:
	                    if (l__g20[2] == l_p0)
	                        ds_list_set(l_r, l_k, [53, l__g20[1], l_p2])
	                    break
	            }
	
	        }
	        ds_list_set(l_r, l_n, [60, l_d, ds_list_size(l_r)])
	        break
	    case 95:
	        l_d = l__g[1]
	        l_p0 = ds_list_size(l_r)
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        l_p1 = ds_list_size(l_r)
	        ds_list_add(l_r, [55, l_d, 0])
	        l_pc = global.g_gml_compile_curr_continue
	        l_pb = global.g_gml_compile_curr_break
	        global.g_gml_compile_curr_continue = l_p0
	        global.g_gml_compile_curr_break = l_p0
	        if gml_compile_node(l__g[3], l_r, 0)
	            return 1;
	        global.g_gml_compile_curr_continue = l_pc
	        global.g_gml_compile_curr_break = l_pb
	        ds_list_add(l_r, [53, l_d, l_p0])
	        l_p2 = ds_list_size(l_r)
	        ds_list_set(l_r, l_p1, [55, l_d, l_p2])
	        for (l_k = l_p1; l_k < l_p2; l_k++)
	        {
	            var l__g16 = ds_list_find_value(l_r, l_k)
	            switch l__g16[0]
	            {
	                case 65:
	                    if (l__g16[2] == l_p0)
	                        ds_list_set(l_r, l_k, [53, l__g16[1], l_p0])
	                    break
	                case 64:
	                    if (l__g16[2] == l_p0)
	                        ds_list_set(l_r, l_k, [53, l__g16[1], l_p2])
	                    break
	            }
	
	        }
	        break
	    case 97:
	        l_d = l__g[1]
	        l_p0 = ds_list_size(l_r)
	        l_pc = global.g_gml_compile_curr_continue
	        l_pb = global.g_gml_compile_curr_break
	        global.g_gml_compile_curr_continue = l_p0
	        global.g_gml_compile_curr_break = l_p0
	        if gml_compile_node(l__g[2], l_r, 0)
	            return 1;
	        global.g_gml_compile_curr_continue = l_pc
	        global.g_gml_compile_curr_break = l_pb
	        l_p1 = ds_list_size(l_r)
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        var l__g19 = l_q
	        if (l__g19[0] == 96)
	            var l_tmp1 = 1
	        else
	            l_tmp1 = 0
	        if l_tmp1
	            ds_list_add(l_r, [55, l_d, l_p0])
	        else
	            ds_list_add(l_r, [54, l_d, l_p0])
	        l_p2 = ds_list_size(l_r)
	        for (l_k = l_p0; l_k < l_p1; l_k++)
	        {
	            var l__g43 = ds_list_find_value(l_r, l_k)
	            switch l__g43[0]
	            {
	                case 65:
	                    if (l__g43[2] == l_p0)
	                        ds_list_set(l_r, l_k, [53, l__g43[1], l_p1])
	                    break
	                case 64:
	                    if (l__g43[2] == l_p0)
	                        ds_list_set(l_r, l_k, [53, l__g43[1], l_p2])
	                    break
	            }
	
	        }
	        break
	    case 96:
	        l_d = l__g[1]
	        l_p0 = ds_list_size(l_r)
	        l_pc = global.g_gml_compile_curr_continue
	        l_pb = global.g_gml_compile_curr_break
	        global.g_gml_compile_curr_continue = l_p0
	        global.g_gml_compile_curr_break = l_p0
	        if gml_compile_node(l__g[2], l_r, 0)
	            return 1;
	        global.g_gml_compile_curr_continue = l_pc
	        global.g_gml_compile_curr_break = l_pb
	        l_p1 = ds_list_size(l_r)
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        var l__g17 = l_q
	        if (l__g17[0] == 96)
	            var l_tmp = 1
	        else
	            l_tmp = 0
	        if l_tmp
	            ds_list_add(l_r, [55, l_d, l_p0])
	        else
	            ds_list_add(l_r, [54, l_d, l_p0])
	        l_p2 = ds_list_size(l_r)
	        for (l_k = l_p0; l_k < l_p1; l_k++)
	        {
	            var l__g42 = ds_list_find_value(l_r, l_k)
	            switch l__g42[0]
	            {
	                case 65:
	                    if (l__g42[2] == l_p0)
	                        ds_list_set(l_r, l_k, [53, l__g42[1], l_p1])
	                    break
	                case 64:
	                    if (l__g42[2] == l_p0)
	                        ds_list_set(l_r, l_k, [53, l__g42[1], l_p2])
	                    break
	            }
	
	        }
	        break
	    case 99:
	        l_d = l__g[1]
	        if gml_compile_node(l__g[2], l_r, 0)
	            return 1;
	        l_p0 = ds_list_size(l_r)
	        if gml_compile_node(l__g[3], l_r, 1)
	            return 1;
	        l_p1 = ds_list_size(l_r)
	        ds_list_add(l_r, [55, l_d, 0])
	        l_pc = global.g_gml_compile_curr_continue
	        l_pb = global.g_gml_compile_curr_break
	        global.g_gml_compile_curr_continue = l_p0
	        global.g_gml_compile_curr_break = l_p0
	        if gml_compile_node(l__g[5], l_r, 0)
	            return 1;
	        global.g_gml_compile_curr_continue = l_pc
	        global.g_gml_compile_curr_break = l_pb
	        l_p2 = ds_list_size(l_r)
	        if gml_compile_node(l__g[4], l_r, 0)
	            return 1;
	        ds_list_add(l_r, [53, l_d, l_p0])
	        var l_p3 = ds_list_size(l_r)
	        ds_list_set(l_r, l_p1, [55, l_d, l_p3])
	        for (l_k = l_p1; l_k < l_p2; l_k++)
	        {
	            var l__g23 = ds_list_find_value(l_r, l_k)
	            switch l__g23[0]
	            {
	                case 65:
	                    if (l__g23[2] == l_p0)
	                        ds_list_set(l_r, l_k, [53, l__g23[1], l_p2])
	                    break
	                case 64:
	                    if (l__g23[2] == l_p0)
	                        ds_list_set(l_r, l_k, [53, l__g23[1], l_p3])
	                    break
	            }
	
	        }
	        break
	    case 92:
	        var l__cc = l__g[3]
	        l_d = l__g[1]
	        var l_jt = ds_map_create()
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        l_p0 = ds_list_size(l_r)
	        ds_list_add(l_r, [58, l_d, l_jt, 0])
	        l_pb = global.g_gml_compile_curr_break
	        global.g_gml_compile_curr_break = l_p0
	        l_n = array_length_1d(l__cc)
	        for (l_i = 0; l_i < l_n; l_i++)
	        {
	            var l__cv = gml_std_haxe_boot_wget(l__cc[l_i], 0)
	            var l_l = array_length_1d(l__cv)
	            for (l_k = 0; l_k < l_l; l_k++)
	            {
	                var l__g9 = l__cv[l_k]
	                switch l__g9[0]
	                {
	                    case 0:
	                        ds_map_set(l_jt, undefined, ds_list_size(l_r))
	                        break
	                    case 1:
	                        ds_map_set(l_jt, l__g9[2], ds_list_size(l_r))
	                        break
	                    case 2:
	                        ds_map_set(l_jt, l__g9[2], ds_list_size(l_r))
	                        break
	                    case 3:
	                        var l_c = l__g9[3]
	                        ds_map_set(l_jt, l_c[4], ds_list_size(l_r))
	                        break
	                    default:
	                        return gml_compile_error("Expression must be constant value", gml_std_haxe_boot_wget(l__cv[l_k], 1));
	                }
	
	            }
	            if gml_compile_node(gml_std_haxe_boot_wget(l__cc[l_i], 1), l_r, 0)
	                return 1;
	        }
	        l_p1 = ds_list_size(l_r)
	        l_x = l__g[4]
	        if (l_x != undefined && gml_compile_node(l_x, l_r, 0))
	            return 1;
	        global.g_gml_compile_curr_break = l_pb
	        ds_list_set(l_r, l_p0, [58, l_d, l_jt, l_p1])
	        l_p2 = ds_list_size(l_r)
	        for (l_k = l_p0; l_k < l_p2; l_k++)
	        {
	            var l__g10 = ds_list_find_value(l_r, l_k)
	            if (l__g10[0] == 64)
	            {
	                var l_lp = l__g10[2]
	                var l_d53 = l__g10[1]
	                if (l_lp == l_p0)
	                    ds_list_set(l_r, l_k, [53, l_d53, l_p2])
	            }
	        }
	        break
	    case 100:
	        l_d = l__g[1]
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [61, l_d])
	        l_p0 = ds_list_size(l_r)
	        ds_list_add(l_r, [62, l_d, 0])
	        l_pc = global.g_gml_compile_curr_continue
	        l_pb = global.g_gml_compile_curr_break
	        global.g_gml_compile_curr_continue = l_p0
	        global.g_gml_compile_curr_break = l_p0
	        if gml_compile_node(l__g[3], l_r, 0)
	            return 1;
	        global.g_gml_compile_curr_continue = l_pc
	        global.g_gml_compile_curr_break = l_pb
	        ds_list_add(l_r, [53, l_d, l_p0])
	        l_p1 = ds_list_size(l_r)
	        ds_list_add(l_r, [63, l_d])
	        ds_list_set(l_r, l_p0, [62, l_d, l_p1])
	        for (l_k = l_p0; l_k < l_p1; l_k++)
	        {
	            var l__g24 = ds_list_find_value(l_r, l_k)
	            switch l__g24[0]
	            {
	                case 65:
	                    if (l__g24[2] == l_p0)
	                        ds_list_set(l_r, l_k, [53, l__g24[1], l_p0])
	                    break
	                case 64:
	                    if (l__g24[2] == l_p0)
	                        ds_list_set(l_r, l_k, [53, l__g24[1], l_p1])
	                    break
	            }
	
	        }
	        break
	    case 104:
	        l_d = l__g[1]
	        l_i = global.g_gml_compile_curr_break
	        if (l_i >= 0)
	            ds_list_add(l_r, [64, l_d, l_i])
	        else
	            return gml_compile_error("Cannot `break` here", l_d);
	        break
	    case 105:
	        l_d = l__g[1]
	        l_i = global.g_gml_compile_curr_continue
	        if (l_i >= 0)
	            ds_list_add(l_r, [65, l_d, l_i])
	        else
	            return gml_compile_error("Cannot `continue` here", l_d);
	        break
	    case 102:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [66, l__g[1]])
	        break
	    case 103:
	        l_d = l__g[1]
	        ds_list_add(l_r, [5, l_d, 0])
	        ds_list_add(l_r, [66, l_d])
	        break
	    case 93:
	        if gml_compile_node(l__g[2], l_r, 1)
	            return 1;
	        ds_list_add(l_r, [68, l__g[1]])
	        break
	    case 94:
	        ds_list_add(l_r, [69, l__g[1], l_out])
	        break
	    default:
	        return gml_compile_error(("Cannot compile " + global.g_gml_node_names[l_q[0]]), l_q[1]);
	}
	
	return 0;
}
