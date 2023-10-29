function gml_value_get_type()
{
	var l_this1 = argument[0]
	if (l_this1 == undefined)
	    return "undefined";
	else if gml_value_is_number(l_this1)
	    return "number";
	else if is_string(l_this1)
	    return "string";
	else if is_array(l_this1)
	{
	    if (array_length_2d(l_this1, 2) == 1)
	        return "lwobject";
	    else if (array_height_2d(l_this1) == 2)
	    {
	        var l_this2 = l_this1
	        return script_execute(l_this2[1, 0], 5, l_this2);
	    }
	    else if is_array(l_this1)
	        return "array";
	    else
	        return "ref";
	}
	else
	    return typeof(l_this1);
}
