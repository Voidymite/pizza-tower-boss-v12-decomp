function gml_value_print_rec()
{
	var l_v = argument[0]
	var l_z = argument[1]
	var l_id = global.g_gml_value_print_num++
	if (l_v == undefined)
	    return "undefined";
	else if gml_value_is_number(l_v)
	{
	    var l_r = string_format(l_v, 0, 15)
	    var l_n = string_pos(".", l_r)
	    if (l_n > 0)
	    {
	        for (var l_i = string_byte_length(l_r); l_i > l_n; l_i--)
	        {
	            if (string_byte_at(l_r, l_i) != 48)
	                return string_copy(l_r, 1, l_i);
	        }
	        return string_copy(l_r, 1, (l_n - 1));
	    }
	    else
	        return l_r;
	}
	else if is_string(l_v)
	    return (("\"" + gml_std_Std_string(l_v)) + "\"");
	else if is_array(l_v)
	{
	    l_r = ds_map_find_value(global.g_gml_value_print_refs, l_v)
	    if (l_r != undefined)
	        return l_r;
	    ds_map_set(global.g_gml_value_print_refs, l_v, ("@" + string(l_id)))
	    if (array_length_2d(l_v, 2) == 1)
	    {
	        var l_w = l_v
	        l_n = array_length_2d(l_w, 1)
	        if (l_n > 0)
	        {
	            if (++l_z <= 8)
	            {
	                l_r = ((("{ " + gml_std_Std_string(l_w[1, 0])) + ": ") + gml_value_print_rec(l_w[0, 0], l_z))
	                for (l_i = 1; l_i < l_n; l_i++)
	                    l_r += (((", " + gml_std_Std_string(l_w[1, l_i])) + ": ") + gml_value_print_rec(l_w[0, l_i], l_z))
	                return (l_r + " }");
	            }
	            else
	                return "{...}";
	        }
	        else
	            return "{ }";
	    }
	    else if (array_height_2d(l_v) == 2)
	    {
	        if is_array(l_v[1, 0])
	        {
	            l_r = (gml_std_haxe_boot_wget(l_v[0], 3) + "(")
	            l_w = l_v
	            l_n = array_length_1d(l_w)
	            if (l_n > 0)
	            {
	                if (++l_z <= 8)
	                {
	                    l_r += gml_value_print_rec(l_w[0], l_z)
	                    for (l_i = 1; l_i < l_n; l_i++)
	                        l_r += (", " + gml_value_print_rec(l_w[l_i], l_z))
	                }
	                else
	                    l_r += "..."
	            }
	            return (l_r + ")");
	        }
	        else
	        {
	            var l_this1 = l_v
	            return script_execute(l_this1[1, 0], 6, l_this1);
	        }
	    }
	    else
	    {
	        l_n = array_length_1d(l_v)
	        if (l_n > 0)
	        {
	            if (++l_z <= 8)
	            {
	                l_r = ("[" + gml_value_print_rec(l_v[0], l_z))
	                for (l_i = 1; l_i < l_n; l_i++)
	                    l_r += (", " + gml_value_print_rec(l_v[l_i], l_z))
	                return (l_r + "]");
	            }
	            else
	                return "[...]";
	        }
	        else
	            return "[]";
	    }
	}
	else
	    return gml_std_Std_string(l_v);
}
