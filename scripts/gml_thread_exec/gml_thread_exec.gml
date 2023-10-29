function gml_thread_exec()
{
	var this = argument[0]
	var l__gthis = this
	var l_previous = global.g_gml_thread_current
	global.g_gml_thread_current = this
	var l_yycNext = "http://bugs.yoyogames.com/view.php?id=24250"
	var l_scope = this[4]
	var l_args1 = l_scope[3]
	var l_locals = l_scope[4]
	var l_inst = l_scope[6]
	var l_with1 = l_scope[7]
	var l_pos = l_scope[2]
	var l_actions = l_scope[1]
	var l_len = ds_list_size(l_actions)
	var l_stack = l_scope[5]
	array_set(this, 2, 1)
	while 1
	{
	    var l_proc = 1
	    while (l_proc && l_pos < l_len)
	    {
	        var l_act = ds_list_find_value(l_actions, l_pos)
	        l_pos++
	        switch l_act[0]
	        {
	            case 0:
	                tools__gml_stack_gml_stack_impl__discard(l_stack)
	                break
	            case 1:
	                tools__gml_stack_gml_stack_impl__dup(l_stack)
	                break
	            case 2:
	                tools__gml_stack_gml_stack_impl__dup2(l_stack)
	                break
	            case 3:
	                tools__gml_stack_gml_stack_impl__dup_in(l_stack, l_act[2])
	                break
	            case 4:
	                tools__gml_stack_gml_stack_impl__push(l_stack, undefined)
	                break
	            case 5:
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_act[2])
	                break
	            case 6:
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_act[2])
	                break
	            case 9:
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_act[2])
	                break
	            case 10:
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_inst[l_inst[0]])
	                break
	            case 11:
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_inst[(l_inst[0] - 1)])
	                break
	            case 67:
	                tools__gml_stack_gml_stack_impl__push(l_stack, this[1])
	                break
	            case 7:
	                var l_n = l_act[2]
	                var l_w1 = array_create(l_n)
	                var l_i = l_n
	                while (--l_i >= 0)
	                    array_set(l_w1, l_i, tools__gml_stack_gml_stack_impl__pop(l_stack))
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_w1)
	                break
	            case 8:
	                var l_sig = l_act[3]
	                var l_keys = l_act[2]
	                l_w1 = gml_light_create_ext(l_keys, l_sig)
	                l_i = array_length_1d(l_keys)
	                while (--l_i >= 0)
	                    l_w1[0, l_i] = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_w1)
	                break
	            case 40:
	                tools__gml_stack_gml_stack_impl__push(l_stack, array_length_1d(l_args1))
	                break
	            case 44:
	                var l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                var l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if gml_value_is_number(l_v1)
	                {
	                    if gml_value_is_number(l_v2)
	                        l_v1 = (l_v1 + l_v2)
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, ("Can't add number and " + gml_value_get_type(l_v2)), l_act)
	                }
	                else if is_string(l_v1)
	                {
	                    if is_string(l_v2)
	                        l_v1 = (l_v1 + l_v2)
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, ("Can't add string and " + gml_value_get_type(l_v2)), l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_v1)
	                break
	            case 45:
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if (!is_string(l_v2))
	                    l_v2 = gml_value_print(l_v2)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if (!is_string(l_v1))
	                    l_v1 = gml_value_print(l_v1)
	                tools__gml_stack_gml_stack_impl__push(l_stack, (l_v1 + l_v2))
	                break
	            case 46:
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                var l_op = l_act[2]
	                if gml_value_is_number(l_v1)
	                {
	                    if gml_value_is_number(l_v2)
	                        l_v1 = gml_op_apply(l_op, l_v1, l_v2)
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, ((("Can't apply " + gml_op_to_string(l_op)) + " to number and ") + gml_value_get_type(l_v2)), l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, ((((("Can't apply " + gml_op_to_string(l_op)) + " to ") + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_v1)
	                break
	            case 47:
	                var l__o7 = l_act[2]
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if gml_value_is_number(l_v1)
	                {
	                    var l_f1 = l_v1
	                    switch l__o7
	                    {
	                        case 2:
	                            l_f1 = (~((l_f1 | 0)))
	                            break
	                        case 1:
	                            l_f1 = (l_f1 > 0.5 ? 0 : 1)
	                            break
	                        case 0:
	                            l_f1 = (-l_f1)
	                            break
	                    }
	
	                    tools__gml_stack_gml_stack_impl__push(l_stack, l_f1)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, "Value must be a number.", l_act)
	                break
	            case 42:
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_i = l_v1 == l_v2
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_i)
	                break
	            case 43:
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_i = l_v1 != l_v2
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_i)
	                break
	            case 41:
	                var l_v9 = l_act[2]
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if gml_value_is_number(l_v1)
	                    tools__gml_stack_gml_stack_impl__push(l_stack, (l_v1 + l_v9))
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + string(l_v9)), l_act)
	                break
	            case 12:
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_locals[l_act[2]])
	                break
	            case 13:
	                array_set(l_locals, l_act[2], tools__gml_stack_gml_stack_impl__pop(l_stack))
	                break
	            case 14:
	                l_i = l_act[3]
	                l_v1 = l_locals[l_i]
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_op = l_act[2]
	                if (l_op == 16)
	                {
	                    if gml_value_is_number(l_v1)
	                    {
	                        if gml_value_is_number(l_v2)
	                            l_v1 = (l_v1 + l_v2)
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ("Can't add number and " + gml_value_get_type(l_v2)), l_act)
	                    }
	                    else if is_string(l_v1)
	                    {
	                        if is_string(l_v2)
	                            l_v1 = (l_v1 + l_v2)
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ("Can't add string and " + gml_value_get_type(l_v2)), l_act)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                }
	                else if gml_value_is_number(l_v1)
	                {
	                    if gml_value_is_number(l_v2)
	                        l_v1 = gml_op_apply(l_op, l_v1, l_v2)
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, ((("Can't apply " + gml_op_to_string(l_op)) + " to number and ") + gml_value_get_type(l_v2)), l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, ((((("Can't apply " + gml_op_to_string(l_op)) + " to ") + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                array_set(l_locals, l_i, l_v1)
	                break
	            case 15:
	                var l_s = l_act[2]
	                if variable_global_exists(l_s)
	                    tools__gml_stack_gml_stack_impl__push(l_stack, variable_global_get(l_s))
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, (("Global variable `" + l_s) + "` is not set."), l_act)
	                break
	            case 16:
	                l_s = l_act[2]
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                variable_global_set(l_s, l_v1)
	                break
	            case 17:
	                l_op = l_act[2]
	                l_s = l_act[3]
	                if variable_global_exists(l_s)
	                {
	                    l_v1 = variable_global_get(l_s)
	                    l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                    if (l_op == 16)
	                    {
	                        if gml_value_is_number(l_v1)
	                        {
	                            if gml_value_is_number(l_v2)
	                                l_v1 = (l_v1 + l_v2)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ("Can't add number and " + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else if is_string(l_v1)
	                        {
	                            if is_string(l_v2)
	                                l_v1 = (l_v1 + l_v2)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ("Can't add string and " + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                    }
	                    else if gml_value_is_number(l_v1)
	                    {
	                        if gml_value_is_number(l_v2)
	                            l_v1 = gml_op_apply(l_op, l_v1, l_v2)
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ((("Can't apply " + gml_op_to_string(l_op)) + " to number and ") + gml_value_get_type(l_v2)), l_act)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, ((((("Can't apply " + gml_op_to_string(l_op)) + " to ") + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                    variable_global_set(l_s, l_v1)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, (("Global variable `" + l_s) + "` is not set."), l_act)
	                break
	            case 18:
	                tools__gml_stack_gml_stack_impl__push(l_stack, gml_field_func(tools__gml_stack_gml_stack_impl__pop(l_stack), l_act[2], 0, undefined))
	                if (this[2] == 4)
	                    l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                break
	            case 19:
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                gml_field_func(tools__gml_stack_gml_stack_impl__pop(l_stack), l_act[2], 1, l_v1)
	                if (this[2] == 4)
	                    l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                break
	            case 20:
	                l_op = l_act[2]
	                l_s = l_act[3]
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                var l_v3 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = gml_field_func(l_v3, l_s, 0, undefined)
	                if (this[2] != 4)
	                {
	                    if (l_op == 16)
	                    {
	                        if gml_value_is_number(l_v1)
	                        {
	                            if gml_value_is_number(l_v2)
	                                l_v1 = (l_v1 + l_v2)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ("Can't add number and " + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else if is_string(l_v1)
	                        {
	                            if is_string(l_v2)
	                                l_v1 = (l_v1 + l_v2)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ("Can't add string and " + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                    }
	                    else if gml_value_is_number(l_v1)
	                    {
	                        if gml_value_is_number(l_v2)
	                            l_v1 = gml_op_apply(l_op, l_v1, l_v2)
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ((("Can't apply " + gml_op_to_string(l_op)) + " to number and ") + gml_value_get_type(l_v2)), l_act)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, ((((("Can't apply " + gml_op_to_string(l_op)) + " to ") + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                    gml_field_func(l_v3, l_s, 1, l_v1)
	                    if (this[2] == 4)
	                        l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                break
	            case 48:
	                var l__not = l_act[2]
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if is_string(l_v1)
	                {
	                    var l_z = variable_instance_exists(l_v2, l_v1)
	                    l_i = l_z != l__not
	                    tools__gml_stack_gml_stack_impl__push(l_stack, l_i)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, (("Field name `" + gml_value_print(l_v1)) + "` should be a string"), l_act)
	                break
	            case 73:
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if gml_value_is_number(l_v2)
	                {
	                    l_i = round(l_v2)
	                    if (l_i >= 0 && l_i < 12)
	                    {
	                        l_z = 1
	                        with (l_v1)
	                        {
	                            tools__gml_stack_gml_stack_impl__push(l_stack, alarm[l_i])
	                            l_z = 0
	                        }
	                        if l_z
	                        {
	                            if object_exists((l_v1 | 0))
	                                gml_thread_error((((("Couldn't find any instances of " + gml_std_Std_string(l_v1)) + " (") + object_get_name((l_v1 | 0))) + ")"))
	                            else
	                                gml_thread_error((("Couldn't find instance `" + gml_std_Std_string(l_v1)) + "`"))
	                        }
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, (("Alarm index (" + gml_value_print(l_v2)) + ") shold be between 0 and 11"), l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, (("Alarm index (" + gml_value_print(l_v2)) + ") shold be a number"), l_act)
	                break
	            case 74:
	                l_v3 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if gml_value_is_number(l_v2)
	                {
	                    l_i = round(l_v2)
	                    if (l_i >= 0 && l_i < 12)
	                    {
	                        l_z = 1
	                        with (l_v1)
	                        {
	                            if gml_value_is_number(l_v3)
	                                alarm[l_i] = round(l_v3)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, (("Alarm value (" + gml_value_print(l_v3)) + ") should be a number"), l_act)
	                            l_z = 0
	                        }
	                        if l_z
	                        {
	                            if object_exists((l_v1 | 0))
	                                gml_thread_error((((("Couldn't find any instances of " + gml_std_Std_string(l_v1)) + " (") + object_get_name((l_v1 | 0))) + ")"))
	                            else
	                                gml_thread_error((("Couldn't find instance `" + gml_std_Std_string(l_v1)) + "`"))
	                        }
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, (("Alarm index (" + gml_value_print(l_v2)) + ") shold be between 0 and 11"), l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, (("Alarm index (" + gml_value_print(l_v2)) + ") shold be a number"), l_act)
	                break
	            case 75:
	                l_op = l_act[2]
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                var l_v4 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if gml_value_is_number(l_v4)
	                {
	                    l_i = round(l_v4)
	                    if (l_i >= 0 && l_i < 12)
	                    {
	                        l_z = 1
	                        with (l_v1)
	                        {
	                            if gml_value_is_number(l_v2)
	                            {
	                                l_v1 = alarm[l_i]
	                                if (l_op == 16)
	                                {
	                                    if gml_value_is_number(l_v1)
	                                    {
	                                        if gml_value_is_number(l_v2)
	                                            l_v1 = (l_v1 + l_v2)
	                                        else
	                                            l_proc = gml_thread_proc_error(l__gthis, ("Can't add number and " + gml_value_get_type(l_v2)), l_act)
	                                    }
	                                    else if is_string(l_v1)
	                                    {
	                                        if is_string(l_v2)
	                                            l_v1 = (l_v1 + l_v2)
	                                        else
	                                            l_proc = gml_thread_proc_error(l__gthis, ("Can't add string and " + gml_value_get_type(l_v2)), l_act)
	                                    }
	                                    else
	                                        l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                                }
	                                else if gml_value_is_number(l_v1)
	                                {
	                                    if gml_value_is_number(l_v2)
	                                        l_v1 = gml_op_apply(l_op, l_v1, l_v2)
	                                    else
	                                        l_proc = gml_thread_proc_error(l__gthis, ((("Can't apply " + gml_op_to_string(l_op)) + " to number and ") + gml_value_get_type(l_v2)), l_act)
	                                }
	                                else
	                                    l_proc = gml_thread_proc_error(l__gthis, ((((("Can't apply " + gml_op_to_string(l_op)) + " to ") + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                                alarm[l_i] = round(l_v1)
	                            }
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, (("Alarm value (" + gml_value_print(l_v2)) + ") should be a number"), l_act)
	                            l_z = 0
	                        }
	                        if l_z
	                        {
	                            if object_exists((l_v1 | 0))
	                                gml_thread_error((((("Couldn't find any instances of " + gml_std_Std_string(l_v1)) + " (") + object_get_name((l_v1 | 0))) + ")"))
	                            else
	                                gml_thread_error((("Couldn't find instance `" + gml_std_Std_string(l_v1)) + "`"))
	                        }
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, (("Alarm index (" + gml_value_print(l_v4)) + ") shold be between 0 and 11"), l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, (("Alarm index (" + gml_value_print(l_v4)) + ") shold be a number"), l_act)
	                break
	            case 70:
	                l_i = l_act[2]
	                if (!is_array(l_locals[l_i]))
	                    array_set(l_locals, l_i, array_create(0))
	                break
	            case 71:
	                l_s = l_act[2]
	                if variable_global_exists(l_s)
	                {
	                    l_v1 = variable_global_get(l_s)
	                    if (!is_array(l_v1))
	                        variable_global_set(l_s, [])
	                }
	                else
	                    variable_global_set(l_s, [])
	                break
	            case 72:
	                l_s = l_act[2]
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if variable_instance_exists(l_v2, l_s)
	                    l_v1 = gml_field_func(l_v2, l_s, 0, undefined)
	                else
	                    l_v1 = undefined
	                if (this[2] == 4)
	                    l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                else if (!is_array(l_v1))
	                {
	                    l_v1 = array_create(0)
	                    gml_field_func(l_v2, l_s, 1, l_v1)
	                    if (this[2] == 4)
	                        l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                }
	                break
	            case 21:
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if is_array(l_v1)
	                {
	                    if gml_value_is_number(l_v2)
	                    {
	                        l_i = (l_v2 | 0)
	                        l_w1 = l_v1
	                        l_n = array_length_1d(l_w1)
	                        if (l_i >= 0 && l_i < l_n)
	                            tools__gml_stack_gml_stack_impl__push(l_stack, l_w1[l_i])
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, (((("Index (" + string(l_i)) + ") is out of bounds (0..") + string(l_n)) + " excl.)"), l_act)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, "Index is not a number", l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, "Variable is not an array", l_act)
	                break
	            case 22:
	                l_v3 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if is_array(l_v1)
	                {
	                    if gml_value_is_number(l_v2)
	                    {
	                        l_i = (l_v2 | 0)
	                        l_w1 = l_v1
	                        if (l_i < 0)
	                            l_proc = gml_thread_proc_error(l__gthis, (("Index (" + string(l_i)) + ") may not be negative"), l_act)
	                        else if (l_i >= 32000)
	                            l_proc = gml_thread_proc_error(l__gthis, (("Index (" + string(l_i)) + ") may not exceed 32000"), l_act)
	                        else
	                            array_set(l_w1, l_i, l_v3)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, "Index is not a number", l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, "Variable is not an array", l_act)
	                break
	            case 23:
	                var l_o2 = l_act[2]
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v3 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if is_array(l_v1)
	                {
	                    if gml_value_is_number(l_v3)
	                    {
	                        l_i = (l_v3 | 0)
	                        l_w1 = l_v1
	                        l_n = array_length_1d(l_w1)
	                        if (l_i < 0)
	                            l_proc = gml_thread_proc_error(l__gthis, (("Index (" + string(l_i)) + ") may not be negative"), l_act)
	                        else if (l_i >= l_n)
	                            l_proc = gml_thread_proc_error(l__gthis, (((("Index (" + string(l_i)) + ") is out of bounds (0..") + string(l_n)) + " excl.)"), l_act)
	                        else
	                        {
	                            l_v1 = l_w1[l_i]
	                            l_op = l_o2
	                            if (l_op == 16)
	                            {
	                                if gml_value_is_number(l_v1)
	                                {
	                                    if gml_value_is_number(l_v2)
	                                        l_v1 = (l_v1 + l_v2)
	                                    else
	                                        l_proc = gml_thread_proc_error(l__gthis, ("Can't add number and " + gml_value_get_type(l_v2)), l_act)
	                                }
	                                else if is_string(l_v1)
	                                {
	                                    if is_string(l_v2)
	                                        l_v1 = (l_v1 + l_v2)
	                                    else
	                                        l_proc = gml_thread_proc_error(l__gthis, ("Can't add string and " + gml_value_get_type(l_v2)), l_act)
	                                }
	                                else
	                                    l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                            }
	                            else if gml_value_is_number(l_v1)
	                            {
	                                if gml_value_is_number(l_v2)
	                                    l_v1 = gml_op_apply(l_op, l_v1, l_v2)
	                                else
	                                    l_proc = gml_thread_proc_error(l__gthis, ((("Can't apply " + gml_op_to_string(l_op)) + " to number and ") + gml_value_get_type(l_v2)), l_act)
	                            }
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ((((("Can't apply " + gml_op_to_string(l_op)) + " to ") + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                            array_set(l_w1, l_i, l_v1)
	                        }
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, "Index is not a number", l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, "Variable is not an array", l_act)
	                break
	            case 24:
	                l_v3 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if is_array(l_v1)
	                {
	                    if gml_value_is_number(l_v2)
	                    {
	                        l_i = (l_v2 | 0)
	                        l_n = array_height_2d(l_v1)
	                        if (l_i < 0 || l_i >= l_n)
	                            l_proc = gml_thread_proc_error(l__gthis, (((("Row index (" + string(l_i)) + ") is out of bounds (0..") + string(l_n)) + " excl.)"), l_act)
	                        else if gml_value_is_number(l_v3)
	                        {
	                            var l_k = (l_v3 | 0)
	                            l_n = array_length_2d(l_v1, l_i)
	                            if (l_k < 0 || l_k >= l_n)
	                                l_proc = gml_thread_proc_error(l__gthis, (((("Column index (" + string(l_k)) + ") is out of bounds (0..") + string(l_n)) + " excl.)"), l_act)
	                            else
	                                tools__gml_stack_gml_stack_impl__push(l_stack, l_v1[l_i, l_k])
	                        }
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, "Column index is not a number", l_act)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, "Row index is not a number", l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, "Variable is not an array", l_act)
	                break
	            case 25:
	                l_v4 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v3 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if is_array(l_v1)
	                {
	                    if gml_value_is_number(l_v2)
	                    {
	                        if gml_value_is_number(l_v3)
	                        {
	                            l_i = (l_v2 | 0)
	                            l_k = (l_v3 | 0)
	                            if (l_i < 0)
	                                l_proc = gml_thread_proc_error(l__gthis, (("Row index (" + string(l_i)) + ") may not be negative"), l_act)
	                            else if (l_i >= 32000)
	                                l_proc = gml_thread_proc_error(l__gthis, (("Row index (" + string(l_i)) + ") may not exceed 32000"), l_act)
	                            else if (l_k < 0)
	                                l_proc = gml_thread_proc_error(l__gthis, (("Column index (" + string(l_k)) + ") may not be negative"), l_act)
	                            else if (l_k >= 32000)
	                                l_proc = gml_thread_proc_error(l__gthis, (("Column index (" + string(l_k)) + ") may not exceed 32000"), l_act)
	                            else
	                                array_set_2D(l_v1, l_i, l_k, l_v4)
	                        }
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, "Column index is not a number", l_act)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, "Row index is not a number", l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, "Variable is not an array", l_act)
	                break
	            case 26:
	                var l__op = l_act[2]
	                l_v4 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v3 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if is_array(l_v1)
	                {
	                    if gml_value_is_number(l_v2)
	                    {
	                        if gml_value_is_number(l_v3)
	                        {
	                            l_w1 = l_v1
	                            l_i = (l_v2 | 0)
	                            l_k = (l_v3 | 0)
	                            if (l_i < 0 || l_i >= array_height_2d(l_w1))
	                            {
	                                l_n = array_height_2d(l_w1)
	                                l_proc = gml_thread_proc_error(l__gthis, (((("Row index (" + string(l_i)) + ") is out of bounds (0..") + string(l_n)) + " excl.)"), l_act)
	                            }
	                            else if (l_k < 0 || l_k >= array_length_2d(l_w1, l_i))
	                            {
	                                l_n = array_length_2d(l_w1, l_i)
	                                l_proc = gml_thread_proc_error(l__gthis, (((("Column index (" + string(l_k)) + ") is out of bounds (0..") + string(l_n)) + " excl.)"), l_act)
	                            }
	                            else
	                            {
	                                l_v1 = l_w1[l_i, l_k]
	                                l_v2 = l_v4
	                                l_op = l__op
	                                if (l_op == 16)
	                                {
	                                    if gml_value_is_number(l_v1)
	                                    {
	                                        if gml_value_is_number(l_v2)
	                                            l_v1 = (l_v1 + l_v2)
	                                        else
	                                            l_proc = gml_thread_proc_error(l__gthis, ("Can't add number and " + gml_value_get_type(l_v2)), l_act)
	                                    }
	                                    else if is_string(l_v1)
	                                    {
	                                        if is_string(l_v2)
	                                            l_v1 = (l_v1 + l_v2)
	                                        else
	                                            l_proc = gml_thread_proc_error(l__gthis, ("Can't add string and " + gml_value_get_type(l_v2)), l_act)
	                                    }
	                                    else
	                                        l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                                }
	                                else if gml_value_is_number(l_v1)
	                                {
	                                    if gml_value_is_number(l_v2)
	                                        l_v1 = gml_op_apply(l_op, l_v1, l_v2)
	                                    else
	                                        l_proc = gml_thread_proc_error(l__gthis, ((("Can't apply " + gml_op_to_string(l_op)) + " to number and ") + gml_value_get_type(l_v2)), l_act)
	                                }
	                                else
	                                    l_proc = gml_thread_proc_error(l__gthis, ((((("Can't apply " + gml_op_to_string(l_op)) + " to ") + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                                array_set_2D(l_w1, l_i, l_k, l_v1)
	                            }
	                        }
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, "Column index is not a number", l_act)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, "Row index is not a number", l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, "Variable is not an array", l_act)
	                break
	            case 27:
	                tools__gml_stack_gml_stack_impl__push(l_stack, script_execute(l_act[2], 0, undefined))
	                if (this[2] == 4)
	                    l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                break
	            case 28:
	                var l_ch = l_act[3]
	                var l_f4 = l_act[2]
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_s = script_execute(l_ch, l_v1)
	                if (l_s == "")
	                {
	                    script_execute(l_f4, 1, l_v1)
	                    if (this[2] == 4)
	                        l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, ((("Type check failure for value (" + gml_value_print(l_v1)) + "): ") + l_s), l_act)
	                break
	            case 29:
	                var l__func = l_act[3]
	                var l__o2 = l_act[2]
	                var l_o = l__func
	                l_v1 = script_execute(l_o, 0, undefined)
	                if (this[2] != 4)
	                {
	                    l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                    l_op = l__o2
	                    if (l_op == 16)
	                    {
	                        if gml_value_is_number(l_v1)
	                        {
	                            if gml_value_is_number(l_v2)
	                                l_v1 = (l_v1 + l_v2)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ("Can't add number and " + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else if is_string(l_v1)
	                        {
	                            if is_string(l_v2)
	                                l_v1 = (l_v1 + l_v2)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ("Can't add string and " + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                    }
	                    else if gml_value_is_number(l_v1)
	                    {
	                        if gml_value_is_number(l_v2)
	                            l_v1 = gml_op_apply(l_op, l_v1, l_v2)
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ((("Can't apply " + gml_op_to_string(l_op)) + " to number and ") + gml_value_get_type(l_v2)), l_act)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, ((((("Can't apply " + gml_op_to_string(l_op)) + " to ") + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                    if (this[2] != 4)
	                    {
	                        script_execute(l_o, 1, l_v1)
	                        if (this[2] == 4)
	                            l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                    }
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                break
	            case 30:
	                var l_f5 = l_act[2]
	                l_v3 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if gml_value_is_number(l_v3)
	                {
	                    tools__gml_stack_gml_stack_impl__push(l_stack, script_execute(l_f5, 0, undefined, (l_v3 | 0)))
	                    if (this[2] == 4)
	                        l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, (("Index " + gml_value_print(l_v3)) + " is not a number."), l_act)
	                break
	            case 31:
	                var l_ch1 = l_act[3]
	                var l_f6 = l_act[2]
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v3 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_s = script_execute(l_ch1, l_v2)
	                if (l_s == "")
	                {
	                    if gml_value_is_number(l_v3)
	                    {
	                        script_execute(l_f6, 1, l_v2, (l_v3 | 0))
	                        if (this[2] == 4)
	                            l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, (("Index " + gml_value_print(l_v3)) + " is not a number."), l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, ((("Type check failure for value (" + gml_value_print(l_v2)) + "): ") + l_s), l_act)
	                break
	            case 32:
	                var l__func1 = l_act[3]
	                var l__o3 = l_act[2]
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v3 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_o = l__func1
	                if gml_value_is_number(l_v3)
	                {
	                    l_v1 = script_execute(l_o, 0, undefined, (l_v3 | 0))
	                    if (this[2] != 4)
	                    {
	                        l_op = l__o3
	                        if (l_op == 16)
	                        {
	                            if gml_value_is_number(l_v1)
	                            {
	                                if gml_value_is_number(l_v2)
	                                    l_v1 = (l_v1 + l_v2)
	                                else
	                                    l_proc = gml_thread_proc_error(l__gthis, ("Can't add number and " + gml_value_get_type(l_v2)), l_act)
	                            }
	                            else if is_string(l_v1)
	                            {
	                                if is_string(l_v2)
	                                    l_v1 = (l_v1 + l_v2)
	                                else
	                                    l_proc = gml_thread_proc_error(l__gthis, ("Can't add string and " + gml_value_get_type(l_v2)), l_act)
	                            }
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else if gml_value_is_number(l_v1)
	                        {
	                            if gml_value_is_number(l_v2)
	                                l_v1 = gml_op_apply(l_op, l_v1, l_v2)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ((("Can't apply " + gml_op_to_string(l_op)) + " to number and ") + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ((((("Can't apply " + gml_op_to_string(l_op)) + " to ") + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                        if (this[2] != 4)
	                        {
	                            script_execute(l_o, 1, l_v1, l_v3)
	                            if (this[2] == 4)
	                                l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                        }
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, (("Index " + gml_value_print(l_v3)) + " is not a number."), l_act)
	                break
	            case 34:
	                l_i = l_act[2]
	                l_n = array_length_1d(l_args1)
	                if (l_i >= 0 && l_i < l_n)
	                    tools__gml_stack_gml_stack_impl__push(l_stack, l_args1[l_i])
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, (((("Argument index " + string(l_i)) + " is out of range (0..") + string(l_n)) + " excl)"), l_act)
	                break
	            case 35:
	                l_i = l_act[2]
	                l_n = array_length_1d(l_args1)
	                if (l_i >= 0 && l_i < l_n)
	                    array_set(l_args1, l_i, tools__gml_stack_gml_stack_impl__pop(l_stack))
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, (((("Argument index " + string(l_i)) + " is out of range (0..") + string(l_n)) + " excl)"), l_act)
	                break
	            case 36:
	                var l__i3 = l_act[3]
	                var l__o5 = l_act[2]
	                l_i = l__i3
	                l_n = array_length_1d(l_args1)
	                if (l_i >= 0 && l_i < l_n)
	                {
	                    l_v1 = l_args1[l_i]
	                    l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                    l_op = l__o5
	                    if (l_op == 16)
	                    {
	                        if gml_value_is_number(l_v1)
	                        {
	                            if gml_value_is_number(l_v2)
	                                l_v1 = (l_v1 + l_v2)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ("Can't add number and " + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else if is_string(l_v1)
	                        {
	                            if is_string(l_v2)
	                                l_v1 = (l_v1 + l_v2)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ("Can't add string and " + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                    }
	                    else if gml_value_is_number(l_v1)
	                    {
	                        if gml_value_is_number(l_v2)
	                            l_v1 = gml_op_apply(l_op, l_v1, l_v2)
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ((("Can't apply " + gml_op_to_string(l_op)) + " to number and ") + gml_value_get_type(l_v2)), l_act)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, ((((("Can't apply " + gml_op_to_string(l_op)) + " to ") + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                    array_set(l_args1, l_i, l_v1)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, (((("Argument index " + string(l_i)) + " is out of range (0..") + string(l_n)) + " excl)"), l_act)
	                break
	            case 37:
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if gml_value_is_number(l_v1)
	                {
	                    l_i = (l_v1 | 0)
	                    l_n = array_length_1d(l_args1)
	                    if (l_i >= 0 && l_i < l_n)
	                        tools__gml_stack_gml_stack_impl__push(l_stack, l_args1[l_i])
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, (((("Argument index " + string(l_i)) + " is out of range (0..") + string(l_n)) + " excl)"), l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, "Index is not a number", l_act)
	                break
	            case 38:
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if gml_value_is_number(l_v1)
	                {
	                    l_i = (l_v1 | 0)
	                    l_n = array_length_1d(l_args1)
	                    if (l_i >= 0 && l_i < l_n)
	                        array_set(l_args1, l_i, l_v2)
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, (((("Argument index " + string(l_i)) + " is out of range (0..") + string(l_n)) + " excl)"), l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, "Index is not a number", l_act)
	                break
	            case 39:
	                var l__o6 = l_act[2]
	                l_v2 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if gml_value_is_number(l_v1)
	                {
	                    l_i = (l_v1 | 0)
	                    l_n = array_length_1d(l_args1)
	                    if (l_i >= 0 && l_i < l_n)
	                    {
	                        l_v1 = l_args1[l_i]
	                        l_op = l__o6
	                        if (l_op == 16)
	                        {
	                            if gml_value_is_number(l_v1)
	                            {
	                                if gml_value_is_number(l_v2)
	                                    l_v1 = (l_v1 + l_v2)
	                                else
	                                    l_proc = gml_thread_proc_error(l__gthis, ("Can't add number and " + gml_value_get_type(l_v2)), l_act)
	                            }
	                            else if is_string(l_v1)
	                            {
	                                if is_string(l_v2)
	                                    l_v1 = (l_v1 + l_v2)
	                                else
	                                    l_proc = gml_thread_proc_error(l__gthis, ("Can't add string and " + gml_value_get_type(l_v2)), l_act)
	                            }
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else if gml_value_is_number(l_v1)
	                        {
	                            if gml_value_is_number(l_v2)
	                                l_v1 = gml_op_apply(l_op, l_v1, l_v2)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ((("Can't apply " + gml_op_to_string(l_op)) + " to number and ") + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ((((("Can't apply " + gml_op_to_string(l_op)) + " to ") + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                        array_set(l_args1, l_i, l_v1)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, (((("Argument index " + string(l_i)) + " is out of range (0..") + string(l_n)) + " excl)"), l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, "Index is not a number", l_act)
	                break
	            case 33:
	                var l__out = l_act[6]
	                var l__set = l_act[5]
	                var l__get = l_act[4]
	                var l__argc = l_act[3]
	                var l__o4 = l_act[2]
	                l_n = l__argc
	                l_w1 = array_create(l_n)
	                l_i = l_n
	                while (--l_i >= 0)
	                    array_set(l_w1, l_i, tools__gml_stack_gml_stack_impl__pop(l_stack))
	                l_n--
	                l_v2 = l_w1[l_n]
	                l_o = l__get
	                l_v1 = vm_gml_thread_exec_call(l_o, l_w1, l_n)
	                if (this[2] != 4)
	                {
	                    l_op = l__o4
	                    if (l_op == 16)
	                    {
	                        if gml_value_is_number(l_v1)
	                        {
	                            if gml_value_is_number(l_v2)
	                                l_v1 = (l_v1 + l_v2)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ("Can't add number and " + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else if is_string(l_v1)
	                        {
	                            if is_string(l_v2)
	                                l_v1 = (l_v1 + l_v2)
	                            else
	                                l_proc = gml_thread_proc_error(l__gthis, ("Can't add string and " + gml_value_get_type(l_v2)), l_act)
	                        }
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ((("Can't add " + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                    }
	                    else if gml_value_is_number(l_v1)
	                    {
	                        if gml_value_is_number(l_v2)
	                            l_v1 = gml_op_apply(l_op, l_v1, l_v2)
	                        else
	                            l_proc = gml_thread_proc_error(l__gthis, ((("Can't apply " + gml_op_to_string(l_op)) + " to number and ") + gml_value_get_type(l_v2)), l_act)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, ((((("Can't apply " + gml_op_to_string(l_op)) + " to ") + gml_value_get_type(l_v1)) + " and ") + gml_value_get_type(l_v2)), l_act)
	                    array_set(l_w1, l_n, l_v1)
	                    l_n++
	                    l_o = l__set
	                    l_v1 = vm_gml_thread_exec_call(l_o, l_w1, l_n)
	                    if (this[2] != 4)
	                    {
	                        if l__out
	                            tools__gml_stack_gml_stack_impl__push(l_stack, l_v1)
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                break
	            case 49:
	                var l_scr = l_act[2]
	                l_n = l_act[3]
	                l_w1 = array_create(l_n)
	                l_i = l_n
	                while (--l_i >= 0)
	                    array_set(l_w1, l_i, tools__gml_stack_gml_stack_impl__pop(l_stack))
	                array_set(l_scope, 2, l_pos)
	                array_set(l_scope, 6, l_inst)
	                array_set(l_scope, 7, l_with1)
	                l_scope = gml_func_scope_create(l_scr[10], 0, l_w1, array_create(l_scr[7]), l_inst[l_inst[0]], l_inst[(l_inst[0] - 1)], l_scope)
	                l_args1 = l_scope[3]
	                l_locals = l_scope[4]
	                l_inst = l_scope[6]
	                l_with1 = l_scope[7]
	                l_pos = l_scope[2]
	                l_actions = l_scope[1]
	                l_len = ds_list_size(l_actions)
	                l_stack = l_scope[5]
	                break
	            case 50:
	                l_n = l_act[2]
	                l_w1 = array_create(l_n)
	                l_i = l_n
	                while (--l_i >= 0)
	                    array_set(l_w1, l_i, tools__gml_stack_gml_stack_impl__pop(l_stack))
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if gml_value_is_number(l_v1)
	                {
	                    l_k = (l_v1 | 0)
	                    if (l_k >= 0)
	                        var l_tmp = l_k < array_length_1d(gml_std_haxe_boot_wget(this[0], 2))
	                    else
	                        l_tmp = 0
	                    if l_tmp
	                    {
	                        l_scr = gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[0], 2), l_k)
	                        array_set(l_scope, 2, l_pos)
	                        array_set(l_scope, 6, l_inst)
	                        array_set(l_scope, 7, l_with1)
	                        l_scope = gml_func_scope_create(l_scr[10], 0, l_w1, array_create(l_scr[7]), l_inst[l_inst[0]], l_inst[(l_inst[0] - 1)], l_scope)
	                        l_args1 = l_scope[3]
	                        l_locals = l_scope[4]
	                        l_inst = l_scope[6]
	                        l_with1 = l_scope[7]
	                        l_pos = l_scope[2]
	                        l_actions = l_scope[1]
	                        l_len = ds_list_size(l_actions)
	                        l_stack = l_scope[5]
	                    }
	                    else
	                        l_proc = gml_thread_proc_error(l__gthis, (((("Script index `" + gml_value_print(l_v1)) + "` is out of bounds (0..") + string(array_length_1d(gml_std_haxe_boot_wget(this[0], 2)))) + " excl.)"), l_act)
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, (((("Script index must be a number, got `" + gml_value_print(l_v1)) + "` (") + gml_value_get_type(l_v1)) + ")"), l_act)
	                break
	            case 51:
	                var l__argc3 = l_act[3]
	                l_scr = l_act[2]
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                l_v1 = gml_with_first(l_v1)
	                if (this[2] != 4)
	                {
	                    l_n = l__argc3
	                    l_w1 = array_create(l_n)
	                    l_i = l_n
	                    while (--l_i >= 0)
	                        array_set(l_w1, l_i, tools__gml_stack_gml_stack_impl__pop(l_stack))
	                    array_set(l_scope, 2, l_pos)
	                    array_set(l_scope, 6, l_inst)
	                    array_set(l_scope, 7, l_with1)
	                    l_scope = gml_func_scope_create(l_scr[10], 0, l_w1, array_create(l_scr[7]), l_v1, l_inst[l_inst[0]], l_scope)
	                    l_args1 = l_scope[3]
	                    l_locals = l_scope[4]
	                    l_inst = l_scope[6]
	                    l_with1 = l_scope[7]
	                    l_pos = l_scope[2]
	                    l_actions = l_scope[1]
	                    l_len = ds_list_size(l_actions)
	                    l_stack = l_scope[5]
	                }
	                break
	            case 52:
	                var l_argt = l_act[4]
	                l_o = l_act[2]
	                l_n = l_act[3]
	                l_k = (l_stack[0] - l_n)
	                array_set(l_stack, 0, l_k)
	                l_k++
	                l_w1 = l_stack
	                var l_d = array_length_1d(l_argt)
	                l_s = ""
	                l_i = 0
	                while (l_i < l_n)
	                {
	                    if (l_i < l_d)
	                        l_s = script_execute(l_argt[l_i], l_w1[(l_k + l_i)])
	                    else
	                        l_s = script_execute(l_act[5], l_w1[(l_k + l_i)])
	                    if (l_s != "")
	                        break
	                    else
	                    {
	                        l_i++
	                        continue
	                    }
	                }
	                if (l_i < l_n)
	                    l_proc = gml_thread_proc_error(l__gthis, ((((("Type check failure for argument[" + string(l_i)) + "] (") + gml_value_print(l_w1[l_i])) + "): ") + l_s), l_act)
	                else
	                {
	                    array_set(this, 8, l_act[1])
	                    l_i = l_act[6]
	                    switch l_i
	                    {
	                        case 3:
	                            var l_qn0 = l_inst[l_inst[0]]
	                            var l_qn1 = l_inst[(l_inst[0] - 1)]
	                            var l_qc0 = id
	                            var l_qc1 = other.id
	                            if (l_qn0 == l_qc0 && l_qn1 == l_qc1)
	                                l_v1 = (l_n < 81 ? script_execute(global.g_vm_gml_thread_exec_slice_funcs[l_n], l_o, l_w1, l_k) : vm_gml_thread_exec_slice_error())
	                            else if (l_qn0 == l_qc1 && l_qn1 == l_qc0)
	                            {
	                                with (other.id)
	                                    l_v1 = (l_n < 81 ? script_execute(global.g_vm_gml_thread_exec_slice_funcs[l_n], l_o, l_w1, l_k) : vm_gml_thread_exec_slice_error())
	                            }
	                            else
	                            {
	                                l_z = 1
	                                with (l_qn1)
	                                {
	                                    with (l_qn0)
	                                    {
	                                        l_v1 = (l_n < 81 ? script_execute(global.g_vm_gml_thread_exec_slice_funcs[l_n], l_o, l_w1, l_k) : vm_gml_thread_exec_slice_error())
	                                        l_z = 0
	                                    }
	                                }
	                                if l_z
	                                {
	                                    with (l_qn0)
	                                    {
	                                        with (l_qn0)
	                                        {
	                                            l_v1 = (l_n < 81 ? script_execute(global.g_vm_gml_thread_exec_slice_funcs[l_n], l_o, l_w1, l_k) : vm_gml_thread_exec_slice_error())
	                                            l_z = 0
	                                        }
	                                    }
	                                    if l_z
	                                        l_proc = gml_thread_proc_error(l__gthis, (("Can't call instance-specific function - instance `" + gml_value_print(l_inst[l_inst[0]])) + "` does not exist."), l_act)
	                                }
	                            }
	                            break
	                        case 2:
	                            l_qn0 = l_inst[l_inst[0]]
	                            l_qn1 = l_inst[(l_inst[0] - 1)]
	                            l_qc0 = id
	                            l_qc1 = other.id
	                            if (l_qn0 == l_qc0 && l_qn1 == l_qc1)
	                                l_v1 = (l_n < 81 ? script_execute(global.g_vm_gml_thread_exec_slice_funcs[l_n], l_o, l_w1, l_k) : vm_gml_thread_exec_slice_error())
	                            else if (l_qn0 == l_qc1 && l_qn1 == l_qc0)
	                            {
	                                with (other.id)
	                                    l_v1 = (l_n < 81 ? script_execute(global.g_vm_gml_thread_exec_slice_funcs[l_n], l_o, l_w1, l_k) : vm_gml_thread_exec_slice_error())
	                            }
	                            else
	                            {
	                                l_z = 1
	                                with (l_qn1)
	                                {
	                                    with (l_qn0)
	                                    {
	                                        l_v1 = (l_n < 81 ? script_execute(global.g_vm_gml_thread_exec_slice_funcs[l_n], l_o, l_w1, l_k) : vm_gml_thread_exec_slice_error())
	                                        l_z = 0
	                                    }
	                                }
	                                if l_z
	                                    l_proc = gml_thread_proc_error(l__gthis, (("Can't call instance-specific function - instance `" + gml_value_print(l_inst[l_inst[0]])) + "` does not exist."), l_act)
	                            }
	                            break
	                        case 1:
	                            l_qn0 = l_inst[l_inst[0]]
	                            if (l_qn0 == id)
	                                l_v1 = (l_n < 81 ? script_execute(global.g_vm_gml_thread_exec_slice_funcs[l_n], l_o, l_w1, l_k) : vm_gml_thread_exec_slice_error())
	                            else if (l_qn0 == other.id)
	                            {
	                                with (other.id)
	                                    l_v1 = (l_n < 81 ? script_execute(global.g_vm_gml_thread_exec_slice_funcs[l_n], l_o, l_w1, l_k) : vm_gml_thread_exec_slice_error())
	                            }
	                            else
	                            {
	                                l_z = 1
	                                with (l_qn0)
	                                {
	                                    l_v1 = (l_n < 81 ? script_execute(global.g_vm_gml_thread_exec_slice_funcs[l_n], l_o, l_w1, l_k) : vm_gml_thread_exec_slice_error())
	                                    l_z = 0
	                                }
	                                if l_z
	                                    l_proc = gml_thread_proc_error(l__gthis, (("Can't call instance-specific function - instance `" + gml_value_print(l_inst[l_inst[0]])) + "` does not exist."), l_act)
	                            }
	                            break
	                        default:
	                            l_v1 = (l_n < 81 ? script_execute(global.g_vm_gml_thread_exec_slice_funcs[l_n], l_o, l_w1, l_k) : vm_gml_thread_exec_slice_error())
	                    }
	
	                    if (this[2] == 4)
	                        l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                    else if l_act[7]
	                        tools__gml_stack_gml_stack_impl__push(l_stack, l_v1)
	                }
	                break
	            case 53:
	                l_pos = l_act[2]
	                break
	            case 54:
	                var l_p1 = l_act[2]
	                if tools__gml_stack_gml_stack_impl__pop(l_stack)
	                    l_pos = l_p1
	                break
	            case 55:
	                var l_p2 = l_act[2]
	                if tools__gml_stack_gml_stack_impl__pop(l_stack)
	                    l_pos += 0
	                else
	                    l_pos = l_p2
	                break
	            case 56:
	                var l_p3 = l_act[2]
	                if l_stack[l_stack[0]]
	                    tools__gml_stack_gml_stack_impl__pop(l_stack)
	                else
	                    l_pos = l_p3
	                break
	            case 57:
	                var l_p4 = l_act[2]
	                if l_stack[l_stack[0]]
	                    l_pos = l_p4
	                else
	                    tools__gml_stack_gml_stack_impl__pop(l_stack)
	                break
	            case 58:
	                var l_p5 = l_act[3]
	                var l_jt = l_act[2]
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                if ds_map_exists(l_jt, l_v1)
	                    l_pos = ds_map_find_value(l_jt, l_v1)
	                else
	                    l_pos = l_p5
	                break
	            case 60:
	                l_v1 = l_stack[l_stack[0]]
	                if gml_value_is_number(l_v1)
	                {
	                    if (l_v1 <= 0)
	                    {
	                        l_pos = l_act[2]
	                        tools__gml_stack_gml_stack_impl__pop(l_stack)
	                    }
	                }
	                else
	                    l_proc = gml_thread_proc_error(l__gthis, "Repeat `times` must be a number.", l_act)
	                break
	            case 59:
	                var l_p6 = l_act[2]
	                l_f1 = (tools__gml_stack_gml_stack_impl__pop(l_stack) - 1)
	                tools__gml_stack_gml_stack_impl__push(l_stack, l_f1)
	                if (l_f1 >= 1)
	                    l_pos = l_p6
	                break
	            case 61:
	                var l__with = gml_with_func(tools__gml_stack_gml_stack_impl__pop(l_stack))
	                if (this[2] == 4)
	                    l_proc = gml_thread_proc_error(l__gthis, this[7], l_act)
	                else
	                {
	                    l_with1 = gml_with_scope_create(l__with, l_with1)
	                    tools__gml_stack_gml_stack_impl__push(l_inst, undefined)
	                }
	                break
	            case 62:
	                var l_p8 = l_act[2]
	                if (l_with1[1] < l_with1[2])
	                    array_set(l_inst, l_inst[0], gml_std_haxe_boot_wget(l_with1[3], array_set_post(l_with1, 1, (array_get(l_with1, 1) + 1))))
	                else
	                    l_pos = l_p8
	                break
	            case 63:
	                vm__gml_with_data_gml_with_data_impl__destroy(l_with1[5])
	                l_yycNext = l_with1[4]
	                l_with1 = l_yycNext
	                tools__gml_stack_gml_stack_impl__discard(l_inst)
	                break
	            case 66:
	                l_pos = l_len
	                break
	            case 68:
	                l_v1 = tools__gml_stack_gml_stack_impl__pop(l_stack)
	                array_set(this, 2, 2)
	                array_set(this, 5, (gml_value_is_number(l_v1) ? l_v1 : 0))
	                array_set(l_scope, 2, l_pos)
	                array_set(l_scope, 6, l_inst)
	                array_set(l_scope, 7, l_with1)
	                ds_list_add(gml_std_haxe_boot_wget(this[0], 7), this)
	                l_proc = 0
	                break
	            case 69:
	                l_z = l_act[2]
	                if l_z
	                    tools__gml_stack_gml_stack_impl__push(l_stack, 1)
	                array_set(l_scope, 2, l_pos)
	                array_set(l_scope, 6, l_inst)
	                array_set(l_scope, 7, l_with1)
	                array_set(this, 4, l_scope)
	                gml_thread_exec(gml_thread_fork(this))
	                if l_z
	                    array_set(l_stack, l_stack[0], 0)
	                break
	            case 64:
	                break
	            case 65:
	                break
	        }
	
	    }
	    if (this[2] == 4)
	    {
	        l_proc = 0
	        while (l_scope != undefined)
	        {
	            if (l_scope[8] != undefined)
	            {
	                l_pos = gml_std_haxe_boot_wget(l_scope[8], 0)
	                array_set(this, 2, 1)
	                break
	            }
	            else
	            {
	                l_scope = l_scope[9]
	                l_proc = 1
	                continue
	            }
	        }
	        if (l_scope == undefined)
	        {
	            if (l_with1 != undefined)
	                gml_with_scope_destroy(l_with1)
	            array_set(this, 1, undefined)
	            var l__callback = l__gthis[3]
	            if (l__callback != undefined)
	                script_execute(l__callback, l__gthis)
	            break
	        }
	        else
	        {
	            if l_proc
	            {
	                if (l_with1 != undefined)
	                    gml_with_scope_destroy(l_with1)
	                array_set(l_scope, 2, l_pos)
	                l_args1 = l_scope[3]
	                l_locals = l_scope[4]
	                l_inst = l_scope[6]
	                l_with1 = l_scope[7]
	                l_pos = l_scope[2]
	                l_actions = l_scope[1]
	                l_len = ds_list_size(l_actions)
	                l_stack = l_scope[5]
	            }
	            continue
	        }
	    }
	    else if (l_pos >= l_len && this[2] == 1)
	    {
	        if (l_with1 != undefined)
	            gml_with_scope_destroy(l_with1)
	        if (l_stack[0] > 0)
	            array_set(this, 1, l_stack[l_stack[0]])
	        else
	            array_set(this, 1, 0)
	        l_yycNext = l_scope[9]
	        l_scope = l_yycNext
	        if (l_scope != undefined)
	        {
	            l_args1 = l_scope[3]
	            l_locals = l_scope[4]
	            l_inst = l_scope[6]
	            l_with1 = l_scope[7]
	            l_pos = l_scope[2]
	            l_actions = l_scope[1]
	            l_len = ds_list_size(l_actions)
	            l_stack = l_scope[5]
	            continue
	        }
	        else
	        {
	            array_set(this, 2, 3)
	            l__callback = l__gthis[3]
	            if (l__callback != undefined)
	                script_execute(l__callback, l__gthis)
	            break
	        }
	    }
	    else
	        break
	}
	array_set(this, 4, l_scope)
	global.g_gml_thread_current = l_previous
}
