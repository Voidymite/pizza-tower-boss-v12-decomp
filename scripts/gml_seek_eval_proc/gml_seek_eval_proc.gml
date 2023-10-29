function gml_seek_eval_proc()
{
	var l_q = argument[0]
	var l_st = argument[1]
	var l_z = 1
	var l__g = l_q
	switch l__g[0]
	{
	    case 0:
	        break
	    case 1:
	        break
	    case 2:
	        break
	    case 13:
	        break
	    case 27:
	        var l__g9 = l__g[2]
	        if (l__g9 == 16)
	        {
	            var l_b = l__g[4]
	            var l_a = l__g[3]
	            var l_d = l__g[1]
	            if gml_seek_eval_proc(l_a, l_st)
	                l_z = 0
	            if gml_seek_eval_proc(l_b, l_st)
	                l_z = 0
	            if l_z
	            {
	                var l_v1 = gml_seek_eval_node_to_value(l_a)
	                var l_v2 = gml_seek_eval_node_to_value(l_b)
	                if is_string(l_v1)
	                {
	                    if is_string(l_v2)
	                        gml_std_haxe_enum_tools_set(l_q, [2, l_d, (l_v1 + l_v2)])
	                    else
	                    {
	                        var l__g14 = l_b
	                        if (l__g14[0] == 27)
	                        {
	                            if (l__g14[2] == 16)
	                            {
	                                var l__hx_tmp = l__g14[3]
	                                if (l__hx_tmp[0] == 2)
	                                    gml_std_haxe_enum_tools_set(l_q, [27, l_d, 16, [2, l_d, (gml_std_Std_string(l_v1) + l__hx_tmp[2])], l__g14[4]])
	                                else
	                                {
	                                    global.g_gml_seek_eval_error_text = (((("Can't add " + global.g_gml_node_names[l_a[0]]) + " and ") + global.g_gml_node_names[l_b[0]]) + " at compile time")
	                                    global.g_gml_seek_eval_error_pos = l_q[1]
	                                    l_z = 0
	                                }
	                            }
	                            else
	                            {
	                                global.g_gml_seek_eval_error_text = (((("Can't add " + global.g_gml_node_names[l_a[0]]) + " and ") + global.g_gml_node_names[l_b[0]]) + " at compile time")
	                                global.g_gml_seek_eval_error_pos = l_q[1]
	                                l_z = 0
	                            }
	                        }
	                        else
	                        {
	                            global.g_gml_seek_eval_error_text = (((("Can't add " + global.g_gml_node_names[l_a[0]]) + " and ") + global.g_gml_node_names[l_b[0]]) + " at compile time")
	                            global.g_gml_seek_eval_error_pos = l_q[1]
	                            l_z = 0
	                        }
	                    }
	                }
	                else if gml_value_is_number(l_v1)
	                {
	                    if gml_value_is_number(l_v2)
	                        gml_std_haxe_enum_tools_set(l_q, [1, l_d, (l_v1 + l_v2), undefined])
	                    else
	                    {
	                        global.g_gml_seek_eval_error_text = (((("Can't add " + global.g_gml_node_names[l_a[0]]) + " and ") + global.g_gml_node_names[l_b[0]]) + " at compile time")
	                        global.g_gml_seek_eval_error_pos = l_q[1]
	                        l_z = 0
	                    }
	                }
	                else if is_string(l_v2)
	                {
	                    var l__g16 = l_a
	                    if (l__g16[0] == 27)
	                    {
	                        if (l__g16[2] == 16)
	                        {
	                            var l__hx_tmp1 = l__g16[4]
	                            if (l__hx_tmp1[0] == 2)
	                                gml_std_haxe_enum_tools_set(l_q, [27, l_d, 16, l__g16[3], [2, l_d, (l__hx_tmp1[2] + gml_std_Std_string(l_v2))]])
	                            else
	                            {
	                                global.g_gml_seek_eval_error_text = (((("Can't add " + global.g_gml_node_names[l_a[0]]) + " and ") + global.g_gml_node_names[l_b[0]]) + " at compile time")
	                                global.g_gml_seek_eval_error_pos = l_q[1]
	                                l_z = 0
	                            }
	                        }
	                        else
	                        {
	                            global.g_gml_seek_eval_error_text = (((("Can't add " + global.g_gml_node_names[l_a[0]]) + " and ") + global.g_gml_node_names[l_b[0]]) + " at compile time")
	                            global.g_gml_seek_eval_error_pos = l_q[1]
	                            l_z = 0
	                        }
	                    }
	                    else
	                    {
	                        global.g_gml_seek_eval_error_text = (((("Can't add " + global.g_gml_node_names[l_a[0]]) + " and ") + global.g_gml_node_names[l_b[0]]) + " at compile time")
	                        global.g_gml_seek_eval_error_pos = l_q[1]
	                        l_z = 0
	                    }
	                }
	                else
	                {
	                    global.g_gml_seek_eval_error_text = (((("Can't add " + global.g_gml_node_names[l_a[0]]) + " and ") + global.g_gml_node_names[l_b[0]]) + " at compile time")
	                    global.g_gml_seek_eval_error_pos = l_q[1]
	                    l_z = 0
	                }
	            }
	        }
	        else
	        {
	            var l_b1 = l__g[4]
	            var l_a1 = l__g[3]
	            var l_d1 = l__g[1]
	            var l_o = l__g9
	            if gml_seek_eval_proc(l_a1, l_st)
	                l_z = 0
	            if gml_seek_eval_proc(l_b1, l_st)
	                l_z = 0
	            if l_z
	            {
	                l_v1 = gml_seek_eval_node_to_value(l_a1)
	                l_v2 = gml_seek_eval_node_to_value(l_b1)
	                if (gml_value_is_number(l_v1) && gml_value_is_number(l_v2))
	                {
	                    var l_f1 = l_v1
	                    var l_f2 = l_v2
	                    switch l_o
	                    {
	                        case 16:
	                            l_f1 += l_f2
	                            break
	                        case 17:
	                            l_f1 -= l_f2
	                            break
	                        case 0:
	                            l_f1 *= l_f2
	                            break
	                        case 1:
	                            l_f1 /= l_f2
	                            break
	                        case 2:
	                            l_f1 %= l_f2
	                            break
	                        case 3:
	                            l_f1 = (l_f1 div l_f2)
	                            break
	                        case 49:
	                            l_f1 = (l_f1 & l_f2)
	                            break
	                        case 48:
	                            l_f1 = (l_f1 | l_f2)
	                            break
	                        case 50:
	                            l_f1 = (l_f1 ^ l_f2)
	                            break
	                        case 32:
	                            l_f1 = (l_f1 << l_f2)
	                            break
	                        case 33:
	                            l_f1 = (l_f1 >> l_f2)
	                            break
	                        case 64:
	                            l_f1 = l_f1 == l_f2
	                            break
	                        case 65:
	                            l_f1 = l_f1 != l_f2
	                            break
	                        case 67:
	                            l_f1 = l_f1 <= l_f2
	                            break
	                        case 69:
	                            l_f1 = l_f1 >= l_f2
	                            break
	                        case 66:
	                            l_f1 = l_f1 < l_f2
	                            break
	                        case 68:
	                            l_f1 = l_f1 > l_f2
	                            break
	                        case 80:
	                            l_f1 = (l_f1 && l_f2)
	                            break
	                        case 96:
	                            l_f1 = (l_f1 || l_f2)
	                            break
	                        default:
	                            global.g_gml_seek_eval_error_text = ("Can't apply " + gml_op_get_name(l_o))
	                            global.g_gml_seek_eval_error_pos = l_q[1]
	                            l_z = 0
	                    }
	
	                    if l_z
	                        gml_std_haxe_enum_tools_set(l_q, [1, l_d1, l_f1, undefined])
	                }
	                else
	                {
	                    global.g_gml_seek_eval_error_text = ((((("Can't apply " + gml_op_get_name(l_o)) + " to ") + global.g_gml_node_names[l_a1[0]]) + " and ") + global.g_gml_node_names[l_b1[0]])
	                    global.g_gml_seek_eval_error_pos = l_q[1]
	                    l_z = 0
	                }
	            }
	        }
	        break
	    case 22:
	        var l_args1 = l__g[3]
	        var l_name = l__g[2]
	        var l_n = array_length_1d(l_args1)
	        for (var l_i = 0; l_i < l_n; l_i++)
	        {
	            if gml_seek_eval_proc(l_args1[l_i], l_st)
	                l_z = 0
	        }
	        if (l_z && ds_map_find_value(global.g_gml_func_eval, l_name))
	        {
	            var l_evalArgs = array_create(l_n)
	            l_i = 0
	            while (l_i < l_n)
	            {
	                var l_val = gml_seek_eval_node_to_value(l_args1[l_i])
	                if (l_val != global.g_gml_seek_eval_invalid_value)
	                {
	                    array_set(l_evalArgs, l_i, l_val)
	                    l_i++
	                    continue
	                }
	                else
	                    break
	            }
	            if (l_i >= l_n)
	            {
	                var l_th = global.g_gml_seek_eval_eval_thread
	                if (l_th == undefined)
	                {
	                    l_th = gml_thread_create(global.g_gml_program_seek_inst, global.g_gml_seek_eval_eval_actions, array_create(0), array_create(0), undefined, undefined, 0)
	                    global.g_gml_seek_eval_eval_thread = l_th
	                }
	                var l_th0 = global.g_gml_thread_current
	                global.g_gml_thread_current = l_th
	                array_set(l_th, 2, 1)
	                l_val = vm_gml_thread_exec_call(ds_map_find_value(global.g_gml_func_script, l_name), l_evalArgs, l_n)
	                global.g_gml_thread_current = l_th0
	                if (l_th[2] != 4)
	                {
	                    var l_next = gml_seek_eval_value_to_node(l_val, l_q[1])
	                    if (l_next != undefined)
	                        gml_std_haxe_enum_tools_set(l_q, l_next)
	                    else
	                    {
	                        global.g_gml_seek_eval_error_text = (((("Could not translate " + gml_value_print(l_val)) + " (") + gml_value_get_type(l_val)) + ") compile-time")
	                        global.g_gml_seek_eval_error_pos = l_q[1]
	                    }
	                }
	                else
	                {
	                    global.g_gml_seek_eval_error_text = ("Could not evaluate compile-time: " + l_th[7])
	                    global.g_gml_seek_eval_error_pos = l_q[1]
	                }
	            }
	        }
	        break
	    default:
	        if global.g_gml_seek_eval_eval_rec
	        {
	            if gml_node_seek(l_q, l_st, global.f_gml_seek_eval_proc)
	                l_z = 0
	            break
	        }
	        else
	        {
	            global.g_gml_seek_eval_error_text = (global.g_gml_node_names[l_q[0]] + " doesn't seem to be a constant expression.")
	            global.g_gml_seek_eval_error_pos = l_q[1]
	            l_z = 0
	        }
	}
	
	return (!l_z);
}
