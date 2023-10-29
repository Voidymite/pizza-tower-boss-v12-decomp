function gml_with_func()
{
	var l_seek = argument[0]
	if gml_value_is_number(l_seek)
	{
	    var l_i = 0
	    if (l_seek >= 100000)
	    {
	        var l_out = vm__gml_with_data_gml_with_data_impl__alloc(1)
	        with (l_seek)
	            array_set(l_out, l_i++, id)
	        return [l_i, l_out, 1];
	    }
	    else
	    {
	        l_out = vm__gml_with_data_gml_with_data_impl__alloc(instance_number(l_seek))
	        with (l_seek)
	            array_set(l_out, l_i++, id)
	        return [l_i, l_out, 1];
	    }
	}
	else if is_array(l_seek)
	{
	    if (array_length_2d(l_seek, 2) == 1)
	    {
	        l_out = vm__gml_with_data_gml_with_data_impl__alloc(1)
	        array_set(l_out, 0, l_seek)
	        return [1, l_out, 1];
	    }
	    else if (array_height_2d(l_seek) == 2)
	    {
	        var l_this4 = l_seek
	        var l_n = script_execute(l_this4[1, 0], 4, l_this4)
	        l_out = vm__gml_with_data_gml_with_data_impl__alloc(l_n)
	        array_copy(l_out, 0, l_seek, 0, l_n)
	        return [l_n, l_out, 1];
	    }
	    else
	        return [array_length_1d(l_seek), l_seek, -1];
	}
	else
	{
	    gml_thread_error(("Cannot apply with() to " + gml_value_print(l_seek)))
	    return undefined;
	}
}
