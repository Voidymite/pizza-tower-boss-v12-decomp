function gml_class_else()
{
	var l_c = argument[1]
	switch argument[0]
	{
	    case 2:
	        return 0;
	    case 0:
	    case 1:
	        gml_thread_error((("Object `" + gml_std_Std_string(script_execute(l_c[1, 0], 6, l_c))) + "` has no fields."))
	        return 0;
	    case 3:
	    case 4:
	        gml_thread_error((("Object `" + gml_std_Std_string(script_execute(l_c[1, 0], 6, l_c))) + "` is not an array."))
	        return 0;
	    case 5:
	    case 6:
	        return script_get_name(l_c[1, 0]);
	}
	
}
