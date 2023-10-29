function gml_action_list_print()
{
	var l_this1 = argument[0]
	var l_r = ""
	var l_i = 0
	var l__g1 = ds_list_size(l_this1)
	while (l_i < l__g1)
	{
	    var l_act = ds_list_find_value(l_this1, l_i)
	    if (l_i > 0)
	        l_r += "\n"
	    l_r += ((string(l_i) + "	") + global.g_gml_action_names[l_act[0]])
	    var l_argc = (array_length_1d(l_act) - 1)
	    if (l_argc > 1)
	    {
	        l_r += "("
	        var l_k = 1
	        var l__g11 = l_argc
	        while (l_k < l__g11)
	        {
	            if (l_k > 1)
	                l_r += ", "
	            var l_v = l_act[(l_k + 1)]
	            if gml_std__Std_StdImpl_isNumber(l_v)
	                l_r += gml_std_Std_string(l_v)
	            else if is_string(l_v)
	                l_r += (("\"" + gml_std_Std_string(l_v)) + "\"")
	            else if (l_v == undefined)
	                l_r += "null"
	            else
	                l_r += gml_value_print(l_v)
	            l_k++
	        }
	        l_r += ")"
	    }
	    l_i++
	}
	return l_r;
}
